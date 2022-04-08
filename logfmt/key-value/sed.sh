#!/usr/bin/env bash
# https://blog.kyanny.me/entry/2022/03/17/235225
# require GNU sed

echo '2010-09-16T15:13:46.723498+00:00 heroku[router]: at=info method=GET path="/posts" host=myapp.herokuapp.com" fwd="204.204.204.204" dyno=web.1 connect=1ms service=18ms status=200 bytes=975' \
    | sed -E 's/(\S+=)/\n\1/g'
