import 'package:buy_books_online/shared/style/btn_style.dart';
import 'package:flutter/material.dart';

import '../app_color.dart';

class NormalButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const NormalButton({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(AppColor.yellow),
        ),
        child: Text(
          title,
          style: BtnStyle.normal(),
        ),
      ),
    );
  }
}
