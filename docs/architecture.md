# Architecture

## End Result

ECS Service.

ECS Task Definition <-- Has a reference to a container image.
ALB (Application Load Balancer) <-- Has a reference to a target group.
Target Group <-- Has a reference to the ECS Tasks.
ECR (Elastic Container Registry) <-- Where we're gonna push the image.
Cluster <-- Where the ECS Service is going to run.
