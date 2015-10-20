
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
			fontconfig \
			texlive-xetex \
			ghostscript \
			lmodern

WORKDIR "/source/"
