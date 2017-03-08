# Bonnie++ in a Docker (Alpine)

[![CircleCI Build Status](https://img.shields.io/circleci/project/pozgo/docker-bonnie/master.svg)](https://circleci.com/gh/pozgo/docker-bonnie)  
[![GitHub Open Issues](https://img.shields.io/github/issues/pozgo/docker-bonnie.svg)](https://github.com/pozgo/docker-bonnie/issues)
[![GitHub Stars](https://img.shields.io/github/stars/pozgo/docker-bonnie.svg)](https://github.com/pozgo/docker-bonnie)
[![GitHub Forks](https://img.shields.io/github/forks/pozgo/docker-bonnie.svg)](https://github.com/pozgo/docker-bonnie)  
[![Stars on Docker Hub](https://img.shields.io/docker/stars/polinux/bonnie.svg)](https://hub.docker.com/r/polinux/bonnie)
[![Pulls on Docker Hub](https://img.shields.io/docker/pulls/polinux/bonnie.svg)](https://hub.docker.com/r/polinux/bonnie)  
[![](https://images.microbadger.com/badges/version/polinux/bonnie.svg)](http://microbadger.com/images/polinux/bonnie)
[![](https://images.microbadger.com/badges/license/polinux/bonnie.svg)](http://microbadger.com/images/polinux/bonnie)  
[![](https://images.microbadger.com/badges/image/polinux/bonnie.svg)](http://microbadger.com/images/polinux/bonnie)

[Docker Image]() with Bonnie++ benchamrk tool. This image is acting like `bonnie++` command and passes all arguments.

### Build

    docker build -t polinux/bonnie .

### Basic Usage

    docker run \
      -ti \
      --rm \
      polinux/bonnie bonnie++ \
        -d /tmp \
        -m TEST \
        -n 0 \
        -r 128M \
        -s 256M \
        -x 1 \
        -u 0:0 \
        -f \
        -b

Output:

    Using uid:0, gid:0.
    Writing intelligently...done
    Rewriting...done
    Reading intelligently...done
    start 'em...done...done...done...
    TEST,256M,,,134335,13,162332,9,,,+++++,+++,1306.7,2,,,,,,,,,,,,,

To generate `html` file with human readable format use the same docker image and run command below using last line of previous command.

example data: `TEST,256M,,,134335,13,162332,9,,,+++++,+++,1306.7,2,,,,,,,,,,,,,`

    docker run \
      -ti \
      --rm \
      -v ${PWD}:/workdir \
      polinux/bonnie \
        bash -c 'echo "[RESULT]" | bon_csv2html > /workdir/out.html'

Use file `out.html` and open it with any web-browser to see human readable output.

Example output

![Table](https://raw.githubusercontent.com/pozgo/docker-bonnie/master/images/table.jpg)

## Author
Przemyslaw Ozgo (<linux@ozgo.info>)
