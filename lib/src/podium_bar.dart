import 'package:flutter/material.dart';

class PodiumBar extends StatelessWidget {
  const PodiumBar({
    super.key,
    required this.title,
    required this.width,
    required this.displayRankingNumberInsteadOfText,
    required this.hideRanking,
    required this.rankingText,
    required this.backgroundColor,
    required this.rankingTextStyle,
    required this.height,
  });

  final Widget title;
  final double width;
  final bool displayRankingNumberInsteadOfText;
  final bool hideRanking;
  final String rankingText;
  final Color backgroundColor;
  final TextStyle rankingTextStyle;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        title,
        const SizedBox(
          height: 10,
        ),
        RotatedBox(
          quarterTurns: 2,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.02)
              ..rotateX(3.14 / 10),
            alignment: FractionalOffset.center,
            child: Container(
              height: 10,
              width: width - 3,
              color: backgroundColor.withOpacity(0.9),
            ),
          ),
        ),
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Row(
            mainAxisAlignment: displayRankingNumberInsteadOfText
                ? MainAxisAlignment.center
                : MainAxisAlignment.end,
            crossAxisAlignment: displayRankingNumberInsteadOfText
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              if (!hideRanking)
                RotatedBox(
                  quarterTurns: displayRankingNumberInsteadOfText ? 0 : 3,
                  child: Text(
                    rankingText,
                    style: rankingTextStyle,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
