import 'package:exptrack/colors.dart';
import 'package:exptrack/widgets/bottomsheet.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   String entry="Income";

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.5,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Text("hello smit",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
            
                Text("Try making an entry",style: TextStyle(color: AppColors.white,fontSize: 18),),
              //  Expanded(child: Container())
              ],
            ),
          ),
          Expanded(child: Container())
        ],
      ),
        backgroundColor: AppColors.backgroundColor,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50.0 ,right: 10),
          child: SizedBox(
            height: 60,
            width: 60,
            child: FloatingActionButton(
              onPressed: (){
                showModalBottomSheet(context: context, builder: (ctx)=>Bottomsheet());
              },backgroundColor: AppColors.greenPrimary,shape: CircleBorder(),elevation: 0,child: Icon(Icons.add_rounded,size: 50,color: Colors.white,),),
          ),
        ),
      ),
    );  
  }
}

