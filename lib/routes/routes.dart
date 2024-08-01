import 'package:auto_route/auto_route.dart';
import './routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [

    // splash page 
        CustomRoute(
            page: SplashRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
        initial: true,
            durationInMilliseconds: 500),

    // login 
        CustomRoute(
            page: LoginRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),


    // signup
        CustomRoute(
            page: SignUpRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),

    // dashboard
  
        CustomRoute(
            page: DashBoard.page,
          
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),

    // event details
        CustomRoute(
            page: EventDetails.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),

            // cart 
        CustomRoute(
            page: CartRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),

            // custom web view
        CustomRoute(
            page: CustomWebRoute.page,

            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),

            // booked ticket details


        CustomRoute(
            page: BookedTicketDeatils.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),


            // checkout page
                CustomRoute(
            page: CheckoutRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
                 
            durationInMilliseconds: 500),


// profile page
             CustomRoute(
            page: ProfileRoute.page,
       
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),

// detailed most popular page
            
             CustomRoute(
            page: DetailedMostPopularRoute.page,
        
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),

            
            // add to cart page
       
             
             CustomRoute(
            page: AddToCartRoute.page,
          
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 500),
      ];
}
