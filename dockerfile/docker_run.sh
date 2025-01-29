docker run --runtime=nvidia --gpus all \
    -it -d --ipc=host --cap-add=SYS_ADMIN \
    --name ${USER}_dev_container \
    -e WANDB_API_KEY=$WANDB_API_KEY \
    -e WANDB_BASE_URL=$WANDB_BASE_URL \
    -e HF_TOKEN=$HF_TOKEN \
    -e HF_HOME=$HF_HOME \
    -v $HOME:$HOME \
    -v /mnt:/mnt \
    -v /fastdata:/fastdata \
    ${USER}_dev bash
