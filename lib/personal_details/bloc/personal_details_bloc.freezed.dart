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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String firstname) firsname,
    required TResult Function(String lastname) lastname,
    required TResult Function(String phoneNumber) phoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String firstname)? firsname,
    TResult? Function(String lastname)? lastname,
    TResult? Function(String phoneNumber)? phoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String firstname)? firsname,
    TResult Function(String lastname)? lastname,
    TResult Function(String phoneNumber)? phoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Firstname value) firsname,
    required TResult Function(_Lastname value) lastname,
    required TResult Function(_PhoneNumber value) phoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Firstname value)? firsname,
    TResult? Function(_Lastname value)? lastname,
    TResult? Function(_PhoneNumber value)? phoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Firstname value)? firsname,
    TResult Function(_Lastname value)? lastname,
    TResult Function(_PhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsStateCopyWith<$Res> {
  factory $PersonalDetailsStateCopyWith(PersonalDetailsState value,
          $Res Function(PersonalDetailsState) then) =
      _$PersonalDetailsStateCopyWithImpl<$Res, PersonalDetailsState>;
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
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PersonalDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PersonalDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String firstname) firsname,
    required TResult Function(String lastname) lastname,
    required TResult Function(String phoneNumber) phoneNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String firstname)? firsname,
    TResult? Function(String lastname)? lastname,
    TResult? Function(String phoneNumber)? phoneNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String firstname)? firsname,
    TResult Function(String lastname)? lastname,
    TResult Function(String phoneNumber)? phoneNumber,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Firstname value) firsname,
    required TResult Function(_Lastname value) lastname,
    required TResult Function(_PhoneNumber value) phoneNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Firstname value)? firsname,
    TResult? Function(_Lastname value)? lastname,
    TResult? Function(_PhoneNumber value)? phoneNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Firstname value)? firsname,
    TResult Function(_Lastname value)? lastname,
    TResult Function(_PhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PersonalDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FirstnameImplCopyWith<$Res> {
  factory _$$FirstnameImplCopyWith(
          _$FirstnameImpl value, $Res Function(_$FirstnameImpl) then) =
      __$$FirstnameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstname});
}

/// @nodoc
class __$$FirstnameImplCopyWithImpl<$Res>
    extends _$PersonalDetailsStateCopyWithImpl<$Res, _$FirstnameImpl>
    implements _$$FirstnameImplCopyWith<$Res> {
  __$$FirstnameImplCopyWithImpl(
      _$FirstnameImpl _value, $Res Function(_$FirstnameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
  }) {
    return _then(_$FirstnameImpl(
      null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstnameImpl implements _Firstname {
  const _$FirstnameImpl(this.firstname);

  @override
  final String firstname;

  @override
  String toString() {
    return 'PersonalDetailsState.firsname(firstname: $firstname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstnameImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstnameImplCopyWith<_$FirstnameImpl> get copyWith =>
      __$$FirstnameImplCopyWithImpl<_$FirstnameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String firstname) firsname,
    required TResult Function(String lastname) lastname,
    required TResult Function(String phoneNumber) phoneNumber,
  }) {
    return firsname(firstname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String firstname)? firsname,
    TResult? Function(String lastname)? lastname,
    TResult? Function(String phoneNumber)? phoneNumber,
  }) {
    return firsname?.call(firstname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String firstname)? firsname,
    TResult Function(String lastname)? lastname,
    TResult Function(String phoneNumber)? phoneNumber,
    required TResult orElse(),
  }) {
    if (firsname != null) {
      return firsname(firstname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Firstname value) firsname,
    required TResult Function(_Lastname value) lastname,
    required TResult Function(_PhoneNumber value) phoneNumber,
  }) {
    return firsname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Firstname value)? firsname,
    TResult? Function(_Lastname value)? lastname,
    TResult? Function(_PhoneNumber value)? phoneNumber,
  }) {
    return firsname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Firstname value)? firsname,
    TResult Function(_Lastname value)? lastname,
    TResult Function(_PhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) {
    if (firsname != null) {
      return firsname(this);
    }
    return orElse();
  }
}

abstract class _Firstname implements PersonalDetailsState {
  const factory _Firstname(final String firstname) = _$FirstnameImpl;

  String get firstname;
  @JsonKey(ignore: true)
  _$$FirstnameImplCopyWith<_$FirstnameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastnameImplCopyWith<$Res> {
  factory _$$LastnameImplCopyWith(
          _$LastnameImpl value, $Res Function(_$LastnameImpl) then) =
      __$$LastnameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastname});
}

/// @nodoc
class __$$LastnameImplCopyWithImpl<$Res>
    extends _$PersonalDetailsStateCopyWithImpl<$Res, _$LastnameImpl>
    implements _$$LastnameImplCopyWith<$Res> {
  __$$LastnameImplCopyWithImpl(
      _$LastnameImpl _value, $Res Function(_$LastnameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastname = null,
  }) {
    return _then(_$LastnameImpl(
      null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastnameImpl implements _Lastname {
  const _$LastnameImpl(this.lastname);

  @override
  final String lastname;

  @override
  String toString() {
    return 'PersonalDetailsState.lastname(lastname: $lastname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastnameImpl &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastnameImplCopyWith<_$LastnameImpl> get copyWith =>
      __$$LastnameImplCopyWithImpl<_$LastnameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String firstname) firsname,
    required TResult Function(String lastname) lastname,
    required TResult Function(String phoneNumber) phoneNumber,
  }) {
    return lastname(this.lastname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String firstname)? firsname,
    TResult? Function(String lastname)? lastname,
    TResult? Function(String phoneNumber)? phoneNumber,
  }) {
    return lastname?.call(this.lastname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String firstname)? firsname,
    TResult Function(String lastname)? lastname,
    TResult Function(String phoneNumber)? phoneNumber,
    required TResult orElse(),
  }) {
    if (lastname != null) {
      return lastname(this.lastname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Firstname value) firsname,
    required TResult Function(_Lastname value) lastname,
    required TResult Function(_PhoneNumber value) phoneNumber,
  }) {
    return lastname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Firstname value)? firsname,
    TResult? Function(_Lastname value)? lastname,
    TResult? Function(_PhoneNumber value)? phoneNumber,
  }) {
    return lastname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Firstname value)? firsname,
    TResult Function(_Lastname value)? lastname,
    TResult Function(_PhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) {
    if (lastname != null) {
      return lastname(this);
    }
    return orElse();
  }
}

abstract class _Lastname implements PersonalDetailsState {
  const factory _Lastname(final String lastname) = _$LastnameImpl;

  String get lastname;
  @JsonKey(ignore: true)
  _$$LastnameImplCopyWith<_$LastnameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberImplCopyWith<$Res> {
  factory _$$PhoneNumberImplCopyWith(
          _$PhoneNumberImpl value, $Res Function(_$PhoneNumberImpl) then) =
      __$$PhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberImplCopyWithImpl<$Res>
    extends _$PersonalDetailsStateCopyWithImpl<$Res, _$PhoneNumberImpl>
    implements _$$PhoneNumberImplCopyWith<$Res> {
  __$$PhoneNumberImplCopyWithImpl(
      _$PhoneNumberImpl _value, $Res Function(_$PhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberImpl implements _PhoneNumber {
  const _$PhoneNumberImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PersonalDetailsState.phoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberImplCopyWith<_$PhoneNumberImpl> get copyWith =>
      __$$PhoneNumberImplCopyWithImpl<_$PhoneNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String firstname) firsname,
    required TResult Function(String lastname) lastname,
    required TResult Function(String phoneNumber) phoneNumber,
  }) {
    return phoneNumber(this.phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String firstname)? firsname,
    TResult? Function(String lastname)? lastname,
    TResult? Function(String phoneNumber)? phoneNumber,
  }) {
    return phoneNumber?.call(this.phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String firstname)? firsname,
    TResult Function(String lastname)? lastname,
    TResult Function(String phoneNumber)? phoneNumber,
    required TResult orElse(),
  }) {
    if (phoneNumber != null) {
      return phoneNumber(this.phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Firstname value) firsname,
    required TResult Function(_Lastname value) lastname,
    required TResult Function(_PhoneNumber value) phoneNumber,
  }) {
    return phoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Firstname value)? firsname,
    TResult? Function(_Lastname value)? lastname,
    TResult? Function(_PhoneNumber value)? phoneNumber,
  }) {
    return phoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Firstname value)? firsname,
    TResult Function(_Lastname value)? lastname,
    TResult Function(_PhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) {
    if (phoneNumber != null) {
      return phoneNumber(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumber implements PersonalDetailsState {
  const factory _PhoneNumber(final String phoneNumber) = _$PhoneNumberImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberImplCopyWith<_$PhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
