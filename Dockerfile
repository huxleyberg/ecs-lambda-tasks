# Start from a base Golang image
FROM golang:1.17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files
COPY go.mod go.sum ./

# Download and install Go dependencies
RUN go mod download

# Copy the source code to the container
COPY . .

# Build the Go application
RUN go build -o myapp ./cmd/ecs-lambda-tasks-fargate/main.go

# Set the command to run the executable
CMD ["./myapp"]