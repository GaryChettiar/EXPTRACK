import 'package:exptrack/colors.dart';
import 'package:exptrack/pages/sign_in_1.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height*0.25,),
          Container(
            margin: EdgeInsets.all(8),
            height: 200,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/onboarding_3.png'))),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(34),topRight: Radius.circular(34))
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("Customizable Categories",style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: "Rounded Mplus"
                    ),),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                    child: Text("Organize expenses into categories that suit your lifestyle for better budgeting",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
                  ),
                  Expanded(child: Container()),
                  SizedBox(width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))),
                    child:Container(padding: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn1()));
                        },
                        child: Container(width: 224,
                        alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.greenPrimary,
                            borderRadius: BorderRadius.circular(24)
                          ),
                          child: Text("GET STARTED",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    )
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}