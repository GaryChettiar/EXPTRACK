import 'package:exptrack/colors.dart';
import 'package:exptrack/pages/sign_in_1.dart';
import 'package:exptrack/pages/sign_in_2.dart';
import 'package:flutter/material.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  final TextEditingController email =  new TextEditingController();
   final TextEditingController name =  new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(height: 200,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/sign_in_1.png'))),),
        Container(
          height: 425,
          decoration: BoxDecoration(color: AppColors.black,borderRadius: BorderRadius.all(Radius.circular(34))),
          margin: EdgeInsets.only(left: 30,right: 30,),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left : 25,right: 25),
            child: Column(
              
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(border: InputBorder.none,hintText: "Name"),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(border: InputBorder.none,hintText: "Email"),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn2(otp: "",)));
                  },
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
                  height: 0,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn1()));
                      },
                      child: Text("Sign In",style: TextStyle(color: AppColors.greenPrimary,fontSize: 18),))
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