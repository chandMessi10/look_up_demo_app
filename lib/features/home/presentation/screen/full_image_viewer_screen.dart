import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';
import 'package:look_up_demo_app/features/home/domain/entities/image_data_model.dart';
import 'package:share_plus/share_plus.dart';

class FullImageViewerScreen extends StatefulWidget {
  final ImageDataModel imageData;

  const FullImageViewerScreen({
    required this.imageData,
    super.key,
  });

  @override
  State<FullImageViewerScreen> createState() => _FullImageViewerScreenState();
}

class _FullImageViewerScreenState extends State<FullImageViewerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffoldWidget(
        scaffoldBody: fullImagePageViewWidget(),
      ),
    );
  }

  Widget fullImagePageViewWidget() {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: widget.imageData.imageUrl,
          fit: BoxFit.cover,
          alignment: Alignment.center,
          height: size.height,
          placeholder: (context, url) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          errorWidget: (context, url, error) {
            return const Center(
              child: Text(
                'Error loading image.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  sizedBoxWidth(size.width * 0.015),
                  Container(
                    height: size.height * 0.03,
                    width: size.width * 0.004,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                  sizedBoxWidth(size.width * 0.015),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'For You',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.only(right: size.width * 0.03),
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      size: 48,
                    ),
                    color: Colors.white,
                  ),
                  sizedBoxHeight(size.height * 0.01),
                  IconButton(
                    onPressed: () {
                      Share.shareWithResult(widget.imageData.imageUrl);
                    },
                    icon: const Icon(
                      Icons.share,
                      size: 48,
                    ),
                    color: Colors.white,
                  ),
                  sizedBoxHeight(size.height * 0.01),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@${widget.imageData.userName}',
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.imageData.caption,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            sizedBoxHeight(size.height * 0.01),
          ],
        ),
      ],
    );
  }
}
