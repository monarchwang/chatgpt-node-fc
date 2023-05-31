# chatgpt-node-fc
ChatGPT NodeJS SDK

## 如何使用

### 修改build.sh
填写OpenAI密钥以及阿里云ACR相关访问凭证

```shell
# TODO 设置OpenAI API Key
export OPENAI_API_KEY=
# TODO  阿里云容器镜像服务 相关设置，命名空间、访问凭证
export ACR_NAMESPACE=
export ACR_USERNAME=
export ACR_PASSWORD=
```

### 执行build.sh
根目录下执行构建脚本，传入版本号，完成镜像构建并发布至ACR，例如：
```shell
./build.sh v1.2
```