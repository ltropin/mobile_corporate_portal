import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  final double height;
  final double width;

  const CustomLoader({
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: const Center(
        child: CircularProgressIndicator(
          strokeWidth: 3,
          valueColor:
              AlwaysStoppedAnimation<Color>(Colors.deepPurple),
        ),
      ),
    );
  }
}