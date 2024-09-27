# Level 5 AI - IP Safety Vision AI

IP Safety Vision AI is an advanced solution that uses computer vision and AI to detect safety issues in real-time video feeds. It leverages YOLO object detection models and integrates a GPT-4 powered chatbot for safety-related queries. This project aligns with International Paper's Safety of the Future project and is a Level 5 AI Development classification. It is an offshoot of the PulpVision CV project.

## Features

- Real-time video processing for safety issue detection
- YOLO-based object detection for identifying potential hazards
- GPT-4 powered chatbot for safety-related queries
- User-friendly web interface for monitoring and interaction

## Prerequisites

- Azure subscription
- Docker and Docker Compose
- Node.js and npm
- Python 3.9+

## Quick Start

1. Clone this repository
2. Set up environment variables (see `.env.example`)
3. Run `docker-compose up —build`
4. Access the web interface at `http://localhost:3000`

## Deploy to Azure

Click the button below to deploy this solution to Azure:

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYourUsername%2Fsafety-vision-ai%2Fmain%2Fazure%2Farm-templates%2Fdeployment-template.json)

## Configuration

Update the `.env` file with your specific configuration:

```
OPENAI_API_KEY=your_openai_api_key
AZURE_SUBSCRIPTION_ID=your_azure_subscription_id
AZURE_RESOURCE_GROUP=your_azure_resource_group
```

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for more details.

## License

This is an Internal Project at International Paper and for internal use only. Developed by Tommy Xaypanya, AI SME, Data Engineer, & Senior IT Audit.
