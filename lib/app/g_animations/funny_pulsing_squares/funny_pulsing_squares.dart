import 'package:flutter/material.dart';

class FunnyPulsingSquares extends StatefulWidget {
  const FunnyPulsingSquares({
    Key key,
    this.color,
    this.size = 100.0,
    this.duration = const Duration(milliseconds: 1875),
  })  : assert(color != null),
        super(key: key);

  final Color color;
  final double size;
  final Duration duration;

  @override
  _FunnyPulsingSquaresState createState() => _FunnyPulsingSquaresState();
}

class _FunnyPulsingSquaresState extends State<FunnyPulsingSquares>
    with TickerProviderStateMixin {
  AnimationController _scaleController, _rotationController;
  Animation<double> _scale, _rotation;

  @override
  void initState() {
    super.initState();

    _scaleController =
        AnimationController(duration: widget.duration, vsync: this)
          ..addListener(() => setState(() {}))
          ..repeat(reverse: true);

    _scale = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _scaleController,
        curve: Curves.easeInExpo,
      ),
    );

    _rotationController =
        AnimationController(vsync: this, duration: widget.duration)
          ..addListener(() => setState(() {}))
          ..repeat(reverse: true);

    _rotation = Tween(begin: 0.0, end: 360.0).animate(
      CurvedAnimation(
        parent: _rotationController,
        curve: Curves.elasticOut,
      ),
    );
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size.square(widget.size),
        child: Transform.rotate(
          angle: _rotation.value * 0.0174533,
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                child: _box(1.0 - _scale.value.abs()),
              ),
              Positioned(
                bottom: 0.0,
                child: _box(_scale.value.abs()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _box(double scale) {
    return Transform.scale(
      scale: scale,
      child: SizedBox.fromSize(
        size: Size.square(widget.size * 0.6),
        child: DecoratedBox(decoration: BoxDecoration(color: widget.color)),
      ),
    );
  }
}
