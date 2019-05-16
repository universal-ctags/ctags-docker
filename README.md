ctags-docker
============

Instructions
------------

Run [Universal CTags](https://github.com/universal-ctags/ctags) from a docker
container.

- Ensure you have docker installed
- `curl https://raw.githubusercontent.com/universal-ctags/ctags-docker/master/uctags | sudo tee /usr/local/bin/uctags`
- `sudo chmod +x /usr/local/bin/uctags`

Run with `uctags <arguments>`. Docker should automatically fetch the image
from Docker Hub.

Build Docker Image Locally
--------------------------

- Ensure you have docker / compose installed
- Clone this repo: `git clone git@github.com:universal-ctags/ctags-docker.git`
- Build: `cd ctags-docker; docker-compose build`
- Copy `uctags` to `/usr/local/bin` or a directory in your path and ensure the
  script is executable with `chmod +x uctags`

Links
-----

- [github](https://github.com/universal-ctags/ctags)
