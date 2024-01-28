// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_app_review.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InAppReview _$InAppReviewFromJson(Map<String, dynamic> json) {
  return _InAppReview.fromJson(json);
}

/// @nodoc
mixin _$InAppReview {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userImageUrl => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InAppReviewCopyWith<InAppReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppReviewCopyWith<$Res> {
  factory $InAppReviewCopyWith(
          InAppReview value, $Res Function(InAppReview) then) =
      _$InAppReviewCopyWithImpl<$Res, InAppReview>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String userImageUrl,
      double rating,
      String review});
}

/// @nodoc
class _$InAppReviewCopyWithImpl<$Res, $Val extends InAppReview>
    implements $InAppReviewCopyWith<$Res> {
  _$InAppReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? userImageUrl = null,
    Object? rating = null,
    Object? review = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: null == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InAppReviewImplCopyWith<$Res>
    implements $InAppReviewCopyWith<$Res> {
  factory _$$InAppReviewImplCopyWith(
          _$InAppReviewImpl value, $Res Function(_$InAppReviewImpl) then) =
      __$$InAppReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String userImageUrl,
      double rating,
      String review});
}

/// @nodoc
class __$$InAppReviewImplCopyWithImpl<$Res>
    extends _$InAppReviewCopyWithImpl<$Res, _$InAppReviewImpl>
    implements _$$InAppReviewImplCopyWith<$Res> {
  __$$InAppReviewImplCopyWithImpl(
      _$InAppReviewImpl _value, $Res Function(_$InAppReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? userImageUrl = null,
    Object? rating = null,
    Object? review = null,
  }) {
    return _then(_$InAppReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: null == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InAppReviewImpl implements _InAppReview {
  _$InAppReviewImpl(
      {required this.id,
      required this.userId,
      required this.userName,
      required this.userImageUrl,
      required this.rating,
      required this.review});

  factory _$InAppReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$InAppReviewImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userImageUrl;
  @override
  final double rating;
  @override
  final String review;

  @override
  String toString() {
    return 'InAppReview(id: $id, userId: $userId, userName: $userName, userImageUrl: $userImageUrl, rating: $rating, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InAppReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, userName, userImageUrl, rating, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InAppReviewImplCopyWith<_$InAppReviewImpl> get copyWith =>
      __$$InAppReviewImplCopyWithImpl<_$InAppReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InAppReviewImplToJson(
      this,
    );
  }
}

abstract class _InAppReview implements InAppReview {
  factory _InAppReview(
      {required final String id,
      required final String userId,
      required final String userName,
      required final String userImageUrl,
      required final double rating,
      required final String review}) = _$InAppReviewImpl;

  factory _InAppReview.fromJson(Map<String, dynamic> json) =
      _$InAppReviewImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get userImageUrl;
  @override
  double get rating;
  @override
  String get review;
  @override
  @JsonKey(ignore: true)
  _$$InAppReviewImplCopyWith<_$InAppReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
