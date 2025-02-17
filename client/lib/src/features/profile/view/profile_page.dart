import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:openquester/src/connection/controllers/auth_controller.dart';
import 'package:openquester/src/core/get_it.dart';
import 'package:watch_it/watch_it.dart';

@RoutePage()
class ProfilePage extends WatchingWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final autorized = watchPropertyValue((AuthController m) => m.autorized);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: !autorized ? _loginField(context) : _authorizedProfile(),
      ),
    );
  }

  Widget _authorizedProfile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Authorized'),
        TextButton(
          onPressed: getIt.get<AuthController>().logOut,
          child: const Text('Logout'),
        ),
      ],
    );
  }

  Widget _loginField(BuildContext context) {
    final loading = watchPropertyValue((AuthController m) => m.loading);

    return IconButton(
      onPressed:
          loading
              ? null
              : () async {
                final result = await getIt.get<AuthController>().loginUser();
                if (!result.$1 && context.mounted) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(result.$2 ?? '-')));
                }
              },
      icon:
          loading
              ? Container(
                width: 24,
                height: 24,
                padding: const EdgeInsets.all(2),
                child: const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
              : const Icon(Icons.discord),
    );
  }
}
