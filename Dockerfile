FROM drydock/u14:{{%TAG%}}

ADD . /u14clo

RUN /u14clo/install.sh && rm -rf /u14clo
