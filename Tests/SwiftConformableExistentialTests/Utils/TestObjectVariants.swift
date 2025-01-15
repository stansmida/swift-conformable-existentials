import SwiftConformableExistential

// MARK: - Generator interfaces

private protocol InitializableWithDrinkable {
    init(wrappedValue: any Drinkable)
}

private protocol InitializableWithOptionalDrinkable {
    init(wrappedValue: (any Drinkable)?)
}

private protocol InitializableWithDrinkables<T> {
    associatedtype T: Sequence<any Drinkable>
    init(wrappedValue: T)
}

private protocol InitializableWithOptionalDrinkables<T> {
    associatedtype T: Sequence<any Drinkable>
    init(wrappedValue: T?)
}

protocol WrapsDrinkable {
    var wrappedValue: any Drinkable { get }
}

protocol WrapsOptionalDrinkable {
    var wrappedValue: (any Drinkable)? { get }
}

protocol WrapsDrinkables {
    associatedtype S: Sequence<any Drinkable>
    var wrappedValue: S { get }
}

protocol WrapsOptionalDrinkables {
    associatedtype S: Sequence<any Drinkable>
    var wrappedValue: S? { get }
}

// MARK: EquatableExistential
extension EquatableDrinkable: InitializableWithDrinkable {}
extension EquatableMutableDrinkable: InitializableWithDrinkable {}
extension EquatableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension EquatableCollectionOfDrinkable: InitializableWithDrinkables {}
extension EquatableMutableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension EquatableMutableCollectionOfDrinkable: InitializableWithDrinkables {}
extension EquatableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
extension EquatableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
// MARK: HashableExistential
extension HashableDrinkable: InitializableWithDrinkable {}
extension HashableMutableDrinkable: InitializableWithDrinkable {}
extension HashableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension HashableCollectionOfDrinkable: InitializableWithDrinkables {}
extension HashableMutableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension HashableMutableCollectionOfDrinkable: InitializableWithDrinkables {}
extension HashableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
extension HashableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
// MARK: DecodableExistential
extension DecodableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension DecodableMutableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension DecodableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension DecodableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension DecodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension DecodableMutableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension DecodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
extension DecodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
// MARK: EncodableExistential
extension EncodableDrinkable: InitializableWithDrinkable {}
extension EncodableMutableDrinkable: InitializableWithDrinkable {}
extension EncodableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension EncodableCollectionOfDrinkable: InitializableWithDrinkables {}
extension EncodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension EncodableMutableCollectionOfDrinkable: InitializableWithDrinkables {}
extension EncodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
extension EncodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
// MARK: CodableExistential
extension CodableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension CodableMutableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension CodableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension CodableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension CodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension CodableMutableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension CodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
extension CodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
// MARK: EquatableDecodableExistential
extension EquatableDecodableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension EquatableDecodableMutableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension EquatableDecodableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension EquatableDecodableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension EquatableDecodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension EquatableDecodableMutableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension EquatableDecodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
extension EquatableDecodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
// MARK: EquatableEncodableExistential
extension EquatableEncodableDrinkable: InitializableWithDrinkable {}
extension EquatableEncodableMutableDrinkable: InitializableWithDrinkable {}
extension EquatableEncodableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension EquatableEncodableCollectionOfDrinkable: InitializableWithDrinkables {}
extension EquatableEncodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension EquatableEncodableMutableCollectionOfDrinkable: InitializableWithDrinkables {}
extension EquatableEncodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
extension EquatableEncodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
// MARK: EquatableCodableExistential
extension EquatableCodableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension EquatableCodableMutableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension EquatableCodableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension EquatableCodableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension EquatableCodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension EquatableCodableMutableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension EquatableCodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
extension EquatableCodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
// MARK: HashableDecodableExistential
extension HashableDecodableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension HashableDecodableMutableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension HashableDecodableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension HashableDecodableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension HashableDecodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension HashableDecodableMutableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension HashableDecodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
extension HashableDecodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
// MARK: EncodableExistential
extension HashableEncodableDrinkable: InitializableWithDrinkable {}
extension HashableEncodableMutableDrinkable: InitializableWithDrinkable {}
extension HashableEncodableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension HashableEncodableCollectionOfDrinkable: InitializableWithDrinkables {}
extension HashableEncodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable {}
extension HashableEncodableMutableCollectionOfDrinkable: InitializableWithDrinkables {}
extension HashableEncodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
extension HashableEncodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables {}
// MARK: CodableExistential
extension HashableCodableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension HashableCodableMutableDrinkable: InitializableWithDrinkable, WrapsDrinkable {}
extension HashableCodableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension HashableCodableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension HashableCodableMutableOptionalDrinkable: InitializableWithOptionalDrinkable, WrapsOptionalDrinkable {}
extension HashableCodableMutableCollectionOfDrinkable: InitializableWithDrinkables, WrapsDrinkables {}
extension HashableCodableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}
extension HashableCodableMutableOptionalCollectionOfDrinkable: InitializableWithOptionalDrinkables, WrapsOptionalDrinkables {}

// MARK: - Equatable generator

private typealias EquatableDrinkableWrapper = _ConformableExistentialEquatableSupport & InitializableWithDrinkable
private typealias EquatableOptionalDrinkableWrapper = _ConformableExistentialEquatableSupport & InitializableWithOptionalDrinkable
private typealias EquatableCollectionOfDrinkableWrapper<T: Sequence<any Drinkable>> = _ConformableExistentialEquatableSequenceSupport & InitializableWithDrinkables<T>
private typealias EquatableOptionalCollectionOfDrinkableWrapper<T: Sequence<any Drinkable>> = _ConformableExistentialEquatableSequenceSupport & InitializableWithOptionalDrinkables<T>

// MARK: All variants (that conform to equatable) sorted into on of 4 baskets (by wrapped value type).
// These are then used to generate values (by the 4 protocols declaring init) to be used for equality checks
// in 2 equatable categories (by the 2 protocols declaring equality).

private let equatableDrinkableWrappers: [any EquatableDrinkableWrapper.Type] = [
    EquatableDrinkable.self,
    EquatableMutableDrinkable.self,
    HashableDrinkable.self,
    HashableMutableDrinkable.self,
    EquatableDecodableDrinkable<DrinkableTypeCoding>.self,
    EquatableDecodableMutableDrinkable<DrinkableTypeCoding>.self,
    EquatableEncodableDrinkable<DrinkableTypeCoding>.self,
    EquatableEncodableMutableDrinkable<DrinkableTypeCoding>.self,
    EquatableCodableDrinkable<DrinkableTypeCoding>.self,
    EquatableCodableMutableDrinkable<DrinkableTypeCoding>.self,
    HashableDecodableDrinkable<DrinkableTypeCoding>.self,
    HashableDecodableMutableDrinkable<DrinkableTypeCoding>.self,
    HashableEncodableDrinkable<DrinkableTypeCoding>.self,
    HashableEncodableMutableDrinkable<DrinkableTypeCoding>.self,
    HashableCodableDrinkable<DrinkableTypeCoding>.self,
    HashableCodableMutableDrinkable<DrinkableTypeCoding>.self,
]

private let equatableOptionalDrinkableWrappers: [any EquatableOptionalDrinkableWrapper.Type] = [
    EquatableOptionalDrinkable.self,
    EquatableMutableOptionalDrinkable.self,
    HashableOptionalDrinkable.self,
    HashableMutableOptionalDrinkable.self,
    EquatableDecodableOptionalDrinkable<DrinkableTypeCoding>.self,
    EquatableDecodableMutableOptionalDrinkable<DrinkableTypeCoding>.self,
    EquatableEncodableOptionalDrinkable<DrinkableTypeCoding>.self,
    EquatableEncodableMutableOptionalDrinkable<DrinkableTypeCoding>.self,
    EquatableCodableOptionalDrinkable<DrinkableTypeCoding>.self,
    EquatableCodableMutableOptionalDrinkable<DrinkableTypeCoding>.self,
    HashableDecodableOptionalDrinkable<DrinkableTypeCoding>.self,
    HashableDecodableMutableOptionalDrinkable<DrinkableTypeCoding>.self,
    HashableEncodableOptionalDrinkable<DrinkableTypeCoding>.self,
    HashableEncodableMutableOptionalDrinkable<DrinkableTypeCoding>.self,
    HashableCodableOptionalDrinkable<DrinkableTypeCoding>.self,
    HashableCodableMutableOptionalDrinkable<DrinkableTypeCoding>.self,
]

private func equatableCollectionOfDrinkableWrappers<T: RangeReplaceableCollection<any Drinkable>>(of _: T.Type) -> [any EquatableCollectionOfDrinkableWrapper<T>.Type] where T: Sendable {
    [
        EquatableCollectionOfDrinkable<T>.self,
        EquatableMutableCollectionOfDrinkable<T>.self,
        HashableCollectionOfDrinkable<T>.self,
        HashableMutableCollectionOfDrinkable<T>.self,
        EquatableDecodableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableDecodableMutableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableEncodableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableEncodableMutableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableCodableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableCodableMutableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableDecodableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableDecodableMutableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableEncodableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableEncodableMutableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableCodableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableCodableMutableCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
    ]
}

private func equatableOptionalCollectionOfDrinkableWrapper<T: RangeReplaceableCollection<any Drinkable>>(of _: T.Type) -> [any EquatableOptionalCollectionOfDrinkableWrapper<T>.Type] where T: Sendable {
    [
        EquatableOptionalCollectionOfDrinkable<T>.self,
        EquatableMutableOptionalCollectionOfDrinkable<T>.self,
        HashableOptionalCollectionOfDrinkable<T>.self,
        HashableMutableOptionalCollectionOfDrinkable<T>.self,
        EquatableDecodableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableDecodableMutableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableEncodableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableEncodableMutableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableCodableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        EquatableCodableMutableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableDecodableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableDecodableMutableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableEncodableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableEncodableMutableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableCodableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
        HashableCodableMutableOptionalCollectionOfDrinkable<T, DrinkableTypeCoding>.self,
    ]
}

/// Generate all conformers of `_ConformableExistentialEquatableSupport` with given value.
func equatablesOfDrinkable(value: (any Drinkable)?) -> [any _ConformableExistentialEquatableSupport] {
    var result = [any _ConformableExistentialEquatableSupport]()
    if let value {
        result.append(contentsOf: equatableDrinkableWrappers.map({ $0.init(wrappedValue: value) }))
    }
    result.append(contentsOf: equatableOptionalDrinkableWrappers.map({ $0.init(wrappedValue: value) }))
    return result
}

/// Generate all conformers of `_ConformableExistentialEquatableSequenceSupport` with given value.
func equatablesOfDrinkables<T: RangeReplaceableCollection<any Drinkable>>(value: T?) -> [any _ConformableExistentialEquatableSequenceSupport] where T: Sendable {
    var result = [any _ConformableExistentialEquatableSequenceSupport]()
    if let value {
        result.append(contentsOf: equatableCollectionOfDrinkableWrappers(of: T.self)
            .map({ $0.init(wrappedValue: value) as any _ConformableExistentialEquatableSequenceSupport })
        )
    }
    result.append(contentsOf: equatableOptionalCollectionOfDrinkableWrapper(of: T.self)
        .map({ $0.init(wrappedValue: value) as any _ConformableExistentialEquatableSequenceSupport })
    )
    return result
}

// MARK: - Codable generator

private typealias DecodableCollectionOfDrinkableWrapper<T: RangeReplaceableCollection<any Drinkable>> = Decodable & InitializableWithDrinkables<T>
private typealias DecodableOptionalCollectionOfDrinkableWrapper<T: RangeReplaceableCollection<any Drinkable>> = Decodable & InitializableWithOptionalDrinkables<T>
private typealias EncodableCollectionOfDrinkableWrapper<T: RangeReplaceableCollection<any Drinkable>> = Encodable & InitializableWithDrinkables<T>
private typealias EncodableOptionalCollectionOfDrinkableWrapper<T: RangeReplaceableCollection<any Drinkable>> = Encodable & InitializableWithOptionalDrinkables<T>

private func decodableDrinkableWrappers<C: MetaCoding<any Drinkable.Type>>(with _: C.Type) -> [any (Decodable & InitializableWithDrinkable).Type] {
    [
        DecodableDrinkable<C>.self,
        DecodableMutableDrinkable<C>.self,
        CodableDrinkable<C>.self,
        CodableMutableDrinkable<C>.self,
        EquatableDecodableDrinkable<C>.self,
        EquatableDecodableMutableDrinkable<C>.self,
        EquatableCodableDrinkable<C>.self,
        EquatableCodableMutableDrinkable<C>.self,
        HashableDecodableDrinkable<C>.self,
        HashableDecodableMutableDrinkable<C>.self,
        HashableCodableDrinkable<C>.self,
        HashableCodableMutableDrinkable<C>.self,
    ]
}

private func decodableOptionalDrinkableWrappers<C: MetaCoding<any Drinkable.Type>>(with _: C.Type) -> [any (Decodable & InitializableWithOptionalDrinkable).Type] {
    [
        DecodableOptionalDrinkable<C>.self,
        DecodableMutableOptionalDrinkable<C>.self,
        CodableOptionalDrinkable<C>.self,
        CodableMutableOptionalDrinkable<C>.self,
        EquatableDecodableOptionalDrinkable<C>.self,
        EquatableDecodableMutableOptionalDrinkable<C>.self,
        EquatableCodableOptionalDrinkable<C>.self,
        EquatableCodableMutableOptionalDrinkable<C>.self,
        HashableDecodableOptionalDrinkable<C>.self,
        HashableDecodableMutableOptionalDrinkable<C>.self,
        HashableCodableOptionalDrinkable<C>.self,
        HashableCodableMutableOptionalDrinkable<C>.self,
    ]
}

private func decodableCollectionOfDrinkablesWrappers<S, C>(_: S.Type, with _: C.Type) -> [any DecodableCollectionOfDrinkableWrapper<S>.Type] where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {
    [
        DecodableCollectionOfDrinkable<S, C>.self,
        DecodableMutableCollectionOfDrinkable<S, C>.self,
        CodableCollectionOfDrinkable<S, C>.self,
        CodableMutableCollectionOfDrinkable<S, C>.self,
        EquatableDecodableCollectionOfDrinkable<S, C>.self,
        EquatableDecodableMutableCollectionOfDrinkable<S, C>.self,
        EquatableCodableCollectionOfDrinkable<S, C>.self,
        EquatableCodableMutableCollectionOfDrinkable<S, C>.self,
        HashableDecodableCollectionOfDrinkable<S, C>.self,
        HashableDecodableMutableCollectionOfDrinkable<S, C>.self,
        HashableCodableCollectionOfDrinkable<S, C>.self,
        HashableCodableMutableCollectionOfDrinkable<S, C>.self,
    ]
}

private func decodableOptionalCollectionOfDrinkablesWrappers<S, C>(_: S.Type, with _: C.Type) -> [any DecodableOptionalCollectionOfDrinkableWrapper<S>.Type] where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {
    [
        DecodableOptionalCollectionOfDrinkable<S, C>.self,
        DecodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        CodableOptionalCollectionOfDrinkable<S, C>.self,
        CodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        EquatableDecodableOptionalCollectionOfDrinkable<S, C>.self,
        EquatableDecodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        EquatableCodableOptionalCollectionOfDrinkable<S, C>.self,
        EquatableCodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        HashableDecodableOptionalCollectionOfDrinkable<S, C>.self,
        HashableDecodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        HashableCodableOptionalCollectionOfDrinkable<S, C>.self,
        HashableCodableMutableOptionalCollectionOfDrinkable<S, C>.self,
    ]
}

private func encodableDrinkableWrappers<C: MetaCoding<any Drinkable.Type>>(with _: C.Type) -> [any (Encodable & InitializableWithDrinkable).Type] {
    [
        EncodableDrinkable<C>.self,
        EncodableMutableDrinkable<C>.self,
        CodableDrinkable<C>.self,
        CodableMutableDrinkable<C>.self,
        EquatableEncodableDrinkable<C>.self,
        EquatableEncodableMutableDrinkable<C>.self,
        EquatableCodableDrinkable<C>.self,
        EquatableCodableMutableDrinkable<C>.self,
        HashableEncodableDrinkable<C>.self,
        HashableEncodableMutableDrinkable<C>.self,
        HashableCodableDrinkable<C>.self,
        HashableCodableMutableDrinkable<C>.self,
    ]
}

private func encodableOptionalDrinkableWrappers<C: MetaCoding<any Drinkable.Type>>(with _: C.Type) -> [any (Encodable & InitializableWithOptionalDrinkable).Type] {
    [
        EncodableOptionalDrinkable<C>.self,
        EncodableMutableOptionalDrinkable<C>.self,
        CodableOptionalDrinkable<C>.self,
        CodableMutableOptionalDrinkable<C>.self,
        EquatableEncodableOptionalDrinkable<C>.self,
        EquatableEncodableMutableOptionalDrinkable<C>.self,
        EquatableCodableOptionalDrinkable<C>.self,
        EquatableCodableMutableOptionalDrinkable<C>.self,
        HashableEncodableOptionalDrinkable<C>.self,
        HashableEncodableMutableOptionalDrinkable<C>.self,
        HashableCodableOptionalDrinkable<C>.self,
        HashableCodableMutableOptionalDrinkable<C>.self,
    ]
}

private func encodableCollectionOfDrinkablesWrappers<S, C>(_: S.Type, with _: C.Type) -> [any EncodableCollectionOfDrinkableWrapper<S>.Type] where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {
    [
        EncodableCollectionOfDrinkable<S, C>.self,
        EncodableMutableCollectionOfDrinkable<S, C>.self,
        CodableCollectionOfDrinkable<S, C>.self,
        CodableMutableCollectionOfDrinkable<S, C>.self,
        EquatableEncodableCollectionOfDrinkable<S, C>.self,
        EquatableEncodableMutableCollectionOfDrinkable<S, C>.self,
        EquatableCodableCollectionOfDrinkable<S, C>.self,
        EquatableCodableMutableCollectionOfDrinkable<S, C>.self,
        HashableEncodableCollectionOfDrinkable<S, C>.self,
        HashableEncodableMutableCollectionOfDrinkable<S, C>.self,
        HashableCodableCollectionOfDrinkable<S, C>.self,
        HashableCodableMutableCollectionOfDrinkable<S, C>.self,
    ]
}

private func encodableOptionalCollectionOfDrinkablesWrappers<S, C>(_: S.Type, with _: C.Type) -> [any EncodableOptionalCollectionOfDrinkableWrapper<S>.Type] where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {
    [
        EncodableOptionalCollectionOfDrinkable<S, C>.self,
        EncodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        CodableOptionalCollectionOfDrinkable<S, C>.self,
        CodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        EquatableEncodableOptionalCollectionOfDrinkable<S, C>.self,
        EquatableEncodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        EquatableCodableOptionalCollectionOfDrinkable<S, C>.self,
        EquatableCodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        HashableEncodableOptionalCollectionOfDrinkable<S, C>.self,
        HashableEncodableMutableOptionalCollectionOfDrinkable<S, C>.self,
        HashableCodableOptionalCollectionOfDrinkable<S, C>.self,
        HashableCodableMutableOptionalCollectionOfDrinkable<S, C>.self,
    ]
}

struct DecodablesOfDrinkable<C>: Decodable where C: MetaCoding<any Drinkable.Type> {

    init(_ drinkable: any Drinkable) {
        _d1 = DecodableDrinkable<C>(wrappedValue: drinkable)
        _d2 = DecodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d3 = CodableDrinkable<C>(wrappedValue: drinkable)
        _d4 = CodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d5 = EquatableDecodableDrinkable<C>(wrappedValue: drinkable)
        _d6 = EquatableDecodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d7 = EquatableCodableDrinkable<C>(wrappedValue: drinkable)
        _d8 = EquatableCodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d9 = HashableDecodableDrinkable<C>(wrappedValue: drinkable)
        _d10 = HashableDecodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d11 = HashableCodableDrinkable<C>(wrappedValue: drinkable)
        _d12 = HashableCodableMutableDrinkable<C>(wrappedValue: drinkable)
    }

    @DecodableDrinkable<C> var d1: any Drinkable
    @DecodableMutableDrinkable<C> var d2: any Drinkable
    @CodableDrinkable<C> var d3: any Drinkable
    @CodableMutableDrinkable<C> var d4: any Drinkable
    @EquatableDecodableDrinkable<C> var d5: any Drinkable
    @EquatableDecodableMutableDrinkable<C> var d6: any Drinkable
    @EquatableCodableDrinkable<C> var d7: any Drinkable
    @EquatableCodableMutableDrinkable<C> var d8: any Drinkable
    @HashableDecodableDrinkable<C> var d9: any Drinkable
    @HashableDecodableMutableDrinkable<C> var d10: any Drinkable
    @HashableCodableDrinkable<C> var d11: any Drinkable
    @HashableCodableMutableDrinkable<C> var d12: any Drinkable
}

struct DecodablesOfOptionalDrinkable<C>: Decodable where C: MetaCoding<any Drinkable.Type> {

    init(_ drinkable: (any Drinkable)?) {
        _d1 = DecodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d2 = DecodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d3 = CodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d4 = CodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d5 = EquatableDecodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d6 = EquatableDecodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d7 = EquatableCodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d8 = EquatableCodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d9 = HashableDecodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d10 = HashableDecodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d11 = HashableCodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d12 = HashableCodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
    }

    @DecodableOptionalDrinkable<C> var d1: (any Drinkable)?
    @DecodableMutableOptionalDrinkable<C> var d2: (any Drinkable)?
    @CodableOptionalDrinkable<C> var d3: (any Drinkable)?
    @CodableMutableOptionalDrinkable<C> var d4: (any Drinkable)?
    @EquatableDecodableOptionalDrinkable<C> var d5: (any Drinkable)?
    @EquatableDecodableMutableOptionalDrinkable<C> var d6: (any Drinkable)?
    @EquatableCodableOptionalDrinkable<C> var d7: (any Drinkable)?
    @EquatableCodableMutableOptionalDrinkable<C> var d8: (any Drinkable)?
    @HashableDecodableOptionalDrinkable<C> var d9: (any Drinkable)?
    @HashableDecodableMutableOptionalDrinkable<C> var d10: (any Drinkable)?
    @HashableCodableOptionalDrinkable<C> var d11: (any Drinkable)?
    @HashableCodableMutableOptionalDrinkable<C> var d12: (any Drinkable)?
}

struct DecodablesOfDrinkables<S, C>: Decodable where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {

    init(_ drinkables: S) {
        _d1 = DecodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d2 = DecodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d3 = CodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d4 = CodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d5 = EquatableDecodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d6 = EquatableDecodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d7 = EquatableCodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d8 = EquatableCodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d9 = HashableDecodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d10 = HashableDecodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d11 = HashableCodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d12 = HashableCodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
    }

    @DecodableCollectionOfDrinkable<S, C> var d1: S
    @DecodableMutableCollectionOfDrinkable<S, C> var d2: S
    @CodableCollectionOfDrinkable<S, C> var d3: S
    @CodableMutableCollectionOfDrinkable<S, C> var d4: S
    @EquatableDecodableCollectionOfDrinkable<S, C> var d5: S
    @EquatableDecodableMutableCollectionOfDrinkable<S, C> var d6: S
    @EquatableCodableCollectionOfDrinkable<S, C> var d7: S
    @EquatableCodableMutableCollectionOfDrinkable<S, C> var d8: S
    @HashableDecodableCollectionOfDrinkable<S, C> var d9: S
    @HashableDecodableMutableCollectionOfDrinkable<S, C> var d10: S
    @HashableCodableCollectionOfDrinkable<S, C> var d11: S
    @HashableCodableMutableCollectionOfDrinkable<S, C> var d12: S
}

struct DecodablesOfOptionalDrinkables<S, C>: Decodable where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {

    init(_ drinkables: S?) {
        _d1 = DecodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d2 = DecodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d3 = CodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d4 = CodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d5 = EquatableDecodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d6 = EquatableDecodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d7 = EquatableCodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d8 = EquatableCodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d9 = HashableDecodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d10 = HashableDecodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d11 = HashableCodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d12 = HashableCodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
    }

    @DecodableOptionalCollectionOfDrinkable<S, C> var d1: S?
    @DecodableMutableOptionalCollectionOfDrinkable<S, C> var d2: S?
    @CodableOptionalCollectionOfDrinkable<S, C> var d3: S?
    @CodableMutableOptionalCollectionOfDrinkable<S, C> var d4: S?
    @EquatableDecodableOptionalCollectionOfDrinkable<S, C> var d5: S?
    @EquatableDecodableMutableOptionalCollectionOfDrinkable<S, C> var d6: S?
    @EquatableCodableOptionalCollectionOfDrinkable<S, C> var d7: S?
    @EquatableCodableMutableOptionalCollectionOfDrinkable<S, C> var d8: S?
    @HashableDecodableOptionalCollectionOfDrinkable<S, C> var d9: S?
    @HashableDecodableMutableOptionalCollectionOfDrinkable<S, C> var d10: S?
    @HashableCodableOptionalCollectionOfDrinkable<S, C> var d11: S?
    @HashableCodableMutableOptionalCollectionOfDrinkable<S, C> var d12: S?
}

struct EncodablesOfDrinkable<C>: Encodable where C: MetaCoding<any Drinkable.Type> {

    init(_ drinkable: any Drinkable) {
        _d1 = EncodableDrinkable<C>(wrappedValue: drinkable)
        _d2 = EncodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d3 = CodableDrinkable<C>(wrappedValue: drinkable)
        _d4 = CodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d5 = EquatableEncodableDrinkable<C>(wrappedValue: drinkable)
        _d6 = EquatableEncodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d7 = EquatableCodableDrinkable<C>(wrappedValue: drinkable)
        _d8 = EquatableCodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d9 = HashableEncodableDrinkable<C>(wrappedValue: drinkable)
        _d10 = HashableEncodableMutableDrinkable<C>(wrappedValue: drinkable)
        _d11 = HashableCodableDrinkable<C>(wrappedValue: drinkable)
        _d12 = HashableCodableMutableDrinkable<C>(wrappedValue: drinkable)
    }

    @EncodableDrinkable<C> var d1: any Drinkable
    @EncodableMutableDrinkable<C> var d2: any Drinkable
    @CodableDrinkable<C> var d3: any Drinkable
    @CodableMutableDrinkable<C> var d4: any Drinkable
    @EquatableEncodableDrinkable<C> var d5: any Drinkable
    @EquatableEncodableMutableDrinkable<C> var d6: any Drinkable
    @EquatableCodableDrinkable<C> var d7: any Drinkable
    @EquatableCodableMutableDrinkable<C> var d8: any Drinkable
    @HashableEncodableDrinkable<C> var d9: any Drinkable
    @HashableEncodableMutableDrinkable<C> var d10: any Drinkable
    @HashableCodableDrinkable<C> var d11: any Drinkable
    @HashableCodableMutableDrinkable<C> var d12: any Drinkable
}

struct EncodablesOfOptionalDrinkable<C>: Encodable where C: MetaCoding<any Drinkable.Type> {

    init(_ drinkable: (any Drinkable)?) {
        _d1 = EncodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d2 = EncodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d3 = CodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d4 = CodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d5 = EquatableEncodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d6 = EquatableEncodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d7 = EquatableCodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d8 = EquatableCodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d9 = HashableEncodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d10 = HashableEncodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d11 = HashableCodableOptionalDrinkable<C>(wrappedValue: drinkable)
        _d12 = HashableCodableMutableOptionalDrinkable<C>(wrappedValue: drinkable)
    }

    @EncodableOptionalDrinkable<C> var d1: (any Drinkable)?
    @EncodableMutableOptionalDrinkable<C> var d2: (any Drinkable)?
    @CodableOptionalDrinkable<C> var d3: (any Drinkable)?
    @CodableMutableOptionalDrinkable<C> var d4: (any Drinkable)?
    @EquatableEncodableOptionalDrinkable<C> var d5: (any Drinkable)?
    @EquatableEncodableMutableOptionalDrinkable<C> var d6: (any Drinkable)?
    @EquatableCodableOptionalDrinkable<C> var d7: (any Drinkable)?
    @EquatableCodableMutableOptionalDrinkable<C> var d8: (any Drinkable)?
    @HashableEncodableOptionalDrinkable<C> var d9: (any Drinkable)?
    @HashableEncodableMutableOptionalDrinkable<C> var d10: (any Drinkable)?
    @HashableCodableOptionalDrinkable<C> var d11: (any Drinkable)?
    @HashableCodableMutableOptionalDrinkable<C> var d12: (any Drinkable)?
}

struct EncodablesOfDrinkables<S, C>: Encodable where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {

    init(_ drinkables: S) {
        _d1 = EncodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d2 = EncodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d3 = CodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d4 = CodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d5 = EquatableEncodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d6 = EquatableEncodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d7 = EquatableCodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d8 = EquatableCodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d9 = HashableEncodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d10 = HashableEncodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d11 = HashableCodableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d12 = HashableCodableMutableCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
    }

    @EncodableCollectionOfDrinkable<S, C> var d1: S
    @EncodableMutableCollectionOfDrinkable<S, C> var d2: S
    @CodableCollectionOfDrinkable<S, C> var d3: S
    @CodableMutableCollectionOfDrinkable<S, C> var d4: S
    @EquatableEncodableCollectionOfDrinkable<S, C> var d5: S
    @EquatableEncodableMutableCollectionOfDrinkable<S, C> var d6: S
    @EquatableCodableCollectionOfDrinkable<S, C> var d7: S
    @EquatableCodableMutableCollectionOfDrinkable<S, C> var d8: S
    @HashableEncodableCollectionOfDrinkable<S, C> var d9: S
    @HashableEncodableMutableCollectionOfDrinkable<S, C> var d10: S
    @HashableCodableCollectionOfDrinkable<S, C> var d11: S
    @HashableCodableMutableCollectionOfDrinkable<S, C> var d12: S
}

struct EncodablesOfOptionalDrinkables<S, C>: Encodable where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {

    init(_ drinkables: S?) {
        _d1 = EncodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d2 = EncodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d3 = CodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d4 = CodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d5 = EquatableEncodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d6 = EquatableEncodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d7 = EquatableCodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d8 = EquatableCodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d9 = HashableEncodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d10 = HashableEncodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d11 = HashableCodableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
        _d12 = HashableCodableMutableOptionalCollectionOfDrinkable<S, C>(wrappedValue: drinkables)
    }

    @EncodableOptionalCollectionOfDrinkable<S, C> var d1: S?
    @EncodableMutableOptionalCollectionOfDrinkable<S, C> var d2: S?
    @CodableOptionalCollectionOfDrinkable<S, C> var d3: S?
    @CodableMutableOptionalCollectionOfDrinkable<S, C> var d4: S?
    @EquatableEncodableOptionalCollectionOfDrinkable<S, C> var d5: S?
    @EquatableEncodableMutableOptionalCollectionOfDrinkable<S, C> var d6: S?
    @EquatableCodableOptionalCollectionOfDrinkable<S, C> var d7: S?
    @EquatableCodableMutableOptionalCollectionOfDrinkable<S, C> var d8: S?
    @HashableEncodableOptionalCollectionOfDrinkable<S, C> var d9: S?
    @HashableEncodableMutableOptionalCollectionOfDrinkable<S, C> var d10: S?
    @HashableCodableOptionalCollectionOfDrinkable<S, C> var d11: S?
    @HashableCodableMutableOptionalCollectionOfDrinkable<S, C> var d12: S?
}

func decodablesOfDrinkable<C: MetaCoding<any Drinkable.Type>>(
    optionalsOnly: Bool,
    with _: C.Type
) -> [any Decodable.Type] {
    var result = [any Decodable.Type]()
    if !optionalsOnly {
        result.append(contentsOf: decodableDrinkableWrappers(with: C.self))
    }
    result.append(contentsOf: decodableOptionalDrinkableWrappers(with: C.self))
    return result
}

func decodablesOfDrinkables<S, C>(
    of _: S.Type,
    optionalsOnly: Bool,
    with _: C.Type
) -> [any Decodable.Type] where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {
    var result = [any Decodable.Type]()
    if !optionalsOnly {
        result.append(contentsOf: decodableCollectionOfDrinkablesWrappers(S.self, with: C.self))
    }
    result.append(contentsOf: decodableOptionalCollectionOfDrinkablesWrappers(S.self, with: C.self))
    return result
}

func encodablesOfDrinkable<C: MetaCoding<any Drinkable.Type>>(
    value: (any Drinkable)?,
    with _: C.Type
) -> [any Encodable] {
    var result = [any Encodable]()
    if let value {
        result.append(contentsOf: encodableDrinkableWrappers(with: C.self).map({ $0.init(wrappedValue: value) }))
    }
    result.append(contentsOf: encodableOptionalDrinkableWrappers(with: C.self).map({ $0.init(wrappedValue: value) }))
    return result
}

func encodablesOfDrinkables<S, C>(
    value: S?,
    with _: C.Type
) -> [any Encodable] where S: RangeReplaceableCollection<any Drinkable>, S: Sendable, C: MetaCoding<any Drinkable.Type> {
    var result = [any Encodable]()
    if let value {
        result.append(contentsOf: encodableCollectionOfDrinkablesWrappers(S.self, with: C.self).map({ $0.init(wrappedValue: value) as any Encodable }))
    }
    result.append(contentsOf: encodableOptionalCollectionOfDrinkablesWrappers(S.self, with: C.self).map({ $0.init(wrappedValue: value) as any Encodable }))
    return result
}
