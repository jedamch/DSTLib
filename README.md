# DSTLib

## Requirements
- Docker
- Docker Compose

## How to Run
1. Clone the repo:
   `git clone https://github.com/jedamch/DSTLib`
2. Navigate into the folder:
   `cd DSTLib`
3. Start the app:
   `docker-compose up -d --build`
4. Import the database (first time only):
   `docker-compose exec -T db mysql -u ohmodmin -ptest1234 DSTLib < 127_0_0_1.sql`
5. Visit: http://localhost:3039

## CI/CD Pipeline
- Push to `main` → deploys to production (port 3039)
- Push to `staging` → deploys to staging (port 3040)

## Monitoring
- View logs: `docker-compose logs -f`
- Check health: `docker-compose ps`
- Live stats: `docker stats`

## Scaling
`docker-compose up --scale web=3`
