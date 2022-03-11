// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'searchModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchModelTearOff {
  const _$SearchModelTearOff();

  _SearchModel call(int page, MovieModel movie) {
    return _SearchModel(
      page,
      movie,
    );
  }
}

/// @nodoc
const $SearchModel = _$SearchModelTearOff();

/// @nodoc
mixin _$SearchModel {
  int get page => throw _privateConstructorUsedError;
  MovieModel get movie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res>;
  $Res call({int page, MovieModel movie});

  $MovieModelCopyWith<$Res> get movie;
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res> implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  final SearchModel _value;
  // ignore: unused_field
  final $Res Function(SearchModel) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? movie = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieModel,
    ));
  }

  @override
  $MovieModelCopyWith<$Res> get movie {
    return $MovieModelCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc
abstract class _$SearchModelCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$SearchModelCopyWith(
          _SearchModel value, $Res Function(_SearchModel) then) =
      __$SearchModelCopyWithImpl<$Res>;
  @override
  $Res call({int page, MovieModel movie});

  @override
  $MovieModelCopyWith<$Res> get movie;
}

/// @nodoc
class __$SearchModelCopyWithImpl<$Res> extends _$SearchModelCopyWithImpl<$Res>
    implements _$SearchModelCopyWith<$Res> {
  __$SearchModelCopyWithImpl(
      _SearchModel _value, $Res Function(_SearchModel) _then)
      : super(_value, (v) => _then(v as _SearchModel));

  @override
  _SearchModel get _value => super._value as _SearchModel;

  @override
  $Res call({
    Object? page = freezed,
    Object? movie = freezed,
  }) {
    return _then(_SearchModel(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieModel,
    ));
  }
}

/// @nodoc

class _$_SearchModel with DiagnosticableTreeMixin implements _SearchModel {
  _$_SearchModel(this.page, this.movie);

  @override
  final int page;
  @override
  final MovieModel movie;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchModel(page: $page, movie: $movie)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchModel'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('movie', movie));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchModel &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
      __$SearchModelCopyWithImpl<_SearchModel>(this, _$identity);
}

abstract class _SearchModel implements SearchModel {
  factory _SearchModel(int page, MovieModel movie) = _$_SearchModel;

  @override
  int get page;
  @override
  MovieModel get movie;
  @override
  @JsonKey(ignore: true)
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
