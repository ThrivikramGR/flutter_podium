import 'package:flutter/material.dart';
import 'package:podium/src/podium_bar.dart';

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
    this.hideRanking = false,
    this.displayRankingNumberInsteadOfText = false,
    this.firstRankingText = " FIRST     ",
    this.secondRankingText = " SEC   ",
    this.thirdRankingText = " TH",
  });

  final Widget firstPosition;
  final Widget secondPosition;
  final Widget thirdPosition;
  final bool hideRanking;
  final bool displayRankingNumberInsteadOfText;
  final double horizontalSpacing;
  final Color color;
  final double height;
  final double width;
  final String firstRankingText;
  final String secondRankingText;
  final String thirdRankingText;
  final double rankingFontSize;
  final Color rankingTextColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        PodiumBar(
          title: secondPosition,
          width: width,
          displayRankingNumberInsteadOfText: displayRankingNumberInsteadOfText,
          hideRanking: hideRanking,
          rankingText:
              displayRankingNumberInsteadOfText ? "2" : secondRankingText,
          backgroundColor: color,
          rankingTextStyle: TextStyle(
            fontSize: rankingFontSize,
            color: rankingTextColor,
            fontWeight: FontWeight.w600,
          ),
          height: height / 1.5,
        ),
        SizedBox(
          width: horizontalSpacing,
        ),
        PodiumBar(
          title: firstPosition,
          width: width,
          displayRankingNumberInsteadOfText: displayRankingNumberInsteadOfText,
          hideRanking: hideRanking,
          rankingText:
              displayRankingNumberInsteadOfText ? "1" : firstRankingText,
          backgroundColor: color,
          rankingTextStyle: TextStyle(
            fontSize: rankingFontSize,
            color: rankingTextColor,
            fontWeight: FontWeight.w600,
          ),
          height: height,
        ),
        SizedBox(
          width: horizontalSpacing,
        ),
        PodiumBar(
          title: thirdPosition,
          width: width,
          displayRankingNumberInsteadOfText: displayRankingNumberInsteadOfText,
          hideRanking: hideRanking,
          rankingText:
              displayRankingNumberInsteadOfText ? "3" : thirdRankingText,
          backgroundColor: color,
          rankingTextStyle: TextStyle(
            fontSize: rankingFontSize,
            color: rankingTextColor,
            fontWeight: FontWeight.w600,
          ),
          height: height / 2.5,
        ),
      ],
    );
  }
}
