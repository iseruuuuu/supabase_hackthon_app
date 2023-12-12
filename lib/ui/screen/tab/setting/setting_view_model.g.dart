// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingViewModelHash() => r'61bb2f19c4632ba006122f0bfbeed4f77e39d4ae';

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

abstract class _$SettingViewModel
    extends BuildlessAutoDisposeNotifier<SettingState> {
  late final SettingState initState;

  SettingState build({
    SettingState initState = const SettingState(),
  });
}

/// See also [SettingViewModel].
@ProviderFor(SettingViewModel)
const settingViewModelProvider = SettingViewModelFamily();

/// See also [SettingViewModel].
class SettingViewModelFamily extends Family<SettingState> {
  /// See also [SettingViewModel].
  const SettingViewModelFamily();

  /// See also [SettingViewModel].
  SettingViewModelProvider call({
    SettingState initState = const SettingState(),
  }) {
    return SettingViewModelProvider(
      initState: initState,
    );
  }

  @override
  SettingViewModelProvider getProviderOverride(
    covariant SettingViewModelProvider provider,
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
  String? get name => r'settingViewModelProvider';
}

/// See also [SettingViewModel].
class SettingViewModelProvider
    extends AutoDisposeNotifierProviderImpl<SettingViewModel, SettingState> {
  /// See also [SettingViewModel].
  SettingViewModelProvider({
    SettingState initState = const SettingState(),
  }) : this._internal(
          () => SettingViewModel()..initState = initState,
          from: settingViewModelProvider,
          name: r'settingViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$settingViewModelHash,
          dependencies: SettingViewModelFamily._dependencies,
          allTransitiveDependencies:
              SettingViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  SettingViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final SettingState initState;

  @override
  SettingState runNotifierBuild(
    covariant SettingViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(SettingViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SettingViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<SettingViewModel, SettingState>
      createElement() {
    return _SettingViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SettingViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SettingViewModelRef on AutoDisposeNotifierProviderRef<SettingState> {
  /// The parameter `initState` of this provider.
  SettingState get initState;
}

class _SettingViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<SettingViewModel, SettingState>
    with SettingViewModelRef {
  _SettingViewModelProviderElement(super.provider);

  @override
  SettingState get initState => (origin as SettingViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
