import 'package:exptrack/colors.dart';
import 'package:exptrack/pages/sign_in_2.dart';
import 'package:exptrack/pages/sign_up_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import '../otp_service.dart';

class SignIn1 extends StatefulWidget {
  const SignIn1({super.key});

  @override
  State<SignIn1> createState() => _SignIn1State();
}

class _SignIn1State extends State<SignIn1> {
 
  final TextEditingController email1 =  new TextEditingController();
  final OTPService _otpService = OTPService();
   String? _otp;

  void _sendOTP() async {
    final email = email1.text.trim();
    if (email.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Please enter an email")));
      return;
    }

    final otp = await _otpService.sendOTP(email);
    if (otp != null) {
      setState(() {
        _otp = otp;
      });
      print(otp);
       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn2(otp: _otp!,)));
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("OTP sent successfully to $email")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to send OTP. Try again.")));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 75,),
          Container(height: 200,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/sign_in_1.png'))),),
        Container(
          height: 400,
          decoration: BoxDecoration(color: AppColors.black,borderRadius: BorderRadius.all(Radius.circular(34))),
          margin: EdgeInsets.only(left: 30,right: 30,),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left : 25,right: 25),
            child: Column(
              
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: TextField(
                    controller: email1,
                    decoration: InputDecoration(border: InputBorder.none,hintText: "Email"
                      
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: _sendOTP,
                  child: Container(
                    alignment: Alignment.center,
                    height: 63,
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    color: AppColors.greenPrimary,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "Rounded Mplus",fontWeight: FontWeight.w600),),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("OR",style: TextStyle(color: AppColors.white,fontSize: 19)),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 63,
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage('assets/google.png'),height: 30,width: 30,fit: BoxFit.contain,),
                          
                          Text("Login with Google",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",style: TextStyle(color: Colors.white,fontSize: 18),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp1()));
                      },
                      child: Text("Sign Up",style: TextStyle(color: AppColors.greenPrimary,fontSize: 18),))
                  ],
                )
              ],
            ),
          ),
        )  
        ],
      ),
    );
  }
}