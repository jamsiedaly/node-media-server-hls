# Node Media Server Hls

A node media service docker image configured to produce an HLS output

## Dependencies

* node 18+
* npm 8+
* docker
* ffmpeg 5+

By default this is installed at /usr/local/bin/ffmpeg on Mac but the service expects it at /usr/local/ffmpeg

## Run the service

To run the service locally without docker:
```
npm install

node server.js
```

Run the image from docker hub:
```
docker run -p 8000:8000 -p 8443:8443 -p 1935:1935 jamsiedaly/node-media-server-hls
```

## Build the container
```
docker build . -t node-media-server
```

## Accessing the service

The administration screen: http://localhost:8000/admin

To push a video to the service:
```
ffmpeg -i <your-video> -f flv rtmp://localhost/live/test
```
