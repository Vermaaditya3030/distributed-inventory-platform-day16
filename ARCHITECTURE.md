# Architecture

Client -> Order Service -> Inventory Service -> PostgreSQL

Order Service owns order-facing API. Inventory Service owns stock and performs transactional reservation. In production, replace the synchronous call with an outbox + Kafka saga for resilience and eventual consistency.
