import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:openquester/src/core/get_it.dart';
import 'package:openquester/src/connection/controllers/login_controller.dart';
import 'package:watch_it/watch_it.dart';

import '../../../ui/fields/password_fields.dart';

@RoutePage()
class ProfilePage extends WatchingWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final login = watchPropertyValue((LoginController m) => m.login);
    final password = watchPropertyValue((LoginController m) => m.password);
    final auth = watchPropertyValue((LoginController m) => m.authData);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: auth == null
            ? _loginField(login, password, context)
            : _authorizedProfile(),
      ),
    );
  }

  Widget _authorizedProfile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Authorized'),
        TextButton(
          onPressed: getIt.get<LoginController>().logOut,
          child: const Text('Logout'),
        )
      ],
    );
  }

  Widget _loginField(String? login, String? password, BuildContext context) {
    final loading = watchPropertyValue((LoginController m) => m.loading);

    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: AutofillGroup(
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                initialValue: login,
                onChanged: (v) => getIt.get<LoginController>().login = v,
                decoration: const InputDecoration(label: Text('Login')),
                autofillHints: const [
                  AutofillHints.username,
                  AutofillHints.email
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter login';
                  }
                  return null;
                },
              ),
              VisibilityBuilder(
                builder: (_, showPassword, button) => TextFormField(
                  initialValue: password,
                  onChanged: (p) => getIt.get<LoginController>().password = p,
                  obscureText: !showPassword,
                  autofillHints: const [AutofillHints.password],
                  decoration: InputDecoration(
                    suffix: button,
                    label: const Text('Password'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 24),
              OutlinedButton(
                onPressed: loading
                    ? null
                    : () async {
                        final result =
                            await getIt.get<LoginController>().loginUser();
                        if (!result.$1) {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(result.$2 ?? '-')));
                        }
                      },
                child: loading
                    ? Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.all(2.0),
                        child: const CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
