MODEL (
  name sqlmesh_example.base_model,
  kind VIEW,
);

SELECT *
FROM read_parquet('s3://sandbox-data-lake/direction.parquet')