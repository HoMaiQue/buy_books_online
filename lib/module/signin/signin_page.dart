import 'package:buy_books_online/base/base_widget.dart';
import 'package:buy_books_online/shared/app_color.dart';
import 'package:buy_books_online/shared/widget/normal_button.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageContainer(
      title: "Sign In",
      bloc: [],
      di: [],
      child: SignInFormWidget(),
    );
  }
}

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPhoneField(),
          _buildPassField(),
          NormalButton(
            onPressed: () {},
            title: "Sign In",
          ),
          _buildFooter()
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        child: const Text("Đăng ký tài khoản",
            style: TextStyle(color: AppColor.blue, fontSize: 17)),
      ),
    );
  }

  Widget _buildPhoneField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.phone,
              color: AppColor.blue,
            ),
            hintText: "(+84 987 498 233)",
            labelText: "Phone",
            labelStyle: TextStyle(color: AppColor.blue)),
      ),
    );
  }

  Widget _buildPassField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: true,
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: AppColor.blue,
            ),
            hintText: "Password",
            labelText: "Password",
            labelStyle: TextStyle(color: AppColor.blue)),
      ),
    );
  }
}
