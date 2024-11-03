MODEL (
  name sqlmesh_example.int_model,
  kind FULL,
);

SELECT 
    *,
    'abc' as new_column,
    'abcd' as new_columns2,

FROM sqlmesh_example.base_model;

COPY sqlmesh_example.int_model TO @concat_file_paths(@s3_folder_location, 'int_model.parquet');