import 'package:exptrack/colors.dart';
import 'package:exptrack/pages/home.dart';
import 'package:exptrack/pages/sign_up_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn2 extends StatefulWidget {
  final String otp;
  const SignIn2({super.key, required this.otp});

  @override
  State<SignIn2> createState() => _SignIn2State();
}

class _SignIn2State extends State<SignIn2> {
  final TextEditingController otp1 = TextEditingController();
    final TextEditingController otp2 = TextEditingController();
      final TextEditingController otp3 = TextEditingController();
        final TextEditingController otp4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 75,),
          Container(height: 200,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/sign_in_2.png'))),),
        Container(
          height: 400,
          decoration: BoxDecoration(color: AppColors.black,borderRadius: BorderRadius.all(Radius.circular(34))),
          margin: EdgeInsets.only(left: 30,right: 30,),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left : 25,right: 25),
            child: Column(
              
              children: [

                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Container(
                          width: 60,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: TextField(textAlign: TextAlign.center,
                      controller: otp1,
                      onChanged: (value) {
                          if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                          }
                          },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(border: InputBorder.none,
                        
                      ),
                      inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                          ],
                    ),
                  ),
                  Container(
                    width: 60,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: TextField(textAlign: TextAlign.center,
                      controller: otp2,
                      onChanged: (value) {
                          if (value.length ==1){
                          FocusScope.of(context).nextFocus();
                          }
                          },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(border: InputBorder.none,
                        
                      ),
                      inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                          ],
                    ),
                  ),
                  Container(
                    width: 60,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: TextField(
                      onChanged: (value) {
                          if (value.length ==1){
                          FocusScope.of(context).nextFocus();
                          }
                          },
                      textAlign: TextAlign.center,
                      controller: otp3,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(border: InputBorder.none,
                        
                      ),
                      inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                          ],
                    ),
                  ),
                  Container(
                    width: 60,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: TextField(textAlign: TextAlign.center,
                      controller: otp4,
                      onChanged: (value) {
                          if (value.length ==1){
                          FocusScope.of(context).nextFocus();
                          }
                          },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(border: InputBorder.none,
                        
                      ),
                      inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                          ],
                    ),
                  ),
                  
                    ],
                  ),
                ),
                
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    if((otp1.text+otp2.text+otp3.text+otp4.text)== widget.otp){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  }},
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
                Text("Resend OTP",style: TextStyle(color: AppColors.black,fontSize:16)),
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
                Container(
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