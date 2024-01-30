// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsEventCopyWith<$Res> {
  factory $PersonalDetailsEventCopyWith(PersonalDetailsEvent value,
          $Res Function(PersonalDetailsEvent) then) =
      _$PersonalDetailsEventCopyWithImpl<$Res, PersonalDetailsEvent>;
}

/// @nodoc
class _$PersonalDetailsEventCopyWithImpl<$Res,
        $Val extends PersonalDetailsEvent>
    implements $PersonalDetailsEventCopyWith<$Res> {
  _$PersonalDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PersonalDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PersonalDetailsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PersonalDetailsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LastNameChangedImplCopyWith<$Res> {
  factory _$$LastNameChangedImplCopyWith(_$LastNameChangedImpl value,
          $Res Function(_$LastNameChangedImpl) then) =
      __$$LastNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$LastNameChangedImplCopyWithImpl<$Res>
    extends _$PersonalDetailsEventCopyWithImpl<$Res, _$LastNameChangedImpl>
    implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
      _$LastNameChangedImpl _value, $Res Function(_$LastNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$LastNameChangedImpl(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChangedImpl implements _LastNameChanged {
  const _$LastNameChangedImpl(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'PersonalDetailsEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedImpl &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      __$$LastNameChangedImplCopyWithImpl<_$LastNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements PersonalDetailsEvent {
  const factory _LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;
  @JsonKey(ignore: true)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$PersonalDetailsEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements _FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'PersonalDetailsEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements PersonalDetailsEvent {
  const factory _FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;
  @JsonKey(ignore: true)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberChangedImplCopyWith(_$PhoneNumberChangedImpl value,
          $Res Function(_$PhoneNumberChangedImpl) then) =
      __$$PhoneNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedImplCopyWithImpl<$Res>
    extends _$PersonalDetailsEventCopyWithImpl<$Res, _$PhoneNumberChangedImpl>
    implements _$$PhoneNumberChangedImplCopyWith<$Res> {
  __$$PhoneNumberChangedImplCopyWithImpl(_$PhoneNumberChangedImpl _value,
      $Res Function(_$PhoneNumberChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedImpl implements _PhoneNumberChanged {
  const _$PhoneNumberChangedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PersonalDetailsEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      __$$PhoneNumberChangedImplCopyWithImpl<_$PhoneNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements PersonalDetailsEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$PhoneNumberChangedImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalDetailsState {
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalDetailsStateCopyWith<PersonalDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsStateCopyWith<$Res> {
  factory $PersonalDetailsStateCopyWith(PersonalDetailsState value,
          $Res Function(PersonalDetailsState) then) =
      _$PersonalDetailsStateCopyWithImpl<$Res, PersonalDetailsState>;
  @useResult
  $Res call(
      {FirstName firstName,
      LastName lastName,
      PhoneNumber phoneNumber,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class _$PersonalDetailsStateCopyWithImpl<$Res,
        $Val extends PersonalDetailsState>
    implements $PersonalDetailsStateCopyWith<$Res> {
  _$PersonalDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalDetailsStateImplCopyWith<$Res>
    implements $PersonalDetailsStateCopyWith<$Res> {
  factory _$$PersonalDetailsStateImplCopyWith(_$PersonalDetailsStateImpl value,
          $Res Function(_$PersonalDetailsStateImpl) then) =
      __$$PersonalDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FirstName firstName,
      LastName lastName,
      PhoneNumber phoneNumber,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class __$$PersonalDetailsStateImplCopyWithImpl<$Res>
    extends _$PersonalDetailsStateCopyWithImpl<$Res, _$PersonalDetailsStateImpl>
    implements _$$PersonalDetailsStateImplCopyWith<$Res> {
  __$$PersonalDetailsStateImplCopyWithImpl(_$PersonalDetailsStateImpl _value,
      $Res Function(_$PersonalDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PersonalDetailsStateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PersonalDetailsStateImpl implements _PersonalDetailsState {
  const _$PersonalDetailsStateImpl(
      {this.firstName = const FirstName.pure(),
      this.lastName = const LastName.pure(),
      this.phoneNumber = const PhoneNumber.pure(),
      this.isValid = false,
      this.errorMessage});

  @override
  @JsonKey()
  final FirstName firstName;
  @override
  @JsonKey()
  final LastName lastName;
  @override
  @JsonKey()
  final PhoneNumber phoneNumber;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PersonalDetailsState(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, isValid: $isValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalDetailsStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, phoneNumber, isValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalDetailsStateImplCopyWith<_$PersonalDetailsStateImpl>
      get copyWith =>
          __$$PersonalDetailsStateImplCopyWithImpl<_$PersonalDetailsStateImpl>(
              this, _$identity);
}

abstract class _PersonalDetailsState implements PersonalDetailsState {
  const factory _PersonalDetailsState(
      {final FirstName firstName,
      final LastName lastName,
      final PhoneNumber phoneNumber,
      final bool isValid,
      final String? errorMessage}) = _$PersonalDetailsStateImpl;

  @override
  FirstName get firstName;
  @override
  LastName get lastName;
  @override
  PhoneNumber get phoneNumber;
  @override
  bool get isValid;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PersonalDetailsStateImplCopyWith<_$PersonalDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
