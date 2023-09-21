import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/domain/core/helper/validators.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_auth_button.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_form_field.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String buttonLableText = "Login";
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: CustomColor.appBackbroundColor,
          ),
          child: SingleChildScrollView(
            child: SizedBox(
              height: deviceSize.height,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: deviceSize.height * 0.1,
                  ),
             
                        
                  Center(
                    child: Image.asset(
                      ImageConstant.authLogoImage,
                      width: deviceSize.width ,
                      height: deviceSize.height * 0.22,
                    ),
                  ),
                        
                  SizedBox(
                   // height: deviceSize.height*0.4,
                    width: deviceSize.width *0.95,
                    child: Card(
                      
                      clipBehavior: Clip.none,
                    color: CustomColor.whiteColor,
                    
                      elevation: 20,
                        
                      child: Form(
                        key: _key ,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomFormField(
                              hintText: "Email",
                              prefixIcon: Icons.person,
                              validator: Validators.email,
                            ),
                            const SizedBox(height: 5),
                            const CustomFormField(
                              hintText: "Password",
                              prefixIcon: Icons.password,
                              validator: Validators.password,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomAuthButton(
                              text: "Sign in",
                              onTap: () {
                                // AutoRouter.of(context).replace(DashBoard());
                               
                                   if (_key.currentState!.validate()) {
                           AutoRouter.of(context).replace(const DashBoard());
                        }
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Don\'t have an account?',
                                  style:  CustomTextStyle.subtitleBlackMinTextStyle,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Sign up',
                                        style: CustomTextStyle.warningTextStyle,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            AutoRouter.of(context)
                                                .push(const SignUpRoute());
                                          })
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
