// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerTransactionData _$CustomerTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _CustomerTransactionData.fromJson(json);
}

/// @nodoc
mixin _$CustomerTransactionData {
  String get customerID => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  int get transactionAmount => throw _privateConstructorUsedError;
  String get transactionDirection => throw _privateConstructorUsedError;
  String get transactionNarration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerTransactionDataCopyWith<CustomerTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTransactionDataCopyWith<$Res> {
  factory $CustomerTransactionDataCopyWith(CustomerTransactionData value,
          $Res Function(CustomerTransactionData) then) =
      _$CustomerTransactionDataCopyWithImpl<$Res, CustomerTransactionData>;
  @useResult
  $Res call(
      {String customerID,
      String transactionDate,
      int transactionAmount,
      String transactionDirection,
      String transactionNarration});
}

/// @nodoc
class _$CustomerTransactionDataCopyWithImpl<$Res,
        $Val extends CustomerTransactionData>
    implements $CustomerTransactionDataCopyWith<$Res> {
  _$CustomerTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? transactionDate = null,
    Object? transactionAmount = null,
    Object? transactionDirection = null,
    Object? transactionNarration = null,
  }) {
    return _then(_value.copyWith(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: null == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as int,
      transactionDirection: null == transactionDirection
          ? _value.transactionDirection
          : transactionDirection // ignore: cast_nullable_to_non_nullable
              as String,
      transactionNarration: null == transactionNarration
          ? _value.transactionNarration
          : transactionNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerTransactionDataImplCopyWith<$Res>
    implements $CustomerTransactionDataCopyWith<$Res> {
  factory _$$CustomerTransactionDataImplCopyWith(
          _$CustomerTransactionDataImpl value,
          $Res Function(_$CustomerTransactionDataImpl) then) =
      __$$CustomerTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerID,
      String transactionDate,
      int transactionAmount,
      String transactionDirection,
      String transactionNarration});
}

/// @nodoc
class __$$CustomerTransactionDataImplCopyWithImpl<$Res>
    extends _$CustomerTransactionDataCopyWithImpl<$Res,
        _$CustomerTransactionDataImpl>
    implements _$$CustomerTransactionDataImplCopyWith<$Res> {
  __$$CustomerTransactionDataImplCopyWithImpl(
      _$CustomerTransactionDataImpl _value,
      $Res Function(_$CustomerTransactionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? transactionDate = null,
    Object? transactionAmount = null,
    Object? transactionDirection = null,
    Object? transactionNarration = null,
  }) {
    return _then(_$CustomerTransactionDataImpl(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: null == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as int,
      transactionDirection: null == transactionDirection
          ? _value.transactionDirection
          : transactionDirection // ignore: cast_nullable_to_non_nullable
              as String,
      transactionNarration: null == transactionNarration
          ? _value.transactionNarration
          : transactionNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerTransactionDataImpl implements _CustomerTransactionData {
  _$CustomerTransactionDataImpl(
      {required this.customerID,
      required this.transactionDate,
      required this.transactionAmount,
      required this.transactionDirection,
      required this.transactionNarration});

  factory _$CustomerTransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerTransactionDataImplFromJson(json);

  @override
  final String customerID;
  @override
  final String transactionDate;
  @override
  final int transactionAmount;
  @override
  final String transactionDirection;
  @override
  final String transactionNarration;

  @override
  String toString() {
    return 'CustomerTransactionData(customerID: $customerID, transactionDate: $transactionDate, transactionAmount: $transactionAmount, transactionDirection: $transactionDirection, transactionNarration: $transactionNarration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerTransactionDataImpl &&
            (identical(other.customerID, customerID) ||
                other.customerID == customerID) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.transactionAmount, transactionAmount) ||
                other.transactionAmount == transactionAmount) &&
            (identical(other.transactionDirection, transactionDirection) ||
                other.transactionDirection == transactionDirection) &&
            (identical(other.transactionNarration, transactionNarration) ||
                other.transactionNarration == transactionNarration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerID, transactionDate,
      transactionAmount, transactionDirection, transactionNarration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerTransactionDataImplCopyWith<_$CustomerTransactionDataImpl>
      get copyWith => __$$CustomerTransactionDataImplCopyWithImpl<
          _$CustomerTransactionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerTransactionDataImplToJson(
      this,
    );
  }
}

abstract class _CustomerTransactionData implements CustomerTransactionData {
  factory _CustomerTransactionData(
          {required final String customerID,
          required final String transactionDate,
          required final int transactionAmount,
          required final String transactionDirection,
          required final String transactionNarration}) =
      _$CustomerTransactionDataImpl;

  factory _CustomerTransactionData.fromJson(Map<String, dynamic> json) =
      _$CustomerTransactionDataImpl.fromJson;

  @override
  String get customerID;
  @override
  String get transactionDate;
  @override
  int get transactionAmount;
  @override
  String get transactionDirection;
  @override
  String get transactionNarration;
  @override
  @JsonKey(ignore: true)
  _$$CustomerTransactionDataImplCopyWith<_$CustomerTransactionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
