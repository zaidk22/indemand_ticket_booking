import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/domain/core/helper/validators.dart';
import 'package:indemand_ticket_booking/routes/routes.gr.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/custom_textstyle.dart';
import '../../../core/constants/image_constant.dart';
import '../widgets/custom_auth_button.dart';
import '../widgets/custom_form_field.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
           // color: CustomColor.appBackbroundColor,
            gradient: CustomColor.backGradient
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: deviceSize.height * 0.09,
              ),
              Center(
                child: Image.asset(
                  ImageConstant.authLogoImage,
                  width: deviceSize.width,
                  height: deviceSize.height * 0.20,
                ),
              ),
              Expanded(
                child: Container(
                 // clipBehavior: Clip.none,
                  //color: CustomColor.authBackbroundColor3,
                  color: Colors.transparent,
                 // elevation: 20,

                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          const CustomFormField(
                            hintText: "First Name",
                            prefixIcon: Icons.person,
                            validator: Validators.name,
                          ),
                          const SizedBox(height: 2),
                          const CustomFormField(
                            hintText: "Last Name",
                            prefixIcon: Icons.person,
                            validator: Validators.name,
                          ),
                          const SizedBox(height: 2),
                          const CustomFormField(
                            hintText: "Email",
                            prefixIcon: Icons.email,
                            validator: Validators.email,
                          ),
                          const SizedBox(height: 2),
                          const CustomFormField(
                            hintText: "Password",
                            prefixIcon: Icons.password,
                            validator: Validators.password,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                  text: 'By continuing you accept the',
                                  style:
                                      CustomTextStyle.subtitleBlackMinTextStyle,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Terms of Use and Service ',
                                        style: CustomTextStyle.warningTextStyle,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {}),
                                    TextSpan(
                                      text: 'and',
                                      style: CustomTextStyle
                                          .subtitleBlackMinTextStyle,
                                    ),
                                    TextSpan(
                                        text: ' Privacy Policy',
                                        style: CustomTextStyle.warningTextStyle,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {}),
                                  ]),
                            ),
                          ),
                          CustomAuthButton(
                            text: "Sign up",
                            onTap: () {
                              // AutoRouter.of(context).replace(DashBoard());
                            //  if (_formKey.currentState!.validate()) {
                                AutoRouter.of(context).push(const DashBoard());
                            //  }
                            },
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Already have an account?',
                                style:
                                    CustomTextStyle.subtitleBlackMinTextStyle,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Sign in',
                                      style: CustomTextStyle.warningTextStyle,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          AutoRouter.of(context)
                                              .push(const LoginRoute());
                                        })
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
