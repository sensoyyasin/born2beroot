wall $'#Architecture: ' `hostnamectl | awk `NR==7{printf"%s %s %s",$3,$4,$5}'` ` uname -v' \
$'\n#CPU physical :' `awk 'NR==12{printf "%s",$4}' /proc/cpuinfo` \
$'\n#vCPU :' `awk 'NR==12{printf "%s",$4}' /proc/cpuinfo` \
$'\n#Memory Usage: '`free --mega | awk 'NR==2{printf"%s/%sMb (%.2f%%)", $3,$2,($3*100 / $2)}'`\
$'\n#Disk Usage: ' `df -h | awk 'NR==4{printf "%d/%dGb (%s)", $3,$2,$5}'` \
$'\n#CPU load: ' `top -bn1 | awk 'NR==3{print$2}'` \
$'\n#Last boot: ' `who -b |awk '{printf "%s %s %s",$3,$4,$5}'` \
$'\n#LVM use: ' `lsblk | awk 'BEGIN{aranan = "lvm"} {if($6 == aranan) {print "yes"; exit;}}'` \
$'\n#Connexions TCP : ' `netstat | grep ESTABLISHED | wc -l` 'ESTABLISHED' \
$'\n#User log: ' `who | cut -d ' ' -f 1 | sort -u | wc -l` \
$'\n#Network: IP' `hostname -I ` `ip a | grep 'link/ether' | awk '{print "("$2")"}'` \
$'\n#Sudo : ' ` grep -a 'sudo' /var/log/auth.log | wc -l `
