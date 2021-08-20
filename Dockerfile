# Dockerfile

FROM texlive/texlive
WORKDIR /code
RUN apt-get update -y
RUN apt-get install fonts-font-awesome
RUN mkdir fonts
RUN wget 'https://github.com/google/fonts/raw/main/ofl/ptserif/PT_Serif-Web-Bold.ttf' -q -O fonts/PTSerif-Bold.ttf
RUN wget 'https://github.com/google/fonts/raw/main/ofl/notoserif/NotoSerif-Regular.ttf' -q -O fonts/NotoSerif-Regular.ttf
RUN wget 'https://github.com/google/fonts/raw/main/ofl/notoserif/NotoSerif-Bold.ttf' -q -O fonts/NotoSerif-Bold.ttf
RUN wget 'https://github.com/google/fonts/raw/main/ofl/montserrat/Montserrat-Regular.ttf' -q -O fonts/Montserrat-Regular.ttf
RUN wget 'https://github.com/google/fonts/raw/10a708073179c32928eb894e53465fca8106772f/ofl/ebgaramond/static/EBGaramond-Regular.ttf' -q -O fonts/EBGaramond-Regular.ttf
RUN wget 'https://github.com/google/fonts/raw/10a708073179c32928eb894e53465fca8106772f/ofl/ebgaramond/static/EBGaramond-Bold.ttf' -q -O fonts/EBGaramond-Bold.ttf
RUN wget 'https://github.com/google/fonts/raw/10a708073179c32928eb894e53465fca8106772f/ofl/ebgaramond/static/EBGaramond-Italic.ttf' -q -O fonts/EBGaramond-Italic.ttf
RUN fc-cache -f
WORKDIR /code/mountpoint

ENTRYPOINT ["/usr/bin/xelatex"]
