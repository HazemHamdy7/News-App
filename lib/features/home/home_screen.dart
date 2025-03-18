import 'package:flutter/material.dart';
import 'package:news_app/core/theme/app_colors.dart';
import 'package:news_app/core/theme/app_text_styles.dart';
import 'package:news_app/features/home/presentation/widgets/carousel_with_indicator.dart';
import 'package:news_app/features/home/presentation/widgets/tab_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello Hazem', style: AppTextStyles.font18SemiBold),
                      SizedBox(height: 5),
                      Text(
                        'Have a nine day',
                        style: AppTextStyles.font12Reguler,
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: AppColors.wihteColor,
                    ),
                  ),
                ],
              ),
            ),
            CarouselWithIndicator(),
            NewsTabBar(),
          ],
        ),
      ),
    );
  }
}
