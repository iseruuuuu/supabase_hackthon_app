// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tabViewModelHash() => r'67f6e5cc47293976aee8a2f6682c1ca5ba247822';

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

abstract class _$TabViewModel extends BuildlessAutoDisposeNotifier<TabState> {
  late final TabState initState;

  TabState build({
    TabState initState = const TabState(),
  });
}

/// See also [TabViewModel].
@ProviderFor(TabViewModel)
const tabViewModelProvider = TabViewModelFamily();

/// See also [TabViewModel].
class TabViewModelFamily extends Family<TabState> {
  /// See also [TabViewModel].
  const TabViewModelFamily();

  /// See also [TabViewModel].
  TabViewModelProvider call({
    TabState initState = const TabState(),
  }) {
    return TabViewModelProvider(
      initState: initState,
    );
  }

  @override
  TabViewModelProvider getProviderOverride(
    covariant TabViewModelProvider provider,
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
  String? get name => r'tabViewModelProvider';
}

/// See also [TabViewModel].
class TabViewModelProvider
    extends AutoDisposeNotifierProviderImpl<TabViewModel, TabState> {
  /// See also [TabViewModel].
  TabViewModelProvider({
    TabState initState = const TabState(),
  }) : this._internal(
          () => TabViewModel()..initState = initState,
          from: tabViewModelProvider,
          name: r'tabViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tabViewModelHash,
          dependencies: TabViewModelFamily._dependencies,
          allTransitiveDependencies:
              TabViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  TabViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final TabState initState;

  @override
  TabState runNotifierBuild(
    covariant TabViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(TabViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: TabViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<TabViewModel, TabState> createElement() {
    return _TabViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TabViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TabViewModelRef on AutoDisposeNotifierProviderRef<TabState> {
  /// The parameter `initState` of this provider.
  TabState get initState;
}

class _TabViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<TabViewModel, TabState>
    with TabViewModelRef {
  _TabViewModelProviderElement(super.provider);

  @override
  TabState get initState => (origin as TabViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
