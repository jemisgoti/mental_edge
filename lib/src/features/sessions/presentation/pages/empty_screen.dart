import 'package:flutter/material.dart';
import 'package:mental_edge/src/core/widgets/text_widgets.dart';

class EmptyScreen extends StatefulWidget {
  const EmptyScreen({this.title = '', super.key});
  final String title;
  @override
  State<EmptyScreen> createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ColoredBox(
      color: Colors.white,
      child: Center(child: TitleText(widget.title)),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
