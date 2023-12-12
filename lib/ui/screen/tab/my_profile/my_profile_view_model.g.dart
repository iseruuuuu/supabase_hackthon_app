// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_profile_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myProfileViewModelHash() =>
    r'57eaa477546706e464432eca28310644220d9a97';

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

abstract class _$MyProfileViewModel
    extends BuildlessAutoDisposeNotifier<MyProfileState> {
  late final MyProfileState initState;

  MyProfileState build({
    MyProfileState initState = const MyProfileStateLoading(),
  });
}

/// See also [MyProfileViewModel].
@ProviderFor(MyProfileViewModel)
const myProfileViewModelProvider = MyProfileViewModelFamily();

/// See also [MyProfileViewModel].
class MyProfileViewModelFamily extends Family<MyProfileState> {
  /// See also [MyProfileViewModel].
  const MyProfileViewModelFamily();

  /// See also [MyProfileViewModel].
  MyProfileViewModelProvider call({
    MyProfileState initState = const MyProfileStateLoading(),
  }) {
    return MyProfileViewModelProvider(
      initState: initState,
    );
  }

  @override
  MyProfileViewModelProvider getProviderOverride(
    covariant MyProfileViewModelProvider provider,
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
  String? get name => r'myProfileViewModelProvider';
}

/// See also [MyProfileViewModel].
class MyProfileViewModelProvider extends AutoDisposeNotifierProviderImpl<
    MyProfileViewModel, MyProfileState> {
  /// See also [MyProfileViewModel].
  MyProfileViewModelProvider({
    MyProfileState initState = const MyProfileStateLoading(),
  }) : this._internal(
          () => MyProfileViewModel()..initState = initState,
          from: myProfileViewModelProvider,
          name: r'myProfileViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myProfileViewModelHash,
          dependencies: MyProfileViewModelFamily._dependencies,
          allTransitiveDependencies:
              MyProfileViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  MyProfileViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final MyProfileState initState;

  @override
  MyProfileState runNotifierBuild(
    covariant MyProfileViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(MyProfileViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyProfileViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<MyProfileViewModel, MyProfileState>
      createElement() {
    return _MyProfileViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyProfileViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyProfileViewModelRef on AutoDisposeNotifierProviderRef<MyProfileState> {
  /// The parameter `initState` of this provider.
  MyProfileState get initState;
}

class _MyProfileViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<MyProfileViewModel,
        MyProfileState> with MyProfileViewModelRef {
  _MyProfileViewModelProviderElement(super.provider);

  @override
  MyProfileState get initState =>
      (origin as MyProfileViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
