# Docker base image for Node.js applications

This image provides a base to run node.js programs.

* Based on [Ubuntu Trusty](https://registry.hub.docker.com/_/ubuntu/) (14.04.1)
* [NodeSource](https://nodesource.com/) node.js binary distributions (v0.10.33)
* [Supervisor](http://supervisord.org) to manage your application process (3.0b2)
* Adds application code to `/app` folder on build.
* `npm -q start` command executed in `/app` folder
* Console output directed to `/logs/out.log` and `/logs/err.log` files. You can access them by bind-mounting `/logs` path.
* Includes globally installed CoffeeScript to execute coffee files directly without transpilation.

See [example directory](example) for basic usage.

*dev* tag can be used for development. It extends *latest* tag with Ubuntu packages for build stuff and [supervisor](https://www.npmjs.org/package/supervisor) npm package to restart node.js application on file changes. See [Makefile](example/Makefile) in sample application. 
