import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';


class TicketTile extends StatelessWidget {
  const TicketTile({super.key, required this.deviceSize});
  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: deviceSize.height * 0.24,
      child: Column(
        children: [
          Column(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      ImageConstant.dummyCardImg,
                      fit: BoxFit.cover,
                      height: deviceSize.height * 0.12,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(10))),
                width: double.infinity,
                height: deviceSize.height * 0.12,
                child: Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "In Demand Radio live at Punch Tarmeys",
                        style: CustomTextStyle.subtitleBlackTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                            "London Street 4",
                            style: CustomTextStyle.subtitleBlackMinTextStyle,
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                            "Fri 7th April",
                            style: CustomTextStyle.subtitleBlackMinTextStyle,
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
