# Container image that runs your code
FROM ubuntu

RUN apt-get update
RUN apt-get -qq -y clang-tidy

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]