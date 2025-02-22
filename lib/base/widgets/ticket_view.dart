import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // Blue part of ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // Show departute and destination with icons first line
                  Row(
                    children: [
                      TextStyleThird(
                        text: "NYC",
                        textAlign: TextAlign.start,
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDivider: 6)),
                          Center(
                              child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(Icons.local_airport_rounded,
                                color: Colors.white),
                          )),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(
                        text: "LDN",
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  // Show departute and destination names with time second line
                  Row(children: [
                    SizedBox(
                      width: 100,
                      child: const TextStyleFourth(
                        text: "New-York",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "8H 30M",
                      style: AppStyles.headlineStyle3
                          .copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      width: 100,
                      child: const TextStyleFourth(
                        text: "London",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ])
                ],
              ),
            ),
            // Dotted line on ticket
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            // Orange part of ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // Show departute and destination with icons first line
                  Row(children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        "1 MAY",
                        style: AppStyles.headlineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "08:00 AM",
                      style: AppStyles.headlineStyle3
                          .copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "23",
                        textAlign: TextAlign.end,
                        style: AppStyles.headlineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 3),
                  // Show departute and destination names with time second line
                  Row(children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        "Date",
                        style: AppStyles.headlineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Departure time",
                      style: AppStyles.headlineStyle3
                          .copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "Number",
                        textAlign: TextAlign.end,
                        style: AppStyles.headlineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
