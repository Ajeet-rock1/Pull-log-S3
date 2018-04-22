#!/bin/bash
year=`date +%Y`
month=`date +%m`
day=`date +%d`
filetopull=`/usr/local/bin/s3cmd ls s3://elb-logs-1/ELB/elb1/AWSLogs/832198632263/elasticloadbalancing/ap-south-1/$year/$month/$day/* |  tail -1 | awk '{print $4}'`
fileforgunzip=`basename $filetopull`
finalfile=`basename $filetopull`
cd /opt/elk/
/usr/local/bin/s3cmd get $filetopull
/bin/cp -a /opt/elk/*.log /var/log/elb/elb1.log
rm -rf /opt/elk/*.log

filetopull1=`/usr/local/bin/s3cmd ls s3://elb-logs-2/ELB/elb2/AWSLogs/832198632263/elasticloadbalancing/ap-south-1/$year/$month/$day/* |  tail -1 | awk '{print $4}'`
file1=`basename $filetopull1`
cd /opt/elk/
/usr/local/bin/s3cmd get $filetopull1
/bin/cp -a /opt/elk/*.log /var/log/elb/elb2.log
rm -rf /opt/elk/*.log

filetopull2=`/usr/local/bin/s3cmd ls s3://elb-logs-3/ELB/elb3/AWSLogs/832198632263/elasticloadbalancing/ap-south-1/$year/$month/$day/* |  tail -1 | awk '{print $4}'`
file2=`basename $filetopull2`
cd /opt/elk/
/usr/local/bin/s3cmd get $filetopull2
/bin/cp -a /opt/elk/*.log /var/log/elb/elb3.log
rm -rf /opt/elk/*.log



filetopull3=`/usr/local/bin/s3cmd ls s3://elb-logs-4/ELB/elb4/AWSLogs/832198632263/elasticloadbalancing/ap-south-1/$year/$month/$day/* |  tail -1 | awk '{print $4}'`
file3=`basename $filetopull3`
cd /opt/elk/
/usr/local/bin/s3cmd get $filetopull3
/bin/cp -a /opt/elk/*.log /var/log/elb/elb4.log
rm -rf /opt/elk/*.log
