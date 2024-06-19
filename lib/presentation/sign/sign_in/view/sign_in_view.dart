import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/const/images_const.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/sign/sign_in/bloc/sign_in_bloc.dart';
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
                    Text(
                      context.tr.welcome,
                      style: const TextStyle(
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
                      Text(
                        context.tr.hello,
                        style: const TextStyle(
                          fontSize: Sizes.size32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        context.tr.signinYourAccount,
                        style: const TextStyle(
                          fontSize: Sizes.size16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      gapHeight16,
                      BaseTextFormField(
                        label: context.tr.userName,
                        initialValue: state.userName,
                        onChanged: (value) {
                          bloc.add(
                            SignInEvent.changeUserName(value: value),
                          );
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return context.tr.enterYourUserName;
                          }
                          return null;
                        },
                      ),
                      gapHeight16,
                      BaseTextFormField(
                        label: context.tr.password,
                        initialValue: state.password,
                        obscureText: true,
                        onChanged: (value) {
                          bloc.add(
                            SignInEvent.changePassword(value: value),
                          );
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return context.tr.enterYourpassword;
                          }
                          return null;
                        },
                      ),
                      gapHeight8,
                      if (state.isSignInError)
                        Text(
                          context.tr.usernamePasswordIncorrect,
                          style: const TextStyle(
                            color: AppColor.red,
                          ),
                        ),
                      gapHeight24,
                      FilledButton(
                        child: state.isSignIn
                            ? const CircularProgressIndicator(
                                color: AppColor.lightColor,
                              )
                            : Text(
                                context.tr.signin,
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
                      ),
                      gapHeight24,
                      Row(
                        children: [
                          Text(context.tr.donotHaveAccount),
                          TextButton(
                            child: Text(context.tr.signup),
                            onPressed: () {
                              appBloc(context).add(
                                const AppEvent.createNewUser(),
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
          ],
        );
      },
    ));
  }
}
