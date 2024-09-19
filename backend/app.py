from flask import Flask, request, jsonify
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
    app.run(debug=True)
