import 'package:flutter/material.dart';

class ExpenseBottomSheet extends StatelessWidget {
  final String selectedType;
  final String amount;
  final VoidCallback onBackspace;
  final Function(String) onNumberPress;
  final VoidCallback onSubmit;
  final VoidCallback onDatePress;

  const ExpenseBottomSheet({
    Key? key,
    this.selectedType = 'Expense',
    this.amount = '250.00',
    required this.onBackspace,
    required this.onNumberPress,
    required this.onSubmit,
    required this.onDatePress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 415,
      height: 483,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 127,
                height: 37.4,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Expense',
                    style: TextStyle(
                      fontFamily: 'Rounded Mplus 1c',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                width: 127,
                height: 37.4,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF56A49A), width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Food',
                    style: TextStyle(
                      fontFamily: 'Rounded Mplus 1c',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: const Color(0xFF56A49A),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Text(
            'Amount',
            style: TextStyle(
              fontFamily: 'Rounded Mplus 1c',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: const Color(0xFF525855),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '₹',
                style: TextStyle(
                  fontFamily: 'Rounded Mplus 1c',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: const Color(0xFF272928),
                ),
              ),
              const SizedBox(width: 4),
              Text(
                amount,
                style: TextStyle(
                  fontFamily: 'Rounded Mplus 1c',
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Column(
              children: [
                buildNumberRow(['1', '2', '3']),
                buildNumberRow(['4', '5', '6']),
                buildNumberRow(['7', '8', '9']),
                buildNumberRow(['.', '0', '']),
              ],
            ),
          ),
          Container(
            height: 207,
            child: Row(
              children: [
                Expanded(child: Container()),
                Column(
                  children: [
                    GestureDetector(
                      onTap: onDatePress,
                      child: Container(
                        width: 73,
                        height: 73,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network('https://dashboard.codeparrot.ai/api/assets/Z3Y8vE8JH5cVOFI8'),
                      ),
                    ),
                    GestureDetector(
                      onTap: onSubmit,
                      child: Container(
                        width: 73,
                        height: 134,
                        decoration: BoxDecoration(
                          color: const Color(0xFF56A49A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.network('https://dashboard.codeparrot.ai/api/assets/Z3Y8vE8JH5cVOFI9'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNumberRow(List<String> numbers) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: numbers.map((number) {
          if (number.isEmpty) {
            return GestureDetector(
              onTap: onBackspace,
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                child: Image.network('https://dashboard.codeparrot.ai/api/assets/Z3Y8vE8JH5cVOFI-'),
              ),
            );
          }
          return GestureDetector(
            onTap: () => onNumberPress(number),
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              child: Text(
                number,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 29,
                  color: Colors.black,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

