import 'dart:math';

import 'package:look_up_demo_app/features/home/domain/entities/image_data_model.dart';

List<ImageDataModel> shuffleList(List<ImageDataModel> list) {
  final random = Random();
  List<ImageDataModel> shuffledList =
      List.from(list); // Create a copy of the original list

  for (var i = shuffledList.length - 1; i > 0; i--) {
    // Generate a random index between 0 and i (inclusive)
    var randomIndex = random.nextInt(i + 1);

    // Swap the elements at randomIndex and i
    var temp = shuffledList[i];
    shuffledList[i] = shuffledList[randomIndex];
    shuffledList[randomIndex] = temp;
  }

  return shuffledList;
}
