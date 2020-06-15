
#!/bin/bash

docker commit l4t_deepstream deepstream:xnx
#docker commit 78ab0cef1a8f tf2:snd
docker login docker.io -u kmjeon -p 1011910119a!
docker tag deepstream:xnx intflow/deepstream:xnx
docker push intflow/deepstream:xnx

