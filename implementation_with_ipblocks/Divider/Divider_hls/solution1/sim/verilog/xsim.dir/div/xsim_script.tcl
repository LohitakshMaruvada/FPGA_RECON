set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {div} -view {{div_dataflow_ana.wcfg}} -tclbatch {div.tcl} -protoinst {div.protoinst}
