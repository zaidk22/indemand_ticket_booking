
import 'package:auto_route/auto_route.dart';
import './routes.gr.dart';


@AutoRouterConfig()      
class AppRouter extends $AppRouter {      
   
 @override      
 List<AutoRoute> get routes => [  
  AutoRoute(page: SplashRoute.page),
  AutoRoute(page: AuthRoute.page),
  AutoRoute(page: HomeRoute.page,initial: true),


  ];    
}