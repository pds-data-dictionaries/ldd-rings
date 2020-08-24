<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:rings  Version:1.6.0.0 - Tue Mar 27 11:23:39 PDT 2018 -->
  <!-- Generated from the PDS4 Information Model Version 1.8.0.0 - System Build 7b -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/rings/v1" prefix="rings"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="//Occultation_Ring_Profile">
      <sch:assert test="if ((rings:occultation_type='radio') and not (rings:dsn_station_number))  then false() else true()">
        If rings:occultation_type is set to radio, you must specify the DSN receiving station number.</sch:assert>
      <sch:assert test="if ((rings:occultation_type='radio') and not (rings:frequency_band))  then false() else true()">
        If rings:occultation_type is set to radio, you must specify the frequency band.</sch:assert>
      <sch:assert test="if ((rings:occultation_type='stellar') and not (rings:star_name))  then false() else true()">
        If rings:occultation_type is set to stellar, you must identify the star using the star_name attribute.</sch:assert>
      <sch:assert test="if (not (rings:wavelength) and not (rings:minimum_wavelength)) then false() else true()">
        You must identify the wavelength of the observation either as a single value using rings:wavelength,
            	or as a range using the minimum-maximum wavelength pair.</sch:assert>
      <sch:assert test="if ((rings:minimum_wavelength) and not (rings:maximum_wavelength))  then false() else true()">
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_wavelength) and not (rings:minimum_wavelength))  then false() else true()">
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if (not (rings:radial_sampling_interval) and not (rings:minimum_radial_sampling_interval))  then false() else true()">
        You must specify either the radial sampling interval, or the pair minimum and maximum radial sampling interval.</sch:assert>
      <sch:assert test="if ((rings:minimum_radial_sampling_interval) and not (rings:maximum_radial_sampling_interval))  then false() else true()">
        rings:minimum_radial_sampling_interval and rings:maximum_radial_sampling_interval, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_radial_sampling_interval) and not (rings:minimum_radial_sampling_interval))  then false() else true()">
        rings:minimum_radial_sampling_interval and rings:maximum_radial_sampling_interval, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:sclk_start_time) and not (rings:sclk_stop_time))  then false() else true()">
        rings:sclk_stop_time and rings:sclk_stop_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:sclk_stop_time) and not (rings:sclk_start_time))  then false() else true()">
        rings:minimum_subsolar_azimuth and rings:maximum_subsolar_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_event_time) and not (rings:maximum_observed_event_time))  then false() else true()">
        rings:minimum_observed_event_time and rings:maximum_observed_event_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_event_time) and not (rings:minimum_observed_event_time))  then false() else true()">
        rings:minimum_observed_event_time and rings:maximum_observed_event_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_start_time_utc) and not (rings:observed_event_stop_time_utc))  then false() else true()">
        rings:observed_event_start_time_utc and rings:observed_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_stop_time_utc) and not (rings:observed_event_start_time_utc))  then false() else true()">
        rings:observed_event_start_time_utc and rings:observed_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_start_tdb) and not (rings:observed_event_stop_tdb))  then false() else true()">
        rings:observed_event_start_tdb and rings:observed_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_stop_tdb) and not (rings:observed_event_start_tdb))  then false() else true()">
        rings:observed_event_start_tdb and rings:observed_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:spacecraft_event_start_time_utc) and not (rings:spacecraft_event_stop_time_utc))  then false() else true()">
        rings:spacecraft_event_start_time_utc and rings:spacecraft_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:spacecraft_event_stop_time_utc) and not (rings:spacecraft_event_start_time_utc))  then false() else true()">
        rings:spacecraft_event_start_time_utc and rings:spacecraft_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_start_time_utc) and not (rings:ring_event_stop_time_utc))  then false() else true()">
        rings:ring_event_start_time_utc and rings:ring_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_stop_time_utc) and not (rings:ring_event_start_time_utc))  then false() else true()">
        rings:ring_event_start_time_utc and rings:ring_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_start_tdb) and not (rings:ring_event_stop_tdb))  then false() else true()">
        rings:ring_event_start_tdb and rings:ring_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_stop_tdb) and not (rings:ring_event_start_tdb))  then false() else true()">
        rings:ring_event_start_tdb and rings:ring_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:earth_received_start_time_utc) and not (rings:earth_received_stop_time_utc))  then false() else true()">
        rings:earth_received_start_time_utc and rings:earth_received_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:earth_received_stop_time_utc) and not (rings:earth_received_start_time_utc))  then false() else true()">
        rings:earth_received_start_time_utc and rings:earth_received_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_ring_radius) and not (rings:maximum_ring_radius))  then false() else true()">
        rings:minimum_ring_radius and rings:maximum_ring_radius, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_ring_radius) and not (rings:minimum_ring_radius))  then false() else true()">
        rings:minimum_ring_radius and rings:maximum_ring_radius, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_ring_longitude) and not (rings:maximum_ring_longitude))  then false() else true()">
        rings:minimum_ring_longitude and rings:maximum_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_ring_longitude) and not (rings:minimum_ring_longitude))  then false() else true()">
        rings:minimum_ring_longitude and rings:maximum_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_ring_azimuth) and not (rings:maximum_observed_ring_azimuth))  then false() else true()">
        rings:minimum_observed_ring_azimuth and rings:maximum_observed_ring_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_ring_azimuth) and not (rings:minimum_observed_ring_azimuth))  then false() else true()">
        rings:minimum_observed_ring_azimuth and rings:maximum_observed_ring_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if (not (rings:observed_ring_elevation) and not (rings:minimum_observed_ring_elevation)) then false() else true()">
        You must identify the observed ring elevation of the observation ( [-90,90] degrees) either as a single value using rings:observed_ring_elevation,
            	or as a range using the minimum-maximum observed ring elevation pair.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_ring_elevation) and not (rings:maximum_observed_ring_elevation))  then false() else true()">
        rings:minimum_observed_ring_elevation and rings:maximum_observed_ring_elevation, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_ring_elevation) and not (rings:minimum_observed_ring_elevation))  then false() else true()">
        rings:minimum_observed_ring_elevation and rings:maximum_observed_ring_elevation, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_light_source_incidence_angle) and not (rings:maximum_light_source_incidence_angle))  then false() else true()">
        rings:minimum_light_source_incidence_angle and rings:maximum_light_source_incidence_angle, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_light_source_incidence_angle) and not (rings:minimum_light_source_incidence_angle))  then false() else true()">
        rings:minimum_light_source_incidence_angle and rings:maximum_light_source_incidence_angle, are a pair; if you use one, you must use both.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//Occultation_Time_Series">
      <sch:assert test="if ((rings:occultation_type='radio') and not (rings:dsn_station_number))  then false() else true()">
        If rings:occultation_type is set to radio, you must specify the DSN receiving station number.</sch:assert>
      <sch:assert test="if ((rings:occultation_type='radio') and not (rings:frequency_band))  then false() else true()">
        If rings:occultation_type is set to radio, you must specify the frequency band.</sch:assert>
      <sch:assert test="if ((rings:occultation_type='stellar') and not (rings:star_name))  then false() else true()">
        If rings:occultation_type is set to stellar, you must identify the star using the star_name attribute.</sch:assert>
      <sch:assert test="if (not (rings:wavelength) and not (rings:minimum_wavelength)) then false() else true()">
        You must identify the wavelength of the observation either as a single value using rings:wavelength,
            	or as a range using the minimum-maximum wavelength pair.</sch:assert>
      <sch:assert test="if ((rings:minimum_wavelength) and not (rings:maximum_wavelength))  then false() else true()">
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_wavelength) and not (rings:minimum_wavelength))  then false() else true()">
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if (not (rings:radial_sampling_interval) and not (rings:minimum_radial_sampling_interval))  then false() else true()">
        You must specify either the radial sampling interval, or the pair minimum and maximum radial sampling interval.</sch:assert>
      <sch:assert test="if ((rings:sclk_start_time) and not (rings:sclk_stop_time))  then false() else true()">
        rings:sclk_stop_time and rings:sclk_stop_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:sclk_stop_time) and not (rings:sclk_start_time))  then false() else true()">
        rings:minimum_subsolar_azimuth and rings:maximum_subsolar_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_event_time) and not (rings:maximum_observed_event_time))  then false() else true()">
        rings:minimum_observed_event_time and rings:maximum_observed_event_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_event_time) and not (rings:minimum_observed_event_time))  then false() else true()">
        rings:minimum_observed_event_time and rings:maximum_observed_event_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_start_time_utc) and not (rings:observed_event_stop_time_utc))  then false() else true()">
        rings:observed_event_start_time_utc and rings:observed_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_stop_time_utc) and not (rings:observed_event_start_time_utc))  then false() else true()">
        rings:observed_event_start_time_utc and rings:observed_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_start_tdb) and not (rings:observed_event_stop_tdb))  then false() else true()">
        rings:observed_event_start_tdb and rings:observed_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_stop_tdb) and not (rings:observed_event_start_tdb))  then false() else true()">
        rings:observed_event_start_tdb and rings:observed_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:spacecraft_event_start_time_utc) and not (rings:spacecraft_event_stop_time_utc))  then false() else true()">
        rings:spacecraft_event_start_time_utc and rings:spacecraft_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:spacecraft_event_stop_time_utc) and not (rings:spacecraft_event_start_time_utc))  then false() else true()">
        rings:spacecraft_event_start_time_utc and rings:spacecraft_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_start_time_utc) and not (rings:ring_event_stop_time_utc))  then false() else true()">
        rings:ring_event_start_time_utc and rings:ring_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_stop_time_utc) and not (rings:ring_event_start_time_utc))  then false() else true()">
        rings:ring_event_start_time_utc and rings:ring_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_start_tdb) and not (rings:ring_event_stop_tdb))  then false() else true()">
        rings:ring_event_start_tdb and rings:ring_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_stop_tdb) and not (rings:ring_event_start_tdb))  then false() else true()">
        rings:ring_event_start_tdb and rings:ring_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:earth_received_start_time_utc) and not (rings:earth_received_stop_time_utc))  then false() else true()">
        rings:earth_received_start_time_utc and rings:earth_received_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:earth_received_stop_time_utc) and not (rings:earth_received_start_time_utc))  then false() else true()">
        rings:earth_received_start_time_utc and rings:earth_received_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_ring_radius) and not (rings:maximum_ring_radius))  then false() else true()">
        rings:minimum_ring_radius and rings:maximum_ring_radius, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_ring_radius) and not (rings:minimum_ring_radius))  then false() else true()">
        rings:minimum_ring_radius and rings:maximum_ring_radius, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_ring_longitude) and not (rings:maximum_ring_longitude))  then false() else true()">
        rings:minimum_ring_longitude and rings:maximum_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_ring_longitude) and not (rings:minimum_ring_longitude))  then false() else true()">
        rings:minimum_ring_longitude and rings:maximum_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_ring_azimuth) and not (rings:maximum_observed_ring_azimuth))  then false() else true()">
        rings:minimum_observed_ring_azimuth and rings:maximum_observed_ring_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_ring_azimuth) and not (rings:minimum_observed_ring_azimuth))  then false() else true()">
        rings:minimum_observed_ring_azimuth and rings:maximum_observed_ring_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if (not (rings:observed_ring_elevation) and not (rings:minimum_observed_ring_elevation)) then false() else true()">
        You must identify the observed ring elevation of the observation ( [-90,90] degrees) either as a single value using rings:observed_ring_elevation,
            	or as a range using the minimum-maximum observed ring elevation pair.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_ring_elevation) and not (rings:maximum_observed_ring_elevation))  then false() else true()">
        rings:minimum_observed_ring_elevation and rings:maximum_observed_ring_elevation, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_ring_elevation) and not (rings:minimum_observed_ring_elevation))  then false() else true()">
        rings:minimum_observed_ring_elevation and rings:maximum_observed_ring_elevation, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_light_source_incidence_angle) and not (rings:maximum_light_source_incidence_angle))  then false() else true()">
        rings:minimum_light_source_incidence_angle and rings:maximum_light_source_incidence_angle, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_light_source_incidence_angle) and not (rings:minimum_light_source_incidence_angle))  then false() else true()">
        rings:minimum_light_source_incidence_angle and rings:maximum_light_source_incidence_angle, are a pair; if you use one, you must use both.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//Ring_Model/rings:Central_Body_Parameters">
      <sch:assert test="if ((rings:j2) and not (rings:grav_ref_radius))  then false() else true()">
        You must supply the reference radius, rings:grav_ref_radius, associated with the gravitational harmonic coefficient. </sch:assert>
      <sch:assert test="if ((rings:j4) and not (rings:grav_ref_radius))  then false() else true()">
        You must supply the reference radius, rings:grav_ref_radius, associated with the gravitational harmonic coefficient. </sch:assert>
      <sch:assert test="if ((rings:j6) and not (rings:grav_ref_radius))  then false() else true()">
        You must supply the reference radius, rings:grav_ref_radius, associated with the gravitational harmonic coefficient. </sch:assert>
      <sch:assert test="if ((rings:j8) and not (rings:grav_ref_radius))  then false() else true()">
        You must supply the reference radius, rings:grav_ref_radius, associated with the gravitational harmonic coefficient. </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:along_track_timing_offset">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:earth_received_start_time_utc">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:earth_received_stop_time_utc">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:frequency_band">
      <sch:assert test=". = ('C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y')">
        The attribute rings:frequency_band must be equal to one of the following values 'C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:maximum_light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:maximum_observed_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:maximum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:maximum_radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:maximum_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:maximum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:maximum_wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:minimum_light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:minimum_observed_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:minimum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:minimum_radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:minimum_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:minimum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:minimum_wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:observed_event_start_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:observed_event_stop_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:occultation_type">
      <sch:assert test=". = ('Radio', 'Solar', 'Stellar')">
        The attribute rings:occultation_type must be equal to one of the following values 'Radio', 'Solar', 'Stellar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:planetary_occultation_flag">
      <sch:assert test=". = ('N', 'Y')">
        The attribute rings:planetary_occultation_flag must be equal to one of the following values 'N', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:radial_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:ring_event_start_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:ring_event_stop_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:ring_occultation_direction">
      <sch:assert test=". = ('Both', 'Egress', 'Ingress', 'Multiple')">
        The attribute rings:ring_occultation_direction must be equal to one of the following values 'Both', 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:ring_profile_direction">
      <sch:assert test=". = ('Egress', 'Ingress', 'Multiple')">
        The attribute rings:ring_profile_direction must be equal to one of the following values 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation/rings:wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation_Support/rings:frequency_band">
      <sch:assert test=". = ('C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y')">
        The attribute rings:frequency_band must be equal to one of the following values 'C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation_Support/rings:maximum_observed_event_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation_Support/rings:minimum_observed_event_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation_Support/rings:occultation_type">
      <sch:assert test=". = ('Radio', 'Solar', 'Stellar')">
        The attribute rings:occultation_type must be equal to one of the following values 'Radio', 'Solar', 'Stellar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation_Support/rings:planetary_occultation_flag">
      <sch:assert test=". = ('N', 'Y')">
        The attribute rings:planetary_occultation_flag must be equal to one of the following values 'N', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation_Support/rings:ring_occultation_direction">
      <sch:assert test=". = ('Both', 'Egress', 'Ingress', 'Multiple')">
        The attribute rings:ring_occultation_direction must be equal to one of the following values 'Both', 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Radio_Occultation_Support/rings:ring_profile_direction">
      <sch:assert test=". = ('Egress', 'Ingress', 'Multiple')">
        The attribute rings:ring_profile_direction must be equal to one of the following values 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:maximum_observed_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:maximum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:maximum_radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:maximum_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:maximum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:maximum_wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:minimum_observed_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:minimum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:minimum_radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:minimum_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:minimum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:minimum_wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:observed_event_start_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:observed_event_stop_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:occultation_type">
      <sch:assert test=". = ('Radio', 'Solar', 'Stellar')">
        The attribute rings:occultation_type must be equal to one of the following values 'Radio', 'Solar', 'Stellar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:planetary_occultation_flag">
      <sch:assert test=". = ('N', 'Y')">
        The attribute rings:planetary_occultation_flag must be equal to one of the following values 'N', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:radial_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:ring_event_start_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:ring_event_stop_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:ring_occultation_direction">
      <sch:assert test=". = ('Both', 'Egress', 'Ingress', 'Multiple')">
        The attribute rings:ring_occultation_direction must be equal to one of the following values 'Both', 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:ring_profile_direction">
      <sch:assert test=". = ('Egress', 'Ingress', 'Multiple')">
        The attribute rings:ring_profile_direction must be equal to one of the following values 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:sub_stellar_clock_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:sub_stellar_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Stellar_Occultation/rings:wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
