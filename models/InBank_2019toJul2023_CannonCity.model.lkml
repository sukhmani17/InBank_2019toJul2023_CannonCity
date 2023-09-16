# Define the database connection to be used for this model.
connection: "inbank_2019tojul2023_cannoncity"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: InBank_2019toJul2023_CannonCity_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: InBank_2019toJul2023_CannonCity_default_datagroup

explore: inbank_canoncity__3541768_2019to_jul2023_demographics_report_usa_by_geography_summary {}

explore: inbank_canoncity__3541768_2019to_jul2023_expanded_cel_cdl_report_cdl {}

explore: inbank_canoncity__3541768_2019to_jul2023_expanded_cel_cdl_report_cel {}

explore: inbank_canoncity__3541768_2019to_jul2023_pathing_x_context_report {}

explore: inbank_canoncity__3541768_2019to_jul2023_zero_point_report {}
