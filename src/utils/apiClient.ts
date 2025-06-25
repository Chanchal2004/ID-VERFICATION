const API_BASE_URL = 'https://id-verfication.onrender.com';

export interface VerificationRequest {
  selfie: string;
  aadhar: string;
}

export interface VerificationResponse {
  age: number;
  extracted_dob: string;
  face_match_score: number;
  face_matched: boolean;
  age_valid: boolean;
  verification_passed: boolean;
  ocr_text?: string;
  error?: string;
}

export const verifyIdentity = async (
  selfieImage: string, 
  aadharImage: string
): Promise<VerificationResponse> => {
  try {
    const response = await fetch(`${API_BASE_URL}/verify`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        selfie: selfieImage,
        aadhar: aadharImage
      })
    });

    if (!response.ok) {
      const errorData = await response.json();
      throw new Error(errorData.error || 'Verification failed');
    }

    return await response.json();
  } catch (error) {
    console.error('API Error:', error);
    throw error;
  }
};

export const checkBackendHealth = async (): Promise<boolean> => {
  try {
    const response = await fetch(`${API_BASE_URL}/health`);
    return response.ok;
  } catch {
    return false;
  }
};