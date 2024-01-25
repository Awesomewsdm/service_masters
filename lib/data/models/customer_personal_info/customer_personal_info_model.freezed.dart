// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_personal_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerPersonalInfo _$CustomerPersonalInfoFromJson(Map<String, dynamic> json) {
  return _CustomerPersonalInfo.fromJson(json);
}

/// @nodoc
mixin _$CustomerPersonalInfo {
  @FirstNameConverter()
  FirstName get firstName => throw _privateConstructorUsedError;
  @LastNameConverter()
  LastName get lastName => throw _privateConstructorUsedError;
  @PhoneNumberConverter()
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_picture")
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get registrationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerPersonalInfoCopyWith<CustomerPersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerPersonalInfoCopyWith<$Res> {
  factory $CustomerPersonalInfoCopyWith(CustomerPersonalInfo value,
          $Res Function(CustomerPersonalInfo) then) =
      _$CustomerPersonalInfoCopyWithImpl<$Res, CustomerPersonalInfo>;
  @useResult
  $Res call(
      {@FirstNameConverter() FirstName firstName,
      @LastNameConverter() LastName lastName,
      @PhoneNumberConverter() PhoneNumber phoneNumber,
      @JsonKey(name: "profile_picture") String? profilePicture,
      String? registrationDate});
}

/// @nodoc
class _$CustomerPersonalInfoCopyWithImpl<$Res,
        $Val extends CustomerPersonalInfo>
    implements $CustomerPersonalInfoCopyWith<$Res> {
  _$CustomerPersonalInfoCopyWithImpl(this._value, this._then);

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
    Object? profilePicture = freezed,
    Object? registrationDate = freezed,
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
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerPersonalInfoImplCopyWith<$Res>
    implements $CustomerPersonalInfoCopyWith<$Res> {
  factory _$$CustomerPersonalInfoImplCopyWith(_$CustomerPersonalInfoImpl value,
          $Res Function(_$CustomerPersonalInfoImpl) then) =
      __$$CustomerPersonalInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FirstNameConverter() FirstName firstName,
      @LastNameConverter() LastName lastName,
      @PhoneNumberConverter() PhoneNumber phoneNumber,
      @JsonKey(name: "profile_picture") String? profilePicture,
      String? registrationDate});
}

/// @nodoc
class __$$CustomerPersonalInfoImplCopyWithImpl<$Res>
    extends _$CustomerPersonalInfoCopyWithImpl<$Res, _$CustomerPersonalInfoImpl>
    implements _$$CustomerPersonalInfoImplCopyWith<$Res> {
  __$$CustomerPersonalInfoImplCopyWithImpl(_$CustomerPersonalInfoImpl _value,
      $Res Function(_$CustomerPersonalInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? profilePicture = freezed,
    Object? registrationDate = freezed,
  }) {
    return _then(_$CustomerPersonalInfoImpl(
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
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerPersonalInfoImpl implements _CustomerPersonalInfo {
  _$CustomerPersonalInfoImpl(
      {@FirstNameConverter() required this.firstName,
      @LastNameConverter() required this.lastName,
      @PhoneNumberConverter() required this.phoneNumber,
      @JsonKey(name: "profile_picture") required this.profilePicture,
      required this.registrationDate});

  factory _$CustomerPersonalInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerPersonalInfoImplFromJson(json);

  @override
  @FirstNameConverter()
  final FirstName firstName;
  @override
  @LastNameConverter()
  final LastName lastName;
  @override
  @PhoneNumberConverter()
  final PhoneNumber phoneNumber;
  @override
  @JsonKey(name: "profile_picture")
  final String? profilePicture;
  @override
  final String? registrationDate;

  @override
  String toString() {
    return 'CustomerPersonalInfo(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, profilePicture: $profilePicture, registrationDate: $registrationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerPersonalInfoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, phoneNumber,
      profilePicture, registrationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerPersonalInfoImplCopyWith<_$CustomerPersonalInfoImpl>
      get copyWith =>
          __$$CustomerPersonalInfoImplCopyWithImpl<_$CustomerPersonalInfoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerPersonalInfoImplToJson(
      this,
    );
  }
}

abstract class _CustomerPersonalInfo implements CustomerPersonalInfo {
  factory _CustomerPersonalInfo(
      {@FirstNameConverter() required final FirstName firstName,
      @LastNameConverter() required final LastName lastName,
      @PhoneNumberConverter() required final PhoneNumber phoneNumber,
      @JsonKey(name: "profile_picture") required final String? profilePicture,
      required final String? registrationDate}) = _$CustomerPersonalInfoImpl;

  factory _CustomerPersonalInfo.fromJson(Map<String, dynamic> json) =
      _$CustomerPersonalInfoImpl.fromJson;

  @override
  @FirstNameConverter()
  FirstName get firstName;
  @override
  @LastNameConverter()
  LastName get lastName;
  @override
  @PhoneNumberConverter()
  PhoneNumber get phoneNumber;
  @override
  @JsonKey(name: "profile_picture")
  String? get profilePicture;
  @override
  String? get registrationDate;
  @override
  @JsonKey(ignore: true)
  _$$CustomerPersonalInfoImplCopyWith<_$CustomerPersonalInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
