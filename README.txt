# capstone
Final project for Udacity Cloud DevOps Nanodegree

Steps to build the pipeline

## Build the image
# Step1 build the image
docker build -t chasetheblack/udacity-capstone-project:latest .

# Step2 run the container and push it to docker cloud
docker run --name capstone -d  -p 8080:80 chasetheblack/udacity-capstone-project:latest
docker exec -it capstone bash
docker push chasetheblack/udacity-capstone-project:latest

## Build AWS EKS environments
# Step3 build VPC
aws cloudformation create-stack --stack-name capstone-vpc --template-body file://amazon-eks-vpc.yaml  --region=us-east-1

# Step4 build Role
aws cloudformation create-stack --stack-name capstone-role --template-body file://amazon-eks-role.yaml  --region=us-east-1 --capabilities CAPABILITY_IAM
aws cloudformation create-stack --stack-name capstone-nodegroup-role --template-body file://amazon-eks-nodegroup-role.yaml  --region=us-east-1 --capabilities CAPABILITY_IAM

# Step5 manually create the eks cluster on aws console
# Reference : https://docs.aws.amazon.com/eks/latest/userguide/getting-started-console.html

# Step6 Create a kubeconfig file and check configure status
aws eks --region us-east-1 update-kubeconfig --name capstone
kubectl get svc

# Step7 manually create the node group
# Reference : https://docs.aws.amazon.com/eks/latest/userguide/getting-started-console.html

# Step8 wait for the nodes to become ready
kubectl get nodes --watch