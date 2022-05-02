Build Image:

docker build -t blexr/happs:latest .

Run Image:

docker run --name happs -v happs/:/var/www -e -d blexr/happs:latest

Start docker compose:

docker-compose up -d
