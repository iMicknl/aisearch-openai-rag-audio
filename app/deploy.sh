az containerapp up --resource-group mivleesh-voice-rag \
--name mivleesh-voice-rag --location westeurope \
--ingress external --target-port 8765 --source . \
--env-vars AZURE_OPENAI_ENDPOINT="wss://openai-mivleesh-sweden.openai.azure.com" AZURE_OPENAI_DEPLOYMENT="gpt-4o-realtime-preview" AZURE_OPENAI_API_KEY="" AZURE_SEARCH_ENDPOINT="https://ai-customer-demos.search.windows.net" AZURE_SEARCH_INDEX="vector-1727852007314" AZURE_SEARCH_API_KEY="="
