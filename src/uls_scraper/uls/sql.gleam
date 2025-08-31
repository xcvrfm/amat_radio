//// This module contains the code to run the sql queries defined in
//// `./src/amat_radio/uls/sql`.
//// > 🐿️ This module was generated automatically using v4.4.1 of
//// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
////

import gleam/dynamic/decode
import gleam/option.{type Option}
import gleam/time/timestamp.{type Timestamp}
import pog

/// A row you get from running the `uls_ad` query
/// defined in `./src/amat_radio/uls/sql/uls_ad.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsAdRow {
  UlsAdRow(
    record_type: Option(String),
    unique_system_identifier: Float,
    uls_file_number: Option(String),
    ebf_number: Option(String),
    application_purpose: Option(String),
    application_status: Option(String),
    application_fee_exempt: Option(String),
    regulatory_fee_exempt: Option(String),
    source: Option(String),
    requested_expiration_date_mmdd: Option(String),
    receipt_date: Option(String),
    notification_code: Option(String),
    notification_date: Option(String),
    expanding_area_or_contour: Option(String),
    change_type: Option(String),
    original_application_purpose: Option(String),
    requesting_a_waiver: Option(String),
    how_many_waivers_requested: Option(Int),
    any_attachments: Option(String),
    number_of_requested_sids: Option(Int),
    fee_control_num: Option(String),
    date_entered: Option(String),
    reason: Option(String),
    frequency_coordination_indicat: Option(String),
    emergency_sta: Option(String),
    overall_change_type: Option(String),
    slow_growth_ind: Option(String),
    previous_waiver: Option(String),
    waiver_deferral_fee: Option(String),
    has_term_pending_ind: Option(String),
    use_of_service: Option(String),
  )
}

/// Runs the `uls_ad` query
/// defined in `./src/amat_radio/uls/sql/uls_ad.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_ad(
  db: pog.Connection,
) -> Result(pog.Returned(UlsAdRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.optional(decode.string))
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_number <- decode.field(2, decode.optional(decode.string))
    use ebf_number <- decode.field(3, decode.optional(decode.string))
    use application_purpose <- decode.field(4, decode.optional(decode.string))
    use application_status <- decode.field(5, decode.optional(decode.string))
    use application_fee_exempt <- decode.field(
      6,
      decode.optional(decode.string),
    )
    use regulatory_fee_exempt <- decode.field(7, decode.optional(decode.string))
    use source <- decode.field(8, decode.optional(decode.string))
    use requested_expiration_date_mmdd <- decode.field(
      9,
      decode.optional(decode.string),
    )
    use receipt_date <- decode.field(10, decode.optional(decode.string))
    use notification_code <- decode.field(11, decode.optional(decode.string))
    use notification_date <- decode.field(12, decode.optional(decode.string))
    use expanding_area_or_contour <- decode.field(
      13,
      decode.optional(decode.string),
    )
    use change_type <- decode.field(14, decode.optional(decode.string))
    use original_application_purpose <- decode.field(
      15,
      decode.optional(decode.string),
    )
    use requesting_a_waiver <- decode.field(16, decode.optional(decode.string))
    use how_many_waivers_requested <- decode.field(
      17,
      decode.optional(decode.int),
    )
    use any_attachments <- decode.field(18, decode.optional(decode.string))
    use number_of_requested_sids <- decode.field(
      19,
      decode.optional(decode.int),
    )
    use fee_control_num <- decode.field(20, decode.optional(decode.string))
    use date_entered <- decode.field(21, decode.optional(decode.string))
    use reason <- decode.field(22, decode.optional(decode.string))
    use frequency_coordination_indicat <- decode.field(
      23,
      decode.optional(decode.string),
    )
    use emergency_sta <- decode.field(24, decode.optional(decode.string))
    use overall_change_type <- decode.field(25, decode.optional(decode.string))
    use slow_growth_ind <- decode.field(26, decode.optional(decode.string))
    use previous_waiver <- decode.field(27, decode.optional(decode.string))
    use waiver_deferral_fee <- decode.field(28, decode.optional(decode.string))
    use has_term_pending_ind <- decode.field(29, decode.optional(decode.string))
    use use_of_service <- decode.field(30, decode.optional(decode.string))
    decode.success(UlsAdRow(
      record_type:,
      unique_system_identifier:,
      uls_file_number:,
      ebf_number:,
      application_purpose:,
      application_status:,
      application_fee_exempt:,
      regulatory_fee_exempt:,
      source:,
      requested_expiration_date_mmdd:,
      receipt_date:,
      notification_code:,
      notification_date:,
      expanding_area_or_contour:,
      change_type:,
      original_application_purpose:,
      requesting_a_waiver:,
      how_many_waivers_requested:,
      any_attachments:,
      number_of_requested_sids:,
      fee_control_num:,
      date_entered:,
      reason:,
      frequency_coordination_indicat:,
      emergency_sta:,
      overall_change_type:,
      slow_growth_ind:,
      previous_waiver:,
      waiver_deferral_fee:,
      has_term_pending_ind:,
      use_of_service:,
    ))
  }

  "select * from uls_ad;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}

/// A row you get from running the `uls_am` query
/// defined in `./src/amat_radio/uls/sql/uls_am.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsAmRow {
  UlsAmRow(
    record_type: String,
    unique_system_identifier: Float,
    uls_file_num: Option(String),
    ebf_number: Option(String),
    callsign: Option(String),
    operator_class: Option(String),
    group_code: Option(String),
    region_code: Option(Int),
    trustee_callsign: Option(String),
    trustee_indicator: Option(String),
    physician_certification: Option(String),
    ve_signature: Option(String),
    systematic_callsign_change: Option(String),
    vanity_callsign_change: Option(String),
    vanity_relationship: Option(String),
    previous_callsign: Option(String),
    previous_operator_class: Option(String),
    trustee_name: Option(String),
  )
}

/// Runs the `uls_am` query
/// defined in `./src/amat_radio/uls/sql/uls_am.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_am(
  db: pog.Connection,
) -> Result(pog.Returned(UlsAmRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.string)
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_num <- decode.field(2, decode.optional(decode.string))
    use ebf_number <- decode.field(3, decode.optional(decode.string))
    use callsign <- decode.field(4, decode.optional(decode.string))
    use operator_class <- decode.field(5, decode.optional(decode.string))
    use group_code <- decode.field(6, decode.optional(decode.string))
    use region_code <- decode.field(7, decode.optional(decode.int))
    use trustee_callsign <- decode.field(8, decode.optional(decode.string))
    use trustee_indicator <- decode.field(9, decode.optional(decode.string))
    use physician_certification <- decode.field(
      10,
      decode.optional(decode.string),
    )
    use ve_signature <- decode.field(11, decode.optional(decode.string))
    use systematic_callsign_change <- decode.field(
      12,
      decode.optional(decode.string),
    )
    use vanity_callsign_change <- decode.field(
      13,
      decode.optional(decode.string),
    )
    use vanity_relationship <- decode.field(14, decode.optional(decode.string))
    use previous_callsign <- decode.field(15, decode.optional(decode.string))
    use previous_operator_class <- decode.field(
      16,
      decode.optional(decode.string),
    )
    use trustee_name <- decode.field(17, decode.optional(decode.string))
    decode.success(UlsAmRow(
      record_type:,
      unique_system_identifier:,
      uls_file_num:,
      ebf_number:,
      callsign:,
      operator_class:,
      group_code:,
      region_code:,
      trustee_callsign:,
      trustee_indicator:,
      physician_certification:,
      ve_signature:,
      systematic_callsign_change:,
      vanity_callsign_change:,
      vanity_relationship:,
      previous_callsign:,
      previous_operator_class:,
      trustee_name:,
    ))
  }

  "select * from uls_am;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}

/// A row you get from running the `uls_at` query
/// defined in `./src/amat_radio/uls/sql/uls_at.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsAtRow {
  UlsAtRow(
    record_type: Option(String),
    unique_system_identifier: Float,
    uls_file_number: Option(String),
    ebf_number: Option(String),
    attachment_code: Option(String),
    attachment_description: Option(String),
    attachment_date: Option(String),
    attachment_file_name: Option(String),
    attachment_action_performed: Option(String),
  )
}

/// Runs the `uls_at` query
/// defined in `./src/amat_radio/uls/sql/uls_at.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_at(
  db: pog.Connection,
) -> Result(pog.Returned(UlsAtRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.optional(decode.string))
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_number <- decode.field(2, decode.optional(decode.string))
    use ebf_number <- decode.field(3, decode.optional(decode.string))
    use attachment_code <- decode.field(4, decode.optional(decode.string))
    use attachment_description <- decode.field(
      5,
      decode.optional(decode.string),
    )
    use attachment_date <- decode.field(6, decode.optional(decode.string))
    use attachment_file_name <- decode.field(7, decode.optional(decode.string))
    use attachment_action_performed <- decode.field(
      8,
      decode.optional(decode.string),
    )
    decode.success(UlsAtRow(
      record_type:,
      unique_system_identifier:,
      uls_file_number:,
      ebf_number:,
      attachment_code:,
      attachment_description:,
      attachment_date:,
      attachment_file_name:,
      attachment_action_performed:,
    ))
  }

  "select * from uls_at;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}

/// A row you get from running the `uls_co` query
/// defined in `./src/amat_radio/uls/sql/uls_co.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsCoRow {
  UlsCoRow(
    record_type: String,
    unique_system_identifier: Float,
    uls_file_num: Option(String),
    callsign: Option(String),
    comment_date: Option(String),
    description: Option(String),
    status_code: Option(String),
    status_date: Option(Timestamp),
  )
}

/// Runs the `uls_co` query
/// defined in `./src/amat_radio/uls/sql/uls_co.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_co(
  db: pog.Connection,
) -> Result(pog.Returned(UlsCoRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.string)
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_num <- decode.field(2, decode.optional(decode.string))
    use callsign <- decode.field(3, decode.optional(decode.string))
    use comment_date <- decode.field(4, decode.optional(decode.string))
    use description <- decode.field(5, decode.optional(decode.string))
    use status_code <- decode.field(6, decode.optional(decode.string))
    use status_date <- decode.field(7, decode.optional(pog.timestamp_decoder()))
    decode.success(UlsCoRow(
      record_type:,
      unique_system_identifier:,
      uls_file_num:,
      callsign:,
      comment_date:,
      description:,
      status_code:,
      status_date:,
    ))
  }

  "select * from uls_co;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}

/// A row you get from running the `uls_en` query
/// defined in `./src/amat_radio/uls/sql/uls_en.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsEnRow {
  UlsEnRow(
    record_type: String,
    unique_system_identifier: Float,
    uls_file_number: Option(String),
    ebf_number: Option(String),
    call_sign: Option(String),
    entity_type: Option(String),
    licensee_id: Option(String),
    entity_name: Option(String),
    first_name: Option(String),
    mi: Option(String),
    last_name: Option(String),
    suffix: Option(String),
    phone: Option(String),
    fax: Option(String),
    email: Option(String),
    street_address: Option(String),
    city: Option(String),
    state: Option(String),
    zip_code: Option(String),
    po_box: Option(String),
    attention_line: Option(String),
    sgin: Option(String),
    frn: Option(String),
    applicant_type_code: Option(String),
    applicant_type_other: Option(String),
    status_code: Option(String),
    status_date: Option(Timestamp),
    lic_category_code: Option(String),
    linked_license_id: Option(Float),
    linked_callsign: Option(String),
  )
}

/// Runs the `uls_en` query
/// defined in `./src/amat_radio/uls/sql/uls_en.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_en(
  db: pog.Connection,
) -> Result(pog.Returned(UlsEnRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.string)
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_number <- decode.field(2, decode.optional(decode.string))
    use ebf_number <- decode.field(3, decode.optional(decode.string))
    use call_sign <- decode.field(4, decode.optional(decode.string))
    use entity_type <- decode.field(5, decode.optional(decode.string))
    use licensee_id <- decode.field(6, decode.optional(decode.string))
    use entity_name <- decode.field(7, decode.optional(decode.string))
    use first_name <- decode.field(8, decode.optional(decode.string))
    use mi <- decode.field(9, decode.optional(decode.string))
    use last_name <- decode.field(10, decode.optional(decode.string))
    use suffix <- decode.field(11, decode.optional(decode.string))
    use phone <- decode.field(12, decode.optional(decode.string))
    use fax <- decode.field(13, decode.optional(decode.string))
    use email <- decode.field(14, decode.optional(decode.string))
    use street_address <- decode.field(15, decode.optional(decode.string))
    use city <- decode.field(16, decode.optional(decode.string))
    use state <- decode.field(17, decode.optional(decode.string))
    use zip_code <- decode.field(18, decode.optional(decode.string))
    use po_box <- decode.field(19, decode.optional(decode.string))
    use attention_line <- decode.field(20, decode.optional(decode.string))
    use sgin <- decode.field(21, decode.optional(decode.string))
    use frn <- decode.field(22, decode.optional(decode.string))
    use applicant_type_code <- decode.field(23, decode.optional(decode.string))
    use applicant_type_other <- decode.field(24, decode.optional(decode.string))
    use status_code <- decode.field(25, decode.optional(decode.string))
    use status_date <- decode.field(
      26,
      decode.optional(pog.timestamp_decoder()),
    )
    use lic_category_code <- decode.field(27, decode.optional(decode.string))
    use linked_license_id <- decode.field(
      28,
      decode.optional(pog.numeric_decoder()),
    )
    use linked_callsign <- decode.field(29, decode.optional(decode.string))
    decode.success(UlsEnRow(
      record_type:,
      unique_system_identifier:,
      uls_file_number:,
      ebf_number:,
      call_sign:,
      entity_type:,
      licensee_id:,
      entity_name:,
      first_name:,
      mi:,
      last_name:,
      suffix:,
      phone:,
      fax:,
      email:,
      street_address:,
      city:,
      state:,
      zip_code:,
      po_box:,
      attention_line:,
      sgin:,
      frn:,
      applicant_type_code:,
      applicant_type_other:,
      status_code:,
      status_date:,
      lic_category_code:,
      linked_license_id:,
      linked_callsign:,
    ))
  }

  "select * from uls_en;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}

/// A row you get from running the `uls_hd` query
/// defined in `./src/amat_radio/uls/sql/uls_hd.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsHdRow {
  UlsHdRow(
    record_type: String,
    unique_system_identifier: Float,
    uls_file_number: Option(String),
    ebf_number: Option(String),
    call_sign: Option(String),
    license_status: Option(String),
    radio_service_code: Option(String),
    grant_date: Option(String),
    expired_date: Option(String),
    cancellation_date: Option(String),
    eligibility_rule_num: Option(String),
    applicant_type_code_reserved: Option(String),
    alien: Option(String),
    alien_government: Option(String),
    alien_corporation: Option(String),
    alien_officer: Option(String),
    alien_control: Option(String),
    revoked: Option(String),
    convicted: Option(String),
    adjudged: Option(String),
    involved_reserved: Option(String),
    common_carrier: Option(String),
    non_common_carrier: Option(String),
    private_comm: Option(String),
    fixed: Option(String),
    mobile: Option(String),
    radiolocation: Option(String),
    satellite: Option(String),
    developmental_or_sta: Option(String),
    interconnected_service: Option(String),
    certifier_first_name: Option(String),
    certifier_mi: Option(String),
    certifier_last_name: Option(String),
    certifier_suffix: Option(String),
    certifier_title: Option(String),
    sex: Option(String),
    african_american: Option(String),
    native_american: Option(String),
    hawaiian: Option(String),
    asian: Option(String),
    white: Option(String),
    ethnicity: Option(String),
    effective_date: Option(String),
    last_action_date: Option(String),
    auction_id: Option(Int),
    reg_stat_broad_serv: Option(String),
    band_manager: Option(String),
    type_serv_broad_serv: Option(String),
    alien_ruling: Option(String),
    licensee_name_change: Option(String),
    whitespace_ind: Option(String),
    additional_cert_choice: Option(String),
    additional_cert_answer: Option(String),
    discontinuation_ind: Option(String),
    regulatory_compliance_ind: Option(String),
    eligibility_cert_900: Option(String),
    transition_plan_cert_900: Option(String),
    return_spectrum_cert_900: Option(String),
    payment_cert_900: Option(String),
  )
}

/// Runs the `uls_hd` query
/// defined in `./src/amat_radio/uls/sql/uls_hd.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_hd(
  db: pog.Connection,
) -> Result(pog.Returned(UlsHdRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.string)
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_number <- decode.field(2, decode.optional(decode.string))
    use ebf_number <- decode.field(3, decode.optional(decode.string))
    use call_sign <- decode.field(4, decode.optional(decode.string))
    use license_status <- decode.field(5, decode.optional(decode.string))
    use radio_service_code <- decode.field(6, decode.optional(decode.string))
    use grant_date <- decode.field(7, decode.optional(decode.string))
    use expired_date <- decode.field(8, decode.optional(decode.string))
    use cancellation_date <- decode.field(9, decode.optional(decode.string))
    use eligibility_rule_num <- decode.field(10, decode.optional(decode.string))
    use applicant_type_code_reserved <- decode.field(
      11,
      decode.optional(decode.string),
    )
    use alien <- decode.field(12, decode.optional(decode.string))
    use alien_government <- decode.field(13, decode.optional(decode.string))
    use alien_corporation <- decode.field(14, decode.optional(decode.string))
    use alien_officer <- decode.field(15, decode.optional(decode.string))
    use alien_control <- decode.field(16, decode.optional(decode.string))
    use revoked <- decode.field(17, decode.optional(decode.string))
    use convicted <- decode.field(18, decode.optional(decode.string))
    use adjudged <- decode.field(19, decode.optional(decode.string))
    use involved_reserved <- decode.field(20, decode.optional(decode.string))
    use common_carrier <- decode.field(21, decode.optional(decode.string))
    use non_common_carrier <- decode.field(22, decode.optional(decode.string))
    use private_comm <- decode.field(23, decode.optional(decode.string))
    use fixed <- decode.field(24, decode.optional(decode.string))
    use mobile <- decode.field(25, decode.optional(decode.string))
    use radiolocation <- decode.field(26, decode.optional(decode.string))
    use satellite <- decode.field(27, decode.optional(decode.string))
    use developmental_or_sta <- decode.field(28, decode.optional(decode.string))
    use interconnected_service <- decode.field(
      29,
      decode.optional(decode.string),
    )
    use certifier_first_name <- decode.field(30, decode.optional(decode.string))
    use certifier_mi <- decode.field(31, decode.optional(decode.string))
    use certifier_last_name <- decode.field(32, decode.optional(decode.string))
    use certifier_suffix <- decode.field(33, decode.optional(decode.string))
    use certifier_title <- decode.field(34, decode.optional(decode.string))
    use sex <- decode.field(35, decode.optional(decode.string))
    use african_american <- decode.field(36, decode.optional(decode.string))
    use native_american <- decode.field(37, decode.optional(decode.string))
    use hawaiian <- decode.field(38, decode.optional(decode.string))
    use asian <- decode.field(39, decode.optional(decode.string))
    use white <- decode.field(40, decode.optional(decode.string))
    use ethnicity <- decode.field(41, decode.optional(decode.string))
    use effective_date <- decode.field(42, decode.optional(decode.string))
    use last_action_date <- decode.field(43, decode.optional(decode.string))
    use auction_id <- decode.field(44, decode.optional(decode.int))
    use reg_stat_broad_serv <- decode.field(45, decode.optional(decode.string))
    use band_manager <- decode.field(46, decode.optional(decode.string))
    use type_serv_broad_serv <- decode.field(47, decode.optional(decode.string))
    use alien_ruling <- decode.field(48, decode.optional(decode.string))
    use licensee_name_change <- decode.field(49, decode.optional(decode.string))
    use whitespace_ind <- decode.field(50, decode.optional(decode.string))
    use additional_cert_choice <- decode.field(
      51,
      decode.optional(decode.string),
    )
    use additional_cert_answer <- decode.field(
      52,
      decode.optional(decode.string),
    )
    use discontinuation_ind <- decode.field(53, decode.optional(decode.string))
    use regulatory_compliance_ind <- decode.field(
      54,
      decode.optional(decode.string),
    )
    use eligibility_cert_900 <- decode.field(55, decode.optional(decode.string))
    use transition_plan_cert_900 <- decode.field(
      56,
      decode.optional(decode.string),
    )
    use return_spectrum_cert_900 <- decode.field(
      57,
      decode.optional(decode.string),
    )
    use payment_cert_900 <- decode.field(58, decode.optional(decode.string))
    decode.success(UlsHdRow(
      record_type:,
      unique_system_identifier:,
      uls_file_number:,
      ebf_number:,
      call_sign:,
      license_status:,
      radio_service_code:,
      grant_date:,
      expired_date:,
      cancellation_date:,
      eligibility_rule_num:,
      applicant_type_code_reserved:,
      alien:,
      alien_government:,
      alien_corporation:,
      alien_officer:,
      alien_control:,
      revoked:,
      convicted:,
      adjudged:,
      involved_reserved:,
      common_carrier:,
      non_common_carrier:,
      private_comm:,
      fixed:,
      mobile:,
      radiolocation:,
      satellite:,
      developmental_or_sta:,
      interconnected_service:,
      certifier_first_name:,
      certifier_mi:,
      certifier_last_name:,
      certifier_suffix:,
      certifier_title:,
      sex:,
      african_american:,
      native_american:,
      hawaiian:,
      asian:,
      white:,
      ethnicity:,
      effective_date:,
      last_action_date:,
      auction_id:,
      reg_stat_broad_serv:,
      band_manager:,
      type_serv_broad_serv:,
      alien_ruling:,
      licensee_name_change:,
      whitespace_ind:,
      additional_cert_choice:,
      additional_cert_answer:,
      discontinuation_ind:,
      regulatory_compliance_ind:,
      eligibility_cert_900:,
      transition_plan_cert_900:,
      return_spectrum_cert_900:,
      payment_cert_900:,
    ))
  }

  "select * from uls_hd;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}

/// A row you get from running the `uls_hs` query
/// defined in `./src/amat_radio/uls/sql/uls_hs.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsHsRow {
  UlsHsRow(
    record_type: String,
    unique_system_identifier: Float,
    uls_file_number: Option(String),
    callsign: Option(String),
    log_date: Option(String),
    code: Option(String),
  )
}

/// Runs the `uls_hs` query
/// defined in `./src/amat_radio/uls/sql/uls_hs.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_hs(
  db: pog.Connection,
) -> Result(pog.Returned(UlsHsRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.string)
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_number <- decode.field(2, decode.optional(decode.string))
    use callsign <- decode.field(3, decode.optional(decode.string))
    use log_date <- decode.field(4, decode.optional(decode.string))
    use code <- decode.field(5, decode.optional(decode.string))
    decode.success(UlsHsRow(
      record_type:,
      unique_system_identifier:,
      uls_file_number:,
      callsign:,
      log_date:,
      code:,
    ))
  }

  "select * from uls_hs;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}

/// A row you get from running the `uls_sc` query
/// defined in `./src/amat_radio/uls/sql/uls_sc.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsScRow {
  UlsScRow(
    record_type: Option(String),
    unique_system_identifier: Float,
    uls_file_number: Option(String),
    ebf_number: Option(String),
    callsign: Option(String),
    special_condition_type: Option(String),
    special_condition_code: Option(Int),
    status_code: Option(String),
    status_date: Option(Timestamp),
  )
}

/// Runs the `uls_sc` query
/// defined in `./src/amat_radio/uls/sql/uls_sc.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_sc(
  db: pog.Connection,
) -> Result(pog.Returned(UlsScRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.optional(decode.string))
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_number <- decode.field(2, decode.optional(decode.string))
    use ebf_number <- decode.field(3, decode.optional(decode.string))
    use callsign <- decode.field(4, decode.optional(decode.string))
    use special_condition_type <- decode.field(
      5,
      decode.optional(decode.string),
    )
    use special_condition_code <- decode.field(6, decode.optional(decode.int))
    use status_code <- decode.field(7, decode.optional(decode.string))
    use status_date <- decode.field(8, decode.optional(pog.timestamp_decoder()))
    decode.success(UlsScRow(
      record_type:,
      unique_system_identifier:,
      uls_file_number:,
      ebf_number:,
      callsign:,
      special_condition_type:,
      special_condition_code:,
      status_code:,
      status_date:,
    ))
  }

  "select * from uls_sc;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}

/// A row you get from running the `uls_vc` query
/// defined in `./src/amat_radio/uls/sql/uls_vc.sql`.
///
/// > 🐿️ This type definition was generated automatically using v4.4.1 of the
/// > [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub type UlsVcRow {
  UlsVcRow(
    record_type: Option(String),
    unique_system_identifier: Float,
    uls_file_number: Option(String),
    ebf_number: Option(String),
    request_sequence: Option(Int),
    callsign_requested: Option(String),
  )
}

/// Runs the `uls_vc` query
/// defined in `./src/amat_radio/uls/sql/uls_vc.sql`.
///
/// > 🐿️ This function was generated automatically using v4.4.1 of
/// > the [squirrel package](https://github.com/giacomocavalieri/squirrel).
///
pub fn uls_vc(
  db: pog.Connection,
) -> Result(pog.Returned(UlsVcRow), pog.QueryError) {
  let decoder = {
    use record_type <- decode.field(0, decode.optional(decode.string))
    use unique_system_identifier <- decode.field(1, pog.numeric_decoder())
    use uls_file_number <- decode.field(2, decode.optional(decode.string))
    use ebf_number <- decode.field(3, decode.optional(decode.string))
    use request_sequence <- decode.field(4, decode.optional(decode.int))
    use callsign_requested <- decode.field(5, decode.optional(decode.string))
    decode.success(UlsVcRow(
      record_type:,
      unique_system_identifier:,
      uls_file_number:,
      ebf_number:,
      request_sequence:,
      callsign_requested:,
    ))
  }

  "select * from uls_vc;
"
  |> pog.query
  |> pog.returning(decoder)
  |> pog.execute(db)
}
