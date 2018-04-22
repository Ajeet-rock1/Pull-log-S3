# Pull-log-S3
Pull the log from S3 bucket to Security Analytics cluster

Note:- 

1:- We need to setup s3cmd in your local machine in your security cluster and need to define 
AWS iam access and secret key for pull log from S3 bucket to local infrastrture.
2:- We need to have store log in local machine and push log from local machine to logstash>ES>Kibana
3:- Write grok filter for ELB logs in logstash



