
#!/bin/bash

sudo docker commit l4t_deepstream_BT1 deepstream:xnx_BT1
sudo docker login docker.io -u kmjeon -p 1011910119a!
sudo docker tag deepstream:xnx_BT1 intflow/deepstream:xnx_BT1
sudo docker push intflow/deepstream:xnx_BT1

