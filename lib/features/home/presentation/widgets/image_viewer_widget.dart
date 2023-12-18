import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/features/home/domain/entities/image_data_model.dart';

class FullImageViewer extends StatefulWidget {
  final List<String>? imageList;
  final ImageDataModel? imageData;

  const FullImageViewer({
    this.imageList,
    this.imageData,
    super.key,
  });

  @override
  State<FullImageViewer> createState() => _FullImageViewerState();
}

class _FullImageViewerState extends State<FullImageViewer> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // fullImagePageViewWidget(),
        fullSingleImageWidget(),
        imageOptionWidget(),
      ],
    );
  }

  Widget fullSingleImageWidget() {
    final size = MediaQuery.of(context).size;
    return CachedNetworkImage(
      imageUrl: widget.imageData?.imageUrl ?? '',
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
    );
  }

  Widget fullImagePageViewWidget() {
    final size = MediaQuery.of(context).size;
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.imageList!.length,
      onPageChanged: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      itemBuilder: (context, index) {
        return CachedNetworkImage(
          imageUrl: widget.imageList![index],
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
        );
      },
    );
  }

  Widget imageOptionWidget() {
    final size = MediaQuery.of(context).size;
    return Column(
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
                onPressed: () {},
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@Maiya_Menu',
                maxLines: 1,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                'Is my favourite song',
                maxLines: 2,
                style: TextStyle(
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
    );
  }
}
