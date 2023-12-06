import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talkbrust/views/auth/signup_screen.dart';
import 'package:talkbrust/views/dashboard_page.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/reusable_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTEController = TextEditingController();

  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool activeBtn = false;

  // Email validation regex pattern
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  // Password validation regex pattern
  final RegExp passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  );

  Widget pageTextWidget(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }

  @override
  void initState() {
    super.initState();
    _emailTEController.addListener(updateButtonState);
    _passwordTEController.addListener(updateButtonState);
  }

  void updateButtonState() {
    setState(() {
      activeBtn = _emailTEController.text.isNotEmpty &&
          _passwordTEController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color.fromRGBO(29, 41, 57, 1),
          ),
          onPressed: () {
            Get.back();
          },
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
                  if (!passwordRegex.hasMatch(value)) {
                    return 'Please enter strong password';
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
                    Get.offAll(() => const DashboardScreen());
                  }
                },
                activeBtn: activeBtn,
                btnText: 'Log In',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pageTextWidget(context, 'Don\'t have an account?'),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => SignUpScreen());
                    },
                    child: pageTextWidget(
                      context,
                      'Sign up',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
