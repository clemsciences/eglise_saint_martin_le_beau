// import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:eglise_saint_martin_le_beau/routes/router_extension.dart';
import 'package:eglise_saint_martin_le_beau/routes/saint_martin_le_beau_routes.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

// import 'package:panorama_viewer/panorama_viewer.dart';
// import 'package:panorama_viewer_plus/panorama_viewer_plus.dart';

class ChurchViewer extends StatefulWidget {
  ChurchViewer({super.key});

  final PageController pageController = PageController();

  @override
  State<ChurchViewer> createState() => _ChurchViewerState();
}

class _ChurchViewerState extends State<ChurchViewer> {
  @override
  Widget build(BuildContext context) {
    // return PanoramaViewer(
    //   // child: Image.asset("images/panoramique/PXL_20250721_161025656.PANO.jpg"),
    //   child: Image.asset("images/panoramique/PXL_20250721_161025656.PANO_mini.jpg"),
    // );
    // return CustomPanoramaViewer(
    //   imagePath: "images/panoramique/PXL_20250721_161025656.PANO.jpg",
    //   isAssetImage: true,
    //   height: MediaQuery.of(context).size.height * 0.9,
    // );
    // var multiImageProvider = MultiImageProvider([
    //   // Image.asset("images/panoramique/PXL_20250721_161025656.PANO.jpg").image,
    //   Image.asset(
    //     "images/panoramique/PXL_20250721_161025656.PANO_mini.jpg",
    //   ).image,
    //   Image.asset(
    //     "images/panoramique/PXL_20250721_161226630.PANO_mini.jpg",
    //   ).image,
    //   Image.asset(
    //     "images/panoramique/PXL_20250721_161330129.PANO_mini.jpg",
    //   ).image,
    //   Image.asset(
    //     "images/panoramique/PXL_20250721_161420475.PANO_mini.jpg",
    //   ).image,
    // ]);
    // showImageViewerPager(
    //   context,
    //   multiImageProvider,
    //   immersive: false,
    //   useSafeArea: true,
    //   onPageChanged: (pageId) {
    //     print(pageId);
    //   },
    //   onViewerDismissed: (i) {
    //     context.pop();
    //   },
    //   doubleTapZoomable: true,
    // );
    // return PhotoView(
    //
    //   imageProvider: Image.asset(
    //         "images/panoramique/PXL_20250721_161025656.PANO_mini.jpg",
    //       ).image,
    // );
    var galleryItems = [
      Image.asset(
        "assets/images/panoramique/PXL_20250721_161025656.PANO_mini.jpg",
      ).image,
      Image.asset(
        "assets/images/panoramique/PXL_20250721_161226630.PANO_mini.jpg",
      ).image,
      Image.asset(
        "assets/images/panoramique/PXL_20250721_161330129.PANO_mini.jpg",
      ).image,
      Image.asset(
        "assets/images/panoramique/PXL_20250721_161420475.PANO_mini.jpg",
      ).image,
    ];

    return Container(
      child: Stack(
        children: [
          PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            allowImplicitScrolling: true,
            pageController: widget.pageController,

            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: galleryItems[index],
                initialScale: PhotoViewComputedScale.contained * 0.8,
                heroAttributes: PhotoViewHeroAttributes(tag: "tag$index"),
              );
            },
            itemCount: galleryItems.length,
            loadingBuilder: (context, event) => Center(
              child: Container(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(
                  value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded /
                            (event.expectedTotalBytes ?? 1),
                ),
              ),
            ),
            // backgroundDecoration: backgroundDecoration,
            // pageController: pageController,
            // onPageChanged: onPageChanged,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                context.goPush(SaintMartinLeBeauRoutes.main);
              },
              icon: Icon(Icons.home, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                final page = widget.pageController.page;
                if (page != null && page >= 1.0) {
                  widget.pageController.previousPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                }
              },
              icon: Icon(Icons.arrow_left, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                final page = widget.pageController.page;
                if (page != null && page < (galleryItems.length - 1)) {
                  widget.pageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                }
              },
              icon: Icon(Icons.arrow_right, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.pageController.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
