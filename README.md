# flask-sinatra-martini-practice
 flask-sinatra-martini 실습

참고: [Python, Ruby, and Golang: A Web Service Application Comparison](https://realpython.com/blog/python/python-ruby-and-golang-a-web-Service-application-comparison/)


## Go Path 설정 및 package import 방법
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
