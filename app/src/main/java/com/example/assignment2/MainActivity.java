package com.example.assignment2;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import java.io.IOException;

public class MainActivity extends AppCompatActivity {

    private EditText editTextAddress, editTextLatitude, editTextLongitude;
    private LocationDao locationDao;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);

        editTextAddress = findViewById(R.id.editTextAddress);
        editTextLatitude = findViewById(R.id.editTextLatitude);
        editTextLongitude = findViewById(R.id.editTextLongitude);
        Button buttonAdd = findViewById(R.id.buttonAdd);
        Button buttonUpdate = findViewById(R.id.buttonUpdate);
        Button buttonDelete = findViewById(R.id.buttonDelete);
        Button buttonQuery = findViewById(R.id.buttonQuery);
        TextView textViewResult = findViewById(R.id.textViewResult);

        LocationDatabase.refreshDatabase(this);
        LocationDatabase database = LocationDatabase.getInstance(this);
        locationDao = database.locationDao();

        buttonAdd.setOnClickListener(v -> {
            try {
                String address = editTextAddress.getText().toString();
                double latitude = Double.parseDouble(editTextLatitude.getText().toString());
                double longitude = Double.parseDouble(editTextLongitude.getText().toString());
                Location location = new Location();
                location.address = address;
                location.latitude = latitude;
                location.longitude = longitude;
                new Thread(() -> {
                    locationDao.insertLocation(location);
                    runOnUiThread(() -> textViewResult.setText("Location added successfully!"));
                }).start();
            } catch (Exception e){
                textViewResult.setText("Failed to add locaion, fields are empty");
            }
        });

        buttonUpdate.setOnClickListener(v -> {
            String address = editTextAddress.getText().toString();
            double latitude = Double.parseDouble(editTextLatitude.getText().toString());
            double longitude = Double.parseDouble(editTextLongitude.getText().toString());

            // Search for the location by address
            new Thread(() -> {
                Location location = locationDao.getLocationByAddress(address);
                if (location != null) {
                    location.latitude = latitude;
                    location.longitude = longitude;
                    locationDao.updateLocation(location);

                    runOnUiThread(() -> textViewResult.setText("Location updated successfully!"));
                } else {
                    runOnUiThread(() -> textViewResult.setText("Location not found!"));
                }
            }).start();
        });

        buttonDelete.setOnClickListener(v -> {
            String address = editTextAddress.getText().toString();

            // Search for the location by address
            new Thread(() -> {
                Location location = locationDao.getLocationByAddress(address);
                if (location != null) {
                    locationDao.deleteById(location.id);
                    runOnUiThread(() -> textViewResult.setText("Location deleted successfully!"));
                } else {
                    runOnUiThread(() -> textViewResult.setText("Location not found!"));
                }
            }).start();
        });

        buttonQuery.setOnClickListener(v -> {
            String address = editTextAddress.getText().toString();
            new Thread(() -> {
                Location location = locationDao.getLocationByAddress(address);
                runOnUiThread(() -> {
                    if (location != null) {
                        textViewResult.setText("Latitude: " + location.latitude + ", Longitude: " + location.longitude);
                    } else {
                        textViewResult.setText("Address not found!");
                    }
                });
            }).start();
        });


    }
}