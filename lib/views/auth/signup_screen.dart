import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talkbrust/views/auth/login_screen.dart';
import 'package:talkbrust/widgets/reusable_form_field.dart';

import '../../widgets/custom_elevated_button.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _fNameTEController = TextEditingController();

  final TextEditingController _uNameTEController = TextEditingController();

  final TextEditingController _emailTEController = TextEditingController();

  final TextEditingController _mobileTEController = TextEditingController();

  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool activeBtn = false;

  // Regular expression for email validation
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  // Regular expression for password validation
  final RegExp passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  );

  // Regular expression for a basic mobile number validation
  final RegExp mobileRegex = RegExp(r'^[0-9]{11}$');

  //ALL TEXT WIDGET====
  Widget pageTextWidget(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }

  @override
  void initState() {
    super.initState();
    _fNameTEController.addListener(updateButtonState);
    _uNameTEController.addListener(updateButtonState);
    _emailTEController.addListener(updateButtonState);
    _mobileTEController.addListener(updateButtonState);
    _passwordTEController.addListener(updateButtonState);
  }

  void updateButtonState() {
    setState(() {
      activeBtn = _fNameTEController.text.isNotEmpty &&
          _uNameTEController.text.isNotEmpty &&
          _emailTEController.text.isNotEmpty &&
          _mobileTEController.text.isNotEmpty &&
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
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Register to TalkBrust',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    pageTextWidget(context, 'First Name'),
                    const SizedBox(
                      height: 8,
                    ),
                    ReusableTextField(
                      controller: _fNameTEController,
                      prefixIcon: const Icon(
                        Icons.person_outline,
                      ),
                      keyboardType: TextInputType.name,
                      hintText: 'Input First Name',
                      onChanged: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    pageTextWidget(
                      context,
                      'Username',
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ReusableTextField(
                      controller: _uNameTEController,
                      prefixIcon: const Icon(
                        Icons.person_outline,
                      ),
                      keyboardType: TextInputType.text,
                      hintText: 'Input Username',
                      onChanged: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    pageTextWidget(
                      context,
                      'Email',
                    ),
                    const SizedBox(
                      height: 8,
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
                      height: 15,
                    ),
                    pageTextWidget(
                      context,
                      'Mobile',
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ReusableTextField(
                      controller: _mobileTEController,
                      prefixIcon: const Icon(
                        Icons.phone,
                      ),
                      keyboardType: TextInputType.phone,
                      hintText: 'Input Mobile',
                      onChanged: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your mobile number';
                        }
                        if (!mobileRegex.hasMatch(value)) {
                          return 'Please enter a valid mobile number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    pageTextWidget(
                      context,
                      'Password',
                    ),
                    const SizedBox(
                      height: 8,
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
                          return 'Password must be at least\n8 characters\nOne uppercase letter\nOne lowercase letter\nOne digit\nOne special character.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 25,
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
                      btnText: 'Sign Up',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        pageTextWidget(context, 'Have an account?'),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => LoginScreen());
                          },
                          child: pageTextWidget(
                            context,
                            'Sign in',
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
            ),
          ),
        ),
      ),
    );
  }
}
