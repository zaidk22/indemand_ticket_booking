import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/custom_textstyle.dart';
import '../../../core/constants/image_constant.dart';
import '../widgets/custom_auth_button.dart';
import '../widgets/custom_form_field.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

 Widget build(BuildContext context) {
      final deviceSize = MediaQuery.sizeOf(context) ;
   
     return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body:SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                color: CustomColor.appBackbroundColor,
           
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                     SizedBox(height: deviceSize.height*0.1,),              
              
                  
                 
                    Center(
                      child: Image.asset(
                       ImageConstant.authLogoImage,
                        width: deviceSize.width,
                        height: deviceSize.height*0.22,
                      ),
                    ),
                
                 Expanded(
                   child: Card(
                    clipBehavior: Clip.none,
                           //color: CustomColor.authBackbroundColor3,
                           elevation: 20,
                          
                    child: SingleChildScrollView(
                      child: Column(
                       children: [
                           const SizedBox(height: 5,),
                        
                     const CustomFormField(hintText: "First Name",
                        prefixIcon: Icons.person,
                         ),
                                            const SizedBox(height: 2) ,
            

              const CustomFormField(hintText: "Last Name",
                        prefixIcon: Icons.person,
                         ),
                                            const SizedBox(height: 2) ,

                 const CustomFormField(hintText: "Email",
                        prefixIcon: Icons.email,
                         ),
                                            const SizedBox(height: 2) ,                             
                        const CustomFormField(hintText: "Password",
                        prefixIcon: Icons.password,
                         ),

                       const SizedBox(height: 5,),


                        const SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                              text: TextSpan(
                                  text: 'By continuing you accept the',
                                  style: CustomTextStyle.buttonTextStyle,
                                  children: <TextSpan>[
                                    TextSpan(text: ' Terms of Use and Service ',
                                        style: const TextStyle(
                                          color: Colors.blueAccent, fontSize: 12),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                
                                          }
                                    ),
                                      TextSpan(text: 'and',
                                     style: CustomTextStyle.buttonTextStyle,
                                       
                                    ),
                                       TextSpan(text: ' Privacy Policy',
                                        style: const TextStyle(
                                          color: Colors.blueAccent, fontSize: 12),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                
                                          }
                                    ),
                      
                      
                                  ]
                              ),
                            ),
                      ),  
                       

                       CustomAuthButton(
                        text: "Sign up",
                         onTap:() {
                            // AutoRouter.of(context).replace(DashBoard());
                             AutoRouter.of(context).push(const DashBoard());
                         }, 
                       ),
                        RichText(
        text: TextSpan(
            text: 'Already have an account?',
            style: CustomTextStyle.buttonTextStyle,
            children: <TextSpan>[
              TextSpan(text: ' Sign in',
                  style: const TextStyle(
                    color: Colors.blueAccent, fontSize: 18),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
            
                        AutoRouter.of(context).push(const LoginRoute());
                  
                    }
              )
            ]
        ),
      ),  
                    
                      
                                          
                       ],
                      ),
                    ),
                   ),
                 )
              
                ],
              ),
            ),
          ),
        
      
      ),
    );
  
  }

}