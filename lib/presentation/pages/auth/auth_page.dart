import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:slidable_button/slidable_button.dart';



@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String  buttonLableText = "Login";
  @override
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
               
                children: <Widget>[
                     SizedBox(height: deviceSize.height*0.1,),              
                    // Center(
                    //   child: Image.asset(
                    //     ImageConstant.loginLogo,
                    //     width: double.infinity,
                    //     height: deviceSize.height*0.3,
                    //   ),
                    // ),
                  
                 
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
                          
                    child: Container(
                      child: SizedBox(
                                  
                                     
                       child: Column(
                        children: [
                            const SizedBox(height: 10,),
                          HorizontalSlidableButton(
                            
                         width: MediaQuery.of(context).size.width *0.6,
                         buttonWidth: MediaQuery.of(context).size.width *0.3,
                         color: Colors.white,
                         buttonColor: CustomColor.authBackbroundColor1,
                         dismissible: false,
                         label:  Center(child: Text(buttonLableText,style: CustomTextStyle.lableTextStyle,),),
                         child:  Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                             
                               Text('Login',style: CustomTextStyle.buttonTextStyle,),
                               Text('SignUp',style: CustomTextStyle.buttonTextStyle,),
                             ],
                           ),
                         ),
                         onChanged: (position) {
                          setState(() {
                             if (position == SlidableButtonPosition.end) {
                               buttonLableText = 'Signup';
                             } else {
                               buttonLableText = 'Login';
                             }
                           });
                         },
                       ),
                          
                                     
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                     
                                          keyboardType: TextInputType.text,
                                          //cursorColor: Color(0xff000000),
                                          textCapitalization: TextCapitalization.sentences,
                                          validator: (value) {
                                            // if (value?.length == 0) {
                                            //   return 'Please enter Username';
                                            // }
                                            // return null;
                                          },
                                          decoration: InputDecoration(
                                              prefixIcon: Container(
                            padding: EdgeInsets.all(16),
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              width: 16,
                              height: 12,
                              child: Image.asset(
                                'assets/images/person.png',
                              ),
                            ),
                                              ),
                                              isDense: true,
                                              contentPadding: EdgeInsets.fromLTRB(10, 30, 30, 0),
                                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color(0xffbfbfbf),
                            ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color(0xffbfbfbf),
                            ),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color(0xffbfbfbf),
                            ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color(0xffbfbfbf),
                            ),
                                              ),
                                              counterText: "",
                                              hintText: 'Username',
                                              hintStyle:
                              TextStyle(color: Color(0xff656565), fontSize: 16),
                                              fillColor: Color(0xffffffff),
                                              filled: true)),
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
        
      
      ),
    );
  
  }
}