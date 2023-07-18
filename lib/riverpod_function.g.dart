// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_function.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$intToStringConverterHash() =>
    r'c2609d0f48f2cd29404df9ac2524b061dce1442d';

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

typedef IntToStringConverterRef = AutoDisposeProviderRef<String>;

/// See also [intToStringConverter].
@ProviderFor(intToStringConverter)
const intToStringConverterProvider = IntToStringConverterFamily();

/// See also [intToStringConverter].
class IntToStringConverterFamily extends Family<String> {
  /// See also [intToStringConverter].
  const IntToStringConverterFamily();

  /// See also [intToStringConverter].
  IntToStringConverterProvider call(
    int number,
  ) {
    return IntToStringConverterProvider(
      number,
    );
  }

  @override
  IntToStringConverterProvider getProviderOverride(
    covariant IntToStringConverterProvider provider,
  ) {
    return call(
      provider.number,
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
  String? get name => r'intToStringConverterProvider';
}

/// See also [intToStringConverter].
class IntToStringConverterProvider extends AutoDisposeProvider<String> {
  /// See also [intToStringConverter].
  IntToStringConverterProvider(
    this.number,
  ) : super.internal(
          (ref) => intToStringConverter(
            ref,
            number,
          ),
          from: intToStringConverterProvider,
          name: r'intToStringConverterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$intToStringConverterHash,
          dependencies: IntToStringConverterFamily._dependencies,
          allTransitiveDependencies:
              IntToStringConverterFamily._allTransitiveDependencies,
        );

  final int number;

  @override
  bool operator ==(Object other) {
    return other is IntToStringConverterProvider && other.number == number;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, number.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
