[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// \
  -H tcp://${ip}:2375 \
  --storage-driver=overlay2 \
  --dns 8.8.4.4 --dns 8.8.8.8 \
  --log-driver json-file \
  --log-opt max-size=50m --log-opt max-file=10 \
  --experimental=true \
  --metrics-addr 172.17.0.1:9323
