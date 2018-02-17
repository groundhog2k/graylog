# Graylog2 with GeoLite2-City database
### Latest Graylog2 with GeoLite2-City database

Check out the repro from [Github](https://github.com/groundhog2k/graylog) and start a complete Graylog instance (mongodb, elasticsearch, graylog2) with 
```docker-compose up```

---

### Default configuration:

- Graylog web uri:   http://localhost:9000
- Graylog user/pass: admin/admin

- Logger inputs (TCP ports): 12201 - 12209
- Logger inputs (UDP ports): 12211 - 12219

To change Graylog web uri, ports or user/password edit the docker-compose.yml and for additonal info take a look at the [Graylog docs](http://docs.graylog.org/en/2.1/pages/installation/manual_setup.html)
