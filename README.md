# udacity-capstone
[![Dalinkw3nt](https://circleci.com/gh/Dalinkw3nt/udacity-capstone.svg?style=svg)](https://app.circleci.com/pipelines/github/Dalinkw3nt/udacity-capstone)

This is the culmination of everything I have learnt in the Udacity Cloud DevOps Nanodegree. 

## Outcomes:
- Proficiency working with Circle Ci and Pipelines
- Working with Ansible and Cloudformation 
- Building K8s clusters in the cloud
- Building Docker images and pushing Docker images to remote repos
- Navigating and using AWS

##becasue
## still trying
## Deployed App:
My deployed application is a short project portfolio, running on an Nginx webserver.

## Images:
- Failed Lint : Output screenshots/Failed lint.png 
- Pipeline : Output screenshots/Pipeline.png
- Successful Pipeline : Output screenshots/Successful pipeline.png
- Containerized app running : Output screenshots/Containerized web app from loadbalancer.png
- Stacks : Output screenshots/Stacks.png
- Pods : Output screenshots/Output showing pods.png
## URL

Public LB http://ac1c79e829bef4bc3a32bb7c2cdaef84-586912081.us-east-1.elb.amazonaws.com/

## KUBECTL outputs

Output showing pods.png

###############

In this project you will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

Working in AWS
Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
Building pipelines
Working with Ansible and CloudFormation to deploy clusters
Building Kubernetes clusters
Building Docker containers in pipelines
As a capstone project, the directions are rather more open-ended than they were in the previous projects in the program. You will also be able to make some of your own choices in this capstone, for the type of deployment you implement, which services you will use, and the nature of the application you develop.

You will develop a CI/CD pipeline for micro services applications with either blue/green deployment or rolling deployment. You will also develop your Continuous Integration steps as you see fit, but must at least include typographical checking (aka “linting”). To make your project stand out, you may also choose to implement other checks such as security scanning, performance testing, integration testing, etc.!

Once you have completed your Continuous Integration you will set up Continuous Deployment, which will include:

Pushing the built Docker container(s) to the Docker repository (you can use AWS ECR, create your own custom Registry within your cluster, or another 3rd party Docker repository) ; and
Deploying these Docker container(s) to a small Kubernetes cluster. For your Kubernetes cluster you can either use AWS Kubernetes as a Service, or build your own Kubernetes cluster. To deploy your Kubernetes cluster, use either Ansible or Cloudformation. Preferably, run these from within Jenkins or Circle CI as an independent pipeline.
