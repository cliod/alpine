FROM alpine

MAINTAINER cliod <cliod@vistring.com>

RUN apk update && apk add ca-certificates tzdata

ENV TimeZone=Asia/Shanghai
RUN cp /usr/share/zoneinfo/$TimeZone /etc/localtime && echo $TimeZone > /etc/timezone

