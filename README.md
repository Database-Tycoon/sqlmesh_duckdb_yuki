# Set up environment

First, install the required Python packages:

```bash
pip install sqlmesh duckdb
```

Next, set up your AWS credentials as environment variables:

```bash
export S3_ENDPOINT="s3.us-east-2.amazonaws.com"
export S3_ACCESS_KEY_ID=""
export S3_SECRET_ACCESS_KEY=""
export S3_FOLDER_LOCATION_DEV="s3://sqlmesh-duckdb-dev/sqlmesh_example/"
export S3_FOLDER_LOCATION_PROD="s3://sqlmesh-duckdb-prod/sqlmesh_example/"
```

Run sqlmesh for dev bucket:
```bash
sqlmesh plan
```

Run sqlmesh for prod bucket:
```bash
sqlmesh --gateway prod plan
```

# To Dos
- Figure out the best way to separate dev/prod environments while still utilizing the concept of virtual data environments. This project current still requires data copies between dev/prod. Instead of using gateways, using prefixes might do the job. Will need a bit more research. 