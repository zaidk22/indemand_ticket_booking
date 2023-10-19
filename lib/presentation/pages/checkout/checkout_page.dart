import 'dart:async';

import 'package:accordion/accordion.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/application/timer/timer_bloc.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/utils/custom_functions.dart';
import 'package:indemand_ticket_booking/presentation/pages/checkout/widgets/attendees_widget.dart';
import 'package:indemand_ticket_booking/presentation/pages/checkout/widgets/billing_info.dart';
import 'package:indemand_ticket_booking/presentation/pages/checkout/widgets/order_review.dart';
import 'package:indemand_ticket_booking/routes/routes.gr.dart';

@RoutePage()
class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  Timer? periodicTimer;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    if (periodicTimer != null) {
      periodicTimer!.cancel();
    }

    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    periodicTimer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (context.read<TimerBloc>().state.countDownTimer == 0) {
          timer.cancel();
        } else {
          context.read<TimerBloc>().add(const TimerEvent.countDownTimer());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.appBackbroundColor,
        title: Text('Checkout', style: CustomTextStyle.appTitleTextStyle),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Align children to the left and right
              children: [
                Text('Time Remaining to checkout',
                    style: CustomTextStyle.labelTextStyle),
                BlocListener<TimerBloc, TimerState>(
                  listener: (context, state) {
                  if(state.countDownTimer==0){
                    AutoRouter.of(context).replace(const DashBoard());
                  }
                  },
                  child: BlocBuilder<TimerBloc, TimerState>(
                    buildWhen: (previous, current) {
                      return previous.countDownTimer != current.countDownTimer;
                    },
                    builder: (context, state) {
                      return Text('🕑  ${CustomFunctions.formatDuration(state.countDownTimer)}',
                          style: CustomTextStyle.labelTextStyle);
                    },
                  ),
                ),
              ],
            ),
          ),

           Accordion(
              
               headerBorderColor: CustomColor.containerColor,
            headerBorderColorOpened: Colors.transparent,
            headerBackgroundColor: CustomColor.containerColor,
            // headerBorderWidth: 1,
            headerBackgroundColorOpened: Colors.orange,
            contentBackgroundColor: CustomColor.appBackbroundColor,
            contentBorderColor: Colors.green,
            contentBorderWidth: 3,
            contentHorizontalPadding: 20,
            scaleWhenAnimating: true,
            openAndCloseAnimation: true,
            headerPadding:
                const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              children: [
         AccordionSection(
                contentVerticalPadding: 20,
                leftIcon:
                    const Icon(Icons.person_2, color: Colors.white),
                header:  Text('Please enter name of all Attendees', style: CustomTextStyle.labelTextStyle),
                content:  const SingleChildScrollView(
                
            
                  child: AttendeesWidget(),
              )),
           AccordionSection(
                contentVerticalPadding: 20,
                leftIcon:
                    const Icon(Icons.money_rounded, color: Colors.white),
                header:  Text('Billing information', style: CustomTextStyle.labelTextStyle),
                content:  const  BillingInfo(),
              ),
                 AccordionSection(
                contentVerticalPadding: 20,
                leftIcon:
                    const Icon(Icons.online_prediction_rounded, color: Colors.white),
                header:  Text('Order Review', style: CustomTextStyle.labelTextStyle),
                content: const OrderReview(),
              ),
            ]),
          
         
         
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: CustomColor.appBackbroundColor,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Total Amount :  \$200000',
                    style: CustomTextStyle.labelTextStyle,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange)),
                      onPressed: () {},
                      child: Text(
                        'Procced to Pay',
                        style: CustomTextStyle.labelTextStyle,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
