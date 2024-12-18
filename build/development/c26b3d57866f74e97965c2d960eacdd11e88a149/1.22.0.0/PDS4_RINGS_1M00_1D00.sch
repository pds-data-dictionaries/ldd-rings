<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:rings  Version:1.13.0.0 - Thu Dec 12 22:51:17 UTC 2024 -->
  <!-- Generated from the PDS4 Information Model Version 1.22.0.0 - System Build 14.1 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
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
    <sch:rule context="//rings:Occultation_Ring_Profile">
      <sch:assert test="if ((rings:occultation_type='radio') and not (rings:dsn_station_number))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        If rings:occultation_type is set to radio, you must specify the DSN receiving station number.</sch:assert>
      <sch:assert test="if ((rings:occultation_type='radio') and not (rings:frequency_band))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        If rings:occultation_type is set to radio, you must specify the frequency band.</sch:assert>
      <sch:assert test="if ((rings:occultation_type='stellar') and not (rings:star_name))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        If rings:occultation_type is set to stellar, you must identify the star using the star_name attribute.</sch:assert>
      <sch:assert test="if (not (rings:Wavelength_Parameters/rings:wavelength) and not (rings:Wavelength_Parameters/rings:minimum_wavelength)) then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        You must identify the wavelength of the observation either as a single value using rings:wavelength,
            	or as a range using the minimum-maximum wavelength pair.</sch:assert>
      <sch:assert test="if ((rings:Wavelength_Parameters/rings:minimum_wavelength) and not (rings:Wavelength_Parameters/rings:maximum_wavelength))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:Wavelength_Parameters/rings:maximum_wavelength) and not (rings:Wavelength_Parameters/rings:minimum_wavelength))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if (not (rings:radial_sampling_interval) and not (rings:minimum_radial_sampling_interval))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        You must specify either the radial sampling interval, or the pair minimum and maximum radial sampling interval.</sch:assert>
      <sch:assert test="if ((rings:minimum_radial_sampling_interval) and not (rings:maximum_radial_sampling_interval))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_radial_sampling_interval and rings:maximum_radial_sampling_interval, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_radial_sampling_interval) and not (rings:minimum_radial_sampling_interval))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_radial_sampling_interval and rings:maximum_radial_sampling_interval, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:sclk_start_time) and not (rings:sclk_stop_time))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:sclk_stop_time and rings:sclk_stop_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:sclk_stop_time) and not (rings:sclk_start_time))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_subsolar_azimuth and rings:maximum_subsolar_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_event_time) and not (rings:maximum_observed_event_time))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_observed_event_time and rings:maximum_observed_event_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_event_time) and not (rings:minimum_observed_event_time))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_observed_event_time and rings:maximum_observed_event_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_start_time_utc) and not (rings:observed_event_stop_time_utc))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:observed_event_start_time_utc and rings:observed_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_stop_time_utc) and not (rings:observed_event_start_time_utc))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:observed_event_start_time_utc and rings:observed_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_start_tdb) and not (rings:observed_event_stop_tdb))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:observed_event_start_tdb and rings:observed_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_stop_tdb) and not (rings:observed_event_start_tdb))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:observed_event_start_tdb and rings:observed_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:spacecraft_event_start_time_utc) and not (rings:spacecraft_event_stop_time_utc))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:spacecraft_event_start_time_utc and rings:spacecraft_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:spacecraft_event_stop_time_utc) and not (rings:spacecraft_event_start_time_utc))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:spacecraft_event_start_time_utc and rings:spacecraft_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_start_time_utc) and not (rings:ring_event_stop_time_utc))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:ring_event_start_time_utc and rings:ring_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_stop_time_utc) and not (rings:ring_event_start_time_utc))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:ring_event_start_time_utc and rings:ring_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_start_tdb) and not (rings:ring_event_stop_tdb))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:ring_event_start_tdb and rings:ring_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_stop_tdb) and not (rings:ring_event_start_tdb))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:ring_event_start_tdb and rings:ring_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:earth_received_start_time_utc) and not (rings:earth_received_stop_time_utc))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:earth_received_start_time_utc and rings:earth_received_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:earth_received_stop_time_utc) and not (rings:earth_received_start_time_utc))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:earth_received_start_time_utc and rings:earth_received_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_ring_radius) and not (rings:maximum_ring_radius))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_ring_radius and rings:maximum_ring_radius, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_ring_radius) and not (rings:minimum_ring_radius))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_ring_radius and rings:maximum_ring_radius, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_inertial_ring_longitude) and not (rings:maximum_inertial_ring_longitude))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_inertial_ring_longitude and rings:maximum_inertial_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_inertial_ring_longitude) and not (rings:minimum_inertial_ring_longitude))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_inertial_ring_longitude and rings:maximum_inertial_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_corotating_ring_longitude) and not (rings:maximum_corotating_ring_longitude))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_corotating_ring_longitude and rings:maximum_corotating_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_corotating_ring_longitude) and not (rings:minimum_corotating_ring_longitude))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_corotating_ring_longitude and rings:maximum_corotating_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_ring_azimuth) and not (rings:maximum_observed_ring_azimuth))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_observed_ring_azimuth and rings:maximum_observed_ring_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_ring_azimuth) and not (rings:minimum_observed_ring_azimuth))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_observed_ring_azimuth and rings:maximum_observed_ring_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if (not (rings:observed_ring_elevation) and not (rings:minimum_observed_ring_elevation)) then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        You must identify the observed ring elevation of the observation ( [-90,90] degrees) either as a single value using rings:observed_ring_elevation,
            	or as a range using the minimum-maximum observed ring elevation pair.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_ring_elevation) and not (rings:maximum_observed_ring_elevation))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_observed_ring_elevation and rings:maximum_observed_ring_elevation, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_ring_elevation) and not (rings:minimum_observed_ring_elevation))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_observed_ring_elevation and rings:maximum_observed_ring_elevation, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_light_source_incidence_angle) and not (rings:maximum_light_source_incidence_angle))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_light_source_incidence_angle and rings:maximum_light_source_incidence_angle, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_light_source_incidence_angle) and not (rings:minimum_light_source_incidence_angle))  then false() else true()">
        <title>//rings:Occultation_Ring_Profile/Rule</title>
        rings:minimum_light_source_incidence_angle and rings:maximum_light_source_incidence_angle, are a pair; if you use one, you must use both.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//rings:Occultation_Time_Series">
      <sch:assert test="if ((rings:occultation_type='radio') and not (rings:dsn_station_number))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:occultation_type is set to radio, you must specify the DSN receiving station number.</sch:assert>
      <sch:assert test="if ((rings:occultation_type='radio') and not (rings:frequency_band))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:occultation_type is set to radio, you must specify the frequency band.</sch:assert>
      <sch:assert test="if ((rings:occultation_type='stellar') and not (rings:star_name))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:occultation_type is set to stellar, you must identify the star using the star_name attribute.</sch:assert>
      <sch:assert test="if (not (rings:Wavelength_Parameters/rings:wavelength) and not (rings:Wavelength_Parameters/rings:minimum_wavelength)) then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        You must identify the wavelength of the observation either as a single value using rings:wavelength,
            	or as a range using the minimum-maximum wavelength pair.</sch:assert>
      <sch:assert test="if ((rings:Wavelength_Parameters/rings:minimum_wavelength) and not (rings:Wavelength_Parameters/rings:maximum_wavelength))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:Wavelength_Parameters/rings:maximum_wavelength) and not (rings:Wavelength_Parameters/rings:minimum_wavelength))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:sclk_start_time) and not (rings:sclk_stop_time))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:sclk_stop_time and rings:sclk_stop_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:sclk_stop_time) and not (rings:sclk_start_time))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_subsolar_azimuth and rings:maximum_subsolar_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_event_time) and not (rings:maximum_observed_event_time))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_observed_event_time and rings:maximum_observed_event_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_event_time) and not (rings:minimum_observed_event_time))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_observed_event_time and rings:maximum_observed_event_time, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_start_time_utc) and not (rings:observed_event_stop_time_utc))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:observed_event_start_time_utc and rings:observed_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_stop_time_utc) and not (rings:observed_event_start_time_utc))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:observed_event_start_time_utc and rings:observed_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_start_tdb) and not (rings:observed_event_stop_tdb))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:observed_event_start_tdb and rings:observed_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:observed_event_stop_tdb) and not (rings:observed_event_start_tdb))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:observed_event_start_tdb and rings:observed_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:spacecraft_event_start_time_utc) and not (rings:spacecraft_event_stop_time_utc))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:spacecraft_event_start_time_utc and rings:spacecraft_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:spacecraft_event_stop_time_utc) and not (rings:spacecraft_event_start_time_utc))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:spacecraft_event_start_time_utc and rings:spacecraft_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_start_time_utc) and not (rings:ring_event_stop_time_utc))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:ring_event_start_time_utc and rings:ring_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_stop_time_utc) and not (rings:ring_event_start_time_utc))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:ring_event_start_time_utc and rings:ring_event_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_start_tdb) and not (rings:ring_event_stop_tdb))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:ring_event_start_tdb and rings:ring_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:ring_event_stop_tdb) and not (rings:ring_event_start_tdb))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:ring_event_start_tdb and rings:ring_event_stop_tdb, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:earth_received_start_time_utc) and not (rings:earth_received_stop_time_utc))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:earth_received_start_time_utc and rings:earth_received_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:earth_received_stop_time_utc) and not (rings:earth_received_start_time_utc))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:earth_received_start_time_utc and rings:earth_received_stop_time_utc, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_ring_radius) and not (rings:maximum_ring_radius))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_ring_radius and rings:maximum_ring_radius, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_ring_radius) and not (rings:minimum_ring_radius))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_ring_radius and rings:maximum_ring_radius, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_inertial_ring_longitude) and not (rings:maximum_inertial_ring_longitude))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_inertial_ring_longitude and rings:maximum_inertial_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_inertial_ring_longitude) and not (rings:minimum_inertial_ring_longitude))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_inertial_ring_longitude and rings:maximum_inertial_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_inertial_ring_longitude) and not (rings:maximum_inertial_ring_longitude))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_corotating_ring_longitude and rings:maximum_corotating_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_corotating_ring_longitude) and not (rings:minimum_corotating_ring_longitude))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_corotating_ring_longitude and rings:maximum_corotating_ring_longitude, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_ring_azimuth) and not (rings:maximum_observed_ring_azimuth))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_observed_ring_azimuth and rings:maximum_observed_ring_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_ring_azimuth) and not (rings:minimum_observed_ring_azimuth))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_observed_ring_azimuth and rings:maximum_observed_ring_azimuth, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if (not (rings:observed_ring_elevation) and not (rings:minimum_observed_ring_elevation)) then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        You must identify the observed ring elevation of the observation ( [-90,90] degrees) either as a single value using rings:observed_ring_elevation,
            	or as a range using the minimum-maximum observed ring elevation pair.</sch:assert>
      <sch:assert test="if ((rings:minimum_observed_ring_elevation) and not (rings:maximum_observed_ring_elevation))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_observed_ring_elevation and rings:maximum_observed_ring_elevation, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_observed_ring_elevation) and not (rings:minimum_observed_ring_elevation))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_observed_ring_elevation and rings:maximum_observed_ring_elevation, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:minimum_light_source_incidence_angle) and not (rings:maximum_light_source_incidence_angle))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_light_source_incidence_angle and rings:maximum_light_source_incidence_angle, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:maximum_light_source_incidence_angle) and not (rings:minimum_light_source_incidence_angle))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        rings:minimum_light_source_incidence_angle and rings:maximum_light_source_incidence_angle, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:sigma_projected_star_diameter) and not (rings:projected_star_diameter))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:sigma_projected_star_diameter is used, you must also provide a value for rings:projected_star_diameter.</sch:assert>
      <sch:assert test="if ((rings:projected_star_diameter) and not (rings:sigma_projected_star_diameter))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:projected_star_diameter is used, you must also provide a value for rings:sigma_projected_star_diameter.</sch:assert>
      <sch:assert test="if ((rings:sigma_time_constant) and not (rings:time_constant))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:sigma_time_constant is used, you must also specify a value for rings:time_constant.</sch:assert>
      <sch:assert test="if ((rings:time_constant) and not (rings:sigma_time_constant))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:time_constant is used, you must also specify a value for rings:sigma_time_constant.</sch:assert>
      <sch:assert test="if ((rings:time_constant) and not (rings:time_constant_type))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:time_constant is used, you must also specify a value for rings:time_constant_type.</sch:assert>
      <sch:assert test="if ((rings:time_constant_type) and not (rings:time_constant))  then false() else true()">
        <title>//rings:Occultation_Time_Series/Rule</title>
        If rings:time_constant_type is used, you must also specify a value for rings:time_constant.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//rings:Ring_Model/rings:Central_Body_Parameters">
      <sch:assert test="if ((rings:j2) and not (rings:grav_ref_radius))  then false() else true()">
        <title>//rings:Ring_Model/rings:Central_Body_Parameters/Rule</title>
        You must supply the reference radius, rings:grav_ref_radius, associated with the gravitational harmonic coefficient. </sch:assert>
      <sch:assert test="if ((rings:j4) and not (rings:grav_ref_radius))  then false() else true()">
        <title>//rings:Ring_Model/rings:Central_Body_Parameters/Rule</title>
        You must supply the reference radius, rings:grav_ref_radius, associated with the gravitational harmonic coefficient. </sch:assert>
      <sch:assert test="if ((rings:j6) and not (rings:grav_ref_radius))  then false() else true()">
        <title>//rings:Ring_Model/rings:Central_Body_Parameters/Rule</title>
        You must supply the reference radius, rings:grav_ref_radius, associated with the gravitational harmonic coefficient. </sch:assert>
      <sch:assert test="if ((rings:j8) and not (rings:grav_ref_radius))  then false() else true()">
        <title>//rings:Ring_Model/rings:Central_Body_Parameters/Rule</title>
        You must supply the reference radius, rings:grav_ref_radius, associated with the gravitational harmonic coefficient. </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//rings:Ring_Reprojection/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'reprojection_to_array'
            ">
        <title>//rings:Ring_Reprojection/pds:Local_Internal_Reference/Rule</title>
        For Local_Internal_Reference in rings:Ring_Reprojection, local_reference_type must equal 'reprojection_to_array'.
            </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//rings:Ring_Reprojection/rings:Reprojection_Geometry">
      <sch:assert test="if ((rings:corotating_flag='Y') and not (rings:corotation_rate))  then false() else true()">
        <title>//rings:Ring_Reprojection/rings:Reprojection_Geometry/Rule</title>
        You must supply the corotation rate, rings:corotation_rate, associated with the corotating frame. </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//rings:Ring_Spectrum">
      <sch:assert test="if (not (rings:Wavelength_Parameters/rings:wavelength) and not (rings:Wavelength_Parameters/rings:minimum_wavelength)) then false() else true()">
        <title>//rings:Ring_Spectrum/Rule</title>
        You must identify the wavelength of the observation either as a single value using rings:wavelength,
            	or as a range using the minimum-maximum wavelength pair.</sch:assert>
      <sch:assert test="if ((rings:Wavelength_Parameters/rings:minimum_wavelength) and not (rings:Wavelength_Parameters/rings:maximum_wavelength))  then false() else true()">
        <title>//rings:Ring_Spectrum/Rule</title>
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
      <sch:assert test="if ((rings:Wavelength_Parameters/rings:maximum_wavelength) and not (rings:Wavelength_Parameters/rings:minimum_wavelength))  then false() else true()">
        <title>//rings:Ring_Spectrum/Rule</title>
        rings:minimum_wavelength and rings:maximum_wavelength, are a pair; if you use one, you must use both.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//rings:Uniformly_Sampled_Radius">
      <sch:assert test="if ((rings:sampling_base) and not (rings:sampling_scale=logarithmic)and not (rings:sampling_scale=exponential))  then false() else true()">
        <title>//rings:Uniformly_Sampled_Radius/Rule</title>
        rings:sampling_base is only used when the value of rings:sampling_scale is either logarithmic, or exponential.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//rings:Uniformly_Sampled_Radius/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'uniformly_sampled_radius_to_array_axis'
            ">
        <title>//rings:Uniformly_Sampled_Radius/pds:Local_Internal_Reference/Rule</title>
        For Local_Internal_Reference in rings:Uniformly_Sampled_Radius, local_reference_type must equal 'uniformly_sampled_radius_to_array_axis'.
            </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Central_Body_Parameters/rings:gmass">
      <sch:assert test="@unit = ('km**3s**-2')">
        <title>rings:Central_Body_Parameters/rings:gmass/rings:gmass</title>
        The attribute @unit must be equal to one of the following values 'km**3s**-2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Central_Body_Parameters/rings:grav_ref_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Central_Body_Parameters/rings:grav_ref_radius/rings:grav_ref_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Central_Body_Parameters/rings:pole_declination_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Central_Body_Parameters/rings:pole_declination_angle/rings:pole_declination_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Central_Body_Parameters/rings:pole_declination_angle_uncert">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Central_Body_Parameters/rings:pole_declination_angle_uncert/rings:pole_declination_angle_uncert</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Central_Body_Parameters/rings:pole_right_ascension_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Central_Body_Parameters/rings:pole_right_ascension_angle/rings:pole_right_ascension_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Central_Body_Parameters/rings:pole_right_ascension_angle_uncert">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Central_Body_Parameters/rings:pole_right_ascension_angle_uncert/rings:pole_right_ascension_angle_uncert</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Display_Direction/rings:horizontal_display_direction">
      <sch:assert test=". = ('Left to Right', 'Right to Left')">
        <title>rings:Display_Direction/rings:horizontal_display_direction/rings:horizontal_display_direction</title>
        The attribute rings:Display_Direction/rings:horizontal_display_direction must be equal to one of the following values 'Left to Right', 'Right to Left'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Display_Direction/rings:vertical_display_direction">
      <sch:assert test=". = ('Bottom to Top', 'Top to Bottom')">
        <title>rings:Display_Direction/rings:vertical_display_direction/rings:vertical_display_direction</title>
        The attribute rings:Display_Direction/rings:vertical_display_direction must be equal to one of the following values 'Bottom to Top', 'Top to Bottom'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Normal_Mode_Parameters/rings:normal_mode_amplitude">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Normal_Mode_Parameters/rings:normal_mode_amplitude/rings:normal_mode_amplitude</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Normal_Mode_Parameters/rings:normal_mode_amplitude_uncert">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Normal_Mode_Parameters/rings:normal_mode_amplitude_uncert/rings:normal_mode_amplitude_uncert</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Normal_Mode_Parameters/rings:normal_mode_pattern_speed">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>rings:Normal_Mode_Parameters/rings:normal_mode_pattern_speed/rings:normal_mode_pattern_speed</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Normal_Mode_Parameters/rings:normal_mode_pattern_speed_uncert">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>rings:Normal_Mode_Parameters/rings:normal_mode_pattern_speed_uncert/rings:normal_mode_pattern_speed_uncert</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Normal_Mode_Parameters/rings:normal_mode_phase">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Normal_Mode_Parameters/rings:normal_mode_phase/rings:normal_mode_phase</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Normal_Mode_Parameters/rings:normal_mode_phase_uncert">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Normal_Mode_Parameters/rings:normal_mode_phase_uncert/rings:normal_mode_phase_uncert</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:along_track_timing_offset">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:along_track_timing_offset/rings:along_track_timing_offset</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:data_quality_index">
      <sch:assert test=". = ('0', '1', '2', '3', '4', '5', '6', 'B', 'F', 'R', 'U', 'X')">
        <title>rings:Occultation_Ring_Profile/rings:data_quality_index/rings:data_quality_index</title>
        The attribute rings:Occultation_Ring_Profile/rings:data_quality_index must be equal to one of the following values '0', '1', '2', '3', '4', '5', '6', 'B', 'F', 'R', 'U', 'X'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:data_quality_score">
      <sch:assert test=". = ('Fair', 'Good', 'Poor')">
        <title>rings:Occultation_Ring_Profile/rings:data_quality_score/rings:data_quality_score</title>
        The attribute rings:Occultation_Ring_Profile/rings:data_quality_score must be equal to one of the following values 'Fair', 'Good', 'Poor'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:frequency_band">
      <sch:assert test=". = ('C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y')">
        <title>rings:Occultation_Ring_Profile/rings:frequency_band/rings:frequency_band</title>
        The attribute rings:Occultation_Ring_Profile/rings:frequency_band must be equal to one of the following values 'C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:fresnel_scale">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:fresnel_scale/rings:fresnel_scale</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:light_source_incidence_angle/rings:light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:maximum_inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:maximum_inertial_ring_longitude/rings:maximum_inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:maximum_light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:maximum_light_source_incidence_angle/rings:maximum_light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:maximum_observed_event_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:maximum_observed_event_time/rings:maximum_observed_event_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:maximum_observed_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:maximum_observed_ring_azimuth/rings:maximum_observed_ring_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:maximum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:maximum_observed_ring_elevation/rings:maximum_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:maximum_radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:maximum_radial_sampling_interval/rings:maximum_radial_sampling_interval</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:maximum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:maximum_ring_radius/rings:maximum_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:minimum_inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:minimum_inertial_ring_longitude/rings:minimum_inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:minimum_light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:minimum_light_source_incidence_angle/rings:minimum_light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:minimum_observed_event_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:minimum_observed_event_time/rings:minimum_observed_event_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:minimum_observed_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:minimum_observed_ring_azimuth/rings:minimum_observed_ring_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:minimum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:minimum_observed_ring_elevation/rings:minimum_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:minimum_radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:minimum_radial_sampling_interval/rings:minimum_radial_sampling_interval</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:minimum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:minimum_ring_radius/rings:minimum_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:observed_event_start_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:observed_event_start_tdb/rings:observed_event_start_tdb</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:observed_event_stop_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:observed_event_stop_tdb/rings:observed_event_stop_tdb</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:observed_ring_elevation/rings:observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:occultation_direction">
      <sch:assert test=". = ('Both', 'Egress', 'Ingress', 'multiple')">
        <title>rings:Occultation_Ring_Profile/rings:occultation_direction/rings:occultation_direction</title>
        The attribute rings:Occultation_Ring_Profile/rings:occultation_direction must be equal to one of the following values 'Both', 'Egress', 'Ingress', 'multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:occultation_type">
      <sch:assert test=". = ('Radio', 'Solar', 'Stellar')">
        <title>rings:Occultation_Ring_Profile/rings:occultation_type/rings:occultation_type</title>
        The attribute rings:Occultation_Ring_Profile/rings:occultation_type must be equal to one of the following values 'Radio', 'Solar', 'Stellar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:planetary_occultation_flag">
      <sch:assert test=". = ('N', 'Y')">
        <title>rings:Occultation_Ring_Profile/rings:planetary_occultation_flag/rings:planetary_occultation_flag</title>
        The attribute rings:Occultation_Ring_Profile/rings:planetary_occultation_flag must be equal to one of the following values 'N', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:projected_star_diameter">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:projected_star_diameter/rings:projected_star_diameter</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:radial_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:radial_resolution/rings:radial_resolution</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:radial_sampling_interval/rings:radial_sampling_interval</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:ring_detected">
      <sch:assert test=". = ('N', 'Y')">
        <title>rings:Occultation_Ring_Profile/rings:ring_detected/rings:ring_detected</title>
        The attribute rings:Occultation_Ring_Profile/rings:ring_detected must be equal to one of the following values 'N', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:ring_event_start_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:ring_event_start_tdb/rings:ring_event_start_tdb</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:ring_event_stop_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:ring_event_stop_tdb/rings:ring_event_stop_tdb</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:ring_plane">
      <sch:assert test=". = ('A', 'B', 'C', 'D', 'E', 'Equator', 'F', 'G', 'Phoebe', 'alpha', 'beta', 'delta', 'epsilon', 'eta', 'five', 'four', 'gamma', 'individual', 'lambda', 'mu', 'nu', 'six')">
        <title>rings:Occultation_Ring_Profile/rings:ring_plane/rings:ring_plane</title>
        The attribute rings:Occultation_Ring_Profile/rings:ring_plane must be equal to one of the following values 'A', 'B', 'C', 'D', 'E', 'Equator', 'F', 'G', 'Phoebe', 'alpha', 'beta', 'delta', 'epsilon', 'eta', 'five', 'four', 'gamma', 'individual', 'lambda', 'mu', 'nu', 'six'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:ring_profile_direction">
      <sch:assert test=". = ('Egress', 'Ingress', 'Multiple')">
        <title>rings:Occultation_Ring_Profile/rings:ring_profile_direction/rings:ring_profile_direction</title>
        The attribute rings:Occultation_Ring_Profile/rings:ring_profile_direction must be equal to one of the following values 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:sigma_projected_star_diameter">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Ring_Profile/rings:sigma_projected_star_diameter/rings:sigma_projected_star_diameter</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:sigma_time_constant">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:sigma_time_constant/rings:sigma_time_constant</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:sub_stellar_clock_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:sub_stellar_clock_angle/rings:sub_stellar_clock_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:sub_stellar_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Ring_Profile/rings:sub_stellar_ring_azimuth/rings:sub_stellar_ring_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:time_constant">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Ring_Profile/rings:time_constant/rings:time_constant</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Ring_Profile/rings:time_constant_type">
      <sch:assert test=". = ('Double Pole', 'None', 'Single Pole')">
        <title>rings:Occultation_Ring_Profile/rings:time_constant_type/rings:time_constant_type</title>
        The attribute rings:Occultation_Ring_Profile/rings:time_constant_type must be equal to one of the following values 'Double Pole', 'None', 'Single Pole'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Supplement/rings:frequency_band">
      <sch:assert test=". = ('C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y')">
        <title>rings:Occultation_Supplement/rings:frequency_band/rings:frequency_band</title>
        The attribute rings:Occultation_Supplement/rings:frequency_band must be equal to one of the following values 'C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Supplement/rings:maximum_observed_event_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Supplement/rings:maximum_observed_event_time/rings:maximum_observed_event_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Supplement/rings:minimum_observed_event_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Supplement/rings:minimum_observed_event_time/rings:minimum_observed_event_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Supplement/rings:occultation_direction">
      <sch:assert test=". = ('Both', 'Egress', 'Ingress', 'multiple')">
        <title>rings:Occultation_Supplement/rings:occultation_direction/rings:occultation_direction</title>
        The attribute rings:Occultation_Supplement/rings:occultation_direction must be equal to one of the following values 'Both', 'Egress', 'Ingress', 'multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Supplement/rings:occultation_type">
      <sch:assert test=". = ('Radio', 'Solar', 'Stellar')">
        <title>rings:Occultation_Supplement/rings:occultation_type/rings:occultation_type</title>
        The attribute rings:Occultation_Supplement/rings:occultation_type must be equal to one of the following values 'Radio', 'Solar', 'Stellar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Supplement/rings:planetary_occultation_flag">
      <sch:assert test=". = ('N', 'Y')">
        <title>rings:Occultation_Supplement/rings:planetary_occultation_flag/rings:planetary_occultation_flag</title>
        The attribute rings:Occultation_Supplement/rings:planetary_occultation_flag must be equal to one of the following values 'N', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Supplement/rings:ring_profile_direction">
      <sch:assert test=". = ('Egress', 'Ingress', 'Multiple')">
        <title>rings:Occultation_Supplement/rings:ring_profile_direction/rings:ring_profile_direction</title>
        The attribute rings:Occultation_Supplement/rings:ring_profile_direction must be equal to one of the following values 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:along_track_timing_offset">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:along_track_timing_offset/rings:along_track_timing_offset</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:data_quality_index">
      <sch:assert test=". = ('0', '1', '2', '3', '4', '5', '6', 'B', 'F', 'R', 'U', 'X')">
        <title>rings:Occultation_Time_Series/rings:data_quality_index/rings:data_quality_index</title>
        The attribute rings:Occultation_Time_Series/rings:data_quality_index must be equal to one of the following values '0', '1', '2', '3', '4', '5', '6', 'B', 'F', 'R', 'U', 'X'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:data_quality_score">
      <sch:assert test=". = ('Fair', 'Good', 'Poor')">
        <title>rings:Occultation_Time_Series/rings:data_quality_score/rings:data_quality_score</title>
        The attribute rings:Occultation_Time_Series/rings:data_quality_score must be equal to one of the following values 'Fair', 'Good', 'Poor'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:frequency_band">
      <sch:assert test=". = ('C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y')">
        <title>rings:Occultation_Time_Series/rings:frequency_band/rings:frequency_band</title>
        The attribute rings:Occultation_Time_Series/rings:frequency_band must be equal to one of the following values 'C', 'D', 'E', 'F', 'G', 'H', 'K', 'Ka', 'Ku', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:fresnel_scale">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Time_Series/rings:fresnel_scale/rings:fresnel_scale</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:light_source_incidence_angle/rings:light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:maximum_inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:maximum_inertial_ring_longitude/rings:maximum_inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:maximum_light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:maximum_light_source_incidence_angle/rings:maximum_light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:maximum_observed_event_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:maximum_observed_event_time/rings:maximum_observed_event_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:maximum_observed_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:maximum_observed_ring_azimuth/rings:maximum_observed_ring_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:maximum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:maximum_observed_ring_elevation/rings:maximum_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:maximum_projected_sun_diameter">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Time_Series/rings:maximum_projected_sun_diameter/rings:maximum_projected_sun_diameter</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:maximum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Time_Series/rings:maximum_ring_radius/rings:maximum_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:minimum_inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:minimum_inertial_ring_longitude/rings:minimum_inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:minimum_light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:minimum_light_source_incidence_angle/rings:minimum_light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:minimum_observed_event_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:minimum_observed_event_time/rings:minimum_observed_event_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:minimum_observed_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:minimum_observed_ring_azimuth/rings:minimum_observed_ring_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:minimum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:minimum_observed_ring_elevation/rings:minimum_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:minimum_projected_sun_diameter">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Time_Series/rings:minimum_projected_sun_diameter/rings:minimum_projected_sun_diameter</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:minimum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Time_Series/rings:minimum_ring_radius/rings:minimum_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:observed_event_start_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:observed_event_start_tdb/rings:observed_event_start_tdb</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:observed_event_stop_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:observed_event_stop_tdb/rings:observed_event_stop_tdb</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:observed_ring_elevation/rings:observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:occultation_direction">
      <sch:assert test=". = ('Both', 'Egress', 'Ingress', 'multiple')">
        <title>rings:Occultation_Time_Series/rings:occultation_direction/rings:occultation_direction</title>
        The attribute rings:Occultation_Time_Series/rings:occultation_direction must be equal to one of the following values 'Both', 'Egress', 'Ingress', 'multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:occultation_type">
      <sch:assert test=". = ('Radio', 'Solar', 'Stellar')">
        <title>rings:Occultation_Time_Series/rings:occultation_type/rings:occultation_type</title>
        The attribute rings:Occultation_Time_Series/rings:occultation_type must be equal to one of the following values 'Radio', 'Solar', 'Stellar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:planetary_occultation_flag">
      <sch:assert test=". = ('N', 'Y')">
        <title>rings:Occultation_Time_Series/rings:planetary_occultation_flag/rings:planetary_occultation_flag</title>
        The attribute rings:Occultation_Time_Series/rings:planetary_occultation_flag must be equal to one of the following values 'N', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:projected_star_diameter">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Time_Series/rings:projected_star_diameter/rings:projected_star_diameter</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:ring_event_start_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:ring_event_start_tdb/rings:ring_event_start_tdb</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:ring_event_stop_tdb">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:ring_event_stop_tdb/rings:ring_event_stop_tdb</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:ring_plane">
      <sch:assert test=". = ('A', 'B', 'C', 'D', 'E', 'Equator', 'F', 'G', 'Phoebe', 'alpha', 'beta', 'delta', 'epsilon', 'eta', 'five', 'four', 'gamma', 'individual', 'lambda', 'mu', 'nu', 'six')">
        <title>rings:Occultation_Time_Series/rings:ring_plane/rings:ring_plane</title>
        The attribute rings:Occultation_Time_Series/rings:ring_plane must be equal to one of the following values 'A', 'B', 'C', 'D', 'E', 'Equator', 'F', 'G', 'Phoebe', 'alpha', 'beta', 'delta', 'epsilon', 'eta', 'five', 'four', 'gamma', 'individual', 'lambda', 'mu', 'nu', 'six'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:sigma_projected_star_diameter">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Time_Series/rings:sigma_projected_star_diameter/rings:sigma_projected_star_diameter</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:sigma_projected_sun_diameter">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Occultation_Time_Series/rings:sigma_projected_sun_diameter/rings:sigma_projected_sun_diameter</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:sigma_time_constant">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:sigma_time_constant/rings:sigma_time_constant</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:sub_stellar_clock_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:sub_stellar_clock_angle/rings:sub_stellar_clock_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:sub_stellar_ring_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Occultation_Time_Series/rings:sub_stellar_ring_azimuth/rings:sub_stellar_ring_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:time_constant">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>rings:Occultation_Time_Series/rings:time_constant/rings:time_constant</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:time_constant_type">
      <sch:assert test=". = ('Double Pole', 'None', 'Single Pole')">
        <title>rings:Occultation_Time_Series/rings:time_constant_type/rings:time_constant_type</title>
        The attribute rings:Occultation_Time_Series/rings:time_constant_type must be equal to one of the following values 'Double Pole', 'None', 'Single Pole'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Occultation_Time_Series/rings:time_series_direction">
      <sch:assert test=". = ('Both', 'Egress', 'Ingress', 'Multiple')">
        <title>rings:Occultation_Time_Series/rings:time_series_direction/rings:time_series_direction</title>
        The attribute rings:Occultation_Time_Series/rings:time_series_direction must be equal to one of the following values 'Both', 'Egress', 'Ingress', 'Multiple'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:corotating_flag">
      <sch:assert test=". = ('N', 'Y')">
        <title>rings:Reprojection_Geometry/rings:corotating_flag/rings:corotating_flag</title>
        The attribute rings:Reprojection_Geometry/rings:corotating_flag must be equal to one of the following values 'N', 'Y'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:corotation_rate">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>rings:Reprojection_Geometry/rings:corotation_rate/rings:corotation_rate</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:maximum_corotating_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:maximum_corotating_ring_longitude/rings:maximum_corotating_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:maximum_inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:maximum_inertial_ring_longitude/rings:maximum_inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:maximum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:maximum_observed_ring_elevation/rings:maximum_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:maximum_phase_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:maximum_phase_angle/rings:maximum_phase_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:maximum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Reprojection_Geometry/rings:maximum_ring_radius/rings:maximum_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:mean_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:mean_observed_ring_elevation/rings:mean_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:mean_phase_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:mean_phase_angle/rings:mean_phase_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:minimum_corotating_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:minimum_corotating_ring_longitude/rings:minimum_corotating_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:minimum_inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:minimum_inertial_ring_longitude/rings:minimum_inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:minimum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:minimum_observed_ring_elevation/rings:minimum_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:minimum_phase_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Reprojection_Geometry/rings:minimum_phase_angle/rings:minimum_phase_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:minimum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Reprojection_Geometry/rings:minimum_ring_radius/rings:minimum_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Reprojection_Geometry/rings:reprojection_plane">
      <sch:assert test=". = ('A', 'B', 'C', 'D', 'E', 'Equator', 'F', 'G', 'Laplace', 'Phoebe', 'alpha', 'beta', 'delta', 'epsilon', 'eta', 'five', 'four', 'gamma', 'lambda', 'mu', 'nu', 'six')">
        <title>rings:Reprojection_Geometry/rings:reprojection_plane/rings:reprojection_plane</title>
        The attribute rings:Reprojection_Geometry/rings:reprojection_plane must be equal to one of the following values 'A', 'B', 'C', 'D', 'E', 'Equator', 'F', 'G', 'Laplace', 'Phoebe', 'alpha', 'beta', 'delta', 'epsilon', 'eta', 'five', 'four', 'gamma', 'lambda', 'mu', 'nu', 'six'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:fit_rms_semimajor">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Orbital_Elements/rings:fit_rms_semimajor/rings:fit_rms_semimajor</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:inclination">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Orbital_Elements/rings:inclination/rings:inclination</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:inclination_uncert">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Orbital_Elements/rings:inclination_uncert/rings:inclination_uncert</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:nodal_regression_rate">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>rings:Ring_Orbital_Elements/rings:nodal_regression_rate/rings:nodal_regression_rate</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:nodal_regression_rate_method">
      <sch:assert test=". = ('0', '1', '2')">
        <title>rings:Ring_Orbital_Elements/rings:nodal_regression_rate_method/rings:nodal_regression_rate_method</title>
        The attribute rings:Ring_Orbital_Elements/rings:nodal_regression_rate_method must be equal to one of the following values '0', '1', '2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:nodal_regression_rate_uncert">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>rings:Ring_Orbital_Elements/rings:nodal_regression_rate_uncert/rings:nodal_regression_rate_uncert</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:node_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Orbital_Elements/rings:node_longitude/rings:node_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:node_longitude_uncert">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Orbital_Elements/rings:node_longitude_uncert/rings:node_longitude_uncert</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:periapse_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Orbital_Elements/rings:periapse_longitude/rings:periapse_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:periapse_longitude_uncert">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Orbital_Elements/rings:periapse_longitude_uncert/rings:periapse_longitude_uncert</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:periapse_precession_rate">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>rings:Ring_Orbital_Elements/rings:periapse_precession_rate/rings:periapse_precession_rate</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:periapse_precession_rate_method">
      <sch:assert test=". = ('0', '1', '2')">
        <title>rings:Ring_Orbital_Elements/rings:periapse_precession_rate_method/rings:periapse_precession_rate_method</title>
        The attribute rings:Ring_Orbital_Elements/rings:periapse_precession_rate_method must be equal to one of the following values '0', '1', '2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:periapse_precession_rate_uncert">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>rings:Ring_Orbital_Elements/rings:periapse_precession_rate_uncert/rings:periapse_precession_rate_uncert</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:semimajor_axis">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Orbital_Elements/rings:semimajor_axis/rings:semimajor_axis</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Orbital_Elements/rings:semimajor_axis_uncert">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Orbital_Elements/rings:semimajor_axis_uncert/rings:semimajor_axis_uncert</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:emission_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:emission_angle/rings:emission_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:incidence_angle/rings:incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:inertial_ring_longitude/rings:inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:light_source_incidence_angle/rings:light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_emission_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:maximum_emission_angle/rings:maximum_emission_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:maximum_incidence_angle/rings:maximum_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:maximum_inertial_ring_longitude/rings:maximum_inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:maximum_light_source_incidence_angle/rings:maximum_light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:maximum_observed_ring_elevation/rings:maximum_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_phase_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:maximum_phase_angle/rings:maximum_phase_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_radial_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:maximum_radial_resolution/rings:maximum_radial_resolution</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:maximum_radial_sampling_interval/rings:maximum_radial_sampling_interval</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_ring_intercept_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:maximum_ring_intercept_resolution/rings:maximum_ring_intercept_resolution</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_ring_longitude_observed_minus_subsolar">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:maximum_ring_longitude_observed_minus_subsolar/rings:maximum_ring_longitude_observed_minus_subsolar</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:maximum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:maximum_ring_radius/rings:maximum_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:mean_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:mean_observed_ring_elevation/rings:mean_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:mean_phase_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:mean_phase_angle/rings:mean_phase_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_emission_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:minimum_emission_angle/rings:minimum_emission_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:minimum_incidence_angle/rings:minimum_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_inertial_ring_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:minimum_inertial_ring_longitude/rings:minimum_inertial_ring_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_light_source_incidence_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:minimum_light_source_incidence_angle/rings:minimum_light_source_incidence_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_observed_ring_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:minimum_observed_ring_elevation/rings:minimum_observed_ring_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_phase_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:minimum_phase_angle/rings:minimum_phase_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_radial_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:minimum_radial_resolution/rings:minimum_radial_resolution</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:minimum_radial_sampling_interval/rings:minimum_radial_sampling_interval</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_ring_intercept_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:minimum_ring_intercept_resolution/rings:minimum_ring_intercept_resolution</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_ring_longitude_observed_minus_subsolar">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:minimum_ring_longitude_observed_minus_subsolar/rings:minimum_ring_longitude_observed_minus_subsolar</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:minimum_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:minimum_ring_radius/rings:minimum_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:radial_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:radial_resolution/rings:radial_resolution</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:radial_sampling_interval">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:radial_sampling_interval/rings:radial_sampling_interval</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:ring_intercept_resolution">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Ring_Spectrum/rings:ring_intercept_resolution/rings:ring_intercept_resolution</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Ring_Spectrum/rings:ring_longitude_observed_minus_subsolar">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Ring_Spectrum/rings:ring_longitude_observed_minus_subsolar/rings:ring_longitude_observed_minus_subsolar</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Satellite_Parameters/rings:gmass">
      <sch:assert test="@unit = ('km**3s**-2')">
        <title>rings:Satellite_Parameters/rings:gmass/rings:gmass</title>
        The attribute @unit must be equal to one of the following values 'km**3s**-2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Satellite_Parameters/rings:inclination">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Satellite_Parameters/rings:inclination/rings:inclination</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Satellite_Parameters/rings:inclination_uncert">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>rings:Satellite_Parameters/rings:inclination_uncert/rings:inclination_uncert</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Satellite_Parameters/rings:semimajor_axis">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Satellite_Parameters/rings:semimajor_axis/rings:semimajor_axis</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Satellite_Parameters/rings:semimajor_axis_uncert">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Satellite_Parameters/rings:semimajor_axis_uncert/rings:semimajor_axis_uncert</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Uniformly_Sampled_Radius/rings:first_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Uniformly_Sampled_Radius/rings:first_ring_radius/rings:first_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Uniformly_Sampled_Radius/rings:last_ring_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Uniformly_Sampled_Radius/rings:last_ring_radius/rings:last_ring_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Uniformly_Sampled_Radius/rings:sampling_interval_length">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Uniformly_Sampled_Radius/rings:sampling_interval_length/rings:sampling_interval_length</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Uniformly_Sampled_Radius/rings:sampling_scale">
      <sch:assert test=". = ('Exponential', 'Linear', 'Logarithmic')">
        <title>rings:Uniformly_Sampled_Radius/rings:sampling_scale/rings:sampling_scale</title>
        The attribute rings:Uniformly_Sampled_Radius/rings:sampling_scale must be equal to one of the following values 'Exponential', 'Linear', 'Logarithmic'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Wavelength_Parameters/rings:maximum_wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Wavelength_Parameters/rings:maximum_wavelength/rings:maximum_wavelength</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Wavelength_Parameters/rings:minimum_wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Wavelength_Parameters/rings:minimum_wavelength/rings:minimum_wavelength</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="rings:Wavelength_Parameters/rings:wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>rings:Wavelength_Parameters/rings:wavelength/rings:wavelength</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
