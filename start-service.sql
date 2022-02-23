BEGIN
  DBMS_SERVICE.start_service(
    service_name => 'api_ciclica_dev'
  );
END;
/