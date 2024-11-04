MODEL (
  name sqlmesh_example.base_model,
  kind VIEW,
);

SELECT *
FROM read_parquet('s3://sqlmesh-duckdb-dev/direction.parquet')