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

  ///Defines the widget for the first position podium in the center.
  final Widget firstPosition;

  ///Defines the widget for the second position podium to the left.
  final Widget secondPosition;

  ///Defines the widget for the third position podium to the right
  final Widget thirdPosition;

  ///Hides both numeric and text ranking inside the podium bars
  final bool hideRanking;

  ///Displays numeric rankings instead of text based rankings
  final bool showRankingNumberInsteadOfText;

  ///Horizontal spacing between each of the podium bars
  final double horizontalSpacing;

  ///Defines the color of all 3 of the podium bars.
  final Color color;

  ///Defines the height of the first position podium bar (max height), consequently defining the heights of the other two bars,
  ///as a fraction of the defined height.
  final double height;

  ///Defines the width of a podium bar
  final double width;

  ///Defines the first position ranking text inside the podium bar.
  ///NEEDS LEADING AND TRAILING SPACES TO ENSURE PROPER ALIGNMENT.
  final String firstRankingText;

  ///Defines the second position ranking text inside the podium bar.
  ///NEEDS LEADING AND TRAILING SPACES TO ENSURE PROPER ALIGNMENT.
  ///
  final String secondRankingText;

  ///Defines the third position ranking text inside the podium bar.
  ///NEEDS LEADING AND TRAILING SPACES TO ENSURE PROPER ALIGNMENT.
  final String thirdRankingText;

  ///Defines the font size of the ranking displayed inside a podium bar.
  final double rankingFontSize;

  ///Defines the font color of the ranking displayed inside a podium bar.
  final Color rankingTextColor;

  ///Make the podium 2D instead of 3D.
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
