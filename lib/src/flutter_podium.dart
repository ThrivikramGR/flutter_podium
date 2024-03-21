import 'package:flutter/material.dart';
import 'package:flutter_podium/src/podium_bar.dart';

class Podium extends StatelessWidget {
  const Podium({
    super.key,
    required this.firstPosition,
    required this.secondPosition,
    required this.thirdPosition,
    this.height = 250,
    this.width = 110,
    this.horizontalSpacing = 3,
    this.color = Colors.blue,
    this.rankingTextColor = Colors.white,
    this.rankingFontSize = 50,
    this.is2D = false,
    this.hideRanking = false,
    this.showRankingNumberInsteadOfText = false,
    this.firstRankingText = " FIRST     ",
    this.secondRankingText = " SEC   ",
    this.thirdRankingText = " TH",
  });

  final Widget firstPosition;
  final Widget secondPosition;
  final Widget thirdPosition;
  final bool hideRanking;
  final bool showRankingNumberInsteadOfText;
  final double horizontalSpacing;
  final Color color;
  final double height;
  final double width;
  final String firstRankingText;
  final String secondRankingText;
  final String thirdRankingText;
  final double rankingFontSize;
  final Color rankingTextColor;
  final bool is2D;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        PodiumBar(
          title: secondPosition,
          width: width,
          displayRankingNumberInsteadOfText: showRankingNumberInsteadOfText,
          hideRanking: hideRanking,
          rankingText: showRankingNumberInsteadOfText ? "2" : secondRankingText,
          backgroundColor: color,
          rankingTextStyle: TextStyle(
            fontSize: rankingFontSize,
            color: rankingTextColor,
            fontWeight: FontWeight.w600,
          ),
          height: height / 1.5,
          is2D: is2D,
        ),
        SizedBox(
          width: horizontalSpacing,
        ),
        PodiumBar(
          title: firstPosition,
          width: width,
          displayRankingNumberInsteadOfText: showRankingNumberInsteadOfText,
          hideRanking: hideRanking,
          rankingText: showRankingNumberInsteadOfText ? "1" : firstRankingText,
          backgroundColor: color,
          rankingTextStyle: TextStyle(
            fontSize: rankingFontSize,
            color: rankingTextColor,
            fontWeight: FontWeight.w600,
          ),
          height: height,
          is2D: is2D,
        ),
        SizedBox(
          width: horizontalSpacing,
        ),
        PodiumBar(
          title: thirdPosition,
          width: width,
          displayRankingNumberInsteadOfText: showRankingNumberInsteadOfText,
          hideRanking: hideRanking,
          rankingText: showRankingNumberInsteadOfText ? "3" : thirdRankingText,
          backgroundColor: color,
          rankingTextStyle: TextStyle(
            fontSize: rankingFontSize,
            color: rankingTextColor,
            fontWeight: FontWeight.w600,
          ),
          height: height / 2.5,
          is2D: is2D,
        ),
      ],
    );
  }
}
