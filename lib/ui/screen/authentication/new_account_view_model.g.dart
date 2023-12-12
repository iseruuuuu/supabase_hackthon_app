// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_account_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newAccountViewModelHash() =>
    r'48ddcecf1b3abcc8f03a05e66dbd9ada19e2872e';

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

abstract class _$NewAccountViewModel
    extends BuildlessAutoDisposeNotifier<NewAccountState> {
  late final NewAccountState initState;

  NewAccountState build({
    NewAccountState initState = const NewAccountState(),
  });
}

/// See also [NewAccountViewModel].
@ProviderFor(NewAccountViewModel)
const newAccountViewModelProvider = NewAccountViewModelFamily();

/// See also [NewAccountViewModel].
class NewAccountViewModelFamily extends Family<NewAccountState> {
  /// See also [NewAccountViewModel].
  const NewAccountViewModelFamily();

  /// See also [NewAccountViewModel].
  NewAccountViewModelProvider call({
    NewAccountState initState = const NewAccountState(),
  }) {
    return NewAccountViewModelProvider(
      initState: initState,
    );
  }

  @override
  NewAccountViewModelProvider getProviderOverride(
    covariant NewAccountViewModelProvider provider,
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
  String? get name => r'newAccountViewModelProvider';
}

/// See also [NewAccountViewModel].
class NewAccountViewModelProvider extends AutoDisposeNotifierProviderImpl<
    NewAccountViewModel, NewAccountState> {
  /// See also [NewAccountViewModel].
  NewAccountViewModelProvider({
    NewAccountState initState = const NewAccountState(),
  }) : this._internal(
          () => NewAccountViewModel()..initState = initState,
          from: newAccountViewModelProvider,
          name: r'newAccountViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newAccountViewModelHash,
          dependencies: NewAccountViewModelFamily._dependencies,
          allTransitiveDependencies:
              NewAccountViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  NewAccountViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final NewAccountState initState;

  @override
  NewAccountState runNotifierBuild(
    covariant NewAccountViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(NewAccountViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: NewAccountViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<NewAccountViewModel, NewAccountState>
      createElement() {
    return _NewAccountViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewAccountViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewAccountViewModelRef
    on AutoDisposeNotifierProviderRef<NewAccountState> {
  /// The parameter `initState` of this provider.
  NewAccountState get initState;
}

class _NewAccountViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<NewAccountViewModel,
        NewAccountState> with NewAccountViewModelRef {
  _NewAccountViewModelProviderElement(super.provider);

  @override
  NewAccountState get initState =>
      (origin as NewAccountViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
