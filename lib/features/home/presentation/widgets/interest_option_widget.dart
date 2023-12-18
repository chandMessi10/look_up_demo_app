import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/constants.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';

class InterestOptionWidget extends StatelessWidget {
  InterestOptionWidget({super.key});

  final List<String> interestItems = [
    'Fashion and beauty',
    'Information Tech',
    'Workout',
    'Dance',
    'Dating',
    'Business',
    'Foodies',
    'Politics',
    'Social Service',
    'Entertainment',
    'Sports',
    'New gift ideas',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.035,
        vertical: size.height * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: size.height * 0.05,
            width: size.width * 0.09,
            child: Image.asset(
              AppConstants.interestPath,
              height: size.height * 0.09,
              width: size.width * 0.09,
              alignment: Alignment.center,
            ),
          ),
          sizedBoxHeight(size.height * 0.01),
          const Text(
            "Today's interest ?",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xFF443D3D)),
          ),
          sizedBoxHeight(size.height * 0.028),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: interestItems.map((item) {
              return Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 8,
                  ),
                  child: Text(
                    item,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF615757),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          // sizedBoxHeight(size.height * 0.047),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    sizedBoxWidth(size.width * 0.01),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
