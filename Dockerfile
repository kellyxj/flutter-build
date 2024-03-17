FROM ubuntu:latest
RUN apt-get update && apt install git -y && apt install curl -y && apt-get install xz-utils && curl -o /root/flutter_linux_3.19.3-stable.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.3-stable.tar.xz && tar xf /root/flutter_linux_3.19.3-stable.tar.xz && git config --global --add safe.directory /flutter && ln -s /flutter/bin/flutter /usr/bin/flutter && flutter config --no-cli-animations && mkdir /root/app
WORKDIR /root/app
ENTRYPOINT ["flutter"]
