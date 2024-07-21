part of 'finance_overview_bloc.dart';

@freezed
class FinanceOverviewState with _$FinanceOverviewState {
  const factory FinanceOverviewState.init() = FinanceOverviewStateInit;

  const factory FinanceOverviewState.loading() = FinanceOverviewStateLoading;

  const factory FinanceOverviewState.loaded({
    required List<Invoice> invoices,
  }) = FinanceOverviewStateLoaded;
}

extension OnFinanceOverviewState on FinanceOverviewState {
  FinanceOverviewStateLoaded get asLoaded => this as FinanceOverviewStateLoaded;
}
