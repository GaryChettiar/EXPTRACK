import 'package:exptrack/colors.dart';
import 'package:exptrack/widgets/numpad.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

bool income = true;

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  final TextEditingController _amount = TextEditingController();
   final List<String> items = ['Food', 'Work', 'Leisure', 'Travel'];
  final List<Color> borderColors = [
    AppColors.greenSecondary,
    AppColors.blue,
    AppColors.red,
    AppColors.yellow,
  ];
  String? selectedValue;
  Future<void> _selectDate(BuildContext context) async {
    // Get the current date
    final DateTime currentDate = DateTime.now();

    // Show the date picker dialog
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate, // Default selected date
      firstDate: DateTime(2000), // Earliest date selectable
      lastDate: DateTime(2100), // Latest date selectable
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light(), // Customize dialog theme here
          child: child ?? const SizedBox(),
        );
      },
    );

    // Handle the selected date
    if (selectedDate != null && selectedDate != currentDate) {
      print('Selected Date: ${selectedDate.toLocal()}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected Date: ${selectedDate.toLocal()}')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return income ? Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                income = !income;
              });
            },
            child: Container(
              alignment: Alignment.center,
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Text(
                "Income",
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Spacer(),
          Text(
            "Amount",
            style: TextStyle(fontSize: 18),
          ),
          Spacer(),
          SizedBox(
            height: 50,
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(

                style: TextStyle(
                  
                  fontSize: 24, color: AppColors.black, fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
                decoration:InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Icon(Icons.currency_rupee,size: 20,),
                  ),
                  border: InputBorder.none,
                  
                ),
                keyboardType: TextInputType.none,
                controller: _amount,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                //height: 300,

                child: StaggeredGrid.count(
                  crossAxisCount: 8,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 2,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              _amount.text += "1";
                            });
                          },
                            child: Center(
                                child: Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              _amount.text += "2";
                            });
                          },
                            child: Center(
                                child: Text(
                          "2",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "3";
                            });
                          },
                            child: Center(
                                child: Text(
                          "3",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.75,
                        child: InkWell(onTap: (){
                            // 
                             _selectDate(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(bottom: 3),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Center(
                                  child: Image.asset('assets/calendar.png'))),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "4";
                            });
                          },
                            child: Center(
                                child: Text(
                          "4",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "5";
                            });
                          },
                            child: Center(
                                child: Text(
                          "5",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "6";
                            });
                          },
                            child: Center(
                                child: Text(
                          "6",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 4,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text = "1";
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                                color: AppColors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Image.asset('assets/tick.png',height: 20,width: 20),
                          ),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "7";
                            });
                          },
                            child: Center(
                                child: Text(
                          "7",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text+= "8";
                            });
                          },
                            child: Center(
                                child: Text(
                          "8",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "9";
                            });
                          },
                            child: Center(
                                child: Text(
                          "9",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                               if(
                              _amount.text.contains(".")
                            ){
                              _amount.text = _amount.text;
                              return;
                            }
                            if (_amount.text.isNotEmpty) {
                              _amount.text+= ".";
                              return;
                            }
                            else{
                              _amount.text = "0.";
                            }
                            });
                          },
                            child: Center(
                                child: Text(
                          ".",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "0";
                            });
                          },
                            child: Center(
                                child: Text(
                          "0",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              if (_amount.text.isNotEmpty) {
                              _amount.text =
                                  _amount.text.substring(0, _amount.text.length - 1);
                            }
                            });
                          },
                            child:
                                Center(child: Icon(Icons.backspace_outlined)))),
                  ],
                )),
          )
        ],
      ),
    ):
    //Expense
    Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      income = !income;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    child: Text(
                      "Expense",
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
               DropdownButtonHideUnderline(
          child: DropdownButton2(
            customButton: Container(
              height: 50,
              width: 130,
              padding: EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  width: 2,
                  color: selectedValue != null
                      ? borderColors[items.indexOf(selectedValue!)]
                      : Colors.grey, // Dynamic border color
                ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    
                    selectedValue ?? 'Select Item',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: selectedValue != null ? borderColors[items.indexOf(selectedValue!)] : Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(fontSize: 16),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              elevation: 2,
              scrollbarTheme: ScrollbarThemeData(
                radius: Radius.circular(8),
                thickness: WidgetStatePropertyAll(6),
                thumbVisibility: MaterialStateProperty.all(true),
              ),
            ),
            menuItemStyleData: MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 14),
              height: 40,
            ),
          ),
        ),
      
              ],
            ),
          ),
          Spacer(),
          Text(
            "Amount",
            style: TextStyle(fontSize: 18),
          ),
          Spacer(),
          SizedBox(
            height: 50,
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(

                style: TextStyle(
                  
                  fontSize: 24, color: AppColors.black, fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
                decoration:InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Icon(Icons.currency_rupee,size: 20,),
                  ),
                  border: InputBorder.none,
                  
                ),
                keyboardType: TextInputType.none,
                controller: _amount,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                //height: 300,

                child: StaggeredGrid.count(
                  crossAxisCount: 8,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 2,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              _amount.text += "1";
                            });
                          },
                            child: Center(
                                child: Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              _amount.text += "2";
                            });
                          },
                            child: Center(
                                child: Text(
                          "2",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "3";
                            });
                          },
                            child: Center(
                                child: Text(
                          "3",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.75,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text = "1";
                            });
                          },
                          child: Container(
                              margin: EdgeInsets.only(bottom: 3),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Center(
                                  child: Image.asset('assets/calendar.png'))),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "4";
                            });
                          },
                            child: Center(
                                child: Text(
                          "4",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "5";
                            });
                          },
                            child: Center(
                                child: Text(
                          "5",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "6";
                            });
                          },
                            child: Center(
                                child: Text(
                          "6",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 4,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text = "1";
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                                color: AppColors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Image.asset('assets/tick.png'),
                          ),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "7";
                            });
                          },
                            child: Center(
                                child: Text(
                          "7",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text+= "8";
                            });
                          },
                            child: Center(
                                child: Text(
                          "8",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "9";
                            });
                          },
                            child: Center(
                                child: Text(
                          "9",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                               if(
                              _amount.text.contains(".")
                            ){
                              _amount.text = _amount.text;
                              return;
                            }
                            if (_amount.text.isNotEmpty) {
                              _amount.text+= ".";
                              return;
                            }
                            else{
                              _amount.text = "0.";
                            }
                            });
                          },
                            child: Center(
                                child: Text(
                          ".",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              _amount.text += "0";
                            });
                          },
                            child: Center(
                                child: Text(
                          "0",
                          style: TextStyle(fontSize: 20),
                        )))),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: InkWell(onTap: (){
                            setState(() {
                              if (_amount.text.isNotEmpty) {
                              _amount.text =
                                  _amount.text.substring(0, _amount.text.length - 1);
                            }
                            });
                          },
                            child:
                                Center(child: Icon(Icons.backspace_outlined)))),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
