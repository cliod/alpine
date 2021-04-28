FROM alpine

MAINTAINER cliod <qi2415@qq.com>

RUN apk add -U tzdata

ENV TimeZone=Asia/Shanghai
RUN cp /usr/share/zoneinfo/$TimeZone /etc/localtime && echo $TimeZone > /etc/timezone