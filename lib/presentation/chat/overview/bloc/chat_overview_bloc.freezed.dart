// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String senderId, String recipientId) loadMessages,
    required TResult Function(Message message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String senderId, String recipientId)? loadMessages,
    TResult? Function(Message message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String senderId, String recipientId)? loadMessages,
    TResult Function(Message message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatOverviewEventMessages value) loadMessages,
    required TResult Function(ChatOverviewEventMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatOverviewEventMessages value)? loadMessages,
    TResult? Function(ChatOverviewEventMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatOverviewEventMessages value)? loadMessages,
    TResult Function(ChatOverviewEventMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatOverviewEventCopyWith<$Res> {
  factory $ChatOverviewEventCopyWith(
          ChatOverviewEvent value, $Res Function(ChatOverviewEvent) then) =
      _$ChatOverviewEventCopyWithImpl<$Res, ChatOverviewEvent>;
}

/// @nodoc
class _$ChatOverviewEventCopyWithImpl<$Res, $Val extends ChatOverviewEvent>
    implements $ChatOverviewEventCopyWith<$Res> {
  _$ChatOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatOverviewEventMessagesImplCopyWith<$Res> {
  factory _$$ChatOverviewEventMessagesImplCopyWith(
          _$ChatOverviewEventMessagesImpl value,
          $Res Function(_$ChatOverviewEventMessagesImpl) then) =
      __$$ChatOverviewEventMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String senderId, String recipientId});
}

/// @nodoc
class __$$ChatOverviewEventMessagesImplCopyWithImpl<$Res>
    extends _$ChatOverviewEventCopyWithImpl<$Res,
        _$ChatOverviewEventMessagesImpl>
    implements _$$ChatOverviewEventMessagesImplCopyWith<$Res> {
  __$$ChatOverviewEventMessagesImplCopyWithImpl(
      _$ChatOverviewEventMessagesImpl _value,
      $Res Function(_$ChatOverviewEventMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? recipientId = null,
  }) {
    return _then(_$ChatOverviewEventMessagesImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatOverviewEventMessagesImpl implements ChatOverviewEventMessages {
  const _$ChatOverviewEventMessagesImpl(
      {required this.senderId, required this.recipientId});

  @override
  final String senderId;
  @override
  final String recipientId;

  @override
  String toString() {
    return 'ChatOverviewEvent.loadMessages(senderId: $senderId, recipientId: $recipientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatOverviewEventMessagesImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderId, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatOverviewEventMessagesImplCopyWith<_$ChatOverviewEventMessagesImpl>
      get copyWith => __$$ChatOverviewEventMessagesImplCopyWithImpl<
          _$ChatOverviewEventMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String senderId, String recipientId) loadMessages,
    required TResult Function(Message message) sendMessage,
  }) {
    return loadMessages(senderId, recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String senderId, String recipientId)? loadMessages,
    TResult? Function(Message message)? sendMessage,
  }) {
    return loadMessages?.call(senderId, recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String senderId, String recipientId)? loadMessages,
    TResult Function(Message message)? sendMessage,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(senderId, recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatOverviewEventMessages value) loadMessages,
    required TResult Function(ChatOverviewEventMessage value) sendMessage,
  }) {
    return loadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatOverviewEventMessages value)? loadMessages,
    TResult? Function(ChatOverviewEventMessage value)? sendMessage,
  }) {
    return loadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatOverviewEventMessages value)? loadMessages,
    TResult Function(ChatOverviewEventMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(this);
    }
    return orElse();
  }
}

abstract class ChatOverviewEventMessages implements ChatOverviewEvent {
  const factory ChatOverviewEventMessages(
      {required final String senderId,
      required final String recipientId}) = _$ChatOverviewEventMessagesImpl;

  String get senderId;
  String get recipientId;
  @JsonKey(ignore: true)
  _$$ChatOverviewEventMessagesImplCopyWith<_$ChatOverviewEventMessagesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatOverviewEventMessageImplCopyWith<$Res> {
  factory _$$ChatOverviewEventMessageImplCopyWith(
          _$ChatOverviewEventMessageImpl value,
          $Res Function(_$ChatOverviewEventMessageImpl) then) =
      __$$ChatOverviewEventMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChatOverviewEventMessageImplCopyWithImpl<$Res>
    extends _$ChatOverviewEventCopyWithImpl<$Res,
        _$ChatOverviewEventMessageImpl>
    implements _$$ChatOverviewEventMessageImplCopyWith<$Res> {
  __$$ChatOverviewEventMessageImplCopyWithImpl(
      _$ChatOverviewEventMessageImpl _value,
      $Res Function(_$ChatOverviewEventMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChatOverviewEventMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$ChatOverviewEventMessageImpl implements ChatOverviewEventMessage {
  const _$ChatOverviewEventMessageImpl({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatOverviewEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatOverviewEventMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatOverviewEventMessageImplCopyWith<_$ChatOverviewEventMessageImpl>
      get copyWith => __$$ChatOverviewEventMessageImplCopyWithImpl<
          _$ChatOverviewEventMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String senderId, String recipientId) loadMessages,
    required TResult Function(Message message) sendMessage,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String senderId, String recipientId)? loadMessages,
    TResult? Function(Message message)? sendMessage,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String senderId, String recipientId)? loadMessages,
    TResult Function(Message message)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatOverviewEventMessages value) loadMessages,
    required TResult Function(ChatOverviewEventMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatOverviewEventMessages value)? loadMessages,
    TResult? Function(ChatOverviewEventMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatOverviewEventMessages value)? loadMessages,
    TResult Function(ChatOverviewEventMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class ChatOverviewEventMessage implements ChatOverviewEvent {
  const factory ChatOverviewEventMessage({required final Message message}) =
      _$ChatOverviewEventMessageImpl;

  Message get message;
  @JsonKey(ignore: true)
  _$$ChatOverviewEventMessageImplCopyWith<_$ChatOverviewEventMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatOverviewStateInitial value) initial,
    required TResult Function(ChatOverviewStateLoading value) loading,
    required TResult Function(ChatOverviewStateLoaded value) loaded,
    required TResult Function(ChatOverviewStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatOverviewStateInitial value)? initial,
    TResult? Function(ChatOverviewStateLoading value)? loading,
    TResult? Function(ChatOverviewStateLoaded value)? loaded,
    TResult? Function(ChatOverviewStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatOverviewStateInitial value)? initial,
    TResult Function(ChatOverviewStateLoading value)? loading,
    TResult Function(ChatOverviewStateLoaded value)? loaded,
    TResult Function(ChatOverviewStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatOverviewStateCopyWith<$Res> {
  factory $ChatOverviewStateCopyWith(
          ChatOverviewState value, $Res Function(ChatOverviewState) then) =
      _$ChatOverviewStateCopyWithImpl<$Res, ChatOverviewState>;
}

/// @nodoc
class _$ChatOverviewStateCopyWithImpl<$Res, $Val extends ChatOverviewState>
    implements $ChatOverviewStateCopyWith<$Res> {
  _$ChatOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatOverviewStateInitialImplCopyWith<$Res> {
  factory _$$ChatOverviewStateInitialImplCopyWith(
          _$ChatOverviewStateInitialImpl value,
          $Res Function(_$ChatOverviewStateInitialImpl) then) =
      __$$ChatOverviewStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatOverviewStateInitialImplCopyWithImpl<$Res>
    extends _$ChatOverviewStateCopyWithImpl<$Res,
        _$ChatOverviewStateInitialImpl>
    implements _$$ChatOverviewStateInitialImplCopyWith<$Res> {
  __$$ChatOverviewStateInitialImplCopyWithImpl(
      _$ChatOverviewStateInitialImpl _value,
      $Res Function(_$ChatOverviewStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatOverviewStateInitialImpl implements ChatOverviewStateInitial {
  const _$ChatOverviewStateInitialImpl();

  @override
  String toString() {
    return 'ChatOverviewState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatOverviewStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatOverviewStateInitial value) initial,
    required TResult Function(ChatOverviewStateLoading value) loading,
    required TResult Function(ChatOverviewStateLoaded value) loaded,
    required TResult Function(ChatOverviewStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatOverviewStateInitial value)? initial,
    TResult? Function(ChatOverviewStateLoading value)? loading,
    TResult? Function(ChatOverviewStateLoaded value)? loaded,
    TResult? Function(ChatOverviewStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatOverviewStateInitial value)? initial,
    TResult Function(ChatOverviewStateLoading value)? loading,
    TResult Function(ChatOverviewStateLoaded value)? loaded,
    TResult Function(ChatOverviewStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatOverviewStateInitial implements ChatOverviewState {
  const factory ChatOverviewStateInitial() = _$ChatOverviewStateInitialImpl;
}

/// @nodoc
abstract class _$$ChatOverviewStateLoadingImplCopyWith<$Res> {
  factory _$$ChatOverviewStateLoadingImplCopyWith(
          _$ChatOverviewStateLoadingImpl value,
          $Res Function(_$ChatOverviewStateLoadingImpl) then) =
      __$$ChatOverviewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatOverviewStateLoadingImplCopyWithImpl<$Res>
    extends _$ChatOverviewStateCopyWithImpl<$Res,
        _$ChatOverviewStateLoadingImpl>
    implements _$$ChatOverviewStateLoadingImplCopyWith<$Res> {
  __$$ChatOverviewStateLoadingImplCopyWithImpl(
      _$ChatOverviewStateLoadingImpl _value,
      $Res Function(_$ChatOverviewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatOverviewStateLoadingImpl implements ChatOverviewStateLoading {
  const _$ChatOverviewStateLoadingImpl();

  @override
  String toString() {
    return 'ChatOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatOverviewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatOverviewStateInitial value) initial,
    required TResult Function(ChatOverviewStateLoading value) loading,
    required TResult Function(ChatOverviewStateLoaded value) loaded,
    required TResult Function(ChatOverviewStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatOverviewStateInitial value)? initial,
    TResult? Function(ChatOverviewStateLoading value)? loading,
    TResult? Function(ChatOverviewStateLoaded value)? loaded,
    TResult? Function(ChatOverviewStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatOverviewStateInitial value)? initial,
    TResult Function(ChatOverviewStateLoading value)? loading,
    TResult Function(ChatOverviewStateLoaded value)? loaded,
    TResult Function(ChatOverviewStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatOverviewStateLoading implements ChatOverviewState {
  const factory ChatOverviewStateLoading() = _$ChatOverviewStateLoadingImpl;
}

/// @nodoc
abstract class _$$ChatOverviewStateLoadedImplCopyWith<$Res> {
  factory _$$ChatOverviewStateLoadedImplCopyWith(
          _$ChatOverviewStateLoadedImpl value,
          $Res Function(_$ChatOverviewStateLoadedImpl) then) =
      __$$ChatOverviewStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$ChatOverviewStateLoadedImplCopyWithImpl<$Res>
    extends _$ChatOverviewStateCopyWithImpl<$Res, _$ChatOverviewStateLoadedImpl>
    implements _$$ChatOverviewStateLoadedImplCopyWith<$Res> {
  __$$ChatOverviewStateLoadedImplCopyWithImpl(
      _$ChatOverviewStateLoadedImpl _value,
      $Res Function(_$ChatOverviewStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ChatOverviewStateLoadedImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$ChatOverviewStateLoadedImpl implements ChatOverviewStateLoaded {
  const _$ChatOverviewStateLoadedImpl({required final List<Message> messages})
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatOverviewState.loaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatOverviewStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatOverviewStateLoadedImplCopyWith<_$ChatOverviewStateLoadedImpl>
      get copyWith => __$$ChatOverviewStateLoadedImplCopyWithImpl<
          _$ChatOverviewStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatOverviewStateInitial value) initial,
    required TResult Function(ChatOverviewStateLoading value) loading,
    required TResult Function(ChatOverviewStateLoaded value) loaded,
    required TResult Function(ChatOverviewStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatOverviewStateInitial value)? initial,
    TResult? Function(ChatOverviewStateLoading value)? loading,
    TResult? Function(ChatOverviewStateLoaded value)? loaded,
    TResult? Function(ChatOverviewStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatOverviewStateInitial value)? initial,
    TResult Function(ChatOverviewStateLoading value)? loading,
    TResult Function(ChatOverviewStateLoaded value)? loaded,
    TResult Function(ChatOverviewStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChatOverviewStateLoaded implements ChatOverviewState {
  const factory ChatOverviewStateLoaded(
      {required final List<Message> messages}) = _$ChatOverviewStateLoadedImpl;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$ChatOverviewStateLoadedImplCopyWith<_$ChatOverviewStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatOverviewStateErrorImplCopyWith<$Res> {
  factory _$$ChatOverviewStateErrorImplCopyWith(
          _$ChatOverviewStateErrorImpl value,
          $Res Function(_$ChatOverviewStateErrorImpl) then) =
      __$$ChatOverviewStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ChatOverviewStateErrorImplCopyWithImpl<$Res>
    extends _$ChatOverviewStateCopyWithImpl<$Res, _$ChatOverviewStateErrorImpl>
    implements _$$ChatOverviewStateErrorImplCopyWith<$Res> {
  __$$ChatOverviewStateErrorImplCopyWithImpl(
      _$ChatOverviewStateErrorImpl _value,
      $Res Function(_$ChatOverviewStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChatOverviewStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatOverviewStateErrorImpl implements ChatOverviewStateError {
  const _$ChatOverviewStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ChatOverviewState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatOverviewStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatOverviewStateErrorImplCopyWith<_$ChatOverviewStateErrorImpl>
      get copyWith => __$$ChatOverviewStateErrorImplCopyWithImpl<
          _$ChatOverviewStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatOverviewStateInitial value) initial,
    required TResult Function(ChatOverviewStateLoading value) loading,
    required TResult Function(ChatOverviewStateLoaded value) loaded,
    required TResult Function(ChatOverviewStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatOverviewStateInitial value)? initial,
    TResult? Function(ChatOverviewStateLoading value)? loading,
    TResult? Function(ChatOverviewStateLoaded value)? loaded,
    TResult? Function(ChatOverviewStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatOverviewStateInitial value)? initial,
    TResult Function(ChatOverviewStateLoading value)? loading,
    TResult Function(ChatOverviewStateLoaded value)? loaded,
    TResult Function(ChatOverviewStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatOverviewStateError implements ChatOverviewState {
  const factory ChatOverviewStateError({required final String error}) =
      _$ChatOverviewStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ChatOverviewStateErrorImplCopyWith<_$ChatOverviewStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
