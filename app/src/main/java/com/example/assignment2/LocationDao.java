package com.example.assignment2;

import androidx.room.*;

@Dao
public interface LocationDao {
    @Insert
    void insertLocation(Location location);

    @Update
    void updateLocation(Location location);

    @Delete
    void deleteLocation(Location location);

    @Query("SELECT * FROM location_table WHERE address = :address LIMIT 1")
    Location getLocationByAddress(String address);

    @Query("DELETE FROM location_table WHERE id = :id")
    void deleteById(int id);
}
