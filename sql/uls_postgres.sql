CREATE TABLE IF NOT EXISTS uls_a2
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"spectrum_manager_leasing"	TEXT,
	"defacto_transfer_leasing"	TEXT,
	"new_spectrum_leasing"	TEXT,
	"spectrum_subleasing"	TEXT,
	"xfer_control_lessee"	TEXT,
	"revision_spectrum_lease"	TEXT,
	"assignment_spectrum_lease"	TEXT,
	"pfr_status"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ac
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"aircraft_count"	INTEGER,
	"type_of_carrier"	TEXT,
	"portable_indicator"	TEXT,
	"fleet_indicator"	TEXT,
	"n_number"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ad
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"application_purpose"	TEXT,
	"application_status"	TEXT,
	"application_fee_exempt"	TEXT,
	"regulatory_fee_exempt"	TEXT,
	"source"	TEXT,
	"requested_expiration_date_mmdd"	TEXT,
	"receipt_date"	TEXT,
	"notification_code"	TEXT,
	"notification_date"	TEXT,
	"expanding_area_or_contour"	TEXT,
	"change_type"	TEXT,
	"original_application_purpose"	TEXT,
	"requesting_a_waiver"	TEXT,
	"how_many_waivers_requested"	INTEGER,
	"any_attachments"	TEXT,
	"number_of_requested_sids"	INTEGER,
	"fee_control_num"	TEXT,
	"date_entered"	TEXT,
	"reason"	TEXT,
	"frequency_coordination_indicat"	TEXT,
	"emergency_sta"	TEXT,
	"overall_change_type"	TEXT,
	"slow_growth_ind"	TEXT,
	"previous_waiver"	TEXT,
	"waiver_deferral_fee"	TEXT,
	"has_term_pending_ind"	TEXT,
	"use_of_service"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ag
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"action_requested"	TEXT,
	"agreement_type"	TEXT,
	"agreement_name"	TEXT,
	"des_ent_or_closed_bid_impact"	TEXT,
	"reserved_for_future"	TEXT,
	"mod_to_rev"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ah
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC,
	"uls_file_num"	TEXT,
	"attachment_desc"	TEXT,
	"attachment_file_id"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_am
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_num"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"operator_class"	TEXT,
	"group_code"	TEXT,
	"region_code"	SMALLINT,
	"trustee_callsign"	TEXT,
	"trustee_indicator"	TEXT,
	"physician_certification"	TEXT,
	"ve_signature"	TEXT,
	"systematic_callsign_change"	TEXT,
	"vanity_callsign_change"	TEXT,
	"vanity_relationship"	TEXT,
	"previous_callsign"	TEXT,
	"previous_operator_class"	TEXT,
	"trustee_name"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_an
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"antenna_action_performed"	TEXT,
	"antenna_number"	INTEGER,
	"location_number"	INTEGER,
	"receive_zone_code"	TEXT,
	"antenna_type_code"	TEXT,
	"height_to_tip"	NUMERIC,
	"height_to_center_raat"	NUMERIC,
	"antenna_make"	TEXT,
	"antenna_model"	TEXT,
	"tilt"	NUMERIC,
	"polarization_code"	TEXT,
	"beamwidth"	NUMERIC,
	"gain"	NUMERIC,
	"azimuth"	NUMERIC,
	"height_above_avg_terrain"	NUMERIC,
	"diversity_height"	NUMERIC,
	"diversity_gain"	NUMERIC,
	"diversity_beam"	NUMERIC,
	"reflector_height"	NUMERIC,
	"reflector_width"	NUMERIC,
	"reflector_separation"	NUMERIC,
	"repeater_seq_num"	INTEGER,
	"back_to_back_tx_dish_gain"	NUMERIC,
	"back_to_back_rx_dish_gain"	NUMERIC,
	"location_name"	TEXT,
	"passive_repeater_id"	INTEGER,
	"alternative_cgsa_method"	TEXT,
	"path_number"	INTEGER,
	"line_loss"	NUMERIC,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"psd_nonpsd_methodology"	TEXT,
	"maximum_erp"	NUMERIC
);

CREATE TABLE IF NOT EXISTS uls_ap
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"agreement_name"	TEXT,
	"action_requested"	TEXT,
	"legal_entity_name"	TEXT,
	"first_name"	TEXT,
	"mi"	TEXT,
	"last_name"	TEXT,
	"suffix"	TEXT,
	"fcc_reg_number"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_as
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"assoc_callsign"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"action_performed"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_at
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"attachment_code"	TEXT,
	"attachment_description"	TEXT,
	"attachment_date"	TEXT,
	"attachment_file_name"	TEXT,
	"attachment_action_performed"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_bc
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"broadcast_callsign"	TEXT,
	"broadcast_city"	TEXT,
	"broadcast_state"	TEXT,
	"parent_facility_id"	INTEGER,
	"parent_class_code"	TEXT,
	"nonparent_type_code"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_bd
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"involves_credit"	TEXT,
	"involves_payment"	TEXT,
	"involves_close_bidding"	TEXT,
	"credits_paid"	TEXT,
	"bc_same_elig_status"	TEXT,
	"bc_diff_elig_status"	TEXT,
	"bc_dnq_elig_status"	TEXT,
	"payments"	TEXT,
	"ip_same_elig_status"	TEXT,
	"ip_diff_elig_status"	TEXT,
	"ip_dnq_elig_status"	TEXT,
	"closed_notification"	TEXT,
	"qualifies_for_cb"	TEXT,
	"dnq_for_cb"	TEXT,
	"bc_ten_percent"	TEXT,
	"bc_affiliate"	TEXT,
	"bc_cont_elig"	TEXT,
	"bc_shared"	TEXT,
	"document"	TEXT,
	"ip_ten_percent"	TEXT,
	"ip_affiliate"	TEXT,
	"ip_cont_elig"	TEXT,
	"ip_shared"	TEXT,
	"sec_date"	TEXT,
	"lien_date"	TEXT,
	"cb_ten_percent"	TEXT,
	"cb_affiliate"	TEXT,
	"cb_cont_elig"	TEXT,
	"cb_shared"	TEXT,
	"bidding_credit_type"	TEXT,
	"bidding_credit_percent"	TEXT,
	"bc_spectrum_capacity"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_be
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"multichannel"	TEXT,
	"cable_tv"	TEXT,
	"programming_requirements"	TEXT,
	"interference_protection"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_bf
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"call_sign"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"buildout_code"	INTEGER,
	"buildout_deadline"	TEXT,
	"buildout_date"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"frequency_number"	INTEGER,
	"discontinuance_date"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_bl
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"call_sign"	TEXT,
	"location"	INTEGER,
	"buildout_code"	INTEGER,
	"buildout_deadline"	TEXT,
	"buildout_date"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"discontinuance_date"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_bo
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"call_sign"	TEXT,
	"buildout_code"	INTEGER,
	"buildout_deadline"	TEXT,
	"buildout_date"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"discontinuance_date"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_bt
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"applicant_status"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_cd
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"year_sequence"	SMALLINT	NOT NULL,
	"gross_revenues"	NUMERIC,
	"year_end_date"	TIMESTAMP,
	"aggregate_gros_rvn_de"	NUMERIC,
	"aggregate_gros_rvn_cb"	NUMERIC,
	"total_assets"	NUMERIC,
	"avg_gross_rvn_de_3"	NUMERIC,
	"avg_gross_rvn_de_5"	NUMERIC
);

CREATE TABLE IF NOT EXISTS uls_cf
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"item_type_indicator"	TEXT,
	"item_type"	TEXT,
	"constructed"	TEXT,
	"location_number"	INTEGER,
	"path_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"frequency_upper_band"	NUMERIC,
	"number_of_mobiles"	INTEGER,
	"action_performed"	TEXT,
	"actual_date_of_construction"	TIMESTAMP,
	"frequency_number"	INTEGER,
	"assign_callsign"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_cg
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"station_available"	TEXT,
	"public_correspondence"	TEXT,
	"station_identifier"	TEXT,
	"aeronautical_enroute_call_sign"	TEXT,
	"faa_office_notified"	TEXT,
	"date_faa_notified"	TEXT,
	"seeking_authorization"	TEXT,
	"regularly_engaged"	TEXT,
	"engaged"	TEXT,
	"public_mooring"	TEXT,
	"servicing"	TEXT,
	"fixed_station"	TEXT,
	"maritime_support"	TEXT,
	"aeronautical_fixed"	TEXT,
	"unicom"	TEXT,
	"search_and_rescue"	TEXT,
	"flight_test_uhf"	TEXT,
	"flight_test_manufacturer"	TEXT,
	"flight_test_parent_corporation"	TEXT,
	"flight_test_educational"	TEXT,
	"flight_school_certitication"	TEXT,
	"lighter_than_air"	TEXT,
	"ballooning"	TEXT,
	"located_at_airport"	TEXT,
	"radiodetermination_not_faa"	TEXT,
	"radiodetermination_equipment"	TEXT,
	"radiodetermination_public"	TEXT,
	"radiodetermination_elts"	TEXT,
	"civil_air_patrol"	TEXT,
	"aeronautical_enroute"	TEXT,
	"mobile_routine"	TEXT,
	"mobile_owner_operator"	TEXT,
	"mobile_agreement"	TEXT,
	"coast_ground_identifier"	TEXT,
	"selective_call_sign_identifier"	TEXT,
	"station_class"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_co
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_num"	TEXT,
	"callsign"	TEXT,
	"comment_date"	TEXT,
	"description"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_cp
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"control_point_action_performed"	TEXT,
	"control_point_number"	INTEGER,
	"control_address"	TEXT,
	"control_city"	TEXT,
	"state_code"	TEXT,
	"control_phone"	TEXT,
	"control_county"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_cs
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"call_sign"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"coser_result"	TEXT,
	"coser_num"	TEXT,
	"coser_activity_type"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_em
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"emission_action_performed"	TEXT,
	"emission_code"	TEXT,
	"digital_mod_rate"	NUMERIC,
	"digital_mod_type"	TEXT,
	"frequency_number"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"emission_sequence_id"	INTEGER
);

CREATE TABLE IF NOT EXISTS uls_en
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"entity_type"	TEXT,
	"licensee_id"	TEXT,
	"entity_name"	TEXT,
	"first_name"	TEXT,
	"mi"	TEXT,
	"last_name"	TEXT,
	"suffix"	TEXT,
	"phone"	TEXT,
	"fax"	TEXT,
	"email"	TEXT,
	"street_address"	TEXT,
	"city"	TEXT,
	"state"	TEXT,
	"zip_code"	TEXT,
	"po_box"	TEXT,
	"attention_line"	TEXT,
	"sgin"	TEXT,
	"frn"	TEXT,
	"applicant_type_code"	TEXT,
	"applicant_type_other"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"lic_category_code"	TEXT,
	"linked_license_id"	NUMERIC,
	"linked_callsign"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_f2
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"frequency_upper_band"	NUMERIC,
	"offset"	TEXT,
	"frequency_channel_block"	TEXT,
	"equipment_class"	TEXT,
	"minimum_power_output"	NUMERIC,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"trans_meth"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_fa
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"operator_class"	TEXT,
	"ship_radar_endorsement"	TEXT,
	"six_month_endorsement"	TEXT,
	"date_of_birth"	TEXT,
	"certification_not_restricted"	TEXT,
	"cert_restricted_permit"	TEXT,
	"restricted_permit_limited_use"	TEXT,
	"cole_manager_code"	TEXT,
	"dm_call_sign"	TEXT,
	"proof_of_passing"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_fc
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"coordination_number"	TEXT,
	"coordinator_name"	TEXT,
	"coordinator_phone"	TEXT,
	"freq_coordination_date"	TEXT,
	"action_performed"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ff
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"callsign"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency"	NUMERIC,
	"frequency_number"	INTEGER,
	"freq_freeform_cond_type"	TEXT,
	"unique_freq_freeform_id"	NUMERIC,
	"sequence_number"	INTEGER,
	"freq_freeform_condition"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_fr
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"frequency_action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"class_station_code"	TEXT,
	"op_altitude_code"	TEXT,
	"frequency_assigned"	NUMERIC,
	"frequency_upper_band"	NUMERIC,
	"frequency_carrier"	NUMERIC,
	"time_begin_operations"	INTEGER,
	"time_end_operations"	INTEGER,
	"power_output"	NUMERIC,
	"power_erp"	NUMERIC,
	"tolerance"	NUMERIC,
	"frequency_ind"	TEXT,
	"status"	TEXT,
	"eirp"	NUMERIC,
	"transmitter_make"	TEXT,
	"transmitter_model"	TEXT,
	"auto_transmitter_power_control"	TEXT,
	"cnt_mobile_units"	INTEGER,
	"cnt_mob_pagers"	INTEGER,
	"freq_seq_id"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"date_first_used"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_fs
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"call_sign"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency"	NUMERIC,
	"frequency_number"	INTEGER,
	"special_condition_type"	TEXT,
	"special_condition_code"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_ft
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"freq_type_action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"frequency_type_number"	INTEGER,
	"frequency_type_code"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_hd
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"license_status"	TEXT,
	"radio_service_code"	TEXT,
	"grant_date"	TEXT,
	"expired_date"	TEXT,
	"cancellation_date"	TEXT,
	"eligibility_rule_num"	TEXT,
	"applicant_type_code_reserved"	TEXT,
	"alien"	TEXT,
	"alien_government"	TEXT,
	"alien_corporation"	TEXT,
	"alien_officer"	TEXT,
	"alien_control"	TEXT,
	"revoked"	TEXT,
	"convicted"	TEXT,
	"adjudged"	TEXT,
	"involved_reserved"	TEXT,
	"common_carrier"	TEXT,
	"non_common_carrier"	TEXT,
	"private_comm"	TEXT,
	"fixed"	TEXT,
	"mobile"	TEXT,
	"radiolocation"	TEXT,
	"satellite"	TEXT,
	"developmental_or_sta"	TEXT,
	"interconnected_service"	TEXT,
	"certifier_first_name"	TEXT,
	"certifier_mi"	TEXT,
	"certifier_last_name"	TEXT,
	"certifier_suffix"	TEXT,
	"certifier_title"	TEXT,
	"sex"	TEXT,
	"african_american"	TEXT,
	"native_american"	TEXT,
	"hawaiian"	TEXT,
	"asian"	TEXT,
	"white"	TEXT,
	"ethnicity"	TEXT,
	"effective_date"	TEXT,
	"last_action_date"	TEXT,
	"auction_id"	INTEGER,
	"reg_stat_broad_serv"	TEXT,
	"band_manager"	TEXT,
	"type_serv_broad_serv"	TEXT,
	"alien_ruling"	TEXT,
	"licensee_name_change"	TEXT,
	"whitespace_ind"	TEXT,
	"additional_cert_choice"	TEXT,
	"additional_cert_answer"	TEXT,
	"discontinuation_ind"	TEXT,
	"regulatory_compliance_ind"	TEXT,
	"eligibility_cert_900"	TEXT,
	"transition_plan_cert_900"	TEXT,
	"return_spectrum_cert_900"	TEXT,
	"payment_cert_900"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_hs
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"callsign"	TEXT,
	"log_date"	TEXT,
	"code"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ia
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"international_address_1"	TEXT,
	"international_address_2"	TEXT,
	"international_city"	TEXT,
	"country"	TEXT,
	"international_zip_code"	TEXT,
	"international_phone"	TEXT,
	"international_fax"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ir
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"call_sign"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"irac_result"	TEXT,
	"fas_docket_num"	TEXT,
	"fccm_num"	TEXT,
	"faa_ng_num"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"a_irac_status_code"	SMALLINT
);

CREATE TABLE IF NOT EXISTS uls_la
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"callsign"	TEXT,
	"attachment_code"	TEXT,
	"attachment_desc"	TEXT,
	"attachment_date"	TEXT,
	"attachment_filename"	TEXT,
	"action_performed"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_l2
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"location_action_performed"	TEXT,
	"location_number"	INTEGER,
	"registration_required"	TEXT,
	"protection_date"	TIMESTAMP,
	"link_reg_num"	TEXT,
	"link_reg_action_performed"	TEXT,
	"mexico_clearance_indicator"	TEXT,
	"quiet_zone_consent"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_lf
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"callsign"	TEXT,
	"location_number"	INTEGER,
	"loc_freeform_cond_type"	TEXT,
	"unique_loc_freeform_id"	NUMERIC,
	"sequence_number"	INTEGER,
	"loc_freeform_condition"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_lh
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC,
	"call_sign"	TEXT,
	"attachment_desc"	TEXT,
	"attachment_file_id"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_lm
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"ext_implement_appr"	TEXT,
	"lm_eligibility_activity"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_lo
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"location_action_performed"	TEXT,
	"location_type_code"	TEXT,
	"location_class_code"	TEXT,
	"location_number"	INTEGER,
	"site_status"	TEXT,
	"corresponding_fixed_location"	INTEGER,
	"location_address"	TEXT,
	"location_city"	TEXT,
	"location_county"	TEXT,
	"location_state"	TEXT,
	"radius_of_operation"	NUMERIC,
	"area_of_operation_code"	TEXT,
	"clearance_indicator"	TEXT,
	"ground_elevation"	NUMERIC,
	"lat_degrees"	INTEGER,
	"lat_minutes"	INTEGER,
	"lat_seconds"	NUMERIC,
	"lat_direction"	TEXT,
	"long_degrees"	INTEGER,
	"long_minutes"	INTEGER,
	"long_seconds"	NUMERIC,
	"long_direction"	TEXT,
	"max_lat_degrees"	INTEGER,
	"max_lat_minutes"	INTEGER,
	"max_lat_seconds"	NUMERIC,
	"max_lat_direction"	TEXT,
	"max_long_degrees"	INTEGER,
	"max_long_minutes"	INTEGER,
	"max_long_seconds"	NUMERIC,
	"max_long_direction"	TEXT,
	"nepa"	TEXT,
	"quiet_zone_notification_date"	TEXT,
	"tower_registration_number"	TEXT,
	"height_of_support_structure"	NUMERIC,
	"overall_height_of_structure"	NUMERIC,
	"structure_type"	TEXT,
	"airport_id"	TEXT,
	"location_name"	TEXT,
	"units_hand_held"	INTEGER,
	"units_mobile"	INTEGER,
	"units_temp_fixed"	INTEGER,
	"units_aircraft"	INTEGER,
	"units_itinerant"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"earth_agree"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ls
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"call_sign"	TEXT,
	"location_number"	INTEGER,
	"special_condition_type"	TEXT,
	"special_condition_code"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_mc
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"partition_area_id"	NUMERIC,
	"coordinate_seq_id"	INTEGER,
	"partition_lat_degrees"	INTEGER,
	"partition_lat_minutes"	INTEGER,
	"partition_lat_seconds"	NUMERIC,
	"partition_lat_direction"	TEXT,
	"partition_long_degrees"	INTEGER,
	"partition_long_minutes"	INTEGER,
	"partition_long_seconds"	NUMERIC,
	"partition_long_direction"	TEXT,
	"undefined_partitioned_area"	INTEGER
);

CREATE TABLE IF NOT EXISTS uls_me
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"mea_number"	TEXT,
	"action_performed"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_mh
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"action_performed"	TEXT,
	"channel_plan_number"	TEXT,
	"channel_plan"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_mf
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"partition_area_id"	NUMERIC,
	"lower_frequency"	NUMERIC,
	"upper_frequency"	NUMERIC,
	"def_und_ind"	TEXT,
	"defined_partition_area"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_mi
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"facility_type_code"	TEXT,
	"statement_of_intention"	TEXT,
	"license_type_code"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_mk
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"market_code"	TEXT,
	"channel_block"	TEXT,
	"submarket_code"	INTEGER,
	"market_name"	TEXT,
	"coverage_partitioning"	TEXT,
	"coverage_dissagregation"	TEXT,
	"cellular_phase_id"	SMALLINT,
	"population"	NUMERIC,
	"tribal_credit_indicator"	TEXT,
	"tribal_credit_calculation"	NUMERIC,
	"additional_credit_requested"	NUMERIC,
	"tribal_credit_awarded"	NUMERIC,
	"additiona_credit_awarded"	NUMERIC,
	"bc_pct"	NUMERIC,
	"open_closed_bidding"	TEXT,
	"bidding_credit_type"	TEXT,
	"claiming_unserved_area"	TEXT,
	"incumbent_relocation"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_mp
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"market_partition_code"	TEXT,
	"defined_partition_area"	TEXT,
	"defined_area_population"	NUMERIC,
	"include_exclude_ind"	TEXT,
	"partition_area_id"	NUMERIC,
	"action_performed"	TEXT,
	"census_figures"	INTEGER,
	"def_undef_ind"	TEXT,
	"partition_sequence_number"	INTEGER,
	"whitespace_ind"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_mw
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"pack_indicator"	TEXT,
	"pack_registration_num"	INTEGER,
	"pack_name"	TEXT,
	"type_of_operation"	TEXT,
	"smsa_code"	TEXT,
	"station_class"	TEXT,
	"cum_effect_is_major"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_op
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"location_number"	INTEGER,
	"area_text_sequence_num"	INTEGER,
	"area_of_operation"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_pa
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"path_action_performed"	TEXT,
	"path_number"	INTEGER,
	"transmit_location_number"	INTEGER,
	"transmit_antenna_number"	INTEGER,
	"receiver_location_number"	INTEGER,
	"receiver_antenna_number"	INTEGER,
	"mas_dems_subtype"	TEXT,
	"path_type_desc"	TEXT,
	"passive_receiver_indicator"	TEXT,
	"country_code"	TEXT,
	"interference_to_gso"	TEXT,
	"receiver_callsign"	TEXT,
	"angular_sep"	NUMERIC,
	"cert_no_alternative"	TEXT,
	"cert_no_interference"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP,
	"link_start_date"	TIMESTAMP,
	"link_end_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_pc
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency"	NUMERIC,
	"subscriber_call_sign"	TEXT,
	"city"	TEXT,
	"state"	TEXT,
	"lat_degrees"	INTEGER,
	"lat_minutes"	INTEGER,
	"lat_seconds"	NUMERIC,
	"lat_direction"	TEXT,
	"long_degrees"	INTEGER,
	"long_minutes"	INTEGER,
	"long_seconds"	NUMERIC,
	"long_direction"	TEXT,
	"point_of_com_frequency"	NUMERIC,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_ra
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"radial_action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"frequency_upper_band"	NUMERIC,
	"radial_direction"	NUMERIC,
	"radial_haat"	NUMERIC,
	"radial_erp"	NUMERIC,
	"dist_to_sab"	NUMERIC,
	"dist_to_cgsa"	NUMERIC,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_rc
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"radial_action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"receiver_make"	TEXT,
	"receiver_model"	TEXT,
	"receiver_stability"	NUMERIC,
	"receiver_noise_figure"	NUMERIC,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_re
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"reason"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ri
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"entity_type"	TEXT	NOT NULL,
	"year_sequence_id"	SMALLINT	NOT NULL,
	"gross_revenues"	NUMERIC,
	"year_end_date"	TIMESTAMP	NOT NULL,
	"average_gross_revenues"	NUMERIC,
	"asset_disclosure"	NUMERIC,
	"statement_type"	TEXT	NOT NULL,
	"in_existence"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_rz
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"antenna_action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"receive_zone_number"	INTEGER,
	"receive_zone"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_sc
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"special_condition_type"	TEXT,
	"special_condition_code"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_se
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"ship_call_sign"	TEXT,
	"port_registry"	TEXT,
	"owner"	TEXT,
	"operater"	TEXT,
	"charter"	TEXT,
	"agent"	TEXT,
	"radiotelephone_exempt_req"	TEXT,
	"gmdss_exemp_req"	TEXT,
	"radio_dir_exempt_req"	TEXT,
	"prev_exempt_file_number"	TEXT,
	"foreign_port"	TEXT,
	"vessel_size_exempt"	TEXT,
	"equipment_exempt"	TEXT,
	"ltd_routes_exempt"	TEXT,
	"cond_voyages_exempt"	TEXT,
	"other_exempt"	TEXT,
	"other_exempt_desc"	TEXT,
	"ship_type"	TEXT,
	"number_of_crew"	INTEGER,
	"number_passengers"	INTEGER,
	"number_others"	INTEGER,
	"count_vhf"	INTEGER,
	"count_vhf_dsc"	TEXT,
	"count_epirb"	INTEGER,
	"count_survival"	INTEGER,
	"count_earth_station"	INTEGER,
	"count_auto_alarm"	INTEGER,
	"count_single_side_band"	INTEGER,
	"single_side_band_type_mf"	TEXT,
	"single_side_band_type_hf"	TEXT,
	"single_side_band_type_dsc"	TEXT,
	"count_of_navtex"	INTEGER,
	"count_of_9_ghz_radar"	INTEGER,
	"count_of_500_khz_distress"	INTEGER,
	"count_of_reserve_power"	INTEGER,
	"count_of_other"	INTEGER,
	"description_of_other"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_sf
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"lic_freeform_cond_type"	TEXT,
	"unique_lic_freeform_id"	NUMERIC,
	"sequence_number"	INTEGER,
	"lic_freeform_condition"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_sg
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"segment_action_performed"	TEXT,
	"path_number"	INTEGER,
	"transmit_location"	INTEGER,
	"transmit_antenna"	INTEGER,
	"receiver_location"	INTEGER,
	"receiver_antenna"	INTEGER,
	"segment_number"	INTEGER,
	"segment_length"	NUMERIC,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_sh
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"type_of_authorization"	TEXT,
	"count_in_fleet"	INTEGER,
	"general_class"	TEXT,
	"special_class"	TEXT,
	"ship_name"	TEXT,
	"ship_number"	TEXT,
	"international_voyages"	TEXT,
	"foreign_communications"	TEXT,
	"radiotelegraph"	TEXT,
	"mmsi_request"	TEXT,
	"gross_tonnage"	INTEGER,
	"ship_length"	INTEGER,
	"working_freq_s1"	TEXT,
	"working_freq_s2"	TEXT,
	"self_id_number"	TEXT,
	"comsat_id_number"	TEXT,
	"station_number"	NUMERIC,
	"required_cat_a"	TEXT,
	"required_cat_b"	TEXT,
	"required_cat_c"	TEXT,
	"required_cat_d"	TEXT,
	"required_cat_e"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_si
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"sid"	TEXT,
	"action_performed"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_sr
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"epirb_identification_code"	TEXT,
	"inmarsat_a"	TEXT,
	"inmarsat_b"	TEXT,
	"inmarsat_c"	TEXT,
	"inmarsat_m"	TEXT,
	"inmarsat_mini"	TEXT,
	"vhf"	TEXT,
	"mf"	TEXT,
	"hf"	TEXT,
	"dsc"	TEXT,
	"epirb_406_mhz"	TEXT,
	"epirb_121_5_mhz"	TEXT,
	"sart"	TEXT,
	"raft_count"	NUMERIC,
	"lifeboat_count"	NUMERIC,
	"vessel_capacity"	NUMERIC
);

CREATE TABLE IF NOT EXISTS uls_st
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"sector_action_performed"	TEXT,
	"sector_number"	INTEGER,
	"psd_nonpsd_methodology"	TEXT,
	"maximum_erp"	NUMERIC,
	"psd_attachment"	TEXT,
	"location_number"	INTEGER,
	"location_name"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_sv
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"voyage_number"	INTEGER,
	"voyage_description"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ta
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"pro_forma"	TEXT,
	"full_assignment"	TEXT,
	"method_of_accomplishment"	TEXT,
	"method_other_description"	TEXT,
	"voluntary_involuntary"	TEXT,
	"assignor_certifier_first_name"	TEXT,
	"assignor_certifier_mi"	TEXT,
	"assignor_certifier_last_name"	TEXT,
	"assignor_certifier_suffix"	TEXT,
	"assignor_certifier_title"	TEXT,
	"assignee_gross_rev_1"	NUMERIC,
	"assignee_gross_rev_2"	NUMERIC,
	"assignee_gross_rev_3"	NUMERIC,
	"assignee_tot_assets"	NUMERIC,
	"same_small_category"	TEXT,
	"applying_for_installments"	TEXT,
	"notification_of_forebearance"	TEXT,
	"wireless_need_approval"	TEXT,
	"non_wireless_need_approval"	TEXT,
	"male_or_female"	TEXT,
	"african_american"	TEXT,
	"native_american"	TEXT,
	"native_pacific_islander"	TEXT,
	"asian"	TEXT,
	"white"	TEXT,
	"ethnicity"	TEXT,
	"consent_date"	TEXT,
	"consummation_date"	TEXT,
	"consummation_deadline"	TEXT,
	"eligibility_category"	TEXT,
	"other_wireless_file_num"	TEXT,
	"occurred"	TEXT,
	"involuntary_date"	TEXT,
	"forbearance_date"	TEXT,
	"full_partial_ind"	TEXT,
	"geo_overlap"	TEXT,
	"tenmhz_geo_overlap"	TEXT,
	"reduced_providers"	TEXT,
	"multichannel"	TEXT,
	"cable_tv"	TEXT,
	"program_reqs"	TEXT,
	"ownership_required"	TEXT,
	"ownership_file_num"	TEXT,
	"other_wireless_app"	TEXT,
	"public_safety"	TEXT,
	"tl_short_term"	TEXT,
	"mw_link_ind"	TEXT,
	"geo_overlap_600"	TEXT,
	"rsv_spectrum_600"	TEXT,
	"seek_rural_bc"	TEXT,
	"pl_certification"	TEXT,
	"pk_certification"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_tl
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"market_code"	TEXT,
	"channel_block"	TEXT,
	"action_performed"	TEXT,
	"tribal_land_name"	TEXT,
	"tribal_certification"	TEXT,
	"tribal_land_type"	TEXT,
	"square_kilometers"	NUMERIC
);

CREATE TABLE IF NOT EXISTS uls_ua
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"action_performed"	TEXT,
	"cellular_phase"	INTEGER,
	"market_code"	TEXT,
	"submarket_code"	INTEGER,
	"channel_block"	TEXT,
	"claiming_unserved_area"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_vc
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"request_sequence"	INTEGER,
	"callsign_requested"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_lc
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"a_ls_class_code"	TEXT,
	"a_ls_allocation_type"	TEXT,
	"a_ls_term"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ld
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"lease_id"	TEXT,
	"issue_date"	TIMESTAMP,
	"expired_date"	TIMESTAMP,
	"cancellation_date"	TIMESTAMP,
	"lease_never_comm_ind"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_ll
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"lease_id"	TEXT,
	"unique_system_identifier_2"	NUMERIC
);

CREATE TABLE IF NOT EXISTS uls_l3
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"location_action_performed"	TEXT,
	"location_type_code"	TEXT,
	"location_class_code"	TEXT,
	"location_number"	INTEGER,
	"site_status"	TEXT,
	"corresponding_fixed_location"	INTEGER,
	"location_address"	TEXT,
	"location_city"	TEXT,
	"location_county"	TEXT,
	"location_state"	TEXT,
	"radius_of_operation"	NUMERIC,
	"area_of_operation_code"	TEXT,
	"clearance_indicator"	TEXT,
	"ground_elevation"	NUMERIC,
	"lat_degrees"	INTEGER,
	"lat_minutes"	INTEGER,
	"lat_seconds"	NUMERIC,
	"lat_direction"	TEXT,
	"long_degrees"	INTEGER,
	"long_minutes"	INTEGER,
	"long_seconds"	NUMERIC,
	"long_direction"	TEXT,
	"max_lat_degrees"	INTEGER,
	"max_lat_minutes"	INTEGER,
	"max_lat_seconds"	NUMERIC,
	"max_lat_direction"	TEXT,
	"max_long_degrees"	INTEGER,
	"max_long_minutes"	INTEGER,
	"max_long_seconds"	NUMERIC,
	"max_long_direction"	TEXT,
	"nepa"	TEXT,
	"quiet_zone_notification_date"	TEXT,
	"tower_registration_number"	TEXT,
	"height_of_support_structure"	NUMERIC,
	"overall_height_of_structure"	NUMERIC,
	"structure_type"	TEXT,
	"airport_id"	TEXT,
	"location_name"	TEXT,
	"units_hand_held"	INTEGER,
	"units_mobile"	INTEGER,
	"units_temp_fixed"	INTEGER,
	"units_aircraft"	INTEGER,
	"units_itinerant"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_l4
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"location_action_performed"	TEXT,
	"location_number"	INTEGER,
	"registration_required"	TEXT,
	"protection_date"	TIMESTAMP,
	"link_reg_num"	TEXT,
	"link_reg_action_performed"	TEXT,
	"mexico_clearance_indicator"	TEXT,
	"quiet_zone_consent"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_o2
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"location_number"	INTEGER,
	"area_text_sequence_num"	INTEGER,
	"area_of_operation"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_l5
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"call_sign"	TEXT,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"location_number"	INTEGER,
	"special_condition_type"	TEXT,
	"special_condition_code"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_l6
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"callsign"	TEXT,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"location_number"	INTEGER,
	"loc_freeform_cond_type"	TEXT,
	"unique_loc_freeform_id"	NUMERIC,
	"sequence_number"	INTEGER,
	"loc_freeform_condition"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_a3
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"antenna_action_performed"	TEXT,
	"antenna_number"	INTEGER,
	"location_number"	INTEGER,
	"receive_zone_code"	TEXT,
	"antenna_type_code"	TEXT,
	"height_to_tip"	NUMERIC,
	"height_to_center_raat"	NUMERIC,
	"antenna_make"	TEXT,
	"antenna_model"	TEXT,
	"tilt"	NUMERIC,
	"polarization_code"	TEXT,
	"beamwidth"	NUMERIC,
	"gain"	NUMERIC,
	"azimuth"	NUMERIC,
	"height_above_avg_terrain"	NUMERIC,
	"diversity_height"	NUMERIC,
	"diversity_gain"	NUMERIC,
	"diversity_beam"	NUMERIC,
	"reflector_height"	NUMERIC,
	"reflector_width"	NUMERIC,
	"reflector_separation"	NUMERIC,
	"repeater_seq_num"	INTEGER,
	"back_to_back_tx_dish_gain"	NUMERIC,
	"back_to_back_rx_dish_gain"	NUMERIC,
	"location_name"	TEXT,
	"passive_repeater_id"	INTEGER,
	"alternative_cgsa_method"	TEXT,
	"path_number"	INTEGER,
	"line_loss"	NUMERIC,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_f3
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"frequency_action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"class_station_code"	TEXT,
	"op_altitude_code"	TEXT,
	"frequency_assigned"	NUMERIC,
	"frequency_upper_band"	NUMERIC,
	"frequency_carrier"	NUMERIC,
	"time_begin_operations"	INTEGER,
	"time_end_operations"	INTEGER,
	"power_output"	NUMERIC,
	"power_erp"	NUMERIC,
	"tolerance"	NUMERIC,
	"frequency_ind"	TEXT,
	"status"	TEXT,
	"eirp"	NUMERIC,
	"transmitter_make"	TEXT,
	"transmitter_model"	TEXT,
	"auto_transmitter_power_control"	TEXT,
	"cnt_mobile_units"	INTEGER,
	"cnt_mob_pagers"	INTEGER,
	"freq_seq_id"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_f4
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"action_performed"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_number"	INTEGER,
	"frequency_assigned"	NUMERIC,
	"frequency_upper_band"	NUMERIC,
	"frequency_offset"	TEXT,
	"frequency_channel_block"	TEXT,
	"equipment_class"	TEXT,
	"minimum_power_output"	NUMERIC,
	"date_first_use"	TIMESTAMP,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_f5
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"call_sign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency"	NUMERIC,
	"frequency_number"	INTEGER,
	"special_condition_type"	TEXT,
	"special_condition_code"	INTEGER,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_f6
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_number"	INTEGER,
	"frequency"	NUMERIC,
	"freq_freeform_cond_type"	TEXT,
	"unique_freq_freeform_id"	NUMERIC,
	"sequence_number"	INTEGER,
	"freq_freeform_condition"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_p2
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"callsign"	TEXT,
	"lease_id"	TEXT,
	"ls_site_link_id"	NUMERIC,
	"path_action_performed"	TEXT,
	"path_number"	INTEGER,
	"transmit_location_number"	INTEGER,
	"transmit_antenna_number"	INTEGER,
	"receiver_location_number"	INTEGER,
	"receiver_antenna_number"	INTEGER,
	"mas_dems_subtype"	TEXT,
	"path_type_desc"	TEXT,
	"passive_receiver_indicator"	TEXT,
	"country_code"	TEXT,
	"interference_to_gso"	TEXT,
	"receiver_callsign"	TEXT,
	"angular_sep"	NUMERIC,
	"cert_no_alternative"	TEXT,
	"cert_no_interference"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_tp
(
	"record_type"	TEXT,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"ebf_number"	TEXT,
	"call_sign"	TEXT,
	"location_number"	INTEGER,
	"antenna_number"	INTEGER,
	"frequency_number"	INTEGER,
	"freq_proto_seq_id"	INTEGER,
	"freq_proto_code_desc"	TEXT	NOT NULL,
	"a_freq_proto_other"	TEXT,
	"action_performed"	TEXT,
	"status_code"	TEXT,
	"status_date"	TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uls_ec
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"callsign"	TEXT,
	"ecip_flag"	TEXT,
	"ecip_prong"	TEXT,
	"holding_period_begin"	TEXT,
	"holding_period_end"	TEXT
);

CREATE TABLE IF NOT EXISTS uls_if
(
	"record_type"	TEXT	NOT NULL,
	"unique_system_identifier"	NUMERIC	NOT NULL,
	"uls_file_number"	TEXT,
	"item_type"	TEXT,
	"iorn_operation_begin_date"	TEXT,
	"iorn_certification"	TEXT,
	"forn_deadline"	TEXT,
	"forn_operation_completed"	TEXT,
	"forn_certification"	TEXT
);

