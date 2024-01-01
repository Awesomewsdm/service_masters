// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDataModel _$TransactionDataModelFromJson(Map<String, dynamic> json) {
  return _TransactionDataModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionDataModel {
  String get transactionAmount => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  String get transactionDirection => throw _privateConstructorUsedError;
  String get transactionNarration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataModelCopyWith<TransactionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataModelCopyWith<$Res> {
  factory $TransactionDataModelCopyWith(TransactionDataModel value,
          $Res Function(TransactionDataModel) then) =
      _$TransactionDataModelCopyWithImpl<$Res, TransactionDataModel>;
  @useResult
  $Res call(
      {String transactionAmount,
      String transactionDate,
      String transactionDirection,
      String transactionNarration});
}

/// @nodoc
class _$TransactionDataModelCopyWithImpl<$Res,
        $Val extends TransactionDataModel>
    implements $TransactionDataModelCopyWith<$Res> {
  _$TransactionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionAmount = null,
    Object? transactionDate = null,
    Object? transactionDirection = null,
    Object? transactionNarration = null,
  }) {
    return _then(_value.copyWith(
      transactionAmount: null == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$TransactionDataModelImplCopyWith<$Res>
    implements $TransactionDataModelCopyWith<$Res> {
  factory _$$TransactionDataModelImplCopyWith(_$TransactionDataModelImpl value,
          $Res Function(_$TransactionDataModelImpl) then) =
      __$$TransactionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionAmount,
      String transactionDate,
      String transactionDirection,
      String transactionNarration});
}

/// @nodoc
class __$$TransactionDataModelImplCopyWithImpl<$Res>
    extends _$TransactionDataModelCopyWithImpl<$Res, _$TransactionDataModelImpl>
    implements _$$TransactionDataModelImplCopyWith<$Res> {
  __$$TransactionDataModelImplCopyWithImpl(_$TransactionDataModelImpl _value,
      $Res Function(_$TransactionDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionAmount = null,
    Object? transactionDate = null,
    Object? transactionDirection = null,
    Object? transactionNarration = null,
  }) {
    return _then(_$TransactionDataModelImpl(
      transactionAmount: null == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$TransactionDataModelImpl implements _TransactionDataModel {
  const _$TransactionDataModelImpl(
      {required this.transactionAmount,
      required this.transactionDate,
      required this.transactionDirection,
      required this.transactionNarration});

  factory _$TransactionDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataModelImplFromJson(json);

  @override
  final String transactionAmount;
  @override
  final String transactionDate;
  @override
  final String transactionDirection;
  @override
  final String transactionNarration;

  @override
  String toString() {
    return 'TransactionDataModel(transactionAmount: $transactionAmount, transactionDate: $transactionDate, transactionDirection: $transactionDirection, transactionNarration: $transactionNarration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataModelImpl &&
            (identical(other.transactionAmount, transactionAmount) ||
                other.transactionAmount == transactionAmount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.transactionDirection, transactionDirection) ||
                other.transactionDirection == transactionDirection) &&
            (identical(other.transactionNarration, transactionNarration) ||
                other.transactionNarration == transactionNarration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionAmount,
      transactionDate, transactionDirection, transactionNarration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataModelImplCopyWith<_$TransactionDataModelImpl>
      get copyWith =>
          __$$TransactionDataModelImplCopyWithImpl<_$TransactionDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionDataModel implements TransactionDataModel {
  const factory _TransactionDataModel(
      {required final String transactionAmount,
      required final String transactionDate,
      required final String transactionDirection,
      required final String transactionNarration}) = _$TransactionDataModelImpl;

  factory _TransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$TransactionDataModelImpl.fromJson;

  @override
  String get transactionAmount;
  @override
  String get transactionDate;
  @override
  String get transactionDirection;
  @override
  String get transactionNarration;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDataModelImplCopyWith<_$TransactionDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
