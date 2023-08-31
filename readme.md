# Here are the AWS CLI commands for creating and pushing an container image to AWS ECR

Create repository on ECR
```
aws ecr create-repository --repository-name {repository-name} --region {region}
```
Using an existing repository
```
aws ecr get-login-password --region {region} | docker login --username AWS --password-stdin {aws_account_id}.dkr.ecr.region.amazonaws.com
```
Build your docker Image(Here using the repository name as the container name)
```
docker build -t {repository-name} .
```
Tag your image as the latest version
```
docker tag {repository-name}:latest {aws_account_id}.dkr.ecr.region.amazonaws.com/{repository-name}
```
Push to AWS ECR
```
docker push {aws_account_id}.dkr.ecr.region.amazonaws.com/{repository-name}
```
