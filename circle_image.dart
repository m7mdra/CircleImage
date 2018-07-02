import 'package:flutter/material.dart';

class CircleImage extends StatefulWidget {
  final ImageProvider image;
  final double width;
  final double height;

  const CircleImage(this.image, this.width, this.height, {Key key})
      : super(key: key);
  @override
  _CircleImageState createState() => _CircleImageState();
}

class _CircleImageState extends State<CircleImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: widget.image)));
  }
}

class CircleNetworkImage extends CircleImage {
  CircleNetworkImage(NetworkImage image, double width, double height)
      : super(image, width, height);
}

class CircleAssetImage extends CircleImage {
  CircleAssetImage(AssetImage image, double width, double height)
      : super(image, width, height);
}

class CircleFileImage extends CircleImage {
  CircleFileImage(FileImage image, double width, double height)
      : super(image, width, height);
}

class CircleMemeoryImage extends CircleImage {
  CircleMemeoryImage(MemoryImage image, double width, double height)
      : super(image, width, height);
      
}
