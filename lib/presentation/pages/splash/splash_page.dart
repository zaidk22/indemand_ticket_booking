import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';


@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context) ;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image:const AssetImage(ImageConstant.splashImage),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: deviceSize.height*0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: deviceSize.height * 0.10,
                        
                      ),
                      
                      child: Image.asset(
                        ImageConstant.splashLogo,
                        width: double.infinity,
                        height: deviceSize.height*0.4,
                      ),
                    ),
                  Align(
                        alignment: FractionalOffset.bottomCenter,
                        child:  Text(
                          "Loading...",
                          style: CustomTextStyle.splashText
                          )
                          .animate().fade(
                          duration: 600.ms
                        )
                        
 
                      ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  
  }
}