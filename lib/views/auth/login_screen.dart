import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../widgets/button/custom_elevated_button.dart';
import '../../widgets/resusable_formfiled/reusable_form_field.dart';
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final bool activeBtn = false;

  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  Widget pageTextWidget(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Color.fromRGBO(29, 41, 57, 1),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login to TalkBrust',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              pageTextWidget(context, 'Email'),
              const SizedBox(
                height: 10,
              ),
              ReusableTextField(
                controller: _emailTEController,
                prefixIcon: const Icon(
                  Icons.email_outlined,
                ),
                keyboardType: TextInputType.emailAddress,
                hintText: 'Input Email',
                onChanged: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              pageTextWidget(context, 'Password'),
              const SizedBox(
                height: 10,
              ),
              ReusableTextField(
                controller: _passwordTEController,
                prefixIcon: const Icon(
                  Icons.lock_outline,
                ),
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                hintText: 'Input Password',
                onChanged: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 35,
              ),
              CustomElevatedBtn(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (kDebugMode) {
                      print('Registration successful!');
                    }
                  }
                },
                activeBtn: activeBtn,
                btnText: 'Log In',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
