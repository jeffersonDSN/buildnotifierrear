import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/const/images_const.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/sign/sign_up/bloc/sign_up_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends IView {
  SignUpView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<SignUpBloc>(context);

    return Scaffold(
        body: BlocBuilder<SignUpBloc, SignUpState>(
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
                      'Welcome! Ready to explore what’s new?',
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Sizes.size112,
                    Sizes.size0,
                    Sizes.size112,
                    Sizes.size0,
                  ),
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
                          'Start your free trial today and unlock a world of possibilities!',
                          style: TextStyle(
                            fontSize: Sizes.size16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        gapHeight24,
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'First name',
                            prefixIcon: Icon(
                              Icons.badge,
                            ),
                          ),
                          initialValue: state.user.userName,
                          onChanged: (value) {
                            bloc.add(
                              SignUpEvent.changeFirstName(value: value),
                            );
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'First name is required';
                            }
                            return null;
                          },
                        ),
                        gapHeight16,
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Last name',
                            prefixIcon: Icon(
                              Icons.badge,
                            ),
                          ),
                          initialValue: state.user.lastName,
                          onChanged: (value) {
                            bloc.add(
                              SignUpEvent.changeLastName(value: value),
                            );
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Last name is required';
                            }
                            return null;
                          },
                        ),
                        gapHeight16,
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Company name',
                            prefixIcon: Icon(
                              Icons.business,
                            ),
                          ),
                          initialValue: state.settings.name,
                          onChanged: (value) {
                            bloc.add(
                              SignUpEvent.changeCompanyName(value: value),
                            );
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Company name is required';
                            }
                            return null;
                          },
                        ),
                        gapHeight16,
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                          ),
                          initialValue: state.user.email,
                          onChanged: (value) {
                            bloc.add(
                              SignUpEvent.changeEmail(value: value),
                            );
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required';
                            }
                            return null;
                          },
                        ),
                        gapHeight16,
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Phone number',
                            prefixIcon: Icon(
                              Icons.phone,
                            ),
                          ),
                          initialValue: state.user.phoneNumber,
                          onChanged: (value) {
                            bloc.add(
                              SignUpEvent.changePhone(value: value),
                            );
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Phone number is required';
                            }
                            return null;
                          },
                        ),
                        gapHeight16,
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                          initialValue: state.user.userName,
                          onChanged: (value) {
                            bloc.add(
                              SignUpEvent.changeUserName(value: value),
                            );
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Username is required';
                            }
                            return null;
                          },
                        ),
                        gapHeight16,
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                          initialValue: state.user.password,
                          obscureText: true,
                          onChanged: (value) {
                            bloc.add(
                              SignUpEvent.changePassword(value: value),
                            );
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                        ),
                        gapHeight8,
                        if (state.isSignUpError)
                          const Text(
                            'The username or password you’ve entered is incorrect.',
                            style: TextStyle(
                              color: AppColor.red,
                            ),
                          ),
                        gapHeight32,
                        FilledButton(
                          child: state.isSignUp
                              ? const CircularProgressIndicator(
                                  color: AppColor.lightColor,
                                )
                              : const Text(
                                  'Sign Up',
                                ),
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(content: Text('Formulário válido!')),
                              // );

                              bloc.add(
                                SignUpEvent.signUp(
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
                        ),
                        gapHeight24,
                        Row(
                          children: [
                            const Text('Have an account?'),
                            TextButton(
                              child: const Text("Sign in"),
                              onPressed: () {
                                appBloc(context).add(
                                  const AppEvent.signOut(),
                                );
                              },
                            )
                          ],
                        ),
                      ],
                    ),
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
