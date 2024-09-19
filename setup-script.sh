#!/bin/bash

# Create main project directory
mkdir -p safety-vision-ai
cd safety-vision-ai

# Initialize git repository
git init

# Create backend directory and files
mkdir -p backend/models backend/utils backend/tests
touch backend/app.py backend/requirements.txt
touch backend/models/yolov5s.pt
touch backend/utils/video_processor.py backend/utils/safety_detector.py backend/utils/chatbot.py
touch backend/tests/test_video_processor.py backend/tests/test_safety_detector.py backend/tests/test_chatbot.py

# Create frontend directory and files
mkdir -p frontend/public frontend/src/components
touch frontend/public/index.html
touch frontend/src/App.js frontend/src/index.js
touch frontend/src/components/VideoFeed.js frontend/src/components/SafetyAlerts.js frontend/src/components/Chatbot.js
touch frontend/package.json

# Create Azure directory and files
mkdir -p azure/arm-templates
touch azure/azure-pipelines.yml
touch azure/arm-templates/deployment-template.json

# Create root level files
touch Dockerfile docker-compose.yml .gitignore README.md

# Populate .gitignore
echo "node_modules/
__pycache__/
*.pyc
.env
.DS_Store" > .gitignore

# Populate README.md
echo "# Safety Vision AI - International Paper Internal Project

Safety Vision AI is an advanced internal solution developed by International Paper to enhance safety measures using computer vision and AI technologies. This system processes real-time video feeds to detect potential safety issues in our facilities, leveraging YOLO object detection models and a GPT-4 powered chatbot for safety-related queries.

## Features

- Real-time video processing for safety issue detection in International Paper facilities
- YOLO-based object detection for identifying potential hazards specific to our operations
- GPT-4 powered chatbot for addressing safety-related queries from our staff
- User-friendly web interface for monitoring and interaction, designed with International Paper's branding guidelines

[... rest of README content ...]" > README.md

# Populate app.py with basic structure
echo "from flask import Flask, request, jsonify
from utils.video_processor import VideoProcessor
from utils.safety_detector import SafetyDetector
from utils.chatbot import Chatbot

app = Flask(__name__)

video_processor = VideoProcessor()
safety_detector = SafetyDetector()
chatbot = Chatbot()

@app.route('/process_frame', methods=['POST'])
def process_frame():
    # Implementation here

@app.route('/chat', methods=['POST'])
def chat():
    # Implementation here

if __name__ == '__main__':
    app.run(debug=True)" > backend/app.py

# Populate package.json with basic structure
echo '{
  "name": "safety-vision-ai-frontend",
  "version": "1.0.0",
  "private": true,
  "dependencies": {
    "@mui/material": "^5.0.0",
    "@emotion/react": "^11.0.0",
    "@emotion/styled": "^11.0.0",
    "react": "^17.0.2",
    "react-dom": "^17.0.2",
    "react-scripts": "4.0.3"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  }
}' > frontend/package.json

# Populate Dockerfile with basic structure
echo "FROM python:3.9-slim

WORKDIR /app

COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY backend/ .

CMD [\"python\", \"app.py\"]" > Dockerfile

# Populate docker-compose.yml with basic structure
echo "version: '3'
services:
  backend:
    build: .
    ports:
      - \"5000:5000\"
    environment:
      - OPENAI_API_KEY=\${OPENAI_API_KEY}
  frontend:
    build: ./frontend
    ports:
      - \"3000:3000\"
    depends_on:
      - backend" > docker-compose.yml

echo "Project structure created successfully!"
