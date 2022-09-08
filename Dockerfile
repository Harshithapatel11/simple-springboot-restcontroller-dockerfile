FROM openjdk:8
ADD target/springboot-docker-aws-ecs.jar springboot-docker-aws-ecs.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "springboot-docker-aws-ecs.jar"]


#build image
#docker build -t springboot-docker-aws-ecs.jar .

#Creating Repoitory in AWS ECR
#aws ecr create-repository --repository-name sample-repo --image-scanning-configuration scanOnPush=true --region us-east-1

#login
#aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 598815891177.dkr.ecr.us-east-1.amazonaws.com

#list of docker images
#docker images

#provide the tag
#docker tag springboot-docker-aws-ecs.jar:latest 598815891177.dkr.ecr.us-east-1.amazonaws.com/sample-repo:springboot-docker-aws-ecs.jar

#push image into ECR
#docker push 598815891177.dkr.ecr.us-east-1.amazonaws.com/sample-repo:springboot-docker-aws-ecs.jar
