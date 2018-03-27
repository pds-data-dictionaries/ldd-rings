# Rings Dictionary Local Data Dictionary

The Ring dictionary that describe objects related to planetary ring observation. It includes classes to describe a 
ring model, occulations (radio and stellar) and ring relationships.

## Revision History

      v1.2  2014-03-29
        -  Moved information from comments into definitions for all attributes. 
        -  Added source product, orbit number and sclk start/stop times. 
        -  Revised some enumerated value options, and corrected some nillable inconsistencies.
      v1.3.0  2015-01-23
        -  Updated to version 1.3.0.1 of IM.
        -  Added min/max_observed_event_time.
        -  Included reference_time_UTC as optional attribute for all profile labels.
        -  Revised some definitions.
      v1.4.0.0  2016-04-25
        -  This version was not released
        -  Updated to version 1.6.0.0 of IM.
        -  Corrected case errors in class and attribute names and enumerated values
        -  Changed several time attribute types from ASCII_Date_Time_UTC to ASCII_Date_Time_YMD_UTC
        -  revised several definitions
        -  Changed ring_occultation_direction to occultation_direction, and modified the definitions 
           for the values ingress and egress.
        -  Added the class Occultation_Time_Series.
        -  Combined Radio_Occultation and Stellar_Occultation into Occultation_Ring_Profile
        -  Renamed Radio_Occultation_Support to Occultation_Supplement
        -  Removed ring_observation_id and source_pds3_id from all classes except Occultation_Supplement.
        -  Added Schematron rules to make some optional attributes required based on the value of 
           occultation type (e.g., dsn_station_number if occultation_type = radio, sub_stellar_ring_azimuth
           if occultation_type = stellar).
        -  Reordered some attributes in Occultation_Time_Series.
        -  Reordered some attributes in Occultation_Supplement.
      v1.5.0.0  2017-04-12
        -  Changed schema location URLs to https
        -  Updated to version 1.8.0.0 of IM.
        -  Revised definition of pds3_source_id
        -  Corrected the definition of sub_stellar_ring_azimuth
        -  Changed the name of the umbrella class from Occultation to Ring_Moon_Systems
        -  Added Time_Series_Direction 
      v1.5.1.0  2017-08-09
        -  corrected minor formating errors for a few enumerated values
        -  Reinstated the ring_plane attribute in the Occultation_Ring_Profile and Occultation_Time_Series classes.      
      v1.6.0.0  2017-12-13
        -  Updated to version 1.9.0.0 of IM and version 1.5.1.0 of the geometry dictionary.
        -  Added the Ring_Model class and numerous classes and attributes to support it.
        -  Added the Orbital_Elements class.

Version: 1.6.0.0  
Steward: rings

## Classes

### Rings_Supplement
This class is required for all Rings Node curated data products

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[ring_obs_id](#ring_obs_id) | 1 | 1
[source_pds3_id](#source_pds3_id) | 0 | unbounded

### Occultation_Ring_Profile
This class replaces the Radio_Occultation and Stellar_Occultation classes. It 
        	is used for all ring occultation profiles regardless of the occultation type.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[orbit_number](#orbit_number) | 0 | unbounded
[sclk_start_time](#sclk_start_time) | 0 | 1
[sclk_stop_time](#sclk_stop_time) | 0 | 1
[occultation_type](#occultation_type) | 1 | 1
[occultation_direction](#occultation_direction) | 1 | 1
[ring_profile_direction](#ring_profile_direction) | 1 | 1
[planetary_occultation_flag](#planetary_occultation_flag) | 1 | 1
[ring_plane](#ring_plane) | 0 | *
[star_name](#star_name) | 0 | *
[dsn_station_number](#dsn_station_number) | 0 | 1
[frequency_band](#frequency_band) | 0 | 1
[wavelength](#wavelength) | 0 | 1
[minimum_wavelength](#minimum_wavelength) | 0 | 1
[maximum_wavelength](#maximum_wavelength) | 0 | 1
[radial_resolution](#radial_resolution) | 1 | 1
[radial_sampling_interval](#radial_sampling_interval) | 0 | 1
[minimum_radial_sampling_interval](#minimum_radial_sampling_interval) | 0 | 1
[maximum_radial_sampling_interval](#maximum_radial_sampling_interval) | 0 | 1
[reference_time_utc](#reference_time_utc) | 0 | 1
[minimum_observed_event_time](#minimum_observed_event_time) | 0 | 1
[maximum_observed_event_time](#maximum_observed_event_time) | 0 | 1
[observed_event_start_time_utc](#observed_event_start_time_utc) | 0 | 1
[observed_event_stop_time_utc](#observed_event_stop_time_utc) | 0 | 1
[observed_event_start_tdb](#observed_event_start_tdb) | 0 | 1
[observed_event_stop_tdb](#observed_event_stop_tdb) | 0 | 1
[spacecraft_event_start_time_utc](#spacecraft_event_start_time_utc) | 0 | 1
[spacecraft_event_stop_time_utc](#spacecraft_event_stop_time_utc) | 0 | 1
[ring_event_start_time_utc](#ring_event_start_time_utc) | 0 | 1
[ring_event_stop_time_utc](#ring_event_stop_time_utc) | 0 | 1
[ring_event_start_tdb](#ring_event_start_tdb) | 0 | 1
[ring_event_stop_tdb](#ring_event_stop_tdb) | 0 | 1
[earth_received_start_time_utc](#earth_received_start_time_utc) | 0 | 1
[earth_received_stop_time_utc](#earth_received_stop_time_utc) | 0 | 1
[minimum_ring_radius](#minimum_ring_radius) | 1 | 1
[maximum_ring_radius](#maximum_ring_radius) | 1 | 1
[minimum_ring_longitude](#minimum_ring_longitude) | 1 | 1
[maximum_ring_longitude](#maximum_ring_longitude) | 1 | 1
[minimum_observed_ring_azimuth](#minimum_observed_ring_azimuth) | 1 | 1
[maximum_observed_ring_azimuth](#maximum_observed_ring_azimuth) | 1 | 1
[sub_stellar_ring_azimuth](#sub_stellar_ring_azimuth) | 0 | 1
[sub_stellar_clock_angle](#sub_stellar_clock_angle) | 0 | 1
[observed_ring_elevation](#observed_ring_elevation) | 0 | 1
[minimum_observed_ring_elevation](#minimum_observed_ring_elevation) | 0 | 1
[maximum_observed_ring_elevation](#maximum_observed_ring_elevation) | 0 | 1
[light_source_incidence_angle](#light_source_incidence_angle) | 0 | 1
[minimum_light_source_incidence_angle](#minimum_light_source_incidence_angle) | 0 | 1
[maximum_light_source_incidence_angle](#maximum_light_source_incidence_angle) | 0 | 1
[lowest_detectable_opacity](#lowest_detectable_opacity) | 0 | 1
[highest_detectable_opacity](#highest_detectable_opacity) | 0 | 1
[along_track_timing_offset](#along_track_timing_offset) | 0 | 1

### Occultation_Time_Series
This class supports occultation data organized as a time series.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[orbit_number](#orbit_number) | 0 | unbounded
[sclk_start_time](#sclk_start_time) | 0 | 1
[sclk_stop_time](#sclk_stop_time) | 0 | 1
[occultation_type](#occultation_type) | 1 | 1
[occultation_direction](#occultation_direction) | 1 | 1
[time_series_direction](#time_series_direction) | 1 | 1
[planetary_occultation_flag](#planetary_occultation_flag) | 1 | 1
[ring_plane](#ring_plane) | 0 | *
[star_name](#star_name) | 0 | *
[dsn_station_number](#dsn_station_number) | 0 | 1
[frequency_band](#frequency_band) | 0 | 1
[wavelength](#wavelength) | 0 | 1
[minimum_wavelength](#minimum_wavelength) | 0 | 1
[maximum_wavelength](#maximum_wavelength) | 0 | 1
[reference_time_utc](#reference_time_utc) | 0 | 1
[minimum_observed_event_time](#minimum_observed_event_time) | 0 | 1
[maximum_observed_event_time](#maximum_observed_event_time) | 0 | 1
[observed_event_start_time_utc](#observed_event_start_time_utc) | 0 | 1
[observed_event_stop_time_utc](#observed_event_stop_time_utc) | 0 | 1
[observed_event_start_tdb](#observed_event_start_tdb) | 0 | 1
[observed_event_stop_tdb](#observed_event_stop_tdb) | 0 | 1
[spacecraft_event_start_time_utc](#spacecraft_event_start_time_utc) | 0 | 1
[spacecraft_event_stop_time_utc](#spacecraft_event_stop_time_utc) | 0 | 1
[ring_event_start_time_utc](#ring_event_start_time_utc) | 0 | 1
[ring_event_stop_time_utc](#ring_event_stop_time_utc) | 0 | 1
[ring_event_start_tdb](#ring_event_start_tdb) | 0 | 1
[ring_event_stop_tdb](#ring_event_stop_tdb) | 0 | 1
[earth_received_start_time_utc](#earth_received_start_time_utc) | 0 | 1
[earth_received_stop_time_utc](#earth_received_stop_time_utc) | 0 | 1
[minimum_ring_radius](#minimum_ring_radius) | 0 | 1
[maximum_ring_radius](#maximum_ring_radius) | 0 | 1
[minimum_ring_longitude](#minimum_ring_longitude) | 0 | 1
[maximum_ring_longitude](#maximum_ring_longitude) | 0 | 1
[minimum_observed_ring_azimuth](#minimum_observed_ring_azimuth) | 0 | 1
[maximum_observed_ring_azimuth](#maximum_observed_ring_azimuth) | 0 | 1
[sub_stellar_ring_azimuth](#sub_stellar_ring_azimuth) | 0 | 1
[sub_stellar_clock_angle](#sub_stellar_clock_angle) | 0 | 1
[observed_ring_elevation](#observed_ring_elevation) | 0 | 1
[minimum_observed_ring_elevation](#minimum_observed_ring_elevation) | 0 | 1
[maximum_observed_ring_elevation](#maximum_observed_ring_elevation) | 0 | 1
[light_source_incidence_angle](#light_source_incidence_angle) | 0 | 1
[minimum_light_source_incidence_angle](#minimum_light_source_incidence_angle) | 0 | 1
[maximum_light_source_incidence_angle](#maximum_light_source_incidence_angle) | 0 | 1
[lowest_detectable_opacity](#lowest_detectable_opacity) | 0 | 1
[highest_detectable_opacity](#highest_detectable_opacity) | 0 | 1
[along_track_timing_offset](#along_track_timing_offset) | 0 | 1

### Occultation_Supplement
This class is required for all radio ring occultation calibration and geometry supplemental files.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[orbit_number](#orbit_number) | 0 | unbounded
[spice_filename](#spice_filename) | 0 | unbounded
[occultation_type](#occultation_type) | 1 | 1
[occultation_direction](#occultation_direction) | 1 | 1
[ring_profile_direction](#ring_profile_direction) | 0 | 2
[planetary_occultation_flag](#planetary_occultation_flag) | 0 | 1
[dsn_station_number](#dsn_station_number) | 1 | 1
[frequency_band](#frequency_band) | 1 | 1
pds.sampling_parameter_name | 1 | 1
pds.sampling_parameter_unit | 1 | 1
pds.sampling_parameter_interval | 1 | 1
[reference_time_utc](#reference_time_utc) | 0 | 1
[minimum_observed_event_time](#minimum_observed_event_time) | 0 | 1
[maximum_observed_event_time](#maximum_observed_event_time) | 0 | 1

### Satellite_Identification
This class identifies the specific satellite to which the parameters given in the enclosing class apply.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[geom.Body_Identification_Base](#geom.body_identification_base) | 1 | 1

### Ring_Identification
This class identifies the specific ring to which the parameters given in the enclosing class apply.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[geom.Body_Identification_Base](#geom.body_identification_base) | 1 | 1

### Normal_Mode_Parameters
This class provides the normal mode parameters is one is present in the described ring.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[normal_mode_amplitude](#normal_mode_amplitude) | 0 | 1
[normal_mode_amplitude_uncert](#normal_mode_amplitude_uncert) | 0 | 1
[normal_mode_phase](#normal_mode_phase) | 0 | 1
[normal_mode_phase_uncert](#normal_mode_phase_uncert) | 0 | 1
[normal_mode_pattern_speed](#normal_mode_pattern_speed) | 0 | 1
[normal_mode_pattern_speed_uncert](#normal_mode_pattern_speed_uncert) | 0 | 1
[normal_mode_wavenumber](#normal_mode_wavenumber) | 0 | 1

### Global_Model_Parameters
This class provides the general parameters used to generate a ring model.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[geom.Reference_Frame_Identification](#geom.reference_frame_identification) | 0 | 1
[epoch_ring_fit_utc](#epoch_ring_fit_utc) | 0 | 1

### Central_Body_Parameters
This class provides the parameters used to generate a ring model which are specific to the central body.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[geom.Central_Body_Identification](#geom.central_body_identification) | 0 | 1
[gmass](#gmass) | 0 | 1
[grav_ref_radius](#grav_ref_radius) | 0 | 1
[j2](#j2) | 0 | 1
[j4](#j4) | 0 | 1
[j6](#j6) | 0 | 1
[j8](#j8) | 0 | 1
[pole_right_ascension_angle](#pole_right_ascension_angle) | 0 | 1
[pole_right_ascension_angle](#pole_right_ascension_angle) | 0 | 1
[pole_declination_angle](#pole_declination_angle) | 0 | 1
[pole_declination_angle_uncert](#pole_declination_angle_uncert) | 0 | 1

### Satellite_Parameters
This class provides the parameters used to generate a ring model which are specific to a single satellite.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[Satellite_Identification](#satellite_identification) | 1 | 1
[gmass](#gmass) | 0 | 1
[semimajor_axis](#semimajor_axis) | 0 | 1
[semimajor_axis_uncert](#semimajor_axis_uncert) | 0 | 1
[eccentricity](#eccentricity) | 0 | 1
[eccentricity_uncert](#eccentricity_uncert) | 0 | 1
[inclination](#inclination) | 0 | 1
[inclination_uncert](#inclination_uncert) | 0 | 1

### Ring_Orbital_Elements
This class provides the orbital element values for a specific ring which were generated in a ring model.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[Ring_Identification](#ring_identification) | 1 | 1
[Normal_Mode_Parameters](#normal_mode_parameters) | 0 | 1
[semimajor_axis](#semimajor_axis) | 0 | 1
[semimajor_axis_uncert](#semimajor_axis_uncert) | 0 | 1
[eccentricity](#eccentricity) | 0 | 1
[eccentricity_uncert](#eccentricity_uncert) | 0 | 1
[periapse_longitude](#periapse_longitude) | 0 | 1
[periapse_longitude_uncert](#periapse_longitude_uncert) | 0 | 1
[periapse_precession_rate](#periapse_precession_rate) | 0 | 1
[periapse_precession_rate_uncert](#periapse_precession_rate_uncert) | 0 | 1
[periapse_precession_rate_method](#periapse_precession_rate_method) | 0 | 1
[inclination](#inclination) | 0 | 1
[inclination_uncert](#inclination_uncert) | 0 | 1
[node_longitude](#node_longitude) | 0 | 1
[node_longitude_uncert](#node_longitude_uncert) | 0 | 1
[nodal_regression_rate](#nodal_regression_rate) | 0 | 1
[nodal_regression_rate_uncert](#nodal_regression_rate_uncert) | 0 | 1
[nodal_regression_rate_method](#nodal_regression_rate_method) | 0 | 1
[number_points](#number_points) | 0 | 1
[fit_rms_semimajor](#fit_rms_semimajor) | 0 | 1

### Ring_Model
This class provides the parameters used to generate a ring model.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[Global_Model_Parameters](#global_model_parameters) | 0 | 1
[Central_Body_Parameters](#central_body_parameters) | 0 | 1
[Satellite_Parameters](#satellite_parameters) | 0 | *
[Ring_Orbital_Elements](#ring_orbital_elements) | 0 | *

### Ring_Moon_Systems
This is an umbrella class for all of the classes and attributes in this dictionary.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[Rings_Supplement](#rings_supplement) | 0 | 1
[Occultation_Ring_Profile](#occultation_ring_profile) | 0 | 1
[Occultation_Time_Series](#occultation_time_series) | 0 | 1
[Occultation_Supplement](#occultation_supplement) | 0 | 1
[Ring_Model](#ring_model) | 0 | 1
## Attributes


### ring_observation_id
The ring_observation_id uniquely identifies a single experiment or
            observation (image, occultation profile, spectrum, etc.) within a
            rings-related data set. This is the common id by which data are
            identified within the Rings Node catalog. It describes the smallest
            quantity of data that can be usefully cataloged or analyzed by itself.
            Note that a single observation may be associated with multiple data
            products (e.g. raw and calibrated versions of an image). Note also
            that a single data product may be associated with multiple observations
            (e.g. a single WFPC2 image file containing four different images). A
            ring observation id is constructed using numbers, upper case letters, 
            forward slash, colon, period, dash, and underscore as follows:
            
            p/type/host/inst/time/... where 
              p is a single-letter planet id (one of J, S, U, or N); 
              type is IMG for images, OCC for occultation profile, etc.; 
              host is the instrument host id, 
              inst is the instrument id; 
              time is the observation time as a date or instrument clock count; 
              further information identifying the observation can then be appended as
              appropriate. 
          Optional in labels. Nillable, in which case the nil_reason should 
            be 'inapplicable'. 
          Examples: 
            J/IMG/VG2/ISS/20693.01/N
            J/IMG/VG2/ISS/20693.02/W
            S/IMG/HST/WFPC2/1995-08-10/U2TF020B/PC1
            U/OCC/VG2/RSS/1986-01-24/S
            U/OCC/VG2/RSS/1986-01-24/X
            N/OCC/VG2/PPS/1989-08-25/SIGMA_SGR

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### orbit_number
orbit_number if present is the value assigned by the mission for the orbit number associated with the observation.
            
            Optional in labels of occultation observations and may be used multiple times. Nillable, the nil_reason should be 'inapplicable'. Normally not intended as a value for
            a table field.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### source_pds3_id
source_pds3_id is the PDS3 product identifier for the source product. If the source product has been archived under PDS4, use the Internal_Reference class in the Investigation_Area. source_pds3_id is constructed as PDS3 dataset_id, a colon, then the PDS3 product_id. The acceptable nil_reasons are 'inapplicable' and 'unknown'.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### sclk_start_time
sclk_start_time is the value of the spacecraft clock corresponding to the start_date_time given in the label.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### sclk_stop_time
sclk_stop_time is the value of the spacecraft clock corresponding to the stop_date_time given in the label.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### reference_time_utc
reference_time_utc provides a date and time in UTC format. Given in a label when time values in
            a table are given as elapsed seconds offset from a reference time. Unless there are compelling reasons to  
            do otherwise, reference_time_utc should correspond to the start of a day. 

            Required anytime a table field is given relative to a specific date and time other than when Barycentric Dynamical 
            Time is used (e.g., observed_event_tdb).

Type: ASCII_Date_Time_YMD_UTC  
Units: Units_of_Time  



### observed_event_time
observed_event_time indicates the instant at which photons were received at the
            instrument. 
            
            As a field in an occultation profile table, it is given in numeric seconds as an offset 
            from the specified UTC reference time. The reference time is preferably the start of a day.

            In a label the corresponding time interval end point values are given by the required 
            start_date_time_utc and stop_date_time_utc attributes in the Time_Coordinates class.
            
            At least one of either observed_event_time or observed_event_tdb, must be a table field for 
            occultation data. Both may be used. 
            
            observed_event_time is equivalent to spacecraft_event_time for spacecraft data and to
            earth_received_time for Earth-based data. It is always the photon arrival time, so in
            this regard we treat typical spacecraft radio occultation data as Earth-based, referring 
            to the time at the DSN receiving station. For an uplink radio occultation, this is the 
            spacecraft event time. 
            
            Note: For occultation data, PDS prefers year-month-day format for dates rather  
            than year plus day-of-year format. However, either format is permitted.

Type: ASCII_Real  
Units: Units_of_Time  



### maximum_observed_event_time
maximum_observed_event_time gives the largest value for observed_event_time in 
        	  the associated data file. It is given in numeric seconds as an offset 
            from the specified UTC reference time. 

            maximum_observed_event_time is optional in labels since the data file time interval end point 
            values are given by the required start_date_time_utc and stop_date_time_utc attributes in the 
            Time_Coordinates class.

Type: ASCII_Real  
Units: Units_of_Time  



### minimum_observed_event_time
minimum_observed_event_time gives the smallest value for observed_event_time in 
        	  the associated data file. It is given in numeric seconds as an offset 
            from the specified UTC reference time. 

            minimum_observed_event_time is optional in labels since the data file time interval end point 
            values are given by the required start_date_time_utc and stop_date_time_utc attributes in the 
            Time_Coordinates class.

Type: ASCII_Real  
Units: Units_of_Time  



### observed_event_tdb
observed_event_tdb indicates the instant at which photons were received at the
            instrument. It is represented in the 'Barycentric Dynamical Time' system, as a number of
            elapsed seconds since the J2000 epoch. This is consistent with the definition of 'ephemeris
            time' as used in the SPICE toolkit.

            In a label the corresponding values are given by the optional start_observed_event_tdb and 
            stop_observed_event_tdb attributes. 
            
            At least one of either observed_event_time or observed_event_tdb,
            must be a table field for occultation data. Both may be used.
            
            observed_event_time is equivalent to spacecraft_event_time for spacecraft data and to
            earth_received_time for Earth-based data. It is always the photon arrival time, so in
            this regard we treat typical spacecraft radio occultation data as Earth-based, referring 
            to the time at the DSN receiving station. For an uplink radio occultation, this is the 
            spacecraft event time.

Type: ASCII_Real  
Units: Units_of_Time  



### observed_event_start_tdb
observed_event_start_tdb indicates the value for earliest time 
            in the described data, and is given in elapsed seconds since the J2000 epoch.

            Optional in labels; not intended for use as a table field.

Type: ASCII_Real  
Units: Units_of_Time  



### observed_event_stop_tdb
observed_event_stop_tdb indicates the value for latest time 
            in the described data, and is given in elapsed seconds since the J2000 epoch.

            Optional in labels; not intended for use as a table field.

Type: ASCII_Real  
Units: Units_of_Time  



### observed_event_time_utc
This attribute is intended to be used as a column in a table. observed_event_time_utc 
        	indicates the UTC time corresponding to the instant at which photons were received at the instrument.

          In a label the corresponding values may be given by the optional start_observed_event_utc and 
          stop_observed_event_utc attributes (or the corresponding values using Barycentric Dynamical Time, _tdb). 
            
          At least one of either observed_event_time_utc or observed_event_tdb, must be a table field for occultation 
          data. Both may be used.
            
          observed_event_time is equivalent to spacecraft_event_time for spacecraft data and to
          earth_received_time for Earth-based data. It is always the photon arrival time, so in
          this regard we treat typical spacecraft radio occultation data as Earth-based, referring 
          to the time at the DSN receiving station. For an uplink radio occultation, this is the 
          spacecraft event time.

Type: ASCII_Real  
Units: Units_of_Time  



### observed_event_start_time_utc
observed_event_start_time_utc indicates the UTC value for earliest time 
            in the described data.

            It is part of a start/stop pair. If one of observed_event_start_time_utc and 
            observed_event_stop_time_utc is used, both must be used.

Type: ASCII_Date_Time_YMD_UTC  
Units: undefined  



### observed_event_stop_time_utc
observed_event_stop_time_utc indicates the UTC value for latest time 
            in the described data.

            It is part of a start/stop pair. If one of observed_event_start_time_utc and 
            observed_event_stop_time_utc is used, both must be used.

Type: ASCII_Date_Time_YMD_UTC  
Units: undefined  



### spacecraft_event_time
spacecraft_event_time indicates the instant at which an event occurred at the
            spacecraft, e.g., the arrival or departure of a photon. Required table field for radio 
            occultation data, but not used in stellar occultation data. The time is given in numeric 
            seconds as an offset from the specified UTC reference time. The reference time is preferably 
            the start of a day, and is required to be given in the label using the attribute 
            reference_time_utc. 

            Additionally, in radio occultation labels the corresponding time interval end point values are 
            given by the required start_spacecraft_event_time_utc and stop_spacecraft_event_time_utc attributes.

Type: ASCII_Real  
Units: Units_of_Time  



### spacecraft_event_start_time_utc
spacecraft_event_start_time_utc gives the UTC time corresponding to the earliest time 
            given by spacecraft_event_time in the data table. However, while spacecraft_event_time is given 
            as seconds offset from a reference time, spacecraft_event_start_time_utc is given as a UTC date 
            time. 

            Required in the label for radio occultation data. Not used for stellar occultations.

Type: ASCII_Date_Time_YMD_UTC  
Units: Units_of_Time  



### spacecraft_event_stop_time_utc
spacecraft_event_stop_time_utc gives the UTC time corresponding to the latest time 
            given by spacecraft_event_time in the data table. However, while spacecraft_event_time is 
            given as seconds offset from a reference time, spacecraft_event_stop_time_utc is given as 
            a UTC date time. 
            
            Required in the label for radio occultation data. Not used for stellar occultations.

Type: ASCII_Date_Time_YMD_UTC  
Units: Units_of_Time  



### earth_received_time
earth_received_time provides the time at which telemetry or other photons were
            received on Earth. Intended to be used as a table field which is optional for stellar 
            occultations, and is not used for radio occultation data (one of either 
            observed_event_time or observed_event_tdb is used instead). earth_received_time is given 
            in numeric seconds as an offset from the specified UTC reference time. The reference time 
            is preferably the start of a day, and is required to be given in the label using the 
            attribute reference_time_utc.

            This is  equivalent to OBSERVED_EVENT_TIME for radio occultations. It is an optional 
            table field for stellar occultations and is not used for radio occultations. When 
            earth_received_time is used, the attribute reference_time_utc is required in the label.

Type: ASCII_Real  
Units: Units_of_Time  



### earth_received_start_time_utc
earth_received_start_time_utc gives the UTC time corresponding to the earliest time 
            for the data product at which telemetry or other photons were received on Earth. 

            Optional for occultation data.

Type: ASCII_Date_Time_YMD_UTC  
Units: Units_of_Time  



### earth_received_stop_time_utc
earth_received_stop_time_utc gives the UTC time corresponding to the latest time 
            for the data product at which telemetry or other photons were received on Earth. 

            Optional for occultation data.

Type: ASCII_Date_Time_YMD_UTC  
Units: Units_of_Time  



### ring_event_time
ring_event_time indicates the instant at which photons associated with a particular ring
            observation intercepted the ring plane. This time is earlier than the associated
            observed_event_time by an amount equal to the light travel time. ring_event_time is a
            required table field for ring occultation data. The time is given in numeric seconds as an offset 
            from the specified UTC reference time. The reference time is preferably the start of a day, and is 
            required to be given in the label using the attribute reference_time_utc. One of ring_event_time 
            or ring_event_tdb is a required table field for all ring occultations.

            One of ring_event_time or ring_event_tdb is a required table field for all ring occultations. 
            Both may be used. If ring_event_time is used, the attribute reference_time_utc is required in the label.

Type: ASCII_Real  
Units: Units_of_Time  



### ring_event_start_time_utc
ring_event_start_time_utc gives the UTC time corresponding to the earliest time given by 
            ring_event_time or ring_event_tdb in the data table. ring_event_start_time_utc is required for all
            ring occultation data.

            ring_event_start_time_utc is required label attribute for all ring occultation data.

Type: ASCII_Date_Time_YMD_UTC  
Units: Units_of_Time  



### ring_event_stop_time_utc
ring_event_stop_time_utc gives the UTC time corresponding to the latest time given by 
            ring_event_time or ring_event_tdb in the data table. ring_event_stop_time_utc is required for all
            ring occultation data.

            ring_event_stop_time_utc is required label attribute for all ring occultation data.

Type: ASCII_Date_Time_YMD_UTC  
Units: Units_of_Time  



### ring_event_tdb
ring_event_tdb indicates the instant at which photons associated with a particular ring
            observation left the ring plane. This time is earlier than the associated observed_event_tbd by 
            an amount equal to the light travel time. ring_event_tdb is represented in the 'Barycentric 
            Dynamical Time' system, as a number of elapsed seconds since the J2000 epoch. This is consistent 
            with the definition of 'ephemeris time' as used in the SPICE toolkit.
            
            One of ring_event_time or ring_event_tdb is a required table field for all ring occultations. 
            Both may be used.

Type: ASCII_Real  
Units: Units_of_Time  



### ring_event_start_tdb
ring_event_start_tdb indicates the value for earliest time 
            in the described data, and is given in ring_event_tdb format.

            Optional in labels; not intended for use as a table field.

Type: ASCII_Real  
Units: Units_of_Time  



### ring_event_stop_tdb
ring_event_stop_tdb indicates the value for latest time 
            in the described data, and is given in ring_event_tdb format.

            Optional in labels; not intended for use as a table field.

Type: ASCII_Real  
Units: Units_of_Time  



### along_track_timing_offset
along_track_timing_offset is a timing offset to the along track 
            spacecraft position. It is the value that minimizes differences in radii
            of matching circular ring features observed on the ingress and
            egress sides of the occultation track.

            Optional in labels for radio occultation. Nillable in which case the 
            nil_reason should be 'inapplicable'.

Type: ASCII_Real  
Units: Units_of_Time  



### occultation_type
occultation_type distinguishes between three types of occultation experiments: Stellar,
            Solar, or Radio. Stellar occultations involve observing a star as a targeted ring or body passes in
            front, as seen from either a spacecraft or Earth-based observatory. Solar occultations are
            similar to stellar occultations except that the Sun is used in place of a star. Radio
            occultations typically involve observing the continuous-wave radio transmissions from a
            spacecraft as it passes behind the target as seen from a radio telescope on Earth or another
            spacecraft. 

            Required in labels of occultation observations. Normally not intended as a value for a table field.

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Solar | The target occulted the sun.
Stellar | The target occulted a star.
Radio | Radio waves were transmitted through the target.


### planetary_occultation_flag
The planetary_occultation_flag is a yes-or-no flag that indicates whether a 
            occultation track also intersects the planet.

            Required in labels of ring occultation observations. Normally not intended as a value for
            a table field.

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Y | Some portion of the occultation track also intersects the planet.
N | The occultation track does not intersect the planet.


### occultation_direction
occultation_direction indicates the direction of an occultation track. 
            This refers to the observed occultation track overall, not to the subset that might appear in a
            particular file (e.g., if an occultation includes both ingress and egress tracks, the value 
            for occultation_direction will be both in the data products for each occultation profile. 
            Permitted values are 'Ingress', 'Egress', 'Both', and 'Multiple'. The value 
            'multiple' is only used for some Hubble-based occultations where the occultation
            track is not monotonic over relatively short time scales.

            Required in labels of ring occultation observations. Not intended as a value for
            a table field.

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Ingress | The distance to the target body center decreases with time.
Egress | The distance to the target body center increases with time.
Both | The distance to the target body center along a portion of the occultation track decreases with time, and 
                    along a different portion increases with time.
Multiple | Only used for some Hubble-based occultations where the occultation
                    track is not monotonic over relatively short time scales.


### star_name
star_name provides the identifying name of star, including the catalog name if necessary.
            Examples include 'sigma Sgr' and 'SAO 123456' (for star number 123456 in the
            Smithsonian Astrophysical Observatory catalog). Use 'Sun' for solar occultations.

            Required in labels for stellar and solar occultations. Not used for radio occultations.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### radial_resolution
radial_resolution indicates the nominal radial distance over which changes in ring
            properties can be detected within a data product. Note: this value may be larger than the 
            radial_sampling_interval value, because a data product can be over-sampled.

            Required in labels if the value is fixed, as it is for stellar occultations. 
            If the value varies, the corresponding minimum and maximum attributes must be used instead. 
            Not intended to be used as a table field.

Type: ASCII_Real  
Units: Units_of_Length  



### minimum_radial_resolution
minimum_radial_resolution indicates the minimum radial distance over which changes in ring
            properties can be detected within a data product. Note: this value may be larger than the 
            radial_sampling_interval value, because a data product can be over-sampled.

            If the value of radial resolution varies, the minimum and maximum radial resolution attributes 
            are required in labels. Not intended to be used as a table field.

Type: ASCII_Real  
Units: Units_of_Length  



### maximum_radial_resolution
maximum_radial_resolution indicates the maximum radial distance over which changes in ring
            properties can be detected within a data product. Note: this value may be larger than the 
            radial_sampling_interval value, because a data product can be over-sampled.

            If the value of radial resolution varies, the minimum and maximum radial resolution attributes 
            are required in labels. Not intended to be used as a table field.

Type: ASCII_Real  
Units: Units_of_Length  



### radial_sampling_interval
radial_sampling_interval indicates the radial spacing between consecutive points in
            a ring profile. In practice, this may be somewhat smaller than the radial_resolution
            because a profile may be over-sampled.

            Required in labels if the value is fixed. If the value varies, the corresponding minimum and 
            and maximum attributes must be used instead. Not intended to be used 
            as a table field.

Type: ASCII_Real  
Units: Units_of_Length  



### minimum_radial_sampling_interval
minimum_radial_sampling_interval indicates the smallest radial spacing between consecutive 
            points in a ring profile. In practice, this may be somewhat smaller than the radial_resolution
            because a profile may be over-sampled.

            If the value of radial_sampling_interval varies, the minimum and maximum attributes 
            are required in labels. Not intended to be used as a table field.

Type: ASCII_Real  
Units: Units_of_Length  



### maximum_radial_sampling_interval
maximum_radial_sampling_interval indicates the smallest radial spacing between 
            consecutive points in a ring profile. In practice, this may be somewhat smaller than 
            the radial_resolution because a profile may be over-sampled.

            If the value of radial_sampling_interval varies, the minimum and maximum attributes 
            are required in labels. Not intended to be used as a table field.

Type: ASCII_Real  
Units: Units_of_Length  



### ring_plane
ring_plane indicates the plane upon which
        parameters such as ring_radius are based. Possible values 
        for the Saturn ring system are 'Equator', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'Phoebe'.
        For the Uranus ring system values are 'Equator', 'Six', 'Five',
        'Four', 'Alpha', 'Beta',  'Eta', 'Gamma', 'Delta', 'Lambda','Epsilon',Nu, Mu. 
        Required in labels of ring occultation observations.

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
A | Parameters such as ring_radius were determined based on the plane of the A Ring.
B | Parameters such as ring_radius were determined based on the plane of the B Ring.
C | Parameters such as ring_radius were determined based on the plane of the C Ring.
D | Parameters such as ring_radius were determined based on the plane of the D Ring.
E | Parameters such as ring_radius were determined based on the plane of the E Ring.
F | Parameters such as ring_radius were determined based on the plane of the F Ring.
G | Parameters such as ring_radius were determined based on the plane of the G Ring.
Phoebe | Parameters such as ring_radius were determined based on the plane of the Phoebe Ring.
Equator | Parameters such as ring_radius were determined based on the equatorial plane of the planet.
Six | Parameters such as ring_radius were determined based on the plane of the Six Ring.
Five | Parameters such as ring_radius were determined based on the plane of the Five Ring.
Four | Parameters such as ring_radius were determined based on the plane of the Four Ring.
Alpha | Parameters such as ring_radius were determined based on the plane of the Alpha Ring.
Beta | Parameters such as ring_radius were determined based on the plane of the Beta Ring.
Eta | Parameters such as ring_radius were determined based on the plane of the Eta Ring.
Gamma | Parameters such as ring_radius were determined based on the plane of the Gamma Ring.
Delta | Parameters such as ring_radius were determined based on the plane of the Delta Ring.
Lambda | Parameters such as ring_radius were determined based on the plane of the Lambda Ring.
Epsilon | Parameters such as ring_radius were determined based on the plane of the Epsilon Ring.
Nu | Parameters such as ring_radius were determined based on the plane of the Nu Ring.
Mu | Parameters such as ring_radius were determined based on the plane of the Mu Ring.


### ring_profile_direction
ring_profile_direction indicates the radial direction of a ring occultation 
            within a particular data product. Possible values are 'Ingress', 'Egress', or 'Multiple'.
            The value 'Multiple' is only used for some Hubble-based occultations where the occultation
            track is not monotonic over relatively short time scales.

            Required in labels of ring occultation observations. Not intended as a value for
            a table field.

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Ingress | The ring radius along the occultation track decreases with time.
Egress | The ring radius along the occultation track increases with time.
Multiple | Only used for some Hubble-based occultations where the occultation
                    track is not monotonic over relatively short time scales.


### time_series_direction
time_series_direction indicates the direction the occultation proceeds through 
        	  the target within a particular data product. Possible values are 'ingress', 'egress', 'both'
        	  or 'multiple'. The value 'Multiple' is only used for some Hubble-based occultations where the 
        	  occultation track is not monotonic over relatively short time scales.

            Not intended as a value for
            a table field.

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
ingress | Ring radius or atmospheric height along the occultation track decreases with time.
egress | Ring radius or atmospheric height along the occultation track increases with time.
both | The time series includes both ingress and egress values.
multiple | Only used for some Hubble-based occultations where the occultation
                    track is not monotonic over relatively short time scales.


### highest_detectable_opacity
highest_detectable_opacity indicates the sensitivity of a ring occultation data set to
            nearly opaque rings. It specifies the rough value for the largest normal ring opacity that can
            be detected in the data at the resolution provided, incorporating both statistical effects and
            calibration uncertainties.

            Strongly recommended in labels of ring occultation observations. Not intended as a value for
            a table field.

Type: ASCII_Real  
Units: undefined  



### lowest_detectable_opacity
lowest_detectable_opacity indicates the sensitivity of a ring occultation data set to
            nearly opaque rings. It specifies the rough value for the smallest normal ring opacity that can
            be detected in the data at the resolution provided, incorporating both statistical effects and
            calibration uncertainties.

            Strongly recommended in labels of ring occultation observations. Not intended as a value for
            a table field.

Type: ASCII_Real  
Units: undefined  



### background_signal_level
background_signal_level indicates the anticipated signal (in counts, counts per
            second, or other specified units) received when no stellar signal reaches the detector. This is
            the signal level that indicates an opaque ring.

            Strongly recommended in labels of ring stellar occultation observations if the value is constant.
            For stellar occultations, if the value is not constant, strongly recommended to be used as a
            field in the data table. Normally not used for radio occultations.

Type: ASCII_Real  
Units: undefined  



### stellar_signal_level
stellar_signal_level indicates the anticipated signal from an un-occulted star, in the
            absence of any background signal. This is the signal level that defines the difference
            between a transparent ring and an opaque ring.

            Strongly recommended in labels of ring stellar occultation observations if the value is constant.
            For stellar occultations, if the value is not constant, strongly recommended to be used as a
            field in the data table. Not used for radio occultations.

Type: ASCII_Real  
Units: undefined  



### ring_radius
ring_radius indicates a radial location within a planetary ring system. Radii are
            measured from the center of mass of the planet along the nominal ring plane. Units are km
            and are always positive.

            Required to be the first field in ring occultation profiles. Data are always organized 
            with ring radius increasing. In labels, the min and max attributes are required.

Type: ASCII_Real  
Units: Units_of_Length  



### minimum_ring_radius
minimum_ring_radius indicates the smallest ring radius value in the data table. Units are km
            and are always positive.

            Required in label files for ring occultation data.

Type: ASCII_Real  
Units: Units_of_Length  



### maximum_ring_radius
maximum_ring_radius indicates the largest ring radius value in the data table. Units are km
            and are always positive.

            Required in label files for ring occultation data.

Type: ASCII_Real  
Units: Units_of_Length  



### ring_longitude
ring_longitude specifies the inertial longitude of a ring feature relative to the prime
            meridian. In planetary ring systems, the prime meridian is the ascending node of the planet's
            invariable plane on the Earth's mean equator of J2000. Longitudes are measured in the
            direction of orbital motion along the planet's invariable plane to the ring's ascending node,
            and thence along the ring plane. Values range from 0 to 360 in units of degrees.
            Note: The invariable plane of a planet is equivalent to its equatorial plane for every ringed
            planet except Neptune.

            Required to be the second field in ring occultation profiles. In labels, the min and 
            max attributes are required.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### minimum_ring_longitude
minimum_ring_longitude specifes one boundary for the ring longitude range in the data; normally the 
            smallest value. However, for ranges that cross the prime meridian, the minimum ring longitude will have a
            value greater than the maximum ring longitude. Values range from 0 to 360 in units of degrees.

            Required in label files for ring occultation data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### maximum_ring_longitude
maximum_ring_longitude specifies one boundary for the ring longitude range in the data; normally the 
            largest value. However, for ranges that cross the prime meridian, the maximum ring longitude will have a
            value less than the minimum ring longitude. Values range from 0 to 360 in units of degrees.

            Required in label files for ring occultation data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### observed_ring_elevation
observed_ring_elevation is an angle measured at a point in the ring plane, starting
            from the ring plane to the direction of a photon heading to the observer. This angle is
            positive on the side of the ring plane defined by positive angular momentum, and negative
            on the opposite side. Values range from -90 to +90 in units of degrees. This angle is constant 
            for stellar occultations, but may vary significantly during radio occultations.
            Note: The direction of positive angular momentum points toward the IAU-defined north side
            of the ring plane for Jupiter, Saturn and Neptune, but IAU-defined south side of the ring
            plane for Uranus.

            Required in the label if the value is constant for the observation. If the angle varies for 
            the observation, the min and max attributes are required in the label, and observed_ring_elevation 
            is strongly recommended as a field in the data table. The above definition of observed_ring_elevation 
            is equivalent to the most common usage of the term 'ring open angle', B.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### minimum_observed_ring_elevation
minimum_observed_ring_elevation specifes the smallest value for observed_ring_elevation in 
            the data file. Only used if the value is not constant over the observation. Values range from -90 
            to +90 in units of degrees.

            Not intended for use in the data file.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### maximum_observed_ring_elevation
maximum_observed_ring_elevation specifes the largest value for observed_ring_elevation in 
            the data file. Only used if the value is not constant over the observation. Values range from -90 
            to +90 in units of degrees.

            Not intended for use in the data file.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### light_source_incidence_angle
light_source_incidence_angle is an angle measured from the local surface normal
            vector to the direction of a photon arriving from the light source. For rings, the normal vector
            is that on the same side of the rings as the light source, so values always range between 0
            and 90 in units of degrees.
            The value is always equal to 90 - | observed_ring_elevation |
            This will enable users to perform database searches based on the effective ring opening
            angle when they are not concerned about the the distinction between north-side and southside
            viewpoints.
            We have included the 'light source' prefix to the term so that this quantity is not confused
            with 'incidence angle', a term that is generally associated with sunlight rather than stars
            or radio transmitters.

            Required in the label if the value is constant for the observation. If the angle varies for 
            the observation, the min and max attributes are required in the label. Optional as a field in 
            the data table.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### minimum_light_source_incidence_angle
minimum_light_source_incidence_angle specifes the smallest value for observed_ring_elevation in 
            the observation. Only used if the value is not constant over the observation. Values range from 0 
            to +90 in units of degrees.

            Not intended for use in the data file.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 90  



### maximum_light_source_incidence_angle
maximum_light_source_incidence_angle specifes the largest value for observed_ring_elevation in 
            the observation. Only used if the value is not constant over the observation. Values range from 0 
            to +90 in units of degrees.

            Not intended for use in the data file.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 90  



### observed_ring_azimuth
observed_ring_azimuth is an angle measured at a point in the ring plane, starting
            from the direction of a photon heading to the observer, and ending at the direction of a local
            radial vector. This angle is projected into the ring plane and measured in the prograde
            direction. Note that, as seen from the observer, it equals 90 degrees along the right ansa
            and 270 degrees along the left ansa. Values range from 0 to 360 in units of degrees.

            Required to be the third field in ring occultation profiles. In labels, the min and 
            max attributes are required.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### minimum_observed_ring_azimuth
minimum_observed_ring_azimuth specifes the smallest value for observed_ring_azimuth in 
            the data file. Values range from 0 to 360 in units of degrees.

            Required in label files for ring occultation data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### maximum_observed_ring_azimuth
maximum_observed_ring_azimuth specifes the largest value for observed_ring_azimuth in 
            the data file. Values range from 0 to 360 in units of degrees.

            Required in label files for ring occultation data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### sub_stellar_ring_azimuth
sub_stellar_ring_azimuth is an angle measured at a point in the ring plane, starting from 
        	  the direction of a photon arriving from a star, and ending at the direction of a local radial vector. 
        	  This angle is projected into the ring plane and measured in the prograde direction. Values range 
        	  from 0 to 360 in units of degrees. For stellar occultation data, this angle is equal to 
        	  (observed_ring_azimuth + 180) mod 360.

            It is available only for backward compatibility with previously published Cassini UVIS 
            occultation data analysis; observed_ring_azimuth is the preferred quantity for archiving. 
            sub_stellar_ring_azimuth is an optional data table field for Cassini UVIS occultation data; not recommended
            for other occultation data. In a label, the min and max variation attributes are optional for 
            Cassini UVIS occultation data; not recommended for other occultation data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### minimum_sub_stellar_ring_azimuth
minimum_sub_stellar_ring_azimuth specifes the smallest value for sub_stellar_ring_azimuth in 
            the data file. Values range from 0 to 360 in units of degrees.

            Optional label attribute for Cassini UVIS occultation data; not used for other occultation 
            data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### maximum_sub_stellar_ring_azimuth
maximum_sub_stellar_ring_azimuth specifes the largest value for sub_stellar_ring_azimuth in 
            the data file. Values range from 0 to 360 in units of degrees.

            Optional label attribute for Cassini UVIS occultation data; not used for other occultation 
            data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### sub_stellar_clock_angle
sub_stellar_clock_angle is an angle measured at a point in the ring plane, from the
            direction toward a star to the local radial direction. This angle is projected into the ring plane
            and measured in the clockwise (retrograde) direction. Equivalently, this is the prograde
            angle from the local radial direction to the direction toward the star. For stellar occultation data, 
            this angle is equal to (180 - OBSERVED_RING_AZIMUTH) mod 360.

            It is available only for backward compatibility with previously published Cassini VIMS 
            occultation data analysis; observed_ring_azimuth is the preferred quantity for archiving. 
            sub_stellar_clock_angle is an optional data table field for Cassini VIMS occultation data; not recommended
            for other occultation data. In a label, the min and max variation attributes are optional for 
            Cassini VIMS occultation data; not recommended for other occultation data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### minimum_sub_stellar_clock_angle
minimum_sub_stellar_clock_angle specifes the smallest value for sub_stellar_clock_angle in 
            the data file. Values range from 0 to 360 in units of degrees.

            Optional label attribute for Cassini VIMS occultation data; not used for other occultation 
            data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### maximum_sub_stellar_clock_angle
maximum_sub_stellar_clock_angle specifes the largest value for sub_stellar_clock_angle in 
            the data file. Values range from 0 to 360 in units of degrees.

            Optional label attribute for Cassini VIMS occultation data; not used for other occultation 
            data.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### wavelength
wavelength of the observation.

            Optional in labels. If the observation is over a wavelength range, use the 
            corresponding minimum and maximum attributes instead.

Type: ASCII_Real  
Units: Units_of_Length  



### minimum_wavelength
minimum_wavelength is the smallest wavelength used in the observation.

            Optional in labels. Used with maximum_wavelength when the observation is over 
            a wavelength range.

Type: ASCII_Real  
Units: Units_of_Length  



### maximum_wavelength
maximum_wavelength is the largest wavelength used in the observation.

            Optional in labels. Used with minimum_wavelength when the observation is over 
            a wavelength range.

Type: ASCII_Real  
Units: Units_of_Length  



### dsn_station_number
dsn_station_number identifies the receiving DSN station.

            Required in labels for radio occultations; not used for stellar occultations. Nillable in 
            which case the nil_reason should be 'inapplicable'.

Type: ASCII_Integer  
Units: undefined  



### frequency_band
The frequency_band attribute provides the one or two letter identifier for the frequency 
            band associated with radio occultation data.

            Required in labels for radio occultations; not used for stellar occultations.

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
R | Frequency range: 1.70 to 2.60 GHz
D | Frequency range: 2.20 to 3.30 GHz
S | Frequency range: 2.60 to 3.95 GHz
E | Frequency range: 3.30 to 4.90 GHz
G | Frequency range: 3.95 to 5.85 GHz
F | Frequency range: 4.90 to 7.05 GHz
C | Frequency range: 5.85 to 8.20 GHz
H | Frequency range: 7.05 to 10.10 GHz
X | Frequency range: 8.2 to 12.4 GHz
Ku | Frequency range: 12.4 to 18.0 GHz
K | Frequency range: 5.0 to 26.5 GHz
Ka | Frequency range: 26.5 to 40.0 GHz
Q | Frequency range: 33 to 50 GHz
U | Frequency range: 40 to 60 GHz
V | Frequency range: 50 to 75 GHz
W | Frequency range: 75 to 110 GHz
Y | Frequency range: 325 to 500 GHz


### spice_filename
spice_filename gives the file name(s) of SPICE files used in the analysis. Only used if the SPICE files cannot be identified using a LID or LIDVID. Otherwise the association is made in the Reference_Class using the Internal_Reference class.

            Optional in labels for radio occultation. Nillable in which case the 
            nil_reason should be 'inapplicable'.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### pole_right_ascension_angle
The right ascension (RA) of the pole of the specified body, given in angular measurements.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### pole_right_ascension_angle_uncert
The uncertainty of the right ascension (RA) of the pole of the specified body, given in angular measurements.

Type: ASCII_Real  
Units: Units_of_Angle  



### pole_declination_angle
The declination (Dec) of the pole of the specified body, given in angular measurements.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### pole_declination_angle_uncert
The uncertainty of the declination (Dec) of the pole of the specified body, given in angular measurements.

Type: ASCII_Real  
Units: Units_of_Angle  



### gmass
The product of the gravitational constant, G, and the mass of the body identified in the enclosing class.

Type: ASCII_Real  
Units: undefined  



### j2
The J2 gravitational harmonic coefficient of the body identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_None  



### j4
The J4 gravitational harmonic coefficient of the body identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_None  



### j6
The J6 gravitational harmonic coefficient of the body identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_None  



### j8
The J8 gravitational harmonic coefficient of the body identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_None  



### grav_ref_radius
The reference radius for the gravitational harmonic coefficients of the body identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Length  



### epoch_ring_fit_utc
The epoch for the ring orbital elements given in this product. Format is YYYY-MM-DDTHH:MM:SS.SSSZ and may be truncated.

Type: ASCII_Date_Time_YMD_UTC  
Units: Units_of_Time  



### semimajor_axis
The semimajor axis of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Length  



### semimajor_axis_uncert
The uncertainty in the value for the semimajor axis of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Length  



### eccentricity
The eccentricity of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_None  



### eccentricity_uncert
The uncertainty in the value for the eccentricity of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_None  



### periapse_longitude
The longitude of periapse for the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### periapse_longitude_uncert
The uncertainty in the value for the longitude of periapse for the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angle  



### periapse_precession_rate
The precession rate of the periapse of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angular_Velocity  



### periapse_precession_rate_uncert
The uncertainty in the value for the periapse precession rate of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angular_Velocity  



### periapse_precession_rate_method
A flag indicating the constraints used to determine the periapse precession rate of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Integer  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
0 | Fitted value.
1 | computed from J2 and J4.
2 | computed from J2 and J4, and five major Uranian satellites.


### inclination
The inclination of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 180  



### inclination_uncert
The uncertainty in the value for the inclination of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angle  



### node_longitude
The longitude of the ascending node of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### node_longitude_uncert
The uncertainty in the value for the longitude of the ascending node of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angle  



### nodal_regression_rate
The regression rate of the node of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angular_Velocity  



### nodal_regression_rate_uncert
The uncertainty in the value for the periapse precession rate of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Angular_Velocity  



### nodal_regression_rate_method
A flag indicating the constraints used to determine the node regression rate of the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Integer  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
0 | Fitted value.
1 | computed from J2 and J4.
2 | computed from J2 and J4, and five major Uranian satellites.


### number_points
Number of fitted data points for the orbit of the body or ring identified in the enclosing class.

Type: ASCII_Integer  
Units: Units_of_None  



### fit_rms_semimajor
The RMS residuals for the semimajor axis of the body or ring identified in the enclosing class.

Type: ASCII_Real  
Units: Units_of_Length  



### normal_mode_amplitude
The amplitude of the normal mode for the ring identified in the enclosing class. A value of -9.99X10^99 indicates there is no normal mode for the ring.

Type: ASCII_Real  
Units: Units_of_Length  



### normal_mode_amplitude_uncert
The uncertainty in the value for the normal mode of the ring identified in the enclosing class. A value of -9.99X10^99 indicates there is no normal mode for the ring.

Type: ASCII_Real  
Units: Units_of_Length  



### normal_mode_phase
The phase of the normal mode at epoch specified by epoch_ring_fit_utc for the ring identified in the enclosing class. A value of -9.99X10^99 indicates there is no normal mode for the ring.

Type: ASCII_Real  
Units: Units_of_Angle  



### normal_mode_phase_uncert
The uncertainty in the value for the normal_mode_phase of the ring identified in the enclosing class. A value of -9.99X10^99 indicates there is no normal mode for the ring.

Type: ASCII_Real  
Units: Units_of_Angle  



### normal_mode_pattern_speed
The pattern speed of the normal mode in the ring identified in the enclosing class. A value of -9.99X10^99 indicates there is no normal mode for the ring.

Type: ASCII_Real  
Units: Units_of_Angular_Velocity  



### normal_mode_pattern_speed_uncert
The the uncertainty in the pattern speed of the normal mode in the ring identified in the enclosing class. A value of -9.99X10^99 indicates there is no normal mode for the ring.

Type: ASCII_Real  
Units: Units_of_Angular_Velocity  



### normal_mode_wavenumber
The wave number of the normal mode in the ring identified in the enclosing class. A value of -999 indicates there is no normal mode for the ring.

Type: ASCII_Integer  
Units: Units_of_None  


