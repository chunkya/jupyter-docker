FROM jupyter/scipy-notebook

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
