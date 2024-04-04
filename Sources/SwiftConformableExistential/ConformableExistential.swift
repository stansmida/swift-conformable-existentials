@_exported public import struct SwiftExtras.AdHocCodingKey
// The above exported import [leaks](https://forums.swift.org/t/pitch-access-level-on-import-statements/66657/21)
// `SwiftExtras.Equatable+Extras` equality extensions which is generally considered unwanted
// and perhaps fixed in the future. Once the leak is plugged, we need to either reexport it
// or redeclare in this module.
import SwiftSyntaxExtras

// MARK: - Existential conformance macros

/// Synthetizes `Equatable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Equatable`.
@attached(peer, names: prefixed(Equatable), prefixed(EquatableMutable), prefixed(EquatableOptional), prefixed(EquatableCollectionOf), prefixed(EquatableMutableOptional), prefixed(EquatableMutableCollectionOf), prefixed(EquatableOptionalCollectionOf), prefixed(EquatableMutableOptionalCollectionOf))
public macro EquatableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "EquatableExistential")

/// Synthetizes `Hashable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Hashable`.
@attached(peer, names: prefixed(Hashable), prefixed(HashableMutable), prefixed(HashableOptional), prefixed(HashableCollectionOf), prefixed(HashableMutableOptional), prefixed(HashableMutableCollectionOf), prefixed(HashableOptionalCollectionOf), prefixed(HashableMutableOptionalCollectionOf))
public macro HashableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "HashableExistential")

/// Synthetizes `Decodable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Decodable`.
@attached(peer, names: prefixed(Decodable), prefixed(DecodableMutable), prefixed(DecodableOptional), prefixed(DecodableCollectionOf), prefixed(DecodableMutableOptional), prefixed(DecodableMutableCollectionOf), prefixed(DecodableOptionalCollectionOf), prefixed(DecodableMutableOptionalCollectionOf))
public macro DecodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "DecodableExistential")

/// Synthetizes `Encodable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Encodable`.
@attached(peer, names: prefixed(Encodable), prefixed(EncodableMutable), prefixed(EncodableOptional), prefixed(EncodableCollectionOf), prefixed(EncodableMutableOptional), prefixed(EncodableMutableCollectionOf), prefixed(EncodableOptionalCollectionOf), prefixed(EncodableMutableOptionalCollectionOf))
public macro EncodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "EncodableExistential")

/// Synthetizes `Codable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Codable`.
@attached(peer, names: prefixed(Codable), prefixed(CodableMutable), prefixed(CodableOptional), prefixed(CodableCollectionOf), prefixed(CodableMutableOptional), prefixed(CodableMutableCollectionOf), prefixed(CodableOptionalCollectionOf), prefixed(CodableMutableOptionalCollectionOf))
public macro CodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "CodableExistential")

/// Synthetizes `Equatable & Decodable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Equatable, Decodable`.
@attached(peer, names: prefixed(EquatableDecodable), prefixed(EquatableDecodableMutable), prefixed(EquatableDecodableOptional), prefixed(EquatableDecodableCollectionOf), prefixed(EquatableDecodableMutableOptional), prefixed(EquatableDecodableMutableCollectionOf), prefixed(EquatableDecodableOptionalCollectionOf), prefixed(EquatableDecodableMutableOptionalCollectionOf))
public macro EquatableDecodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "EquatableDecodableExistential")

/// Synthetizes `Equatable & Encodable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Equatable, Encodable`.
@attached(peer, names: prefixed(EquatableEncodable), prefixed(EquatableEncodableMutable), prefixed(EquatableEncodableOptional), prefixed(EquatableEncodableCollectionOf), prefixed(EquatableEncodableMutableOptional), prefixed(EquatableEncodableMutableCollectionOf), prefixed(EquatableEncodableOptionalCollectionOf), prefixed(EquatableEncodableMutableOptionalCollectionOf))
public macro EquatableEncodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "EquatableEncodableExistential")

/// Synthetizes `Equatable & Codable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Equatable, Codable`.
@attached(peer, names: prefixed(EquatableCodable), prefixed(EquatableCodableMutable), prefixed(EquatableCodableOptional), prefixed(EquatableCodableCollectionOf), prefixed(EquatableCodableMutableOptional), prefixed(EquatableCodableMutableCollectionOf), prefixed(EquatableCodableOptionalCollectionOf), prefixed(EquatableCodableMutableOptionalCollectionOf))
public macro EquatableCodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "EquatableCodableExistential")

/// Synthetizes `Hashable & Decodable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Hashable, Decodable`.
@attached(peer, names: prefixed(HashableDecodable), prefixed(HashableDecodableMutable), prefixed(HashableDecodableOptional), prefixed(HashableDecodableCollectionOf), prefixed(HashableDecodableMutableOptional), prefixed(HashableDecodableMutableCollectionOf), prefixed(HashableDecodableOptionalCollectionOf), prefixed(HashableDecodableMutableOptionalCollectionOf))
public macro HashableDecodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "HashableDecodableExistential")

/// Synthetizes `Hashable & Encodable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Hashable, Encodable`.
@attached(peer, names: prefixed(HashableEncodable), prefixed(HashableEncodableMutable), prefixed(HashableEncodableOptional), prefixed(HashableEncodableCollectionOf), prefixed(HashableEncodableMutableOptional), prefixed(HashableEncodableMutableCollectionOf), prefixed(HashableEncodableOptionalCollectionOf), prefixed(HashableEncodableMutableOptionalCollectionOf))
public macro HashableEncodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "HashableEncodableExistential")

/// Synthetizes `Hashable & Codable` property wrapper variants (regular, mutable, optional, collection and their combinations)
/// over existentials of the annotated protocol.
/// - Parameters:
///   - accessModifier: Access level of the synthesized wrappers.
/// - Requires: Annotated type must be a protocol that conforms to `Hashable, Codable`.
@attached(peer, names: prefixed(HashableCodable), prefixed(HashableCodableMutable), prefixed(HashableCodableOptional), prefixed(HashableCodableCollectionOf), prefixed(HashableCodableMutableOptional), prefixed(HashableCodableMutableCollectionOf), prefixed(HashableCodableOptionalCollectionOf), prefixed(HashableCodableMutableOptionalCollectionOf))
public macro HashableCodableExistential(
    accessModifier: TypeAccessModifier? = nil
) = #externalMacro(module: "SwiftConformableExistentialMacros", type: "HashableCodableExistential")
