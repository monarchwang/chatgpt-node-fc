# chatgpt-node-fc
ChatGPT NodeJS SDK  forked from https://github.com/Chanzhaoyu/chatgpt-web/tree/main/service

## 如何使用

### 设置密钥及ACR访问凭证
复制`.env.example` 文件内容到 `.env` 文件

在`.env`中填写OpenAI密钥以及阿里云ACR相关访问凭证


### 执行build.sh
根目录下执行构建脚本，传入版本号，完成镜像构建并发布至ACR，例如：

```shell
./build.sh v1.2
```