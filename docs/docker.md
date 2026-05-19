# Docker Commands

This doc contains how-to's and useful commands on Docker 

## Command to build Dock image

docker build --network=host -t jetson-vision-agent .

## Command to run pre-built Docker image

```bash
docker run -it --rm \
  -u $(id -u):$(id -g) \
  --runtime=nvidia \
  --network host \
  -v ~/Documents/projects/jetson-vision-agent:/workspace \
  jetson-vision-agent
```
