import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/application/Events/event_bloc.dart';
import 'package:indemand_ticket_booking/presentation/core/utils/shimmer/image_shimmer.dart';
import 'package:indemand_ticket_booking/routes/routes.gr.dart';

import '../../../../../core/constants/custom_textstyle.dart';
import '../../../../../core/constants/image_constant.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc,EventsState>(
      builder: (context, state) {
        
        
        return SizedBox(
            height: deviceSize.height * 0.30,
            child: ListView.builder(
              itemCount: state.popularEventList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => AutoRouter.of(context)
                      .push(DetailedMostPopularRoute(title: 'Most Popular')),
                  child: Column(
                    children: [
                  Container(
  height: deviceSize.height * 0.25,
  width: deviceSize.width * 0.5,
  margin: const EdgeInsets.symmetric(horizontal: 20),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child: CachedNetworkImage(
      
      placeholder:  (_, __) => const ImageShimmer(),
            imageUrl: state.popularEventList[index].image_url ??
                ImageConstant.dummyNetworkImage,
             fit: BoxFit.cover
          ),
  ),
),
                      const SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "${state.popularEventList[index].event_name ?? ""}",
                          style: CustomTextStyle.titleTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ));
      },
    );
  }
}
