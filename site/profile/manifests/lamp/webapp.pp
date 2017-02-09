class profile::lamp::webapp {

  $requestid  = $facts['puppet_vra_properties']['__Cafe.Root.Request.Id']
  $query      = "resources { type = 'Lamp::Mysql' and title = \"${requestid}\" }"
  $connection = puppetdb_query($query)

  lamp::webapp { "${requestid}":
    db_user     => $connection[0]['parameters']['db_user'],
    db_password => $connection[0]['parameters']['db_password'],
    db_host     => $connection[0]['parameters']['host'],
    db_name     => $connection[0]['parameters']['database'],
  }

}
