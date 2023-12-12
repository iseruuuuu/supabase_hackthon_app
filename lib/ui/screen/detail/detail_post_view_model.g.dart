// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_post_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailPostViewModelHash() =>
    r'1f72fd911bfbd40d9593eaa46b22051745da3fda';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DetailPostViewModel
    extends BuildlessAutoDisposeNotifier<DetailPostState> {
  late final DetailPostState initState;

  DetailPostState build({
    DetailPostState initState = const DetailPostState(),
  });
}

/// See also [DetailPostViewModel].
@ProviderFor(DetailPostViewModel)
const detailPostViewModelProvider = DetailPostViewModelFamily();

/// See also [DetailPostViewModel].
class DetailPostViewModelFamily extends Family<DetailPostState> {
  /// See also [DetailPostViewModel].
  const DetailPostViewModelFamily();

  /// See also [DetailPostViewModel].
  DetailPostViewModelProvider call({
    DetailPostState initState = const DetailPostState(),
  }) {
    return DetailPostViewModelProvider(
      initState: initState,
    );
  }

  @override
  DetailPostViewModelProvider getProviderOverride(
    covariant DetailPostViewModelProvider provider,
  ) {
    return call(
      initState: provider.initState,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailPostViewModelProvider';
}

/// See also [DetailPostViewModel].
class DetailPostViewModelProvider extends AutoDisposeNotifierProviderImpl<
    DetailPostViewModel, DetailPostState> {
  /// See also [DetailPostViewModel].
  DetailPostViewModelProvider({
    DetailPostState initState = const DetailPostState(),
  }) : this._internal(
          () => DetailPostViewModel()..initState = initState,
          from: detailPostViewModelProvider,
          name: r'detailPostViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailPostViewModelHash,
          dependencies: DetailPostViewModelFamily._dependencies,
          allTransitiveDependencies:
              DetailPostViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  DetailPostViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final DetailPostState initState;

  @override
  DetailPostState runNotifierBuild(
    covariant DetailPostViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(DetailPostViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailPostViewModelProvider._internal(
        () => create()..initState = initState,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initState: initState,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DetailPostViewModel, DetailPostState>
      createElement() {
    return _DetailPostViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailPostViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DetailPostViewModelRef
    on AutoDisposeNotifierProviderRef<DetailPostState> {
  /// The parameter `initState` of this provider.
  DetailPostState get initState;
}

class _DetailPostViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<DetailPostViewModel,
        DetailPostState> with DetailPostViewModelRef {
  _DetailPostViewModelProviderElement(super.provider);

  @override
  DetailPostState get initState =>
      (origin as DetailPostViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
