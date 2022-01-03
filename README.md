# graph-dev
Development environment for working with graph databases in Gremlin

## Basic usage

```bash
git clone https://github.com/brainsqueeze/graph-dev.git
```

To start the gremlin-server and notebook environment simply run
```bash
docker-compose up --build
```

## Custom data
If you would like to run your own graph then you can override the docker compose settings with [docker-compose.data.yaml](./docker-compose.data.yaml). Please replace `hostPathToGraphsDir` with the absolute path to the folder containing graphml files.

To start simply run
```bash
docker-compose -f docker-compose.yaml -f docker-compose.data.yaml up --build
```
and then use the [custom_data](./notebooks/notebooks/custom_data.ipynb) notebook in Jupyter to get started.
