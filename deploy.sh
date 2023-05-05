#!/bin/bash

# Clone the Git repository
git clone https://github.com/SuuTTT/gpt4-pdf-chatbot-langchain.git

# Change directory to the cloned repository
cd gpt4-pdf-chatbot-langchain

# Download the Node.js package
wget https://nodejs.org/dist/v20.1.0/node-v20.1.0-linux-x64.tar.xz

# Extract the package to /usr/local
sudo tar -xJf node-v20.1.0-linux-x64.tar.xz -C /usr/local

# Create symbolic links for the Node.js binaries
sudo ln -s /usr/local/node-v20.1.0-linux-x64/bin/node /usr/local/bin/node
sudo ln -s /usr/local/node-v20.1.0-linux-x64/bin/npm /usr/local/bin/npm
sudo ln -s /usr/local/node-v20.1.0-linux-x64/bin/npx /usr/local/bin/npx

# Install Yarn globally
sudo npm install yarn -g
sudo ln -s /usr/local/node-v20.1.0-linux-x64/lib/node_modules/yarn/bin/yarn /usr/local/bin/yarn
# Install project dependencies
yarn install

# Create .env file with the required content
cat > .env << EOL
OPENAI_API_KEY=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
PINECONE_API_KEY=e020ea11-0fed-42db-9d7d-5d4fc081e6db
PINECONE_ENVIRONMENT=us-west4-gcp
PINECONE_INDEX_NAME=test
EOL

# Run the development server
npm run dev
