function run_demo()
  close all;
  clear all;
  create_node_config_script()
  compile_mex()
  single_simulation_mex()
end