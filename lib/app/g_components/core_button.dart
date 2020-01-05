import 'package:clock_of_clocks_website/app/g_styles/colors.dart';
import 'package:flutter/material.dart';

class CoreButton extends StatefulWidget {
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final Gradient gradient;
  final BorderRadius borderRadius;
  final Function onTap;

  CoreButton({
    @required this.child,
    @required this.onTap,
    this.width,
    this.height,
    this.color,
    this.gradient,
    this.borderRadius,
  });

  @override
  _CoreButtonState createState() => _CoreButtonState();
}

class _CoreButtonState extends State<CoreButton> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(borderRadius: widget.borderRadius),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: widget.color,
            gradient: widget.gradient,
            borderRadius: widget.borderRadius,
          ),
          child: InkWell(
            onTap: () => widget.onTap(),
            borderRadius: widget.borderRadius,
            splashColor: themeBasedColor(
              context,
              PaletteColor.buttonSplashColor,
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
