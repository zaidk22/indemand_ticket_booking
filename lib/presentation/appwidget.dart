import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/application/bottom_nav_bar/base_bloc.dart';
import 'package:indemand_ticket_booking/injection.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
    ));
  }
}
