import 'package:flutter/material.dart';
import 'package:template_web/widgets/hover/translate_on_hover.dart';
import 'package:universal_html/html.dart' as html;

extension HoverExtensions on Widget {
  static final appContainer = html.Element.tag('body');
  // html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      onHover: (event) => appContainer.style.cursor = 'pointer',
      onExit: (event) => appContainer.style.cursor = 'default',
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }
}
