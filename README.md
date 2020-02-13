# IPFS Song island

### Installation of web-dependencies

*Prerequisites:* We need Node & NPM :)

`make install`

### Running 

`npx http-server public/`

### Publishing

Note: It seems like there's a size limit on Infura's free service. It will just pin an arbitrary file.. weird

`npx ipfs-deploy -p pinata ./public`

