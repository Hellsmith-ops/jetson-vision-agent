# Docker Commands

This doc contains how-to's and useful commands on Docker 

## How to obtain the matching Docker image for specific Jetpack version

```bash
git clone https://github.com/dusty-nv/jetson-containers #clone from GitHub
cd jetson-containers #navigate to the repo folder
install.sh #install the script
source ~/.bashrc #reload the shell
jetson-containers run $(autotag pytorch) #this command will auto select the best matching image for this use case
```

## Other useful commands

```bash
docker images #check downloaded images
docker build --network=host -t jetson-vision-agent . #rebuilding required after editing Dockerfile
```

## Command to run pre-built Docker image

```bash
docker run -it --rm \
  -u $(id -u):$(id -g) \
  --runtime=nvidia \
  --network host \
  -v ~/Documents/projects/jetson-vision-agent:/workspace \
  jetson-vision-agent
```
