import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/application/latestEvents/latest_event_bloc.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/share_file.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/home/widgets/latest_event_tile.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';

class LatestEvents extends StatelessWidget {
  const LatestEvents({super.key, required this.deviceSize});
  final Size deviceSize;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        if(state.isLoading){
          return Center(child: SizedBox());
        }
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
