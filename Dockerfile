# Use the official Golang base image
FROM golang:1.17-alpine

# Set the working directory
WORKDIR /app

# Copy the source code to the working directory
COPY . .

# Build the Golang application
RUN go build -o /main ./cmd/ecs-lambda-tasks-fargate/main.go

# Set the command to run the application
CMD ["/app/main"]