# docker save vesoft/nebula-graph-studio:v3.3.0 -o nebula-graph-studio-v3.3.0.tar

# docker save vesoft/nebula-console:v3.0.0 -o nebula-console-v3.0.0.tar
# docker save vesoft/nebula-graphd:v3.1.0 -o nebula-graphd-v3.1.0.tar
# docker save vesoft/nebula-storaged:v3.1.0 -o nebula-storaged-v3.1.0.tar
# docker save vesoft/nebula-metad:v3.1.0 -o nebula-metad-v3.1.0.tar

docker load -i nebula-graph-studio-v3.3.0.tar
docker load -i nebula-console-v3.0.0.tar
docker load -i nebula-storaged-v3.1.0
docker load -i nebula-graphd-v3.1.0
docker load -i nebula-metad-v3.1.0

