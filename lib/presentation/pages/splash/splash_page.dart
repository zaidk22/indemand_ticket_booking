import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/application/auth/auth_bloc.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () => null,
            (some) => some.fold(
              (l) {
                Future.delayed(const Duration(milliseconds: 3000), () {
            
                  AutoRouter.of(context).replace(const DashBoard());
                });
              },
              (r) {
                Future.delayed(const Duration(milliseconds: 3000), () {
                  AutoRouter.of(context).replace(const DashBoard());
                });
              },
            ),
          );
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: CustomColor.appBackbroundColor,
              image: DecorationImage(
                image: const AssetImage(ImageConstant.splashImage),
                colorFilter: ColorFilter.mode(
                    CustomColor.appBackbroundColor.withOpacity(0.4),
                    BlendMode.dstATop),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: ListView(
                children: [
                  SizedBox(
                    height: deviceSize.height * 0.9,
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
                            height: deviceSize.height * 0.4,
                          ),
                        ),
                        Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Text("Loading...",
                                    style: CustomTextStyle.splashText)
                                .animate()
                                .fade(duration: 600.ms)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
