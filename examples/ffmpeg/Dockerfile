FROM stringang/centos-s6

RUN wget https://www.johnvansickle.com/ffmpeg/old-releases/ffmpeg-6.0-amd64-static.tar.xz && \
  tar xvf ffmpeg-6.0-amd64-static.tar.xz && \
  mv ffmpeg-6.0-amd64-static/ffmpeg ffmpeg-6.0-amd64-static/ffprobe /usr/local/bin/ && \
  rm ffmpeg-6.0-amd64-static.tar.xz && \
  rm -r ffmpeg-6.0-amd64-static
