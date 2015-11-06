-- Install dependencies
CREATE EXTENSION postgis;
CREATE EXTENSION schema_triggers;
CREATE EXTENSION plpythonu;
CREATE EXTENSION cartodb;

-- Install the extension
CREATE EXTENSION cdb_geocoder_server;

-- Mock the varnish invalidation function
CREATE OR REPLACE FUNCTION public.cdb_invalidate_varnish(table_name text) RETURNS void AS $$
BEGIN
  RETURN;
END
$$
LANGUAGE plpgsql;
