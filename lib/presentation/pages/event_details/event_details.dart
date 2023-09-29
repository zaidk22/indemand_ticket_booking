import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/application/Events/event_bloc.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_auth_button.dart';
import 'package:indemand_ticket_booking/presentation/pages/event_details/widgets/event_details_card.dart';
import 'package:indemand_ticket_booking/presentation/pages/event_details/widgets/tab_view.dart';
import 'package:indemand_ticket_booking/routes/routes.gr.dart';

import 'widgets/image_details_widget.dart';

@RoutePage()
class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: BlocBuilder<EventsBloc, EventsState>(

        builder: (context,state) {
          return Scaffold(
           // backgroundColor: CustomColor.eventBackgroundColor,
            appBar: null,
            body: ListView(
              children: [
               EventImageWidget(deviceSize: deviceSize,
               imageUrl: state.eventDetails?[0].image_url,
               ),
                const SizedBox(height: 10,),
                const EventDetailCard(),
    
                    const SizedBox(height: 10,),
    
                   EventTabView(deviceSize: deviceSize),
              ],
            ),
          
          bottomNavigationBar: BottomAppBar(
           
            color: Colors.transparent,
           clipBehavior: Clip.none, 
            height: 50,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("from \$ 100",style: CustomTextStyle.subtitleBlackMinTextStyle,),
                CustomAuthButton(text: "Book Now",
                onTap: () {
                    AutoRouter.of(context).push(const AddToCartRoute());
                },
                )
              ],
            ),
          ),
          );
        }
      ),
    );
  }
}