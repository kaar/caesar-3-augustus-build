FROM gcc:9.3
RUN apt update
# install sdl
RUN apt install libsdl2-dev libsdl2-2.0-0 -y;
# install sdl image  - if you want to display images
RUN apt install libjpeg-dev libwebp-dev libtiff5-dev libsdl2-image-dev libsdl2-image-2.0-0 -y;

# install sdl mixer  - if you want sound
RUN apt install libmikmod-dev libfishsound1-dev libsmpeg-dev liboggz2-dev libflac-dev libfluidsynth-dev libsdl2-mixer-dev libsdl2-mixer-2.0-0 -y;

# install sdl true type fonts - if you want to use text
RUN apt install libfreetype6-dev libsdl2-ttf-dev libsdl2-ttf-2.0-0 -y;

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y cmake libgtest-dev libboost-test-dev && rm -rf /var/lib/apt/lists/* 

