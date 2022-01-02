# graph-dev
Development environment for working with graph databases in Gremlin

## Basic usage

```bash
git clone https://github.com/brainsqueeze/graph-dev.git
```

To start the gremlin-server simply run
```bash
docker-compose up --build
```
If you wish to interact with the graph from a notebook environment then run
```bash
docker-compose -f docker-compose.yaml -f docker-compose.nb.yaml up --build
```
