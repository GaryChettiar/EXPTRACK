import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NumberPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGrid.count(
        crossAxisCount: 4, // 4 columns in the grid
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          ..._buildNumberButtons(),
          _buildIconButton(Icons.calendar_today, 1, 1),
          _buildIconButton(Icons.check, 1, 2),
          _buildIconButton(Icons.backspace, 1, 1),
        ],
      ),
    );
  }

  // Helper to create the number buttons
  List<Widget> _buildNumberButtons() {
    final List<String> numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '.', '0'];
    return numbers.map((number) {
      return _buildButton(
        label: number,
        crossAxisCount: 1,
        mainAxisCount: 1,
      );
    }).toList();
  }

  // Button for numbers and dots
  Widget _buildButton({required String label, required int crossAxisCount, required int mainAxisCount}) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCount,
      mainAxisCellCount: mainAxisCount,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // Button for icons
  Widget _buildIconButton(IconData icon, int crossAxisCount, int mainAxisCount) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCount,
      mainAxisCellCount: mainAxisCount,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {},
        child: Icon(icon, size: 28),
      ),
    );
  }
}