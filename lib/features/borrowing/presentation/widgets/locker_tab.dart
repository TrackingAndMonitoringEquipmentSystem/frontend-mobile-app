import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:frontend/features/borrowing/presentation/widgets/bluetooth_off_screen.dart';
import 'package:frontend/features/borrowing/presentation/widgets/find_device_screen.dart';

class LockerTab extends StatelessWidget {
  const LockerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      crossAxisCount: 2,
      children: List<Widget>.generate(
        10,
        (index) => Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
