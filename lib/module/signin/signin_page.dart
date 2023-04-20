import 'package:buy_books_online/base/base_widget.dart';
import 'package:buy_books_online/shared/app_color.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: "Sign In",
      di:  [],
      bloc:  [],
      child: Container(),
    );
  }
}

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        _buildPhoneField(),
        _buildPassField(),
      ]),
    );
  }

  Widget _buildPhoneField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
          icon: Icon(
            Icons.phone,
            color: AppColor.blue,
          ),
          hintText: "(+84 987 498 233)",
          labelText: "Phone",
          labelStyle: TextStyle(color: AppColor.blue)),
    );
  }

  Widget _buildPassField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
          icon: Icon(
            Icons.lock,
            color: AppColor.blue,
          ),
          hintText: "Password",
          labelText: "Password",
          labelStyle: TextStyle(color: AppColor.blue)),
    );
  }
}
