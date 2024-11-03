from sqlmesh import macro

@macro() 
def concat_file_paths(evaluator, *args, separator=""):
  """
  .replace method removes quotes that stay in the middle of the combined string
  Add quotes around the combined string to let sqlglot know this is a string
  """
  return "'" + f"{separator}".join(str(arg) for arg in args).replace("'", "") + "'"
