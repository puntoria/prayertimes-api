DawaTools API

Run
---

```
$ bundle install
$ rackup

Loading in developer mode ...
[2016-12-16 18:36:15] INFO  WEBrick 1.3.1
[2016-12-16 18:36:15] INFO  ruby 2.3.1 (2016-04-26) [x86_64-darwin15]
[2016-12-16 18:36:15] INFO  WEBrick::HTTPServer#start: pid=44260 port=9292
::1 - - [16/Dec/2016:18:36:30 +0100] "GET /api/v1/prayer_times HTTP/1.1" 404 33 0.0043
::1 - - [16/Dec/2016:18:36:43 +0100] "GET /api/prayer_times HTTP/1.1" 200 83 0.0125
```

### Example

Navigate to http://localhost:9292/api/prayer_times with a browser or use `curl`.

```
$ curl http://localhost:9292/api/prayer_times

{"data":{"id":1,"type":"prayer_times","attributes":{"name":"Fajr","time":"03:57"}}}

```
