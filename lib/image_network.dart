import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({Key? key, required this.url, this.height, this.width, this.borderRadius, this.fit}) : super(key: key);
 final String url;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius??BorderRadius.circular(20),
      child: Image.network(url,
        fit: fit??BoxFit.contain,
        height: height,
        width: width,
        errorBuilder: (context, url, error) {
          return Image.asset('assets/images/logo.png',fit: BoxFit.cover,height: double.infinity,width: double.infinity,);
        },
        loadingBuilder: (context, url, downloadProgress) {
          if (downloadProgress == null) return url;
          return Container(
            alignment: Alignment.center,
            child: const CircularProgressIndicator(),
          );
        },

      ),
    );
  }
}
