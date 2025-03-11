# pulumi-s3-go

# Creating an S3 bucket with Pulumi and Go

This project creates an Amazon S3 bucket using Pulumi and Go. The runtime environment is dockerized to avoid the need for a local Pulumi installation.

## Requirements
- Install docker
- Install Go

## Steps for project execution

1. **Clone this repository:**  
    ```bash
    git clone <repository-url>
    cd pulumi-s3-go
    ```

2. **Build the Docker image:**  
    ```bash
    docker build -t pulumi-s3-go .
    ```

3. **Run the container:**  
    ```bash
    docker run -it --rm `
    -v "$(Get-Location):/app" `
    -w /app `
    -e AWS_ACCESS_KEY_ID="<ACCESS_KEY>" `
    -e AWS_SECRET_ACCESS_KEY="<SECRET_ACCESS_KEY>" `
    -e AWS_REGION="<REGION>" `
    pulumi-s3-go
    ```

## Handling Dependency Issues  

If you encounter an error due to outdated dependencies in `go.mod`, run the following command to update them:  

```bash
go mod tidy