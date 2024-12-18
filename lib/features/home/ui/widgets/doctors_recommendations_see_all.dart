import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DoctorsRecommendationsSeeAll extends StatelessWidget {
  const DoctorsRecommendationsSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Recommendations',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: TextStyles.font12BlueRegular,
          ),
        ),
      ],
    );
  }
}
