DawaTools API

### Import Records to Heroku Postgres

```
$ gem install sequel

then

$ sequel -C sqlite://db/development.sqlite3 postgres://kfcsavwghzbvnn:5995dce36a31b630b1f88ed8bae4a02f1aeff284f0dc0548885537bdd878a0be@ec2-54-225-240-168.compute-1.amazonaws.com:5432/de8konnoso18m
```

Run
---

```
$ bundle install
$ rackup

[2016-12-17 14:24:02] INFO  WEBrick 1.3.1
[2016-12-17 14:24:02] INFO  ruby 2.3.1 (2016-04-26) [x86_64-darwin15]
[2016-12-17 14:24:02] INFO  WEBrick::HTTPServer#start: pid=87374 port=9292

```

### Timings

Navigate to http://localhost:9292/v1/ with a browser or use `curl`.

```
$ curl http://localhost:9292/v1/timings/daily?timestamp=1481929200

{"for":"daily","date":"03-01-2017","hijri":"05-04-1438","hijri_formatted":"Sabt
Rabia II  3 17:39:17 1438","calculation_method":"Muslim World League Fajr 18.0
degrees, Isha 17.0 degrees","juristic_method":"Standard (Hanbali, Maliki,
Shafi)","daylight":"-/-","timezone":"UTC+01:00","latitude":"42.6629","longitude":"21.1655","city":"Pristina","country":"Kosovo","qibla_direction":"137","type":"prayer_times","data":{"fajr":"05:50","shurooq":"07:02","dhuhr":"11:45","asr":"14:06","maghrib":"16:22","isha":"18:00"}}
```

### TODO
- [ ] Add country/city params
