
variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}
variable "account_id" {
  description = "AWS account id."
  default     = "739538001041"
}
variable "env" {
  description = "Targeted Depolyment environment"
  default     = "dev"
}
variable "nodejs_project_repository_name" {
  description = "Nodejs Project Repository name to connect to"
  default     = "desafio-junto"
}
variable "nodejs_project_repository_branch" {
  description = "Nodejs Project Repository branch to connect to"
  default     = "main"
}


variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "desafiojunto-artifacts"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "aws_ecs_cluster_name" {
  description = "Target Amazon ECS Cluster Name"
  default     = "myapp-cluster"
}

variable "aws_ecs_node_app_service_name" {
  description = "Target Amazon ECS Cluster NodeJs App Service name"
  default     = "nodeApp-Service"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "container_name" {
  description = "Container-name"
  default     = "nodeapp"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "739538001041.dkr.ecr.us-east-1.amazonaws.com/nodeapp:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}