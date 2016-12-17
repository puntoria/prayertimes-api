DawaTools API

Run
---

```
$ bundle install
$ rackup

[2016-12-17 14:24:02] INFO  WEBrick 1.3.1
[2016-12-17 14:24:02] INFO  ruby 2.3.1 (2016-04-26) [x86_64-darwin15]
[2016-12-17 14:24:02] INFO  WEBrick::HTTPServer#start: pid=87374 port=9292

```

### Example

Navigate to http://localhost:9292/api/prayer_times with a browser or use `curl`.

```
$ curl http://localhost:9292/v1/prayer_times/daily?timestamp=1481929200

{"data":[{"id":1,"type":"prayer_times","for":"daily","attributes":{"date_for":"17-12-2016","fajr":"05:45","shurooq":"06:56","dhuhr":"11:37","asr":"13:57","maghrib":"16:12","isha":"17:51"}}],"prayer_method_name":"","daylight":0,"timezone":"","latitude":"","longitude":"","city":"","country":"","qibla_direction":""}

```
