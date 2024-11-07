DROP TABLE IF EXISTS location_table;
CREATE TABLE location_table (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    latitude DECIMAL(9,6) NOT NULL,
    longitude DECIMAL(9,6) NOT NULL
);

INSERT INTO location_table (address, latitude, longitude) VALUES ('Oshawa', 43.8971, -78.8658);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Ajax', 43.8501, -79.0329);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Pickering', 43.8384, -79.0868);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Scarborough', 43.7731, -79.2578);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Downtown Toronto', 43.6510, -79.3470);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Mississauga', 43.5890, -79.6441);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Brampton', 43.7315, -79.7624);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Markham', 43.8561, -79.3370);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Vaughan', 43.8372, -79.5083);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Richmond Hill', 43.8828, -79.4403);
INSERT INTO location_table (address, latitude, longitude) VALUES ('North York', 43.7615, -79.4111);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Etobicoke', 43.6535, -79.5675);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Newmarket', 44.0592, -79.4613);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Aurora', 44.0065, -79.4504);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Whitby', 43.8975, -78.9429);
INSERT INTO location_table (address, latitude, longitude) VALUES ('King City', 43.9251, -79.5273);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Milton', 43.5183, -79.8774);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Oakville', 43.4675, -79.6877);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Burlington', 43.3255, -79.7990);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Hamilton', 43.2557, -79.8711);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Georgetown', 43.6556, -79.9253);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Caledon', 43.8632, -79.8888);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Bolton', 43.8795, -79.7356);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Orangeville', 43.9194, -80.0943);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Bradford', 44.1141, -79.5620);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Barrie', 44.3894, -79.6903);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Collingwood', 44.5008, -80.2169);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Wasaga Beach', 44.5205, -80.0169);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Innisfil', 44.3001, -79.5967);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Keswick', 44.2253, -79.4617);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Sutton', 44.3050, -79.3650);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Uxbridge', 44.1092, -79.1203);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Stouffville', 43.9706, -79.2508);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Port Perry', 44.1058, -78.9448);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Brooklin', 43.9682, -78.9455);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Courtice', 43.9125, -78.6880);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Bowmanville', 43.9126, -78.6880);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Port Hope', 43.9513, -78.2931);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Cobourg', 43.9594, -78.1654);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Trenton', 44.0990, -77.5767);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Belleville', 44.1628, -77.3832);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Napanee', 44.2448, -76.9497);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Kingston', 44.2312, -76.4860);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Niagara Falls', 43.0896, -79.0849);
INSERT INTO location_table (address, latitude, longitude) VALUES ('St. Catharines', 43.1594, -79.2469);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Welland', 42.9919, -79.2487);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Thorold', 43.1204, -79.1992);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Grimsby', 43.1952, -79.5602);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Beamsville', 43.1675, -79.4756);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Fort Erie', 42.9013, -78.9718);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Simcoe', 42.8361, -80.3048);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Dunnville', 42.9039, -79.6173);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Brantford', 43.1394, -80.2644);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Cambridge', 43.3616, -80.3144);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Kitchener', 43.4516, -80.4925);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Waterloo', 43.4643, -80.5204);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Guelph', 43.5448, -80.2482);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Fergus', 43.7052, -80.3771);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Elora', 43.6842, -80.4300);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Shelburne', 44.0782, -80.2041);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Alliston', 44.1526, -79.8634);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Tottenham', 44.0270, -79.8053);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Angus', 44.3160, -79.8826);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Meaford', 44.6055, -80.5934);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Owen Sound', 44.5690, -80.9406);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Hanover', 44.1519, -81.0263);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Walkerton', 44.1342, -81.1453);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Port Elgin', 44.4342, -81.3916);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Southampton', 44.4863, -81.3687);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Wiarton', 44.7415, -81.1327);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Tobermory', 45.2536, -81.6645);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Parry Sound', 45.3504, -80.0352);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Bracebridge', 45.0381, -79.3071);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Gravenhurst', 44.9196, -79.3758);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Huntsville', 45.3269, -79.2168);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Muskoka', 45.1253, -79.3139);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Haliburton', 45.0458, -78.5098);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Kawartha Lakes', 44.3646, -78.7408);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Fenelon Falls', 44.5346, -78.7360);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Lindsay', 44.3579, -78.7405);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Peterborough', 44.3091, -78.3197);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Lakefield', 44.4241, -78.2734);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Havelock', 44.4768, -77.9134);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Norwood', 44.3834, -77.9732);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Campbellford', 44.3088, -77.8020);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Warkworth', 44.2030, -77.8838);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Madoc', 44.5054, -77.4723);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Tweed', 44.4764, -77.3126);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Marmora', 44.4842, -77.6821);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Bancroft', 45.0553, -77.8597);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Barrys Bay', 45.4860, -77.6775);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Mount Albert', 44.1234, -79.3148);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Little Britain', 44.2593, -78.8823);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Pefferlaw', 44.3131, -79.2007);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Bethany', 44.1838, -78.6459);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Millbrook', 44.1525, -78.4500);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Gores Landing', 44.1892, -78.2181);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Hastings', 44.3094, -77.9592);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Cold Springs', 44.0519, -78.1824);
INSERT INTO location_table (address, latitude, longitude) VALUES ('Roseneath', 44.2056, -78.1067);
