J.D McHale DevOps 

## How to Run
1. Clone the repo
2. Install Docker and Docker Compose
3. Run: `docker-compose up -d`
4. Visit: http://localhost:3039

## CI/CD Pipeline
- Every push to `main` triggers production deployment
- Every push to `staging` triggers staging deployment
- Docker image is built and tested on every push

## Scaling
To scale the web service:
`docker-compose up --scale web=3`

## Monitoring
View logs: `docker-compose logs -f`
