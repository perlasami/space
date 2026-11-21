import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Models extends StatelessWidget {
  final String name;
  final String? modelSrc;
  final String? altText;

  const Models({
    required this.name,
    super.key,
    this.modelSrc,
    this.altText,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedSrc = modelSrc ?? 'assets/models/${name.toLowerCase()}.glb';
    final resolvedAlt = altText ?? 'A 3D model of $name';

    return SizedBox(
      width: 343,
      height: 343,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: ModelViewer(
          backgroundColor: Colors.transparent,
          src: resolvedSrc,
          alt: resolvedAlt,
          ar: false,
          autoRotate: true,
          iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
          disableZoom: true,
        ),
      ),
    );
  }
}