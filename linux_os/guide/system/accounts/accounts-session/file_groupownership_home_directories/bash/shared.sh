# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low

awk -F':' '{ if ($4 >= {{{ gid_min }}} && $4 != 65534) system("chgrp -f " $4" "$6) }' /etc/passwd
