
#!/bin/bash

sudo docker commit l4t_nano_cam deepstream:nano_cam
sudo docker login docker.io -u kmjeon -p 1011910119a!
sudo docker tag deepstream:nano_cam intflow/deepstream:nano_cam
sudo docker push intflow/deepstream:nano_cam

