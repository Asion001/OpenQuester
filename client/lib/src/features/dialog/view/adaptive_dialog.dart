import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class AdaptiveDialog extends StatefulWidget {
  const AdaptiveDialog({
    required this.builder,
    this.allowBottomSheet = true,
    super.key,
  });
  final Widget Function(BuildContext) builder;
  final bool allowBottomSheet;

  @override
  State<AdaptiveDialog> createState() => _AdaptiveDialogState();
}

class _AdaptiveDialogState extends State<AdaptiveDialog>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final showDialog =
        !widget.allowBottomSheet || UiModeUtils.wideModeOn(context);

    final child = GestureDetector(
      child: widget.builder(context),
      onTap: () {/* do nothing—this swallows the tap */},
    );

    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: showDialog
              ? DialogContainer(child: child)
              : GestureDetector(onTap: () => Navigator.pop(context)),
          bottomSheet: showDialog
              ? const SizedBox() // Fixes child dublicates
              : BottomSheet(
                  elevation: 0,
                  onClosing: () {},
                  showDragHandle: true,
                  animationController:
                      BottomSheet.createAnimationController(this),
                  builder: (_) => child,
                ),
        ),
      ),
    );
  }
}
