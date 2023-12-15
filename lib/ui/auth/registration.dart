import 'package:flutter/material.dart';
import 'package:miniproject1/utils/export_utils.dart';
import 'package:miniproject1/widgets/export_widgets.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          const Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ABeeZee'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Create an Account !!",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              CustomText(
                                text: 'Name',
                                fontSize: 18,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          CustomTextFormField(
                              keyboardType: TextInputType.name,
                              labelText: 'Name',
                              prefixIcon: Icons.person,
                              obscureText: false,
                              validator: nameValidator),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              CustomText(text: 'phone number', fontSize: 18),
                              SizedBox(width: 10),
                            ],
                          ),
                          CustomTextFormField(
                              keyboardType: TextInputType.phone,
                              labelText: 'Phone Number',
                              prefixIcon: Icons.phone,
                              obscureText: false,
                              validator: phoneValidator),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              CustomText(text: 'email', fontSize: 18),
                              SizedBox(width: 10),
                            ],
                          ),
                          CustomTextFormField(
                              keyboardType: TextInputType.emailAddress,
                              labelText: 'Email',
                              prefixIcon: Icons.email,
                              obscureText: false,
                              validator: emailValidator),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              CustomText(text: 'Password', fontSize: 18),
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
                          const Row(
                            children: [
                              CustomText(
                                text: 'Confirm Password',
                                fontSize: 18,
                              )
                            ],
                          ),
                          CustomTextFormField(
                            keyboardType: TextInputType.text,
                            labelText: 'Confirm Password',
                            prefixIcon: Icons.lock,
                            obscureText: true,
                            validator: passwordValidator,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomElevatedButton(
                            onPressed: () {},
                            text: 'Sign Up',
                          )
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
