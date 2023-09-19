import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';







class EventTabView extends StatefulWidget {
  const EventTabView({super.key,
  required this.deviceSize
  });

  final Size deviceSize;

  @override
  State<EventTabView> createState() => _EventTabViewState();
}

class _EventTabViewState extends State<EventTabView> with SingleTickerProviderStateMixin {
    late TabController _tabController;
    @override
  void initState() {
        _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.deviceSize.height*0.4,
      margin: EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        children: [
          TabBar(
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.white,
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CustomColor.appBackbroundColor),
                      tabs: const [
                       Tab(
                            text: 'Event',
                          ),
                        
                        Tab(
                            text: 'Location',
                          ),
                  Tab(
                            text: 'Hotels',
                          ),
                      
                      
                      
                      ],
                    ),
                    const SizedBox(height: 2,),
         Expanded(
           child: TabBarView(
            controller: _tabController,
            children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
           ]),
         )

        ],
      ),
    );
  }
}