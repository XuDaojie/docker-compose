# docker save elasticsearch:6.8.2 -o elasticsearch-6.8.2.tar
# docker save kibana:6.8.2 -o kibana-6.8.2.tar

docker load -i elasticsearch-6.8.2.tar
docker load -i kibana-6.8.2.tar

