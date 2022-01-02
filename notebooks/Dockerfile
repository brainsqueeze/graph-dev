FROM continuumio/miniconda3:4.10.3-alpine

WORKDIR /app/src/

RUN conda install jupyter pip && \
    pip install rdflib==5.0.0 graph-notebook

RUN jupyter nbextension install --py --sys-prefix graph_notebook.widgets && \
    jupyter nbextension enable  --py --sys-prefix graph_notebook.widgets && \
    python -m graph_notebook.static_resources.install && \
    python -m graph_notebook.nbextensions.install

RUN python -m graph_notebook.notebooks.install --destination ./notebooks/demos

COPY startup.sh startup.sh
RUN chmod 700 startup.sh

COPY ./notebooks/ ./notebooks/src/

ENTRYPOINT [ "./startup.sh" ]