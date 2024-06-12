import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/const/images_const.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends IView {
  SignInView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<SignInBloc>(context);

    return Scaffold(
        body: BlocBuilder<SignInBloc, SignInState>(
      bloc: bloc,
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Container(
                color: AppColor.primaryColorSwatch,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '$assetImage$logo2',
                    ),
                    const Text(
                      'welcome Back!',
                      style: TextStyle(
                        fontSize: Sizes.size32,
                        color: AppColor.lightColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(Sizes.size112),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Hello!',
                        style: TextStyle(
                          fontSize: Sizes.size32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Sign in to your account',
                        style: TextStyle(
                          fontSize: Sizes.size16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      gapHeight32,
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'User name',
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                        ),
                        initialValue: state.userName,
                        onChanged: (value) {
                          bloc.add(
                            SignInEvent.changeUserName(value: value),
                          );
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                      gapHeight32,
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                        ),
                        initialValue: state.password,
                        obscureText: true,
                        onChanged: (value) {
                          bloc.add(
                            SignInEvent.changePassword(value: value),
                          );
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      gapHeight8,
                      if (state.isSignInError)
                        const Text(
                          'The username or password you’ve entered is incorrect.',
                          style: TextStyle(
                            color: AppColor.red,
                          ),
                        ),
                      gapHeight32,
                      FilledButton(
                        child: state.isSignIn
                            ? const CircularProgressIndicator(
                                color: AppColor.lightColor,
                              )
                            : const Text(
                                'Sign in',
                              ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   SnackBar(content: Text('Formulário válido!')),
                            // );

                            bloc.add(
                              SignInEvent.signIn(
                                callback: (value) {
                                  appBloc(context).add(
                                    AppEvent.signIn(
                                      user: value,
                                    ),
                                  );
                                },
                              ),
                            );
                          }
                          // else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(content: Text('Formulário inválido!')),
                          //   );
                          // }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ));
  }
}
