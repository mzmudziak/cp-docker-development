Build the Docker Files
======================

If the requirements for the local development setup changes, this allows to build and upload new docker images to [dockerhub](https://hub.docker.com/u/coderdojo/).

1. Use [`00_remove_old_images.sh`](00_remove_old_images.sh) to remove the prior built images. If you do not do this they will loose their name but the files are still there, allocating space.
2. [`01_build.sh`](01_build.sh) builds the docker images. 
3. [`02_push.sh`](02_push.sh) pushes the images to [dockerhub](https://hub.docker.com/u/coderdojo/). Therefore you must be either in the CoderDojo organization on DockerHub or modify where to push them.
