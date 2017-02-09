class profile::lamp::mysql (
  $db_user     = 'admin',
  $db_password = 'admin',
  $host        = $::fqdn,
  $database    = 'test'
  ) {

  $requestid = $facts['puppet_vra_properties']['__Cafe.Root.Request.Id']

  lamp::mysql { "${requestid}":
    db_user     => $db_user,
    db_password => $db_password,
    host        => $host,
    database    => $database,
  }

}
