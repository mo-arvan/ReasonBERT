# Projects Artifacts

# Loading the docker image

Download the file from URL, then load the docker image using the command below:

```bash

cat rep-rb-part-* > rep-rb_image.tar

docker load --input rep-rb_image.tar

docker run --rm  --gpus all -v ${PWD}:/workspace -it rep-rb_image bash

docker run --rm --ipc=host --gpus all -v ${PWD}:/workzspace -it rep-rb_image bash


docker load --input image_name.tar
```
