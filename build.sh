#!/bin/bash
set -e
source .env

npm install
npm run build

# Set region to the same as of your image
export REGION=cn-hongkong

# Set FC_IMAGE to your desired ACR image name,
# e.g., registry.cn-hongkong.aliyuncs.com/{your-namespace}/nodejs:v1
export FC_IMAGE=registry.${REGION}.aliyuncs.com/${ACR_NAMESPACE}/chatgpt-node-fc:$1

# Build image
docker build --build-arg OPENAI_API_KEY=${OPENAI_API_KEY} -t $FC_IMAGE .

# Docker login to your ACR registry
docker login --username=${ACR_USERNAME} --password=${ACR_PASSWORD}  registry.${REGION}.aliyuncs.com

# Push image to ACR registry
docker push $FC_IMAGE

