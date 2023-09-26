import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/domain/latest_events/latest_event_model.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/share_file.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';







class LatestEventTile extends StatelessWidget {
  const LatestEventTile({
    super.key,
    required this.deviceSize,
    this.data
  });

  final Size deviceSize;
  final LatestEventsModel? data;

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(const EventDetails());
      },
      child: Container(
        decoration: BoxDecoration(
            //  color: Colors.red,
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: deviceSize.width * 0.5,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: deviceSize.height * .2,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(10)),
                      child: CachedNetworkImage(
                        imageUrl: data?.imageUrl ??'${ImageConstant.dummyNetworkImage}',
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    right: -2,
                    top: 0,
                    child: IconButton(
                        onPressed: () {
                          CustomShareFile.shareData(
                              "Hi Checkout this event",
                              'https://www.google.co.in/');
                        },
                        icon: const Icon(Icons.share_rounded))),
              ],
            ),
            Container(
              //height: deviceSize.height*0.1,
              width: double.infinity,

              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10))),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data?.title ?? 'In Demand Radio live at Punch Tarmeys',
                      style: CustomTextStyle.subtitleBlackTextStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      data?.minPrice ??"From Rs. 200",
                      style: CustomTextStyle.subtitleBlackTextStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}