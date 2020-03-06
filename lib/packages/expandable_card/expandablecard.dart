import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ExpandableCard extends StatefulWidget {
  ExpandableCard({
    @required this.children,
    this.header,
    this.padding = const EdgeInsets.only(top: 5),
    this.minHeight = 140,
    this.maxHeight = 500,
    this.hasShadow = true,
    this.backgroundColor = Colors.white,
    this.hasRoundedCorners = true,
    this.hasHandle = true,
    this.handleColor = Colors.black26,
  });

  final List<Widget> children;
  final Widget header;
  final EdgeInsetsGeometry padding;
  final double minHeight;
  final double maxHeight;
  final bool hasHandle;
  final Color handleColor;
  final bool hasShadow;
  final bool hasRoundedCorners;
  final Color backgroundColor;

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animationScrollPercent;
  bool _isAnimating = false;
  bool _cardIsExpanded = false;
  double _scrollPercent = 0;
  final _bounceOutCurve = Cubic(.04, .22, .1, 1.21);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  final Widget positionDebugContent = Column(
    children: <Widget>[Text("Hello world"), SizedBox(height: 50), Text("hi")],
  );

  void _startCardDrag(DragStartDetails details) {
    setState(() {
      _isAnimating = false;
    });
    _animationController.reset();
  }

  void _expandCard(DragUpdateDetails details) {
    final drag = details.delta.dy;
    if (drag < -0.3 && _scrollPercent < 1) {
      setState(() {
        _scrollPercent -= drag / 500;
      });
    } else if (drag > 0.3 && _scrollPercent > 0) {
      setState(() {
        _scrollPercent -= drag / 500;
      });
    }
  }

  void _endCardDrag(DragEndDetails details) {
    setState(() => _isAnimating = true);
    // BottomCard will animate
    if (!_cardIsExpanded &&
        (details.primaryVelocity < -500 || _scrollPercent > 0.6)) {
      _animationScrollPercent =
          Tween<double>(begin: _scrollPercent, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: _bounceOutCurve),
      );
      _animationController.forward();
      setState(() {
        _scrollPercent = 1.0;
        _cardIsExpanded = true;
      });
    } else if (_cardIsExpanded &&
        (details.primaryVelocity > 200 || _scrollPercent < 0.6)) {
      _animationScrollPercent =
          Tween<double>(begin: _scrollPercent, end: 0.0).animate(
        CurvedAnimation(parent: _animationController, curve: _bounceOutCurve),
      );
      _animationController.forward();
      setState(() {
        _scrollPercent = 0.0;
        _cardIsExpanded = false;
      });
    }
    // Card Slider will not expand
    else {
      if (_cardIsExpanded) {
        _animationScrollPercent =
            Tween<double>(begin: _scrollPercent, end: 1.0).animate(
          CurvedAnimation(parent: _animationController, curve: _bounceOutCurve),
        );
        _animationController.forward();
        setState(() => _scrollPercent = 1.0);
      } else {
        _animationScrollPercent =
            Tween<double>(begin: _scrollPercent, end: 0.0).animate(
          CurvedAnimation(parent: _animationController, curve: _bounceOutCurve),
        );
        _animationController.forward();
        setState(() => _scrollPercent = 0.0);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget _header = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Icon(
            Icons.remove,
            color: widget.handleColor,
            size: 45,
          ),
          transform: Matrix4.translationValues(0, -10.0, 0),
        ),
        Container(
          child: widget.header != null ? widget.header : Container(),
          transform: Matrix4.translationValues(0, -20, 0),
        )
      ],
    );

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double factor =
            _isAnimating ? _animationScrollPercent.value : _scrollPercent;
        double top = widget.header == null
            ? MediaQuery.of(context).size.height -
                widget.minHeight -
                (widget.maxHeight - widget.minHeight) * factor
            : -25 +
                MediaQuery.of(context).size.height -
                widget.minHeight -
                (widget.maxHeight - widget.minHeight) * factor;
        return Positioned(
          top: top,
          child: GestureDetector(
            onVerticalDragStart: _startCardDrag,
            onVerticalDragUpdate: _expandCard,
            onVerticalDragEnd: _endCardDrag,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: widget.maxHeight + 50,
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: widget.hasRoundedCorners
                    ? BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      )
                    : null,
                boxShadow: [
                  if (widget.hasShadow)
                    BoxShadow(
                      blurRadius: 20.0,
                      spreadRadius: 10,
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                    )
                ],
              ),
              child: Padding(
                padding: widget.padding,
                child: Column(
                  children: <Widget>[
                    _header,
                    Container(
                      child: Column(
                        children: <Widget>[Divider(), ...widget.children],
                      ),
                      transform: Matrix4.translationValues(0, -15, 0),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
