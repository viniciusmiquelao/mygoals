import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    this.text,
    this.onPressed,
    this.borderSide,
    this.color,
    this.textStyle,
    this.loading,
    this.height = 45,
    this.width = 150,
    this.borderRadius,
    Brightness brightness = Brightness.dark,
  }) : super(key: key);

  final String? text;
  final TextStyle? textStyle;
  final Color? color;
  final BorderSide? borderSide;
  final VoidCallback? onPressed;
  final bool? loading;
  final double? height;
  final double? width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    // final newTextStyle = const TextStyle(
    //   fontFamily: 'Lato',
    //   fontSize: 16,
    //   fontWeight: FontWeight.bold,
    // ).merge(textStyle);

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ).copyWith(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? height! / 2),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: onPressed,
        child: Text(
          text!,
          maxLines: 1,

          style: Theme.of(context).textTheme.button,
          //style: newTextStyle,
        ),
      ),
    );
  }
}
