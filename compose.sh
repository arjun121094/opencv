sudo docker build -t opencv .
xhost +local:docker
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.xauth nmerge -
# docker compose up
sudo docker run --rm --name OPEN_CV --gpus all \
-v /home/arjunr/Desktop/OPENCV/JUPYTERNOTEBOOKS/:/arjunr \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /tmp/.docker.xauth:/tmp/.docker.xauth \
 -p 1234:1234 \
-e JUPYTER_TOKEN=dlinano \
-e XAUTHORITY=/tmp/.docker.xauth \
-e DISPLAY=$DISPLAY \
--device /dev/video0:/dev/video0 \
-it opencv:latest \
 bash \
-c "jupyter lab --no-browser --ip=0.0.0.0 --port=1234 --allow-root"
xhost -local:docker