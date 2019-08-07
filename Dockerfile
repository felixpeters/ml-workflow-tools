FROM continuumio/miniconda3

# create shared directory
VOLUME /config /nbs

# run installation
COPY install.sh /install.sh
RUN chmod +x /install.sh
RUN /install.sh

# create working directory
RUN chmod -R a+w /nbs
WORKDIR /nbs

# run jupyter server in created environment
COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]
