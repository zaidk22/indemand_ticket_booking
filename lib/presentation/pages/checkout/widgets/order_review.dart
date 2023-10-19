
import 'package:flutter/material.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/custom_textstyle.dart';

class OrderReview extends StatelessWidget {
  const OrderReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        const SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              5,
              (index) => Card(
               color: Colors.transparent,
           
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Vaccinations', style: CustomTextStyle.labelTextStyle),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Ticket Type: ', style: CustomTextStyle.labelTextStyle),
                            Expanded(child: Text('Standard', style: CustomTextStyle.labelTextStyle))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Quantity: ', style: CustomTextStyle.labelTextStyle),
                            Expanded(child: Text('2', style: CustomTextStyle.labelTextStyle))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Price: ', style: CustomTextStyle.labelTextStyle),
                            Expanded(child: Text('£ 20.00 ', style: CustomTextStyle.labelTextStyle))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Booking fee: ', style: CustomTextStyle.labelTextStyle),
                            Expanded(child: Text('£ 2.00 ', style: CustomTextStyle.labelTextStyle))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Total: ', style: CustomTextStyle.labelTextStyle),
                            Expanded(child: Text('£ 22.00 ', style: CustomTextStyle.labelTextStyle))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
