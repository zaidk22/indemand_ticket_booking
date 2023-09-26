import 'package:auto_route/auto_route.dart';
import './routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: SplashRoute.page,
            transitionsBuilder: TransitionsBuilders.slideBottom,
      
            durationInMilliseconds: 400),
        CustomRoute(
            page: LoginRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: SignUpRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: DashBoard.page,
              initial: true,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: EventDetails.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: CartRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: CustomWebRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: BookedTicketDeatils.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
                CustomRoute(
            page: CheckoutRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
                 
            durationInMilliseconds: 400),

             CustomRoute(
            page: ProfileRoute.page,
       
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),


            
             CustomRoute(
            page: DetailedMostPopularRoute.page,
        
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
      ];
}
