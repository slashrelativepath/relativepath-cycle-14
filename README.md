# relativepath cycle 14
code for relativepath cycle 14

## Onboarding
For team local setup 

see your system using uname type: 
`uname`

for `Darwin` run: 
`$SHELL onboarding-darwin.sh`

for `Linux` run:
`$SHELL onboarding-linux.sh`

## local environment
to create a local ubuntu vm

`$SHELL create-vm.sh`

to delete a local vm
`$SHELL delete-vm.sh`

## ollama

`$SHELL create-vm.sh && multipass transfer ollama.sh relativepath:. && 
multipass shell relativepath`

to delete ollama
`$SHELL delete-vm.sh`

## Roadmap

* Deploy a webserver
  `$SHELL create-vm.sh && multipass transfer webserver.sh relativepath: && multipass shell relativepath`

* Deploy docker
* Deploy a JS node app (this installs node, npm & express)
  `$SHELL create-vm.sh && multipass transfer *.conf *.sh *.js *.json *.service relativepath:. && multipass shell relativepath`

* Reverse proxy upstream microservice
* Deploy multiple VMs
* Deploy prometheus / graphana
* Deploy python / pytorch / anaconda
* CI/CD Pipeline
* Git based app deploy
* Automated build / deliver / deploy
