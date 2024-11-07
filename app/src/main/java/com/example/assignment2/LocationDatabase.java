package com.example.assignment2;

import android.content.Context;

import androidx.annotation.NonNull;
import androidx.room.*;
import androidx.sqlite.db.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

@Database(entities = {Location.class}, version = 1)
public abstract class LocationDatabase extends RoomDatabase {
    private static LocationDatabase instance;
    public abstract LocationDao locationDao();

    public static synchronized void refreshDatabase(Context context) {
        File dbFile = context.getDatabasePath("locations.db");
        if (dbFile.exists()) {
            dbFile.delete();
        }
    }

    public static synchronized LocationDatabase getInstance(Context context) {
        if (instance == null) {
            instance = Room.databaseBuilder(context.getApplicationContext(), LocationDatabase.class, "locations.db")
//                    .createFromAsset("locations.db")
                    .fallbackToDestructiveMigration()
                    .addCallback(new RoomDatabase.Callback() {
                        @Override
                        public void onCreate(@NonNull SupportSQLiteDatabase db) {
                            super.onCreate(db);
                            // Execute SQL script to populate the database
                            try (InputStream inputStream = context.getAssets().open("populate.sql");
                                 BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream))) {
                                String line, sql="";
                                while ((line = reader.readLine()) != null) {
                                    sql += line;
                                    if (line.lastIndexOf(';') > -1){
                                        db.execSQL(sql);
                                        sql = "";
                                    }
                                }
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    })
                    .build();
        }
        return instance;
    }
}

