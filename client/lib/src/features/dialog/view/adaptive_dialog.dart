import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class AdaptiveDialog extends StatefulWidget {
  const AdaptiveDialog({
    required this.builder,
    super.key,
  });
  final Widget Function(BuildContext) builder;

  @override
  State<AdaptiveDialog> createState() => _AdaptiveDialogState();
}

class _AdaptiveDialogState extends State<AdaptiveDialog>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final wideMode = UiModeUtils.wideModeOn(context);
    final child = widget.builder(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: wideMode
          ? DialogContainer(child: child)
          : GestureDetector(onTap: () => Navigator.pop(context)),
      bottomSheet: wideMode
          ? const SizedBox() // Fixes child dublicates
          : BottomSheet(
              onClosing: () {},
              showDragHandle: true,
              animationController: BottomSheet.createAnimationController(this),
              constraints: const BoxConstraints.tightFor(
                height: UiModeUtils.maximumDialogWidth,
              ),
              builder: (context) => child,
            ),
    );
  }
}
