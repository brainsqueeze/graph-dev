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

If you would like to run your own graph then you can add this cell and execute it
```groovy
%%gremlin

g.io(path).read().iterate();
```
