import 'package:flutter/material.dart';
import 'package:openquester/src/core/router.gr.dart';

class ProfileBtn extends StatelessWidget {
  const ProfileBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.account_circle),
      onPressed: () => const ProfileRoute().push<void>(context),
    );
  }
}
