import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/features/home/domain/entities/image_data_model.dart';
import 'package:look_up_demo_app/features/home/presentation/screen/full_image_viewer_screen.dart';

class ImageListWidget extends StatelessWidget {
  const ImageListWidget({
    required this.title,
    required this.imageList,
    super.key,
  });

  final String title;
  final List<ImageDataModel> imageList;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xFF3F3C3C),
            ),
          ),
        ),
        sizedBoxHeight(size.height * 0.01),
        SizedBox(
          height: size.height * 0.2,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return sizedBoxWidth(size.width * 0.01);
            },
            itemCount: imageList.length,
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            itemBuilder: (context, index) {
              final imageData = imageList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullImageViewerScreen(
                        imageData: imageData,
                      ),
                    ),
                  );
                },
                child: CachedNetworkImage(
                  imageUrl: imageData.imageUrl,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
