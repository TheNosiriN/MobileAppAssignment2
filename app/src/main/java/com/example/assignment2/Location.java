package com.example.assignment2;

import androidx.room.*;

@Entity(tableName = "location_table")
public class Location {
    @PrimaryKey(autoGenerate = true)
    public int id;
    @ColumnInfo(name = "address")
    public String address;
    @ColumnInfo(name = "latitude")
    public double latitude;
    @ColumnInfo(name = "longitude")
    public double longitude;
}