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


### 기타
Can list environment variables in web container using:
~~~ bash
docker-compose run web env
~~~
