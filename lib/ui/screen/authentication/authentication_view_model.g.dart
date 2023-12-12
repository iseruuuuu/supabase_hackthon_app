// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authenticationViewModelHash() =>
    r'49abd13db29831690385e104a548107ee6579c82';

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

abstract class _$AuthenticationViewModel
    extends BuildlessAutoDisposeNotifier<AuthenticationState> {
  late final AuthenticationState initState;

  AuthenticationState build({
    AuthenticationState initState = const AuthenticationState(),
  });
}

/// See also [AuthenticationViewModel].
@ProviderFor(AuthenticationViewModel)
const authenticationViewModelProvider = AuthenticationViewModelFamily();

/// See also [AuthenticationViewModel].
class AuthenticationViewModelFamily extends Family<AuthenticationState> {
  /// See also [AuthenticationViewModel].
  const AuthenticationViewModelFamily();

  /// See also [AuthenticationViewModel].
  AuthenticationViewModelProvider call({
    AuthenticationState initState = const AuthenticationState(),
  }) {
    return AuthenticationViewModelProvider(
      initState: initState,
    );
  }

  @override
  AuthenticationViewModelProvider getProviderOverride(
    covariant AuthenticationViewModelProvider provider,
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
  String? get name => r'authenticationViewModelProvider';
}

/// See also [AuthenticationViewModel].
class AuthenticationViewModelProvider extends AutoDisposeNotifierProviderImpl<
    AuthenticationViewModel, AuthenticationState> {
  /// See also [AuthenticationViewModel].
  AuthenticationViewModelProvider({
    AuthenticationState initState = const AuthenticationState(),
  }) : this._internal(
          () => AuthenticationViewModel()..initState = initState,
          from: authenticationViewModelProvider,
          name: r'authenticationViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authenticationViewModelHash,
          dependencies: AuthenticationViewModelFamily._dependencies,
          allTransitiveDependencies:
              AuthenticationViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  AuthenticationViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final AuthenticationState initState;

  @override
  AuthenticationState runNotifierBuild(
    covariant AuthenticationViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(AuthenticationViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: AuthenticationViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<AuthenticationViewModel,
      AuthenticationState> createElement() {
    return _AuthenticationViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthenticationViewModelProvider &&
        other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AuthenticationViewModelRef
    on AutoDisposeNotifierProviderRef<AuthenticationState> {
  /// The parameter `initState` of this provider.
  AuthenticationState get initState;
}

class _AuthenticationViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<AuthenticationViewModel,
        AuthenticationState> with AuthenticationViewModelRef {
  _AuthenticationViewModelProviderElement(super.provider);

  @override
  AuthenticationState get initState =>
      (origin as AuthenticationViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
