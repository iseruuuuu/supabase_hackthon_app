// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postViewModelHash() => r'efdd920a589983ffd560cf6e0a14a18ddcfa49d6';

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

abstract class _$PostViewModel extends BuildlessAutoDisposeNotifier<PostState> {
  late final PostState initState;

  PostState build({
    PostState initState = const PostState(),
  });
}

/// See also [PostViewModel].
@ProviderFor(PostViewModel)
const postViewModelProvider = PostViewModelFamily();

/// See also [PostViewModel].
class PostViewModelFamily extends Family<PostState> {
  /// See also [PostViewModel].
  const PostViewModelFamily();

  /// See also [PostViewModel].
  PostViewModelProvider call({
    PostState initState = const PostState(),
  }) {
    return PostViewModelProvider(
      initState: initState,
    );
  }

  @override
  PostViewModelProvider getProviderOverride(
    covariant PostViewModelProvider provider,
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
  String? get name => r'postViewModelProvider';
}

/// See also [PostViewModel].
class PostViewModelProvider
    extends AutoDisposeNotifierProviderImpl<PostViewModel, PostState> {
  /// See also [PostViewModel].
  PostViewModelProvider({
    PostState initState = const PostState(),
  }) : this._internal(
          () => PostViewModel()..initState = initState,
          from: postViewModelProvider,
          name: r'postViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postViewModelHash,
          dependencies: PostViewModelFamily._dependencies,
          allTransitiveDependencies:
              PostViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  PostViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final PostState initState;

  @override
  PostState runNotifierBuild(
    covariant PostViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(PostViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<PostViewModel, PostState> createElement() {
    return _PostViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostViewModelRef on AutoDisposeNotifierProviderRef<PostState> {
  /// The parameter `initState` of this provider.
  PostState get initState;
}

class _PostViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<PostViewModel, PostState>
    with PostViewModelRef {
  _PostViewModelProviderElement(super.provider);

  @override
  PostState get initState => (origin as PostViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
