🧠 Face and Age Verification System
🌟 Project Overview
This innovative Proof-of-Concept system securely and reliably verifies a user's identity and age using simulated government ID cards like Aadhaar.

✅ Objectives:
Validate an individual's identity through face comparison.
Confirm that the user is 18 years or older using OCR-based DOB extraction.
It compares a live captured selfie with the ID card image and delivers instant, trustworthy results — ideal for digital onboarding and KYC use cases.

👩‍💻 Our Core Team:
Chanchal Chaudhary
Chanchal Verma
Aditi Kashyap

🚀 Getting Started
Step 1: Launch the Backend Server
bash
writing code
cd backend
pip install -r requirements.txt
python app.py
The server will run at: http://localhost:5000
Terminal will display: “Backend is running!”

Step 2: Start the Frontend Application
bash
writing code
cd frontend
npm install
npm run dev
The React frontend opens at: http://localhost:5173
It auto-connects with the backend.

💡 Operational Flow
🖥️ Frontend (React + Tailwind)
Live Camera Capture using browser webcam.
Drag-and-Drop Aadhar Upload (also supports manual upload).
Converts images to JPEG base64 format before sending to the backend.
Displays real-time status and results.
Fully responsive design across mobile and desktop.

⚙️ Backend (Flask + Python)
Uses Tesseract OCR via pytesseract to extract Date of Birth (DOB).
Supports multi-language OCR (English + Hindi).
Uses face_recognition to:
Detect faces
Generate encodings
Compare face similarity
Verifies if age >= 18 years.
Returns verification result, confidence score, and extracted data.

🔁 The Verification Workflow
User uploads selfie and Aadhar image
Backend performs OCR to extract DOB from ID card
Face detection and comparison is done using AI models
Age is calculated using extracted DOB
Returns a pass/fail result with:
Age
DOB
Face match score (0–100%)
Matching status

✨ Core Features
✅ Real-time Selfie Capture
Instant webcam-based photo capturing for face verification.

✅ Effortless Document Upload
Drag-and-drop and file picker for Aadhaar image upload.

✅ Seamless JPEG Conversion
All images are converted to JPEG (base64) before sending to backend.

✅ Live Backend Status
Checks backend connection status and alerts users in real time.

✅ Transparent Results
Displays extracted DOB, age, face match percentage, and overall result.

✅ User Guidance for Blurry Images
Warns the user if selfie or ID card image is too blurry.

✅ Advanced Error Handling
Descriptive error messages (e.g., "No face detected", "Invalid DOB format").

✅ Fully Responsive UI
Looks and works great on both desktops and mobile devices.

✅ Dual-Language OCR Support
Extracts text from Aadhaar in both English and Hindi.

🔧 Technical Architecture
🧩 Frontend Stack:
React 18
Tailwind CSS (for styling)
Lucide React (for icons)
HTML5 Canvas API (for image conversion and processing)
Camera API (for selfie capture)

🧠 Backend Stack:
Flask (Python web framework)
OpenCV (image preprocessing & blur detection)
face_recognition (for face detection and matching)
Pillow (PIL) (image handling)
pytesseract + Tesseract OCR (text extraction from images)
Flask-CORS (secure frontend-backend communication)

📊 API Endpoints
POST /verify
  Accepts: Selfie and Aadhaar image (base64)
  Returns: Extracted DOB, age, face match score, verification result

GET /health
  Returns: Server status — used to check if backend is live

🔒 Security Measures (POC)
Data is not stored permanently; processed in memory only
No raw images or sensitive info is logged or retained
CORS-enabled backend ensures safe cross-origin communication

📈 For future production deployment:
Use HTTPS for all requests
Add encryption at rest for temporary storage
Implement role-based access controls
Ensure compliance with GDPR and Indian data laws

🎬 Demo
📽️ [Insert your YouTube/Google Drive/other demo video link here]