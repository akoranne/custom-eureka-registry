#	fly -t local destroy-pipeline -p kill-java
fly -t local set-pipeline -p custom-eureka-registry -c pipeline.yml -l credentials-ecslab.yml
fly -t local unpause-pipeline --pipeline custom-eureka-registry
