[
    {
        "name": "gm-app",
    "image": "${app_image}:${tag}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "logConfigureation": {
        "logDriver": "awslogs",
        "options": {
            "awslogs-group":/ecs/cd-app",
            "awslogs-region": "${aws_region}",
            "awslogs-stream-prefix": "ecs"
        }
    },
    " portMappings":[
        {
            "containerPort": ${app_port},
            "hostPort": ${app_port}
        }
    ]
  
    }
]
