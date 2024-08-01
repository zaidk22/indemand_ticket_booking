import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/application/Events/event_bloc.dart';

import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/home/widgets/latest_event_tile.dart';

class LatestEvents extends StatelessWidget {
  const LatestEvents({super.key, required this.deviceSize});
  final Size deviceSize;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        // if(state.isLoading){
        //   return Center(child: SizedBox());
        // }
    return  SizedBox(
         height: deviceSize.height*0.33,
    
      width: deviceSize.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: state.latestEventList.length,
          itemBuilder: (context, index) => LatestEventTile(deviceSize: deviceSize,
          data: state.latestEventList[index],
          ),
        ),
      )
    ;

      },
    );
  }
}
