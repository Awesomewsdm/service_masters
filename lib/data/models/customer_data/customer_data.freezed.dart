// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerStaticData _$CustomerStaticDataFromJson(Map<String, dynamic> json) {
  return _CustomerStaticData.fromJson(json);
}

/// @nodoc
mixin _$CustomerStaticData {
  String get customerID => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerStaticDataCopyWith<CustomerStaticData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStaticDataCopyWith<$Res> {
  factory $CustomerStaticDataCopyWith(
          CustomerStaticData value, $Res Function(CustomerStaticData) then) =
      _$CustomerStaticDataCopyWithImpl<$Res, CustomerStaticData>;
  @useResult
  $Res call(
      {String customerID, String customerName, String gender, String title});
}

/// @nodoc
class _$CustomerStaticDataCopyWithImpl<$Res, $Val extends CustomerStaticData>
    implements $CustomerStaticDataCopyWith<$Res> {
  _$CustomerStaticDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? customerName = null,
    Object? gender = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerStaticDataImplCopyWith<$Res>
    implements $CustomerStaticDataCopyWith<$Res> {
  factory _$$CustomerStaticDataImplCopyWith(_$CustomerStaticDataImpl value,
          $Res Function(_$CustomerStaticDataImpl) then) =
      __$$CustomerStaticDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerID, String customerName, String gender, String title});
}

/// @nodoc
class __$$CustomerStaticDataImplCopyWithImpl<$Res>
    extends _$CustomerStaticDataCopyWithImpl<$Res, _$CustomerStaticDataImpl>
    implements _$$CustomerStaticDataImplCopyWith<$Res> {
  __$$CustomerStaticDataImplCopyWithImpl(_$CustomerStaticDataImpl _value,
      $Res Function(_$CustomerStaticDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? customerName = null,
    Object? gender = null,
    Object? title = null,
  }) {
    return _then(_$CustomerStaticDataImpl(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerStaticDataImpl implements _CustomerStaticData {
  _$CustomerStaticDataImpl(
      {required this.customerID,
      required this.customerName,
      required this.gender,
      required this.title});

  factory _$CustomerStaticDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerStaticDataImplFromJson(json);

  @override
  final String customerID;
  @override
  final String customerName;
  @override
  final String gender;
  @override
  final String title;

  @override
  String toString() {
    return 'CustomerStaticData(customerID: $customerID, customerName: $customerName, gender: $gender, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerStaticDataImpl &&
            (identical(other.customerID, customerID) ||
                other.customerID == customerID) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerID, customerName, gender, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerStaticDataImplCopyWith<_$CustomerStaticDataImpl> get copyWith =>
      __$$CustomerStaticDataImplCopyWithImpl<_$CustomerStaticDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerStaticDataImplToJson(
      this,
    );
  }
}

abstract class _CustomerStaticData implements CustomerStaticData {
  factory _CustomerStaticData(
      {required final String customerID,
      required final String customerName,
      required final String gender,
      required final String title}) = _$CustomerStaticDataImpl;

  factory _CustomerStaticData.fromJson(Map<String, dynamic> json) =
      _$CustomerStaticDataImpl.fromJson;

  @override
  String get customerID;
  @override
  String get customerName;
  @override
  String get gender;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$CustomerStaticDataImplCopyWith<_$CustomerStaticDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
