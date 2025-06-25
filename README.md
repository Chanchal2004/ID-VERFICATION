
# Face & Age Verification System

Complete system with Frontend (React) + Backend (Flask) for identity verification.

## 🚀 Quick Start

### Step 1: Start Backend (Required for real verification)
```bash
cd backend
pip install -r requirements.txt
python app.py
```
Backend runs on: http://localhost:5000

### Step 2: Start Frontend (Already running in Bolt)
The React frontend is already running and will connect to your local backend.

## 📋 How It Works

### Frontend (React + TypeScript)
- **Camera Capture**: Live selfie using device camera
- **Document Upload**: Drag & drop Aadhar card image
- **Real-time UI**: Shows connection status and results
- **Responsive Design**: Works on desktop and mobile

### Backend (Flask + Python)
- **OCR Processing**: Extracts DOB from Aadhar images
- **Face Recognition**: Compares faces using AI algorithms
- **Age Calculation**: Determines if person is 18+
- **API Endpoints**: RESTful API for verification

### Verification Process
1. **Upload Images**: Selfie + Aadhar card
2. **OCR Analysis**: Extract date of birth from document
3. **Face Detection**: Find and compare faces in both images
4. **Age Check**: Calculate age from DOB
5. **Final Decision**: Pass/fail based on age + face match

## 🔧 Technical Stack

**Frontend:**
- React 18 + TypeScript
- Tailwind CSS for styling
- Lucide React for icons
- Camera API for live capture

**Backend:**
- Flask (Python web framework)
- OpenCV for image processing
- face_recognition library for AI
- CORS enabled for frontend connection

## 📱 Features

- ✅ Live camera capture
- ✅ Drag & drop file upload
- ✅ Real-time backend connection status
- ✅ Detailed verification results
- ✅ Error handling and fallbacks
- ✅ Responsive design
- ✅ Secure local processing

## 🛠️ Development

The system works in two modes:
1. **With Backend**: Full verification with real OCR and face matching
2. **Simulation Mode**: Demo mode when backend is not available

## 📊 API Endpoints

- `POST /verify` - Main verification endpoint
- `GET /health` - Backend health check

## 🔒 Security

- Images processed locally, not stored permanently
- CORS configured for secure frontend-backend communication
- No sensitive data transmitted over network
