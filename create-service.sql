BEGIN
  DBMS_SERVICE.create_service(
    service_name => 'api_ciclica_dev',
    network_name => 'api_ciclica_dev'
  );
END;
/