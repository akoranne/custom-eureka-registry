#	fly -t local destroy-pipeline -p kill-java
fly -t local set-pipeline -p kill-java -c pipeline.yml -l credentials-ecslab.yml
fly -t local unpause-pipeline --pipeline kill-java
