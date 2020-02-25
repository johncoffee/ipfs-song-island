# IPFS Song island

### Installation of web-dependencies

*Prerequisites:* We need Node & NPM :)

`make install`

### Running 

`npx http-server public/`

### Publishing

Note: It seems like there's a size limit on Infura's free service. It will just pin an arbitrary file.. weird

`npx ipfs-deploy -p pinata ./public`

#### Github actions

Checkout [.github/workflows/deploy-to-ipfs-gateway.yml](deploy-to-ipfs-gateway.yml) to see how github automatically 
deploys to a public gateway. 