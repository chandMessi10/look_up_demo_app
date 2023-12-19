import 'package:look_up_demo_app/features/home/domain/entities/image_data_model.dart';

class AppConstants {
  // local cache keys
  static const String tokenKey = 'savedTokenKey';

  // App branding logos
  static const String appLogoPath = 'assets/icons/lookup_logo.svg';
  static const String trendingIconPath = 'assets/icons/trending_icon.svg';
  static const String popularIconPath = 'assets/icons/popular_icon.svg';
  static const String latestIconPath = 'assets/icons/latest_icon.svg';
  static const String followingIconPath = 'assets/icons/following_icon.svg';
  static const String tableMenuIconPath = 'assets/icons/table_menu_deep.svg';
  static const String qrScanIconPath = 'assets/icons/qr_scan_icon.svg';
  static const String searchIconPath = 'assets/icons/search_icon.svg';

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
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702959615/look-demo-ai-images/sqepjw9xzihrulmxylwi.jpg',
      userName: "model_0",
      caption: "hello zero",
    ),
    ImageDataModel(
      imageId: '002',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702959615/look-demo-ai-images/wfg3imuv67iowdfusqag.jpg',
      userName: "model_01",
      caption: "hello one",
    ),
    ImageDataModel(
      imageId: '003',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702959615/look-demo-ai-images/a26s4skckrzodapmyn0o.jpg',
      userName: "model_02",
      caption: "hello two",
    ),
    ImageDataModel(
      imageId: '004',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702959614/look-demo-ai-images/yrmrg6s5bt9ml7koxyef.jpg',
      userName: "model_03",
      caption: "hello three",
    ),
    ImageDataModel(
      imageId: '005',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702959614/look-demo-ai-images/rn3kngf6nke25gwfhfkw.jpg',
      userName: "model_04",
      caption: "hello four",
    ),
    ImageDataModel(
      imageId: '006',
      imageUrl:
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1702959613/look-demo-ai-images/wh3vqsriqmcvzkj8pjkh.jpg',
      userName: "model_05",
      caption: "hello five",
    ),
  ];
}
