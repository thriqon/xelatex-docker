
FROM ubuntu:trusty

RUN apt-get update -y \
			&& apt-get install -y --no-install-recommends \
			texlive-latex-base \
			texlive-xetex latex-xcolor \
			texlive-fonts-recommended \
			texlive-math-extra \
			texlive-latex-extra \
			texlive-fonts-extra \
			texlive-bibtex-extra \
			biber \
			fontconfig \
			texlive-xetex \
			ghostscript \
			lmodern \
			default-jre

RUN mkdir -p /usr/local/lib &&\
	wget http://sourceforge.net/projects/plantuml/files/plantuml.jar/download -O /usr/local/lib/plantuml.jar

WORKDIR "/source/"
