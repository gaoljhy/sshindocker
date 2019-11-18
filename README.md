# sshindocker

<p align="center">"<i>If you have a goal, then you will find a way to achieve it.</i>"</p>

<h4 align="center">ssh in docker run docker</h4>

<br>

<p align="center">
  <a href="https://github.com/gaoljhy/sshindocker/tree/master">
    <img src="https://img.shields.io/badge/Branch-master-green.svg?longCache=true"
        alt="Branch">
  </a>
  <a href="https://github.com/gaoljhy/sshindocker/pulls">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?longCache=true"
        alt="Pull Requests">
  </a>
  <a href="https://github.com/gaoljhy/sshindocker/blob/master/LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg?longCache=true"
        alt="License">
  </a>
</p>

<div align="center">
  <sub>Created by
  <a href="http://grj321.com">gaoljhy</a> and
  <a href="https://github.com/gaoljhy/sshindocker/contributors">
    contributors
  </a>
</div>

<br>

****


A docker with ssh in docker Container

+ [dockerhub](https://hub.docker.com/r/adminhub/sshindocker)

+ [github](https://github.com/gaoljhy/sshindocker)

## Usage

### Latest

1. pull container 
    `docker pull adminhub/sshindocker:latest`
2. run  Container
    `docker run -d -p 10022:22 -v /var/run/docker.sock:/var/run/docker.sock --name docker_ssh adminhub/sshindocker:sshd`

3. ssh interface
    `ssh root@localhost -p 10022`

> default password `sshindocker`
