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

## Running with Dockerfile
From a shell with Docker installed (or in "Play with Docker" experience), run the following commands: 

```bash
curl -L -o repo.zip https://github.com/ooplata/edc2-dockerhost/archive/refs/heads/main.zip
unzip repo.zip
cd edc2-dockerhost-main/
```

Those two commands were to download and enter the repository folder, now, with the next two, we're going to build the image, and run the container:

```bash
docker build -t benchmark .
docker run –rm –privileged -v /var/run/docker.sock:/var/run/docker.sock benhcmark
```

Afther that, the name of the language and the time in ms it's going to be showed on screen.

## Benchmark Repository
Here's the link to the benchmark repository from where the scripts are downloaded:

https://github.com/ooplata/edc2-dockerbench 

