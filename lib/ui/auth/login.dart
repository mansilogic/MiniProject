// ignore_for_file: unnecessary_const
import 'package:flutter/material.dart';
import 'package:miniproject1/utils/export_utils.dart';
import 'package:miniproject1/widgets/export_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                      child: Column(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ABeeZee'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('WELCOME!!'),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              CustomText(
                                text: 'Email',
                                fontSize: 18,
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          CustomTextFormField(
                            keyboardType: TextInputType.emailAddress,
                            labelText: 'Email',
                            prefixIcon: Icons.email,
                            obscureText: false,
                            validator: emailValidator,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              CustomText(
                                text: 'Password',
                                fontSize: 18,
                              )
                            ],
                          ),
                          CustomTextFormField(
                              keyboardType: TextInputType.text,
                              labelText: 'Password',
                              prefixIcon: Icons.password,
                              obscureText: true,
                              validator: passwordValidator),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Forget Password?',
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                          CustomElevatedButton(
                              onPressed: () {}, text: 'Sign Up'),
                        ]),
                      )
                    ],
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
