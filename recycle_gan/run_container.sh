# Run container interactively
docker run -it --rm --name $USER --user $(id -u):$(id -g) --gpus all -v $(pwd):/src g3:1.0 bash

#docker run --detach --tty --name $USER --user $(id -u):$(id -g) --gpus all -v $(pwd):/src g3:1.0

#docker run --detach --tty --name $USER --user $(id -u):$(id -g) --gpus all -v $(pwd):/src g3:1.0

