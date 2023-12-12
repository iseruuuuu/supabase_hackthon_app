// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editViewModelHash() => r'7acf08ee2fc89f14876aa5c18bc4caabbac8973b';

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

abstract class _$EditViewModel extends BuildlessAutoDisposeNotifier<EditState> {
  late final EditState initState;

  EditState build({
    EditState initState = const EditState(),
  });
}

/// See also [EditViewModel].
@ProviderFor(EditViewModel)
const editViewModelProvider = EditViewModelFamily();

/// See also [EditViewModel].
class EditViewModelFamily extends Family<EditState> {
  /// See also [EditViewModel].
  const EditViewModelFamily();

  /// See also [EditViewModel].
  EditViewModelProvider call({
    EditState initState = const EditState(),
  }) {
    return EditViewModelProvider(
      initState: initState,
    );
  }

  @override
  EditViewModelProvider getProviderOverride(
    covariant EditViewModelProvider provider,
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
  String? get name => r'editViewModelProvider';
}

/// See also [EditViewModel].
class EditViewModelProvider
    extends AutoDisposeNotifierProviderImpl<EditViewModel, EditState> {
  /// See also [EditViewModel].
  EditViewModelProvider({
    EditState initState = const EditState(),
  }) : this._internal(
          () => EditViewModel()..initState = initState,
          from: editViewModelProvider,
          name: r'editViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editViewModelHash,
          dependencies: EditViewModelFamily._dependencies,
          allTransitiveDependencies:
              EditViewModelFamily._allTransitiveDependencies,
          initState: initState,
        );

  EditViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initState,
  }) : super.internal();

  final EditState initState;

  @override
  EditState runNotifierBuild(
    covariant EditViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }

  @override
  Override overrideWith(EditViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: EditViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<EditViewModel, EditState> createElement() {
    return _EditViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EditViewModelRef on AutoDisposeNotifierProviderRef<EditState> {
  /// The parameter `initState` of this provider.
  EditState get initState;
}

class _EditViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<EditViewModel, EditState>
    with EditViewModelRef {
  _EditViewModelProviderElement(super.provider);

  @override
  EditState get initState => (origin as EditViewModelProvider).initState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
