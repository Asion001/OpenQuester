import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@RoutePage()
class ProfileScreen extends WatchingWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = watchPropertyValue((AuthController m) => m.user);

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.profile.tr()),
      ),
      body: Center(
        child: user == null
            ? _loginField(context)
            : _authorizedProfile(context, user),
      ),
    );
  }

  Widget _authorizedProfile(BuildContext context, ResponseUser user) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        if (user.avatar != null)
          CircleAvatar(
            radius: 36,
            foregroundImage: NetworkImage(user.avatar!),
          ),
        Text(
          user.username,
          style: context.textTheme.bodyLarge,
        ).paddingBottom(24),
        FilledButton(
          onPressed: getIt.get<AuthController>().logOut,
          child: const Text('Logout'),
        ),
      ],
    );
  }

  Widget _loginField(BuildContext context) {
    return Container(
      padding: 16.all,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surfaceContainer,
        borderRadius: 16.circular,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Text(
            LocaleKeys.login_with_discord.tr(),
            style: context.textTheme.titleLarge,
          ),
          LoadingButtonBuilder(
            onPressed: () async {
              try {
                await getIt.get<AuthController>().loginUser();
              } catch (e) {
                await getIt<ToastController>().show(e.toString());
              }
            },
            child: const Icon(Icons.discord),
            builder: (context, child, onPressed) {
              return IconButton(
                onPressed: onPressed,
                icon: child,
              );
            },
          ),
        ],
      ),
    );
  }
}
