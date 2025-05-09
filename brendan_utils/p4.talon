perforce opened: insert("p4 opened\n")
perforce open files: insert("p4-open\n")
(version sync | version sink | sink version | sync version): insert("gp4u\n")
(version reset | reset version): insert("p4 revert ... && g rhh\n")
(version diff | diff version): insert("gp4diff\n")
(version status | status version): insert("version_control_status\n")
kill procs: insert("kill_gq\n")

