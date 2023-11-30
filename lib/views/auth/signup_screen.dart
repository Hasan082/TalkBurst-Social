import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talkbrust/views/auth/login.dart';
import 'package:talkbrust/widgets/resusable_formfiled/reusable_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _fNameTEController = TextEditingController();
  final TextEditingController _lNameTEController = TextEditingController();
  final TextEditingController _uNameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Fill up your details to create TalkBrust account',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(16, 24, 40, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'First Name',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(16, 24, 40, 1),
                      ),
                    ),
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
                    const Text(
                      'Last Name',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(16, 24, 40, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ReusableTextField(
                      controller: _lNameTEController,
                      prefixIcon: const Icon(
                        Icons.person_outline,
                      ),
                      keyboardType: TextInputType.name,
                      hintText: 'Input Last Name',
                      onChanged: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(16, 24, 40, 1),
                      ),
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
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(16, 24, 40, 1),
                      ),
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
                    const Text(
                      'Mobile',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(16, 24, 40, 1),
                      ),
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
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(16, 24, 40, 1),
                      ),
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
                    SizedBox(
                      height: 36,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('Registration successful!');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor:
                              const Color.fromRGBO(218, 228, 255, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Have an account?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(94, 96, 100, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Get.offAll(() => const LoginScreen());
                          },
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(68, 120, 255, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
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
