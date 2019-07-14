# jawanndenn

<p align="center">
<img src="https://raw.githubusercontent.com/hartwork/jawanndenn/master/jawanndenn-setup.png" width="100%"/>
</p>

## What is jawanndenn?

[![Inline docs](http://inch-ci.org/github/JayBeeDe/docker_jawanndenn.svg?branch=master)](http://inch-ci.org/github/JayBeeDe/docker_jawanndenn) [![HitCount](http://hits.dwyl.com/JayBeeDe/docker_jawanndenn.svg)](http://hits.dwyl.com/JayBeeDe/docker_jawanndenn)

jawanndenn is a simple web application to schedule meetings and run polls, a libre alternative to Doodle. It is written in Python and JavaScript.

[https://jawanndenn.de/](https://jawanndenn.de/)

## Quick reference

- [Official Website](https://jawanndenn.de/)

- [GitHub](https://github.com/hartwork/jawanndenn)

- [pypi](https://pypi.org/project/jawanndenn/)

- [Contact](mailto:sebastian@pipping.org)

- [Blog](https://blog.hartwork.org/)

- [Issues](https://github.com/hartwork/jawanndenn/issues)

- [License](https://www.gnu.org/licenses/agpl-3.0.en.html)

## How to use this image

```shell
docker run -d -it --name jawanndenn-ui -e maxVotesPerPollArg=100 --restart=always --hostname=jawanndenn-ui jbd92/jawanndenn:latest
```

### Environment Variables

As you can see, there are several environment variables. Here is the full list with their default values:

Docker Environment Var. | Default Value | Description
------------- | ------------- | -------------
urlPrefixArg | / | Path to the root application folder. Make sense when behind a proxy.
maxPollsArg | 1000 | Maximum number of polls
maxVotesPerPollArg | 40 | Maximum number of votes per poll

## License

This program is [free software](https://www.gnu.org/philosophy/free-sw.en.html); you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation; [version 3](https://www.gnu.org/licenses/agpl-3.0.en.html) of the License.
