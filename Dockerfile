ARG BUILD_DATE
ARG BUILD_VERSION

FROM alpine:$BUILD_VERSION

# Labels.
LABEL maintainer="huaqi<qi2415@qq.com>"

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="cliod/alpine"
LABEL org.label-schema.description="Alpine docker image in Shanghai time zone supports HTTPS Request"
LABEL org.label-schema.url="http://github.com/cliod/"
LABEL org.label-schema.vcs-url="https://github.com/cliod/alpine"
LABEL org.label-schema.vendor="WSO2"
LABEL org.label-schema.version=$BUILD_VERSION

RUN apk update && apk add ca-certificates tzdata

ENV TimeZone=Asia/Shanghai
RUN cp /usr/share/zoneinfo/$TimeZone /etc/localtime && echo $TimeZone > /etc/timezone
