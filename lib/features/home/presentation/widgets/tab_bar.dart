import 'dart:math';

import 'package:flutter/material.dart';
import 'package:news_app/core/theme/app_colors.dart';

class NewsTabBar extends StatelessWidget {
  const NewsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.darkGreyColor,
                borderRadius: BorderRadius.circular(10),
              ),

              child: TabBar(
                dividerColor: Colors.transparent,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                mouseCursor: MouseCursor.defer,

                indicatorPadding: const EdgeInsets.all(5),
                indicatorAnimation: TabIndicatorAnimation.elastic,
                splashBorderRadius: BorderRadius.circular(10),
                indicatorColor: AppColors.greenColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                // indicator: UnderlineTabIndicator(
                //   borderSide: BorderSide(color: AppColors.greenColor),
                // ),
                labelColor: AppColors.wihteColor,
                unselectedLabelColor: AppColors.wihteColor,
                tabs: const [
                  Tab(text: 'All News'),
                  Tab(text: 'Business'),
                  Tab(text: 'Entertainment'),
                  Tab(text: 'Sports'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      'All News',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(child: Text('Business')),
                  Center(child: Text('Entertainment')),
                  Center(child: Text('Sports')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
