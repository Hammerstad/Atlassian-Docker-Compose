### Atlassian-Docker-Compose

_Note: This project is still under active development._

Spin up the [atlassian](https://www.atlassian.com) stack, or at least part of it, using [docker-compose](https://docs.docker.com/compose/):

 * [Jira](https://www.atlassian.com/software/jira)
 * [Confluence](https://www.atlassian.com/software/confluence)
 * [Stash](https://www.atlassian.com/software/stash)
 * [Bamboo](https://www.atlassian.com/software/bamboo)

### Requirements

Either Vagrant or a proper operating system.
 * [Docker](https://docs.docker.com/installation/#installation)
 * [Docker-Compose](https://docs.docker.com/compose/install/)

### Usage
    git clone https://github.com/Hammerstad/Atlassian-Docker-Compose.git
    cd Atlassian-Docker-Compose

    # If you use Vagrant
    vagrant up
    vagrant ssh
    cd /vagrant

    sudo-docker-compose up
    # Now you wait
