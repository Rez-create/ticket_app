import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            // child: Text("Hello Home screen"),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good morning",
                              style: AppStyles.headlineStyle2,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Book Tickets",
                              style: AppStyles.headlineStyle,
                            ),
                          ],
                        ),
                        Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(AppMedia.logo),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 23),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                      ),
                      child: const Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFBFC205),
                          ),
                          Text("Search"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const AppDoubleText(
                      bigText: 'Upcoming Flights',
                      smallText: 'View all',
                    ),
                    const SizedBox(height: 20),
                    TicketView()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
