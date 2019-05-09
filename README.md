## Why?

This image sets up the dependencies required for headless chrome when you install the binary via npm.

## Usage

#### Run
    docker run -v $(pwd):/mnt -w /mnt --entrypoint ./integration-tests.sh benjy/docker-with-chrome


#### integration-tests.sh
    yarn install
    yarn run build

    ./node_modules/.bin/pm2 serve --port 3001 build
    mkdir -p tests_output/screenshots
    ./node_modules/.bin/nightwatch nightwatch/tests