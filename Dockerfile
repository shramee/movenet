FROM jupyter/tensorflow-notebook:ubuntu-20.04
USER root
RUN apt update && apt install -y curl
# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID

RUN pip install -q imageio opencv-python tensorflow tensorflow-hub && \
	pip install -q git+https://github.com/tensorflow/docs
