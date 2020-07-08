
#!/bin/bash

sudo docker commit l4t_deepstream deepstream:xnx
sudo docker login docker.io -u kmjeon -p 1011910119a!
sudo docker tag deepstream:xnx intflow/deepstream:xnx
sudo docker push intflow/deepstream:xnx_lvl1

