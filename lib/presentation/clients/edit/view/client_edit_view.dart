import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/clients/edit/bloc/client_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/clients/edit/view/client_edit_form_view.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_custom_card_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientEditView extends IView {
  final CrudType type;

  const ClientEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ClientEditBloc>(context);

    bloc.add(
      ClientEditEvent.load(type: type),
    );

    return BaseScaffold(
      title: type.when(
        create: () => context.tr.newClient,
        update: (id) => context.tr.editClient,
      ),
      child: BaseCustomCardWidget(
        body: const ClientEditFormView(),
        footer: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(Sizes.size8),
              child: FilledButton.icon(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    AppColor.warning,
                  ),
                ),
                icon: const Icon(Icons.close),
                label: Text(context.tr.close),
                onPressed: () {
                  appBloc(context).add(
                    const AppEvent.goBack(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.size8),
              child: FilledButton.icon(
                icon: const Icon(
                  Icons.check,
                ),
                label: Text(context.tr.save),
                onPressed: () {
                  bloc.add(
                    ClientEditEvent.save(
                      callback: () {
                        appBloc(context).add(
                          const AppEvent.goBack(),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
