import 'dart:async';

import 'package:flutter/material.dart';

class CustomImageSlider extends StatefulWidget {
  late List<String> images;
  late bool useLocalAssetImages;
  late Duration duration;
  late double width;
  late double height;

  CustomImageSlider({
    required this.images,required this.useLocalAssetImages,required this.duration, required this.width,required this.height
});

  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {

  PageController controller = new PageController();
  double currentPageValue = 0.0;
  late Timer timer;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });

    timer = Timer.periodic(widget.duration, (timer) {
      if(currentPageValue==widget.images.length-1)
        controller.jumpToPage(0);
        else
        controller.jumpToPage(currentPageValue.toInt()+1);
      });
      super.initState();
  }


  @override
  void dispose() {
      timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        controller: controller,
        itemBuilder: (context, index) {
          return widget.useLocalAssetImages
              ? Image(
                  image: AssetImage(widget.images[index]),
                  height: widget.height,
                  width: widget.width,
                  fit: BoxFit.fill,
                )
              : Image(
                  image: NetworkImage(widget.images[index]),
                  height: widget.height,
                  width: widget.width,
                  fit: BoxFit.fill,
                );
        },
        itemCount: widget.images.length,
      ),
    );
  }
}
