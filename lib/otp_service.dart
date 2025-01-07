import 'dart:convert';
import 'package:http/http.dart' as http;

class OTPService {
  final String baseUrl = "https://df89-2401-4900-57fc-af06-c5dd-7f72-3a4d-94d2.ngrok-free.app"; // Replace with your ngrok/public URL

  Future<String?> sendOTP(String email) async {
    final url = Uri.parse("$baseUrl/send-otp");

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['otp']; // Return the OTP sent by the server
      } else {
        print("Failed to send OTP: ${response.body}");
        return null;
      }
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }
}
