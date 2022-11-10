import 'package:flutter/material.dart';
import 'package:women_safety_app/Utils/quotes.dart';

class CustomAppBar extends StatelessWidget {
  Function? onTap;
  int? quoteIndex;
  CustomAppBar({
    Key? key,
    required this.onTap,
    this.quoteIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Center(
            child: Text(
              sweetSayings[quoteIndex!],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
