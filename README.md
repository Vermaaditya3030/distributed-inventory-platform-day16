# Day 16 — Distributed Inventory & Order Reservation Platform

Java 17 + Spring Boot + PostgreSQL + Docker Compose.

## What you build
A small distributed commerce backend where the Order service calls the Inventory service to reserve stock. The inventory update is transactional and prevents reservations above available quantity.

## Run
```bash
docker compose up --build
```

Inventory: `http://localhost:8081`  
Orders: `http://localhost:8082`

Check stock:
```bash
curl http://localhost:8081/api/inventory/LAPTOP-001
```

Create an order:
```bash
curl -X POST http://localhost:8082/api/orders -H "Content-Type: application/json" -d '{"sku":"LAPTOP-001","quantity":2}'
```

Then check stock again.

## Tests
```bash
mvn test
```

## GitHub
```bash
git init
git add .
git commit -m "Day 16 distributed inventory and order platform"
git branch -M main
git remote add origin https://github.com/Vermaaditya3030/distributed-inventory-platform-day16.git
git push -u origin main
```

## Production roadmap
Add Kafka order events, Redis distributed locks, idempotency keys, saga/outbox, JWT, API gateway, OpenTelemetry, Prometheus/Grafana, retry/circuit breaker, and Kubernetes deployment.
