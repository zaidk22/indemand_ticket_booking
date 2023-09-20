import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/injection.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import '../application/dashboard/base_bloc.dart';
import 'routes/routes.dart';


class AppWigdet extends StatelessWidget {
  const AppWigdet({super.key});


  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (context) {
            return getIt<BaseBloc>();
          },
        ),
      ],
    
     child: MaterialApp.router(
      routerConfig: appRouter.config(),
      debugShowCheckedModeBanner: false,
      title: 'Indemand',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColor.appBackbroundColor,
      
        ),
      appBarTheme: AppBarTheme(
iconTheme: IconThemeData(color: Colors.white)
      ),
        useMaterial3: true,
      ),
      
    ));
  }
}
