import 'package:look_up_demo_app/features/home/domain/entities/image_data_model.dart';

class AppConstants {
  // local cache keys
  static const String tokenKey = 'savedTokenKey';

  // Social media login asset paths
  static const String gmailIconPath = 'assets/icons/gmail_icon.svg';
  static const String facebookIconPath = 'assets/icons/facebook_icon.svg';
  static const String xIconPath = 'assets/icons/x_icon.svg';

  // Pre loader home screen asset path
  static const String hiPath = 'assets/images/hi_image.png';
  static const String interestPath = 'assets/images/interest_group.png';

  // home screen image list
  static List<ImageDataModel> imageList = [
    ImageDataModel(
      imageId: '001',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702874197/personal-contents/eeouqzdztnx14e5pf0uw.jpg',
      userName: "techNerdy",
      caption: "hello guys",
    ),
    ImageDataModel(
      imageId: '002',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702874196/personal-contents/ykospdbwihmhqldtrp4e.jpg',
      userName: "techNerdy1",
      caption: "hello guys",
    ),
    ImageDataModel(
      imageId: '003',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702874195/personal-contents/swomgteapkvgdtzil4nn.jpg',
      userName: "techNerdy2",
      caption: "hello guys",
    ),
    ImageDataModel(
      imageId: '004',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702874194/personal-contents/kgddggarwwamvrxyxuzw.jpg',
      userName: "techNerdy3",
      caption: "hello guys",
    ),
    ImageDataModel(
      imageId: '005',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702874194/personal-contents/feef2eltrb5hqsyf5zkr.jpg',
      userName: "techNerdy4",
      caption: "hello guys",
    ),
    ImageDataModel(
      imageId: '006',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702874194/personal-contents/rglcwaje4dyzexdiohow.jpg',
      userName: "techNerdy5",
      caption: "hello guys",
    ),
  ];
}
