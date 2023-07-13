import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class MyIcon {
  static const IconData meuIcone = IconData(0xe800, fontFamily: 'MyIcon');
}

class AnimatedIconWithMovingColor extends StatefulWidget {
  const AnimatedIconWithMovingColor({super.key});

  @override
  State<AnimatedIconWithMovingColor> createState() =>
      _AnimatedIconWithMovingColorState();
}

class _AnimatedIconWithMovingColorState
    extends State<AnimatedIconWithMovingColor>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1), // Defina a duração da animação
      vsync: this,
    );

    // Defina a animação da cor usando um Tween
    _colorAnimation = ColorTween(
      begin: const Color.fromARGB(255, 244, 3, 155), // Cor inicial do gradiente
      end: const Color.fromARGB(255, 18, 32, 183), // Cor final do gradiente
    ).animate(_animationController);

    // Inicie a animação
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (BuildContext context, Widget? child) {
        return Icon(
          MyIcon.meuIcone,
          size: MediaQuery.of(context).size.height * 0.2,
          color:
              _colorAnimation.value, // Use o valor atual da animação como a cor
        );
      },
    );
  }
}
