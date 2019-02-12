FROM rocker/verse:3.5.1

LABEL org.label-schema.license="Apache 2.0" \
      org.label-schema.description="PatientLevelPrediction v3.0.0 environment based on Rocker/verse:3.5.1" \
      org.label-schema.vcs-url="https://github.com/ABMI/ohdsi-docker/patientlevelprediction" \
      org.label-schema.vendor="OHDSI Patient-Level Prediction Working Group" \
      maintainer="Seng Chan You <applegna@gmail.com>"
RUN echo deb http://ftp.de.debian.org/debian testing main >> /etc/apt/sources.list
RUN echo 'APT::Default-Release "stable";' | tee -a /etc/apt/apt.conf.d/00local
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install numpy \
                  scipy \
                  h5py \
                  tensorflow \
                  keras \
                  scikit-learn \
                  torch

# Pick up some TF dependencies
#RUN apt-get update && apt-get install -y --no-install-recommends \
#        build-essential \
#        curl \
#        libfreetype6-dev \
#        libzmq3-dev \
#        pkg-config \
#        python \
#        python-dev \
#        rsync \
#        software-properties-common \
#        unzip \
#        libxml2-dev \
#        && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*

#RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
#    python get-pip.py && \
#    rm get-pip.py

#RUN pip --no-cache-dir install \
#        ipykernel \
#        jupyter \
#        matplotlib \
#        numpy \
#        scipy \
#        keras \
#        h5py \
#        && \
#    python -m ipykernel.kernelspec

#RUN pip install tensorflow

#RUN pip --no-cache-dir install \
#  --upgrade tensorflow

#RUN pip --no-cache-dir install virtualenv

## Install OHDSI R packages
RUN mkdir -p /opt/software/setup/R
ADD install_packages.r /opt/software/setup/R/
RUN Rscript /opt/software/setup/R/install_packages.r
