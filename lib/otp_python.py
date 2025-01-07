import random
import smtplib
from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

# Email configuration
EMAIL_ADDRESS = "budgetwise02@gmail.com"  # Replace with your email address
EMAIL_PASSWORD = "tkkm gtyo mbmx mzkm"          # Replace with your email password
SMTP_SERVER = "smtp.gmail.com"            # Update if using a different email provider
SMTP_PORT = 587

def generate_otp():
    """Generate a 6-digit OTP."""
    return str(random.randint(1000, 9999))

def send_email(to_email, otp):
    """Send the OTP to the specified email address."""
    try:
        with smtplib.SMTP(SMTP_SERVER, SMTP_PORT) as server:
            server.starttls()
            server.login(EMAIL_ADDRESS, EMAIL_PASSWORD)
            subject = "Your OTP Code"
            body = f"Your OTP is: {otp}"
            msg = f"Subject: {subject}\n\n{body}"
            server.sendmail(EMAIL_ADDRESS, to_email, msg)
    except Exception as e:
        print(f"Error sending email: {e}")

@app.route("/send-otp", methods=["POST"])
def send_otp():
    """Receive email address and send OTP."""
    data = request.get_json()
    if not data or "email" not in data:
        return jsonify({"error": "Invalid request. Email is required."}), 400

    recipient_email = data["email"]
    otp = generate_otp()
    
    try:
        send_email(recipient_email, otp)
        return jsonify({"otp": otp})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
