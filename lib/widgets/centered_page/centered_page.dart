import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredPage extends StatelessWidget {
  final Widget child;
  const CenteredPage({
    super.key,
    required this.child,
  });

  Widget _buldPage(bool _isMobile) {
    return Container(
      // padding: _isMobile
      //     ? null
      //     : const EdgeInsets.symmetric(horizontal: 95, vertical: 95),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1600),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => _buldPage(true),
      tablet: (context) => _buldPage(true),
      desktop: (context) => _buldPage(false),
    );
  }
}
