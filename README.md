# Docker Benchmarks
Omar Plata Salas, Manuel Yepes

We will be measuring the execution times of an algorithm that sums the first 10'000 prime numbers, and writes the result to a file, in five (5) different programming languages:

- C++
- Go
- JavaScript
- Python
- Rust

## Running with Docker Compose
From a shell with Docker installed (also tested and functional on the "Play with Docker" playground), run the following command to download the appropriate compose file:

```bash
curl "https://raw.githubusercontent.com/ooplata/edc2-dockerhost/refs/heads/main/docker-compose.yml" > compose.yml
```

Afterwards, simply run `docker compose up` - after the containers are done building and running, you can conveniently retrieve execution logs for every language using `docker compose logs`.
