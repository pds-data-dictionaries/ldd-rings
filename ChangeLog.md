    	Classes used from the geom namespace
    	  - Body_Ident_Base
    	  - Reference_Frame_Ident
    	  - Central_Body_Ident
    	  - Display_Direction
    	  
    	Classes used from the pds namespace
    	  - Internal_Reference

    	Attributes used from the pds namespace
    	  - local_identifier_reference
    	  - sampling_parameter_name
    	  - sampling_parameter_unit
    	  - sampling_parameter_interval
    	  - description
    	  - name     (indirectly via classes from the geom namespace)
    	  - comment  (indirectly via classes from the geom namespace)

      v1.2.0  2014-03-29
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
      v1.6.0.0  2019-03-06
        -  Updated to version 1.9.0.0 of IM.
        -  Added the Ring_Model class and numerous classes and attributes to support it.
        -  Added the Orbital_Elements class.
        -  ring_event_tdb - changed the enumeration flag to false
        -  added optional description attribute to several classes 
        -  added classes to support ring mosaics: Ring_Reprojection and Reprojection_Geometry.
        -  added several attributes to support ring mosaics.  
        - Added Display_Direction including pds:local_identifier_reference with a cardinality of [0,*].  
        - Added the class Ring_Spectrum
        - Added attributes
          - emission angle
          - ring_intercept_resolution
          - ring_longitude_observed_minus_subsolar 
          - reflectivity
        - Added an optional pds.local_identifier attribute to most classes.
        -  As an interim bandaid(?) pending repair of LDDTool, added several classes
           and attributes 'borrowed' from the geometry dictionary and removed the 
           geom. prefixes to those classes in this dictionary. The affected classes
           are:
                - Body_Ident_Base       
                - Frame_Ident_Base  (not used explicitly when geom is referenced)    
                - Reference_Frame_Ident 
                - Central_Body_Ident    
        - Added Uniformly_Sampled_Radius based on Uniformly_Sampled_Wavelength from the sp namespace 
        - Made the use of ring_observation_id optional.
        - @@@ Need schematron rule to ensure values for axis_name correspond to entries in Axis_Array.name 
      v1.7.0.0  2019-03-07
        - Updated to version 1.10.0.0 of IM.
        - Removed the Rings_Supplement class.
        - Removed the ring_observation_id attribute.
        - Removed pds:Internal_Reference from the Body_Ident_Base and Frame_Ident_Base classes.
        - Added a SChematron definition for a value in reference_type in pds:Internal_Reference in Uniformly_Sampled_Radius
      v1.8.0.0  2020-01-28
        - Updated to version 1.12.0.0 of IM.
        - Made Ring_Moon_Systems class the only xsi element.
        - removed the attribute source_pds3_id and spice_filename
        - removed milable from orbit_number and along_track_timing.
        - Added attributes fresnel_scale, projected_star_diameter, sigma_projected_star_diameter, fractional_error_star_counts, 
          time_constant_type, time_constant, sigma_time_constant.
        - All 7 of the preceding were added as optional attributes in the Occultation_Time_Series class
      v1.9.0.0  2020-01-31
        - Updated to version 1.13.0.0 of IM.
        - Add Units of Measure Type = Gmass to the gmass attribute.
      v1.10.0.0  2020-06-25
        - Updated to version 1.14.0.0 of IM.
        - Added the attributes: data_quality_index, ring_detected.
        - Revised the case of several attribute enumerated values from Title case to all lower case. The named rings of 
          Saturn are in title case while those of Uranus are lower case, consistent with normal usage by the community.
        - Added attributes min/max ring_longitude and observed_ring azimuth to Occultation_Time_Series.
        - Expanded definitions of highest and lowest detectable opacity. In each, set the minimum value to -1.0 which 
          indicates the signal was too poor to allow the calculation of the value.
      v1.11.0.0  2021-11-10
        - Defined the attributes and included in Occultation_Time_Series: 
          minimum_projected_sun_diameter, maximum_projected_sun_diameter, 
          sigma_projected_sun_diameter, average_unocculted_signal,
          lowest_detectable_normal_optical_depth, highest_detectable_normal_optical_depth,
        - Defined attributes antipated to be used as columns in data tables:
          observed_event_TDB_start_integration, observed_event_TDB_mid_integration,
          observed_event_TDB_stop_integration, ring_event_TDB_start_integration,
          ring_event_TDB_mid_integration, ring_event_TDB_stop_integration,
          ring_radius_start_integration, ring_radius_mid_integration, ring_radius_stop_integration,
          raw_total_counts,counts_per_second, transparency, normal_optical_depth,
          projected_sun_diameter. 
        - In Occultation_Ring_Profile and Occultation_Time_Series,changed the cardinality of 
          data_quality_index to [0,*].
        - Added to data_quality_index enumerated values to support solar occultations: B, F, R, U, X.
        - Revised the case of several attribute enumerated values to Title case.
        - Added the attribute: ring_detected.
        - Added attributes min/max ring_longitude and observed_ring azimuth to Occultation_Time_Series
      v1.12.0.0  2023-04-18
        - Update steward name from Mitchell Gordon to Matthew Tiscareno
        - Improved definitions of epoch_reprojection_basis_utc, corotating_ring_longitude, minimum_corotating_ring_longitude, 
          and maximum_corotating_ring_longitude.  
        - Fixed typo in corotating_flag enumerated value definition. 
        - Regularized spelling of "corotation"
        - Add inertial_ring_longitude, minimum_inertial_ring_longitude, and maximum_inertial_ring_longitude.  These replace 
          ring_longitude, minimum_ring_longitude, and maximum_ring_longitude, which should be deprecated. 
        - Also, classes that are copied here from the Geometry and Display dictionaries should be deprecated, as of now.
          These include Body_Ident_Base, Reference_Frame_Ident, Central_Body_Ident, and Display_Direction. 
        - Actual deprecation not yet implemented.
      v1.13.0  2024-08-07
        - Switched to three-element semantic versioning (this is v1.13.0, not v1.13.0.0).
        - Migrated the change log from a comment in the IngestLDD to a file ChangeLog.md in the ldd-rings directory [STILL TO DO].
	- Remove attributes that have been previously deprecated: ring_longitude, minimum_ring_longitude, and maximum_ring_longitude
	- Remove classes that were copied from Geometry and Display dictionaries, and replace their usage with the same class but with a prefix indicating the dictionary from which they come:  Body_Ident_Base ==> geom.Body_Ident_Base, 
	- Add a new class, Wavelength_Parameters, which includes the three existing wavelength attributes; update the various classes that already use the wavelength attributes to use the new class; update the associated schematron rules. 