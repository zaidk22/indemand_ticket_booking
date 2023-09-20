
import 'package:auto_route/auto_route.dart';
import './routes.gr.dart';


@AutoRouterConfig()      
class AppRouter extends $AppRouter {      
   
 @override      
 List<AutoRoute> get routes => [  
  AutoRoute(page: SplashRoute.page,initial: true),
  AutoRoute(page: LoginRoute.page),
  AutoRoute(page: SignUpRoute.page),
  AutoRoute(page: DashBoard.page),
  AutoRoute(page: EventDetails.page),
  AutoRoute(page: CartRoute.page)


  ];    
}