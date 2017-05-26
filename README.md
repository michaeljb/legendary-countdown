For the code currently deployed to heroku, see
[the heroku branch](https://github.com/michaeljb/legendary-countdown/tree/heroku).

http://michaeljb.github.io/legendary-countdown/

```
docker build -t legendary-countdown:dev .
docker run --name lc --rm -p 8080:8080 legendary-countdown:dev
# visit http://localhost:8080
```
