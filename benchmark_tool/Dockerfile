# SOURCE: https://github.com/ome/octave-docker

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install less \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

ADD install_gnu_octave.sh install_gnu_octave.sh
RUN sh ./install_gnu_octave.sh && rm install_gnu_octave.sh

# RUN useradd -ms /bin/bash octave
# ADD *.m /home/octave/
# RUN chown -R octave:octave /home/octave/

# USER octave
# WORKDIR /home/octave

# VOLUME ["./MDMD_codes"]

# ENTRYPOINT ["octave"]

# ENTRYPOINT [ "/src/benchmark_tool/entrypoint.sh" ]