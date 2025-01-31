import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxExtras
import SwiftSyntaxMacros

public enum EquatableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: .equatable, codability: nil), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum HashableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: .hashable, codability: nil), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum DecodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: nil, codability: .decodable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum EncodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: nil, codability: .encodable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum CodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: nil, codability: .codable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum EquatableDecodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: .equatable, codability: .decodable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum EquatableEncodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: .equatable, codability: .encodable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum EquatableCodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: .equatable, codability: .codable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum HashableDecodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: .hashable, codability: .decodable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum HashableEncodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: .hashable, codability: .encodable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

public enum HashableCodableExistential: PeerMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try Configuration.allVariants
            .map { try ExpansionBuilder(configuration: .init(for: declaration, at: node, conformance: .init(equality: .hashable, codability: .codable), variant: $0)).build() }
            .flatMap { $0 }
    }
}

// MARK: - Builder

fileprivate struct Configuration {

    struct Conformance: Hashable {
        
        enum Codability: String { case decodable = "Decodable", encodable = "Encodable", codable = "Codable" }
        enum Equality: String { case equatable = "Equatable", hashable = "Hashable" }

        let equality: Equality?
        let codability: Codability?
    }

    enum ImplicitConformance: String {
        case sendable = "Sendable"
    }

    enum Variant {
        case mutable, optional, collection
    }

    static let allVariants: [Set<Variant>] = [
        [],
        [.mutable],
        [.optional],
        [.collection],
        [.mutable, .optional],
        [.mutable, .collection],
        [.optional, .collection],
        [.mutable, .optional, .collection]
    ]

    init(
        for declaration: some DeclSyntaxProtocol,
        at node: AttributeSyntax,
        conformance: Conformance,
        variant: Set<Configuration.Variant>
    ) throws {
        do {
            let declSyntaxType = try DeclSyntaxScanner(declSyntax: declaration)
            guard case .protocol = declSyntaxType.type else {
                throw Diagnostic.invalidDeclarationType(declaration, expected: [ProtocolDeclSyntax.self]).error(at: node)
            }
            self.node = node
            self.accessModifier = try TypeAccessModifier(withLabel: "accessModifier", in: declaration, at: node)
            self.protocolName = try declSyntaxType.name
            self.conformance = conformance
            self.implicitConformance = try declSyntaxType.inheritedTypes?.contains(ImplicitConformance.sendable.rawValue) == true ? [.sendable] : []
            self.variant = variant
        } catch {
            throw error.diagnosticError(at: node)
        }
    }

    let node: AttributeSyntax
    let accessModifier: TypeAccessModifier?
    let protocolName: String
    let conformance: Conformance
    let implicitConformance: [ImplicitConformance]
    let variant: Set<Variant>
}

private struct ExpansionBuilder {

    let configuration: Configuration

    func build() throws -> [DeclSyntax] {
        do {
            return [DeclSyntax(try typeDecl)]
        } catch {
            throw error.diagnosticError(at: configuration.node)
        }
    }

    // MARK: Components

    private var typeDecl: StructDeclSyntax {
        get throws {
            try StructDeclSyntax(typeHeader) {
                members
            }
            .with(\.leadingTrivia, .docLineComment(docLineComment))
        }
    }

    private var typeHeader: SyntaxNodeString {
        """
        @propertyWrapper
        \(raw: accessModifierWithTrailingSpace)\
        struct \(raw: typeName)\
        \(raw: genericParameterClause)\
        \(raw: inheritanceClause)\
        \(raw: genericWhereClause)
        """
    }

    private var accessModifierWithTrailingSpace: String {
        configuration.accessModifier.map { String(describing: $0) + " " } ?? ""
    }

    private var typeName: String {
        var variantComponent = ""
        if configuration.variant.contains(.mutable) {
            variantComponent += "Mutable"
        }
        if configuration.variant.contains(.optional) {
            variantComponent += "Optional"
        }
        if configuration.variant.contains(.collection) {
            variantComponent += "CollectionOf"
        }
        let typeName = conformanceComponent + variantComponent + configuration.protocolName
        return typeName
    }

    private var collectionType: String {
        if let codability = configuration.conformance.codability {
            codability == .encodable ? "Sequence" : "RangeReplaceableCollection"
        } else {
            "Sequence"
        }
    }

    private var conformanceComponent: String {
        var result = ""
        if let equality = configuration.conformance.equality {
            result += equality.rawValue
        }
        if let codability = configuration.conformance.codability {
            result += codability.rawValue
        }
        return result
    }

    private var genericParameterClause: String {
        var parameters = [String]()
        // Order matters.
        if configuration.variant.contains(.collection) {
            parameters.append(collectionGenericParameter)
        }
        if configuration.conformance.codability != nil {
            parameters.append(typeCodingGenericParameter)
        }
        if parameters.isEmpty {
            return ""
        } else {
            return "<\(parameters.joined(separator: ", "))>"
        }
    }

    private let collectionGenericParameter = "C"

    private let typeCodingGenericParameter = "TypeCoding"

    private var inheritanceClause: String {
        var conformances = [String]()
        if let equality = configuration.conformance.equality {
            if configuration.variant.contains(.collection) {
                conformances.append("_ConformableExistentialEquatableSequenceSupport")
            } else {
                conformances.append("_ConformableExistentialEquatableSupport")
            }
            if equality == .hashable {
                conformances.append(Configuration.Conformance.Equality.hashable.rawValue)
            }
        }
        if let codability = configuration.conformance.codability {
            conformances.append(codability.rawValue)
            if configuration.variant.contains(.optional) {
                if codability == .decodable || codability == .codable {
                    conformances.append("_OptionalExistentialDecodingSupport")
                }
                if codability == .encodable || codability == .codable {
                    conformances.append("_OptionalExistentialEncodingSupport")
                }
            }
        }
        for implicitConformance in configuration.implicitConformance {
            conformances.append(implicitConformance.rawValue)
        }
        if conformances.isEmpty {
            return ""
        } else {
            return ": " + conformances.joined(separator: ", ")
        }
    }

    private var genericWhereClause: String {
        var constraints = [String]()
        if configuration.variant.contains(.collection) {
            constraints.append("\(collectionGenericParameter): \(collectionType)<any \(configuration.protocolName)>")
            if configuration.implicitConformance.contains(.sendable) {
                constraints.append("\(collectionGenericParameter): \(Configuration.ImplicitConformance.sendable.rawValue)")
            }
        }
        if let codability = configuration.conformance.codability {
            let coding = switch codability {
            case .decodable: "Decoding"
            case .encodable: "Encoding"
            case .codable: "Coding"
            }
            constraints.append("\(typeCodingGenericParameter): Meta\(coding)<any \(configuration.protocolName).Type>")
        }
        if constraints.isEmpty {
            return ""
        } else {
            return " where \(constraints.joined(separator: ", "))"
        }
    }

    @MemberBlockItemListBuilder
    private var members: MemberBlockItemListBuilder.FinalResult {
        """
        \(raw: memberAccessModifierWithTrailingSpace)init(_ wrappedValue: \(raw: wrappedType)) {
            self.wrappedValue = wrappedValue
        }
        \(raw: memberAccessModifierWithTrailingSpace)init(wrappedValue: \(raw: wrappedType)) {
            self.wrappedValue = wrappedValue
        }
        """
        "\(raw: memberAccessModifierWithTrailingSpace)\(raw: bindingSpecifier) wrappedValue: \(raw: wrappedType)"
        "\(raw: memberAccessModifierWithTrailingSpace)var projectedValue: Self { self }"
        if let equality = configuration.conformance.equality {
            if configuration.variant.contains(.collection) {
                "\(raw: memberAccessModifierWithTrailingSpace)var _sequenceOfEquatables: \(raw: collectionGenericParameter)? { wrappedValue }"
            } else {
                "\(raw: memberAccessModifierWithTrailingSpace)var _equatable: (any Equatable)? { wrappedValue }"
            }
            if equality == .hashable {
                """
                \(raw: memberAccessModifierWithTrailingSpace)func hash(into hasher: inout Hasher) {
                    \(hashIntoHasherBody)
                }
                """
            }
        }
        if let codability = configuration.conformance.codability {
            if codability == .decodable || codability == .codable {
                """
                \(raw: memberAccessModifierWithTrailingSpace)init(from decoder: Decoder) throws {
                    \(initFromDecoderBody)
                }
                """
            }
            if codability == .encodable || codability == .codable {
                """
                \(raw: memberAccessModifierWithTrailingSpace)func encode(to encoder: Encoder) throws {
                    \(encodeToEncoderBody)
                }
                """
            }
        }
    }

    private var memberAccessModifierWithTrailingSpace: String {
        configuration.accessModifier.map { String(describing: $0.memberDerivate) + " " } ?? ""
    }

    private var wrappedType: String {
        if configuration.variant.isSuperset(of: [.optional, .collection]) {
            "\(collectionGenericParameter)?"
        } else if configuration.variant.isSuperset(of: [.optional]) {
            "(any \(configuration.protocolName))?"
        } else if configuration.variant.isSuperset(of: [.collection]) {
            "\(collectionGenericParameter)"
        } else {
            "any \(configuration.protocolName)"
        }
    }

    private var bindingSpecifier: String {
        configuration.variant.contains(.mutable) ? "var" : "let"
    }

    private var hashIntoHasherBody: CodeBlockItemListSyntax {
        switch (configuration.variant.contains(.optional), configuration.variant.contains(.collection)) {
            case (false, false):
                """
                hasher.combine(ObjectIdentifier(type(of: wrappedValue)))
                hasher.combine(wrappedValue)
                """
            case (false, true):
                """
                hasher.combine(ObjectIdentifier(\(raw: collectionGenericParameter).self))
                for element in wrappedValue {
                    hasher.combine(ObjectIdentifier(type(of: element)))
                    hasher.combine(element)
                }
                """
            case (true, false):
                """
                if let wrappedValue {
                    hasher.combine(ObjectIdentifier(type(of: wrappedValue)))
                    hasher.combine(wrappedValue)
                } else {
                    hasher.combine(ObjectIdentifier(Optional<any \(raw: configuration.protocolName)>.self))
                }
                """
            case (true, true):
                """
                if let wrappedValue {
                    hasher.combine(ObjectIdentifier(\(raw: collectionGenericParameter).self))
                    for element in wrappedValue {
                        hasher.combine(ObjectIdentifier(type(of: element)))
                        hasher.combine(element)
                    }
                } else {
                    hasher.combine(ObjectIdentifier(Optional<\(raw: collectionGenericParameter)>.self))
                }
                """
        }
    }

    private var initFromDecoderBody: CodeBlockItemListSyntax {
        let nonNilDecoding: CodeBlockItemListSyntax = if configuration.variant.contains(.collection) {
            """
            var container = try decoder.unkeyedContainer()
            var array = Array<any \(raw: configuration.protocolName)>()
            if let count = container.count {
                array.reserveCapacity(count)
            }
            while !container.isAtEnd {
                let element = try container.decode(\(raw: conformanceComponent)\(raw: configuration.protocolName)<\(raw: typeCodingGenericParameter)>.self).wrappedValue
                array.append(element)
            }
            wrappedValue = \(raw: collectionGenericParameter)(array)
            """
        } else {
            """
            let type = try \(raw: typeCodingGenericParameter).decode(from: decoder)
            wrappedValue = try type.init(from: decoder) as any \(raw: configuration.protocolName)
            """
        }
        if configuration.variant.contains(.optional) {
            // Handles decoding an uncontained wrapper from "null" data.
            // Contained nulls are handled via `KeyedDecodingContainer` extension
            // that takes `_OptionalExistentialDecodingSupport` and decodes
            // conditionally (`decodeIfPresent`).
            return """
            if (try? decoder.singleValueContainer().decodeNil()) == true {
                wrappedValue = nil
            } else {
                \(nonNilDecoding)
            }
            """
        } else {
            return nonNilDecoding
        }
    }

    private var encodeToEncoderBody: CodeBlockItemListSyntax {
        switch (configuration.variant.contains(.optional), configuration.variant.contains(.collection)) {
            case (false, false):
                """
                try wrappedValue.encode(to: encoder)
                try \(raw: typeCodingGenericParameter).encode(type(of: wrappedValue), to: encoder)
                """
            case (false, true):
                """
                var container = encoder.unkeyedContainer()
                try container.encode(
                    contentsOf: wrappedValue.lazy.map({ \(raw: conformanceComponent)\(raw: configuration.protocolName)<\(raw: typeCodingGenericParameter)>(wrappedValue: $0) })
                )
                """
            case (true, false):
                """
                if let wrappedValue {
                    try wrappedValue.encode(to: encoder)
                    try \(raw: typeCodingGenericParameter).encode(type(of: wrappedValue), to: encoder)
                } else {
                    var container = encoder.singleValueContainer()
                    try container.encodeNil()
                }
                """
            case (true, true):
                """
                if let wrappedValue {
                    var container = encoder.unkeyedContainer()
                    try container.encode(
                        contentsOf: wrappedValue.lazy.map({ \(raw: conformanceComponent)\(raw: configuration.protocolName)<\(raw: typeCodingGenericParameter)>(wrappedValue: $0) })
                    )
                } else {
                    var container = encoder.singleValueContainer()
                    try container.encodeNil()
                }
                """
        }
    }

    private var docLineComment: String {
        if configuration.conformance.equality != nil, configuration.variant.contains(.collection) {
            """
            /// - Important: `\(collectionGenericParameter)` must be an ordered collection in order to correctly compare for equality.
            /// See the documentation why and how to use your custom unordered collections.
            """ + "\n"
        } else {
            ""
        }
    }
}
