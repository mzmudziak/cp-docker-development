Build the Docker Images
=======================

If the requirements for the [local development setup](https://github.com/CoderDojo/cp-local-development) changes, this allows to build and upload new docker images to [dockerhub](https://hub.docker.com/u/coderdojo/).

1. Make sure you [installed docker](..).
2. Use [`00_remove_old_images.sh`](./00_remove_old_images.sh) to remove the prior built images. If you do not do this they will loose their name but the files are still there, allocating space.
3. [`01_build.sh`](./01_build.sh) builds the docker images. 
4. [`02_install.sh`](./02_install.sh) installs git and other software packages which are required to install zen. It also downloads zen. This corresponds to the manual sections [Install Tools](https://github.com/CoderDojo/cp-local-development#install-tools) to just before [localdev init](https://github.com/CoderDojo/cp-local-development#localdev-init).
5. [`03_initialize.sh`](./03_initialize.sh) installs git and other software packages which are required to install zen. This corresponds to the manual section [localdev init](https://github.com/CoderDojo/cp-local-development#localdev-init).
6. [`04_testdata.sh`](./04_testdata.sh) starts Zen and while Zen is running, test data is loaded into the database and platform. This corresponds to the manual sections [localdev run](https://github.com/CoderDojo/cp-local-development#localdev-run) and [Test Data](https://github.com/CoderDojo/cp-local-development#test-data).
5. [`05_runs.sh`](./05_run.sh) runs zen. You can now visit [localhost:8000](http://localhost:8000) to browse zen. Quit this with Control-C. This corresponds to the manual section [localdev run](https://github.com/CoderDojo/cp-local-development#localdev-run). Whatever changes you make will not be committed.
8. [`06_push.sh`](./06_push.sh) pushes the images to [dockerhub](https://hub.docker.com/u/coderdojo/). Therefore you must be either in the [CoderDojo organization on DockerHub](https://hub.docker.com/u/coderdojo/) or modify where to push them. Pushing this allows developers do [base their work on the pushed images](../develop).

Have a look at the [scripts folder](./scripts) for useful scripts.
