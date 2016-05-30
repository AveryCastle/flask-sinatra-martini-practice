# flask-sinatra-martini-practice
 flask-sinatra-martini 블로그 글 따라하기

참고
- 블로그: [Python, Ruby, and Golang: A Web Service Application Comparison](https://realpython.com/blog/python/python-ruby-and-golang-a-web-Service-application-comparison/)
- 저장소: [https://github.com/realpython/flask-sinatra-martini](https://github.com/realpython/flask-sinatra-martini)

## Running Ruby Locally
Install the required Rubygems:
~~~ bash
$ bundle install
~~~
Set an environment variable to point to the location of your MongoDB instance
~~~ bash
$ export DB_PORT_27017_TCP_ADDR=127.0.0.1:27017
~~~
Start mongodb:
~~~bash
$ mongod
~~~
Run sinatra:
~~~bash
$ ruby app.rb
~~~

## Go Prerequisite
- 참고: [https://golang.org/doc/code.html#GOPATH](https://golang.org/doc/code.html#GOPATH)

### Go Path 설정 방법
~~~ bash
$ export GOPATH=$HOME/workspace/webapp
~~~

### Package import 방법
참고: [https://github.com/go-martini/martini](https://github.com/go-martini/martini)
~~~ bash
$ mkdir -p $GOPATH/github.com/go-martini/martini
$ mkdir -p $GOPATH/github.com/martini-contrib/render
$ go get github.com/go-martini/martini
$ go get github.com/martini-contrib/render
~~~


### Docker Environment variables
참고: [http://blog.bananacoding.com/blog/development-workflow-using-docker-and-docker-compose](http://blog.bananacoding.com/blog/development-workflow-using-docker-and-docker-compose)

Can list environment variables in web container using:
~~~ bash
$ docker-compose run web env
~~~
output:
~~~ bash
Starting python_db_1
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
HOSTNAME=4ff8e1bd38f8
TERM=xterm
DB_PORT=tcp://172.17.0.2:27017
DB_PORT_27017_TCP=tcp://172.17.0.2:27017
DB_PORT_27017_TCP_ADDR=172.17.0.2
DB_PORT_27017_TCP_PORT=27017
DB_PORT_27017_TCP_PROTO=tcp
DB_NAME=/python_web_run_1/db
DB_ENV_GOSU_VERSION=1.7
DB_ENV_GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C
DB_ENV_MONGO_MAJOR=3.2
DB_ENV_MONGO_VERSION=3.2.6
...
~~~
