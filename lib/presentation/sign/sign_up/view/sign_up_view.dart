import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/const/images_const.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
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
          return Container(
            color: AppColor.lightColor,
            child: Row(
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
                          context.tr.welcomeCaption,
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
                            Text(
                              context.tr.hello,
                              style: const TextStyle(
                                fontSize: Sizes.size32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              context.tr.startTrialToday,
                              style: const TextStyle(
                                fontSize: Sizes.size16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            gapHeight24,
                            BaseTextFormField(
                              label: context.tr.firstName,
                              initialValue: state.user.firstName,
                              onChanged: (value) {
                                bloc.add(
                                  SignUpEvent.changeFirstName(value: value),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${context.tr.firstName} ${context.tr.isRequired}';
                                }
                                return null;
                              },
                            ),
                            gapHeight16,
                            BaseTextFormField(
                              label: context.tr.lastName,
                              initialValue: state.user.lastName,
                              onChanged: (value) {
                                bloc.add(
                                  SignUpEvent.changeLastName(value: value),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${context.tr.lastName} ${context.tr.isRequired}';
                                }
                                return null;
                              },
                            ),
                            gapHeight16,
                            BaseTextFormField(
                              label: context.tr.companyName,
                              initialValue: state.settings.name,
                              onChanged: (value) {
                                bloc.add(
                                  SignUpEvent.changeCompanyName(value: value),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${context.tr.companyName} ${context.tr.isRequired}';
                                }
                                return null;
                              },
                            ),
                            gapHeight16,
                            BaseTextFormField(
                              label: context.tr.email,
                              initialValue: state.user.email,
                              onChanged: (value) {
                                bloc.add(
                                  SignUpEvent.changeEmail(value: value),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${context.tr.email} ${context.tr.isRequired}';
                                }
                                return null;
                              },
                            ),
                            if (state.isSignUpError &&
                                state.asSignInError.error.code == 2)
                              Text(
                                state.asSignInError.error.message,
                                style: const TextStyle(
                                  color: AppColor.red,
                                ),
                              ),
                            gapHeight16,
                            BaseTextFormField(
                              label: context.tr.phoneNumber,
                              initialValue: state.user.phoneNumber,
                              onChanged: (value) {
                                bloc.add(
                                  SignUpEvent.changePhone(value: value),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${context.tr.phoneNumber} ${context.tr.isRequired}';
                                }
                                return null;
                              },
                            ),
                            gapHeight16,
                            BaseTextFormField(
                              label: context.tr.userName,
                              initialValue: state.user.userName,
                              onChanged: (value) {
                                bloc.add(
                                  SignUpEvent.changeUserName(value: value),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${context.tr.userName} ${context.tr.isRequired}';
                                }
                                return null;
                              },
                            ),
                            if (state.isSignUpError &&
                                state.asSignInError.error.code == 1)
                              Text(
                                state.asSignInError.error.message,
                                style: const TextStyle(
                                  color: AppColor.red,
                                ),
                              ),
                            gapHeight16,
                            BaseTextFormField(
                              label: context.tr.password,
                              initialValue: state.user.password,
                              obscureText: true,
                              onChanged: (value) {
                                bloc.add(
                                  SignUpEvent.changePassword(value: value),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '${context.tr.password} ${context.tr.isRequired}';
                                }
                                return null;
                              },
                            ),
                            gapHeight32,
                            Row(
                              children: [
                                Expanded(
                                  child: FilledButton(
                                    child: state.isSignUp
                                        ? const SizedBox(
                                            height: Sizes.size24,
                                            child: CircularProgressIndicator(
                                              color: AppColor.lightColor,
                                            ),
                                          )
                                        : Text(context.tr.signup),
                                    onPressed: () {
                                      if (_formKey.currentState?.validate() ??
                                          false) {
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
                                ),
                              ],
                            ),
                            gapHeight24,
                            Row(
                              children: [
                                Text(context.tr.haveAccount),
                                TextButton(
                                  child: Text(context.tr.signin),
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
            ),
          );
        },
      ),
    );
  }
}
