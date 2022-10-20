import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.title,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  final String? title;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(widget.title ?? ''),
      actions: [
        PopupMenuButton(
          icon: const Icon(Icons.more_horiz),
          itemBuilder: (_) => [
            const PopupMenuItem<int>(
              value: 0,
              child: Text('Opções'),
            ),
          ],
        )
      ],
    );
  }
}
