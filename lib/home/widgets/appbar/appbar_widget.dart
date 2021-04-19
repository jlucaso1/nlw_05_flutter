import 'package:flutter/material.dart';
import 'package:nlw_5/core/app_colors.dart';
import 'package:nlw_5/core/app_gradients.dart';
import 'package:nlw_5/core/app_images.dart';
import 'package:nlw_5/core/app_text_styles.dart';
import 'package:nlw_5/home/widgets/score_card/score_card_widget.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            decoration: BoxDecoration(color: AppColors.white),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  height: 161,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: "Olá, ",
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                text: "jlucaso",
                                style: AppTextStyles.titleBold,
                              ),
                            ]),
                      ),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/55464917?v=4"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 1),
                  child: ScoreCardWidget(),
                )
              ],
            ),
          ),
        );
}
