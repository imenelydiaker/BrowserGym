## Install ui-assist

```sh
conda env create -f environment.yml
conda activate ui-assist
playwright install
```

To use AzureOpenAI within the demo, set the following environment variables:
```sh
export AZURE_OPENAI_API_KEY="<YOUR_API_KEY>"
export AZURE_OPENAI_ENDPOINT="https://<YOUR_SUBSCRIPTION_NAME>.openai.azure.com"
export AZURE_OPENAI_API_VERSION="<API_VERSION>"
export AZURE_OPENAI_CHAT_DEPLOYMENT_NAME="<DEPLOYMENT_NAME>"
```
