Scripts
-------

The scripts folder contains some useful scripts to modify the images.

- `scripts/run <IMAGE> <c o m m a n d>` can be used to run a command on an image. IMAGE can be "zen" or "postgres-zen". A command can be any shell command. Examples:
  - `scripts/run zen bash` opens a bash console on the docker host.
  - `scripts/run zen setup/04_run.sh` runs the zen service.
  Remember that changes to the docker container are DISCARDED before you start a new run command on the same image. Changes to mapped volumes are not discarded.
- `scripts/commit_all MESSAGE` makes the the images created by the last `scripts/run` the basis for further `scripts/run` commands. MESSAGE is the commit message.


