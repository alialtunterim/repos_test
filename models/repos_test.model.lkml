# Define the database connection to be used for this model.
connection: "komtas-workshop"

include: "/views/*.view.lkml"
include: "/dashboards/sample.dashboard.lookml"

include: "/dashboards/test.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: repos_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: repos_test_default_datagroup

explore: siparis_detay {}
