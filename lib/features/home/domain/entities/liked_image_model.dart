class LikedImageModel {
  final String likedImageId;

  LikedImageModel({required this.likedImageId});

  Map<String, dynamic> toMap() {
    return {
      'likedImageId': likedImageId,
    };
  }
}
