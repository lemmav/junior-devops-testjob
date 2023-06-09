# Junior DevOps test job

For testing run `curl -kL http://localhost/foo`. Also in `server.js` file 3 line was changed: from `127.0.0.1` to `0.0.0.0`

The developers gave you a web application written in `node.js`. The source code is located in this repository, in the `app` folder. The application listens on port `3000` and responds to HTTP requests with `Hello, World`

You need to package this application into a docker image and create a configuration to deploy it to a server using `docker-compose`. The application on the site must be located in the virtual directory `/foo`, to access it, addresses like `http(s)://domain_name/foo` will be used.
Use specialized docker images for application packaging and deployment.

The result, namely: a `Dockerfile` for creating a docker image, a `docker-compose.yml` file, and other files, upload to a personal repository on `github.com` and send us a link.

Deployment involves the following sequence of commands:
```
$ git clone https://github.com/YOUR_NAME/REPO_NAME.git
$ cd REPO_NAME
# docker-compose up -d
```
Deployment testing
```
$ curl http://localhost/foo
```

Optional conditions, but we expect you to complete them.
 - Make access to the application only via `https` protocol, when accessing via `http`, a redirect to `https` should occur. For the site, use self-signed certificates, put them in the repository along with other files.

 - Launch two containers with the application on different ports and set up balancing of incoming requests to the site to these application instances.

