import 'package:flutter/material.dart';

class VisibilityBuilder extends StatefulWidget {
  const VisibilityBuilder({super.key, required this.builder});
  final Widget Function(
    BuildContext context,
    bool showPassword,
    Widget hideButton,
  ) builder;

  @override
  State<VisibilityBuilder> createState() => _VisibilityBuilderState();
}

class _VisibilityBuilderState extends State<VisibilityBuilder> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      showPassword,
      IconButton(
        onPressed: () => setState(() {
          showPassword = !showPassword;
        }),
        icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
      ),
    );
  }
}
