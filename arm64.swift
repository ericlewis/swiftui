// swift-interface-format-version: 1.0
// swift-compiler-version: Apple Swift version 5.1.1 (swiftlang-1100.2.274.2 clang-1100.2.32.1)
// swift-module-flags: -target arm64-apple-ios13.2 -enable-objc-interop -enable-library-evolution -swift-version 5 -enforce-exclusivity=checked -Osize -module-name SwiftUI
import Combine
import CoreData
import CoreFoundation
import CoreGraphics
import CoreText
import Darwin
import Foundation
import Swift
@_exported import SwiftUI
import UIKit
import os.log
import os
import os.signpost
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ButtonGesture {
  public var action: () -> Swift.Void
  public var pressingAction: ((Swift.Bool) -> Swift.Void)?
  public init(action: @escaping () -> Swift.Void, pressing: ((Swift.Bool) -> Swift.Void)? = nil)
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI._ButtonGesture>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Swift.Void>
  public typealias Value = ()
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func _onButtonGesture(pressing: ((Swift.Bool) -> Swift.Void)? = nil, perform action: @escaping () -> Swift.Void) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol DatePickerStyle {
  associatedtype _Body : SwiftUI.View
  func _body(configuration: SwiftUI.DatePicker<Self._Label>) -> Self._Body
  typealias _Label = SwiftUI._DatePickerStyleLabel
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _DatePickerStyleLabel : SwiftUI.View {
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func datePickerStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.DatePickerStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum __App {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension __App {
  public static func run<V>(_ rootView: V) -> Swift.Never where V : SwiftUI.View
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _TestApp {
  public init()
  public func run() -> Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func sheet<Item, Content>(item: SwiftUI.Binding<Item?>, onDismiss: (() -> Swift.Void)? = nil, @SwiftUI.ViewBuilder content: @escaping (Item) -> Content) -> some SwiftUI.View where Item : Swift.Identifiable, Content : SwiftUI.View
  
  public func sheet<Content>(isPresented: SwiftUI.Binding<Swift.Bool>, onDismiss: (() -> Swift.Void)? = nil, @SwiftUI.ViewBuilder content: @escaping () -> Content) -> some SwiftUI.View where Content : SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func _trait<K>(_ key: K.Type, _ value: K.Value) -> some SwiftUI.View where K : SwiftUI._ViewTraitKey {
        return modifier(_TraitWritingModifier<K>(value: value))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _ViewTraitKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _TraitWritingModifier<Trait> where Trait : SwiftUI._ViewTraitKey {
  public let value: Trait.Value
  @inlinable public init(value: Trait.Value) {
        self.value = value
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._TraitWritingModifier<Trait>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<SwiftUI._TraitWritingModifier<Trait>>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct LongPressGesture {
  public var minimumDuration: Swift.Double
  public var maximumDistance: CoreGraphics.CGFloat
  public init(minimumDuration: Swift.Double = 0.5, maximumDistance: CoreGraphics.CGFloat = 10)
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.LongPressGesture>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Swift.Bool>
  public typealias Value = Swift.Bool
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension View {
  public func onLongPressGesture(minimumDuration: Swift.Double = 0.5, maximumDistance: CoreGraphics.CGFloat = 10, pressing: ((Swift.Bool) -> Swift.Void)? = nil, perform action: @escaping () -> Swift.Void) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _BenchmarkHost {
  func _renderForTest(interval: Swift.Double)
  func _performScrollTest(startOffset: CoreGraphics.CGFloat, iterations: Swift.Int, delta: CoreGraphics.CGFloat, length: CoreGraphics.CGFloat, completion: (() -> Swift.Void)?)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _Benchmark : SwiftUI._Test {
  func measure(host: SwiftUI._BenchmarkHost) -> [Swift.Double]
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BenchmarkHost {
  public func _performScrollTest(startOffset: CoreGraphics.CGFloat, iterations: Swift.Int, delta: CoreGraphics.CGFloat, length: CoreGraphics.CGFloat, completion: (() -> Swift.Void)?)
  public func measureAction(action: () -> Swift.Void) -> Swift.Double
  public func measureRender(interval: Swift.Double = 1.0 / 60.0) -> Swift.Double
  public func measureRenders(seconds: Swift.Double) -> [Swift.Double]
  public func measureRenders(duration: Swift.Double) -> [Swift.Double]
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _TestApp {
  public func runBenchmarks(_ benchmarks: [SwiftUI._Benchmark]) -> Swift.Never
}
extension View {
  @available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
  @available(watchOS, unavailable)
  public func disableAutocorrection(_ disable: Swift.Bool?) -> some SwiftUI.View
  
}
extension EnvironmentValues {
  @available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
  @available(watchOS, unavailable)
  public var disableAutocorrection: Swift.Bool? {
    get
    set
  }
}
@available(iOS, unavailable)
@available(OSX, deprecated, message: "Use MenuButton instead.")
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public typealias PullDownButton = SwiftUI._PullDownButton
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _PullDownButton<Label, Content> : SwiftUI.View where Label : SwiftUI.View, Content : SwiftUI.View {
  public init(label: Label, @SwiftUI.ViewBuilder content: () -> Content)
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._PullDownButton<Label, Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS, unavailable)
@available(OSX, deprecated, message: "Use MenuButton instead.")
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension _PullDownButton where Label == SwiftUI.Text {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: SwiftUI.LocalizedStringKey, @SwiftUI.ViewBuilder content: () -> Content)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S>(_ title: S, @SwiftUI.ViewBuilder content: () -> Content) where S : Swift.StringProtocol
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _PullDownButtonContainer<Label> : SwiftUI._VariadicView.UnaryViewRoot where Label : SwiftUI.View {
  public func body(children: SwiftUI._VariadicView.Children) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI24_PullDownButtonContainerV4body8childrenQrAA22_VariadicView_ChildrenV_tF", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct EdgeInsets : Swift.Equatable {
  public var top: CoreGraphics.CGFloat
  public var leading: CoreGraphics.CGFloat
  public var bottom: CoreGraphics.CGFloat
  public var trailing: CoreGraphics.CGFloat
  @inlinable public init(top: CoreGraphics.CGFloat, leading: CoreGraphics.CGFloat, bottom: CoreGraphics.CGFloat, trailing: CoreGraphics.CGFloat) {
        self.top = top
        self.leading = leading
        self.bottom = bottom
        self.trailing = trailing
    }
  @inlinable public init() {
        self.init(top: 0, leading: 0, bottom: 0, trailing: 0)
    }
  public static func == (a: SwiftUI.EdgeInsets, b: SwiftUI.EdgeInsets) -> Swift.Bool
}
extension EdgeInsets {
  @usableFromInline
  internal init(_all: CoreGraphics.CGFloat)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EdgeInsets : SwiftUI.Animatable, SwiftUI._VectorMath {
  public typealias AnimatableData = SwiftUI.AnimatablePair<CoreGraphics.CGFloat, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>>>
  public var animatableData: SwiftUI.EdgeInsets.AnimatableData {
    @inlinable get {
            return .init(top, .init(leading, .init(bottom, trailing)))
        }
    @inlinable set {
            let top = newValue[].0
            let leading = newValue[].1[].0
            let (bottom, trailing) = newValue[].1[].1[]
            self = .init(
                top: top, leading: leading, bottom: bottom, trailing: trailing)
        }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol GeometryEffect : SwiftUI.Animatable, SwiftUI.ViewModifier where Self.Body == Swift.Never {
  func effectValue(size: CoreGraphics.CGSize) -> SwiftUI.ProjectionTransform
  static var _affectsLayout: Swift.Bool { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension GeometryEffect {
  public static var _affectsLayout: Swift.Bool {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension GeometryEffect {
  public static func _makeView(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
}
@usableFromInline
internal struct ItemProviderTraitKey : SwiftUI._ViewTraitKey {
  @usableFromInline
  internal typealias Value = Swift.Optional<() -> Foundation.NSItemProvider?>
  @inlinable internal static var defaultValue: SwiftUI.ItemProviderTraitKey.Value {
    get { nil }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func itemProvider(_ action: Swift.Optional<() -> Foundation.NSItemProvider?>) -> some SwiftUI.View {
        return _trait(ItemProviderTraitKey.self, action)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Toggle<Label> : SwiftUI.View where Label : SwiftUI.View {
  public init(isOn: SwiftUI.Binding<Swift.Bool>, @SwiftUI.ViewBuilder label: () -> Label)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI6ToggleV4bodyQrvp", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Toggle where Label == SwiftUI.ToggleStyleConfiguration.Label {
  @available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
  public init(_ configuration: SwiftUI.ToggleStyleConfiguration)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Toggle where Label == SwiftUI.Text {
  public init(_ titleKey: SwiftUI.LocalizedStringKey, isOn: SwiftUI.Binding<Swift.Bool>)
  @_disfavoredOverload public init<S>(_ title: S, isOn: SwiftUI.Binding<Swift.Bool>) where S : Swift.StringProtocol
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _Velocity<Value> : Swift.Equatable where Value : Swift.Equatable {
  public var valuePerSecond: Value
  @inlinable public init(valuePerSecond: Value) {
        self.valuePerSecond = valuePerSecond
    }
  public static func == (a: SwiftUI._Velocity<Value>, b: SwiftUI._Velocity<Value>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Velocity : Swift.Comparable where Value : Swift.Comparable {
  public static func < (lhs: SwiftUI._Velocity<Value>, rhs: SwiftUI._Velocity<Value>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Velocity : SwiftUI.Animatable where Value : SwiftUI.Animatable {
  public typealias AnimatableData = Value.AnimatableData
  public var animatableData: SwiftUI._Velocity<Value>.AnimatableData {
    @inlinable get { return valuePerSecond.animatableData }
    @inlinable set { valuePerSecond.animatableData = newValue }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Velocity : Swift.AdditiveArithmetic where Value : Swift.AdditiveArithmetic {
  @inlinable public init() {
        self.init(valuePerSecond: .zero)
    }
  @inlinable public static var zero: SwiftUI._Velocity<Value> {
    get {
        return .init(valuePerSecond: .zero)
    }
  }
  @inlinable public static func += (lhs: inout SwiftUI._Velocity<Value>, rhs: SwiftUI._Velocity<Value>) {
        lhs.valuePerSecond += rhs.valuePerSecond
    }
  @inlinable public static func -= (lhs: inout SwiftUI._Velocity<Value>, rhs: SwiftUI._Velocity<Value>) {
        lhs.valuePerSecond -= rhs.valuePerSecond
    }
  @inlinable public static func + (lhs: SwiftUI._Velocity<Value>, rhs: SwiftUI._Velocity<Value>) -> SwiftUI._Velocity<Value> {
        var r = lhs; r += rhs; return r
    }
  @inlinable public static func - (lhs: SwiftUI._Velocity<Value>, rhs: SwiftUI._Velocity<Value>) -> SwiftUI._Velocity<Value> {
        var r = lhs; r -= rhs; return r
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Velocity : SwiftUI.VectorArithmetic where Value : SwiftUI.VectorArithmetic {
  @inlinable mutating public func scale(by rhs: Swift.Double) {
        valuePerSecond.scale(by: rhs)
    }
  @inlinable public var magnitudeSquared: Swift.Double {
    get {
        return valuePerSecond.magnitudeSquared
    }
  }
}
@usableFromInline
internal struct OnDeleteTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Optional<(Foundation.IndexSet) -> Swift.Void> {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = Swift.Optional<(Foundation.IndexSet) -> Swift.Void>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension DynamicViewContent {
  @inlinable public func onDelete(perform action: Swift.Optional<(Foundation.IndexSet) -> Swift.Void>) -> some SwiftUI.DynamicViewContent {
        return modifier(_TraitWritingModifier<OnDeleteTraitKey>(value: action))
    }
  
}
@usableFromInline
internal struct IsDeleteDisabledTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func deleteDisabled(_ isDisabled: Swift.Bool) -> some SwiftUI.View {
        return _trait(IsDeleteDisabledTraitKey.self, isDisabled)
    }
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@frozen public struct _HoverRegionModifier : SwiftUI.ViewModifier {
  public let callback: (Swift.Bool) -> Swift.Void
  @inlinable public init(_ callback: @escaping (Swift.Bool) -> Swift.Void) {
        var currentValue = false
        // Wrap the callback to avoid redundant updates
        self.callback = { newValue in
            guard newValue != currentValue else { return }
            currentValue = newValue
            callback(newValue)
        }
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._HoverRegionModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func onHover(perform action: @escaping (Swift.Bool) -> Swift.Void) -> some SwiftUI.View {
        return modifier(_HoverRegionModifier(action))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Color : Swift.Hashable, Swift.CustomStringConvertible {
  private var provider: SwiftUI.AnyColorBox
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (lhs: SwiftUI.Color, rhs: SwiftUI.Color) -> Swift.Bool
  public var description: Swift.String {
    get
  }
  public var hashValue: Swift.Int {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  public typealias Body = Swift.Never
}
@usableFromInline
internal class AnyColorBox {
  @objc @usableFromInline
  deinit
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  public static func spring(response: Swift.Double = 0.55, dampingFraction: Swift.Double = 0.825, blendDuration: Swift.Double = 0) -> SwiftUI.Animation
  public static func interactiveSpring(response: Swift.Double = 0.15, dampingFraction: Swift.Double = 0.86, blendDuration: Swift.Double = 0.25) -> SwiftUI.Animation
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol MenuButtonStyle {
  associatedtype _Body : SwiftUI.View
  func _body(configuration: Self._Configuration) -> Self._Body
  typealias _Configuration = SwiftUI._MenuButtonStyleConfiguration
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _MenuButtonStyleConfiguration {
  public struct Label : SwiftUI.View {
    public typealias Body = Swift.Never
  }
  public struct Content : SwiftUI.View {
    public typealias Body = Swift.Never
  }
  public var label: SwiftUI._MenuButtonStyleConfiguration.Label
  public var content: SwiftUI._MenuButtonStyleConfiguration.Content
  public init()
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  public func menuButtonStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.MenuButtonStyle
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol _PullDownButtonStyle {
  static func _makeView<Label>(value: SwiftUI._GraphValue<SwiftUI._PullDownButtonValue<Self, Label>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where Label : SwiftUI.View
  static func _makeViewList<Label>(value: SwiftUI._GraphValue<SwiftUI._PullDownButtonValue<Self, Label>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where Label : SwiftUI.View
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _PullDownButtonValue<Style, Label> where Style : SwiftUI._PullDownButtonStyle, Label : SwiftUI.View {
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func _pullDownButtonStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI._PullDownButtonStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public static var _mainNamedBundle: Foundation.Bundle?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public init(_ name: Swift.String, bundle: Foundation.Bundle? = nil)
  public init(_ name: Swift.String, bundle: Foundation.Bundle? = nil, label: SwiftUI.Text)
  public init(decorative name: Swift.String, bundle: Foundation.Bundle? = nil)
  @available(OSX, unavailable)
  public init(systemName: Swift.String)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Text : Swift.Equatable {
  @usableFromInline
  @frozen internal enum Storage : Swift.Equatable {
    case verbatim(Swift.String)
    case anyTextStorage(SwiftUI.AnyTextStorage)
    @usableFromInline
    internal static func == (lhs: SwiftUI.Text.Storage, rhs: SwiftUI.Text.Storage) -> Swift.Bool
  }
  @usableFromInline
  @frozen internal enum Modifier : Swift.Equatable {
    case color(SwiftUI.Color?)
    case font(SwiftUI.Font?)
    case italic
    case weight(SwiftUI.Font.Weight?)
    case kerning(CoreGraphics.CGFloat)
    case tracking(CoreGraphics.CGFloat)
    case baseline(CoreGraphics.CGFloat)
    case rounded
    case anyTextModifier(SwiftUI.AnyTextModifier)
    @usableFromInline
    internal static func == (lhs: SwiftUI.Text.Modifier, rhs: SwiftUI.Text.Modifier) -> Swift.Bool
  }
  @usableFromInline
  internal var storage: SwiftUI.Text.Storage
  @usableFromInline
  internal var modifiers: [SwiftUI.Text.Modifier] = [Modifier]()
  @inlinable public init(verbatim content: Swift.String) {
        storage = .verbatim(content)
    }
  @_disfavoredOverload public init<S>(_ content: S) where S : Swift.StringProtocol
  public init(_ key: SwiftUI.LocalizedStringKey, tableName: Swift.String? = nil, bundle: Foundation.Bundle? = nil, comment: Swift.StaticString? = nil)
  public static func == (a: SwiftUI.Text, b: SwiftUI.Text) -> Swift.Bool
}
@usableFromInline
internal class AnyTextStorage {
  @objc @usableFromInline
  deinit
}
@usableFromInline
internal class AnyTextModifier {
  @objc @usableFromInline
  deinit
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct LocalizedStringKey : Swift.Equatable, Swift.ExpressibleByStringInterpolation {
  internal var key: Swift.String
  private var hasFormatting: Swift.Bool = false
  private var arguments: [SwiftUI.LocalizedStringKey.FormatArgument]
  public init(_ value: Swift.String)
  public init(stringLiteral value: Swift.String)
  public init(stringInterpolation: SwiftUI.LocalizedStringKey.StringInterpolation)
  @usableFromInline
  internal struct FormatArgument : Swift.Equatable {
    @usableFromInline
    internal static func == (lhs: SwiftUI.LocalizedStringKey.FormatArgument, rhs: SwiftUI.LocalizedStringKey.FormatArgument) -> Swift.Bool
  }
  public struct StringInterpolation : Swift.StringInterpolationProtocol {
    public init(literalCapacity: Swift.Int, interpolationCount: Swift.Int)
    mutating public func appendLiteral(_ literal: Swift.String)
    mutating public func appendInterpolation(_ string: Swift.String)
    mutating public func appendInterpolation<Subject>(_ subject: Subject, formatter: Foundation.Formatter? = nil) where Subject : Foundation.ReferenceConvertible
    mutating public func appendInterpolation<Subject>(_ subject: Subject, formatter: Foundation.Formatter? = nil) where Subject : ObjectiveC.NSObject
    mutating public func appendInterpolation<T>(_ value: T) where T : SwiftUI._FormatSpecifiable
    mutating public func appendInterpolation<T>(_ value: T, specifier: Swift.String) where T : SwiftUI._FormatSpecifiable
    public typealias StringLiteralType = Swift.String
  }
  public typealias StringLiteralType = Swift.String
  public typealias ExtendedGraphemeClusterLiteralType = Swift.String
  public typealias UnicodeScalarLiteralType = Swift.String
  public static func == (a: SwiftUI.LocalizedStringKey, b: SwiftUI.LocalizedStringKey) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _FormatSpecifiable : Swift.Equatable {
  associatedtype _Arg : Swift.CVarArg
  var _arg: Self._Arg { get }
  var _specifier: Swift.String { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.Int64 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.Int64
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int8 : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.Int32 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.Int32
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int16 : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.Int32 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.Int32
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int32 : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.Int32 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.Int32
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int64 : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.Int64 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.Int64
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.UInt64 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.UInt64
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt8 : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.UInt32 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.UInt32
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt16 : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.UInt32 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.UInt32
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt32 : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.UInt32 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.UInt32
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt64 : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.UInt64 {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.UInt64
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Float : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.Float {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.Float
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Double : SwiftUI._FormatSpecifiable {
  public var _arg: Swift.Double {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = Swift.Double
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGFloat : SwiftUI._FormatSpecifiable {
  public var _arg: CoreGraphics.CGFloat {
    get
  }
  public var _specifier: Swift.String {
    get
  }
  public typealias _Arg = CoreGraphics.CGFloat
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text {
  public static func + (lhs: SwiftUI.Text, rhs: SwiftUI.Text) -> SwiftUI.Text
}
@usableFromInline
internal struct OnMoveTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Optional<(Foundation.IndexSet, Swift.Int) -> Swift.Void> {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = Swift.Optional<(Foundation.IndexSet, Swift.Int) -> Swift.Void>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension DynamicViewContent {
  @inlinable public func onMove(perform action: Swift.Optional<(Foundation.IndexSet, Swift.Int) -> Swift.Void>) -> some SwiftUI.DynamicViewContent {
        modifier(_TraitWritingModifier<OnMoveTraitKey>(value: action))
    }
  
}
@usableFromInline
internal struct IsMoveDisabledTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func moveDisabled(_ isDisabled: Swift.Bool) -> some SwiftUI.View {
        return _trait(IsMoveDisabledTraitKey.self, isDisabled)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _TrimmedShape<S> : SwiftUI.Shape where S : SwiftUI.Shape {
  public var shape: S
  public var startFraction: CoreGraphics.CGFloat
  public var endFraction: CoreGraphics.CGFloat
  @inlinable public init(shape: S, startFraction: CoreGraphics.CGFloat = 0, endFraction: CoreGraphics.CGFloat = 1) {
        self.shape = shape
        self.startFraction = startFraction
        self.endFraction = endFraction
    }
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = SwiftUI.AnimatablePair<S.AnimatableData, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>>
  public var animatableData: SwiftUI._TrimmedShape<S>.AnimatableData {
    get
    set
  }
  public typealias Body = SwiftUI._ShapeView<SwiftUI._TrimmedShape<S>, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable public func trim(from startFraction: CoreGraphics.CGFloat = 0, to endFraction: CoreGraphics.CGFloat = 1) -> some SwiftUI.Shape {
        return _TrimmedShape(shape: self, startFraction: startFraction,
            endFraction: endFraction)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Font : Swift.Hashable {
  private var provider: SwiftUI.AnyFontBox
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (lhs: SwiftUI.Font, rhs: SwiftUI.Font) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
}
@usableFromInline
internal class AnyFontBox {
  @objc @usableFromInline
  deinit
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum ContentSizeCategory : Swift.Hashable, Swift.CaseIterable {
  case extraSmall
  case small
  case medium
  case large
  case extraLarge
  case extraExtraLarge
  case extraExtraExtraLarge
  case accessibilityMedium
  case accessibilityLarge
  case accessibilityExtraLarge
  case accessibilityExtraExtraLarge
  case accessibilityExtraExtraExtraLarge
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (a: SwiftUI.ContentSizeCategory, b: SwiftUI.ContentSizeCategory) -> Swift.Bool
  public typealias AllCases = [SwiftUI.ContentSizeCategory]
  public static var allCases: [SwiftUI.ContentSizeCategory] {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var sizeCategory: SwiftUI.ContentSizeCategory {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Never {
  public typealias Body = Swift.Never
  public var body: Swift.Never {
    get
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDrag(_ data: @escaping () -> Foundation.NSItemProvider) -> some SwiftUI.View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _DraggingModifier : SwiftUI.ViewModifier {
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._DraggingModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct DefaultTextFieldStyle : SwiftUI.TextFieldStyle {
  public init()
  public func _body(configuration: SwiftUI.TextField<SwiftUI.DefaultTextFieldStyle._Label>) -> SwiftUI.DefaultTextFieldStyle._Body
  public struct _Body : SwiftUI.View {
    public var body: some SwiftUI.View {
      get
    }
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI21DefaultTextFieldStyleV5_BodyV4bodyQrvp", 0) 🦸
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct AccessibilityActionKind : Swift.Equatable {
  public static let `default`: SwiftUI.AccessibilityActionKind
  public static let escape: SwiftUI.AccessibilityActionKind
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(OSX, unavailable)
  public static let magicTap: SwiftUI.AccessibilityActionKind
  @available(OSX 10.15, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public static let delete: SwiftUI.AccessibilityActionKind
  @available(OSX 10.15, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public static let showMenu: SwiftUI.AccessibilityActionKind
  public init(named name: SwiftUI.Text)
  public static func == (a: SwiftUI.AccessibilityActionKind, b: SwiftUI.AccessibilityActionKind) -> Swift.Bool
}
extension View {
  public func accessibilityAction(_ actionKind: SwiftUI.AccessibilityActionKind = .default, _ handler: @escaping () -> Swift.Void) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibilityAction(named name: SwiftUI.Text, _ handler: @escaping () -> Swift.Void) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent where Modifier == SwiftUI.AccessibilityAttachmentModifier {
  public func accessibilityAction(_ actionKind: SwiftUI.AccessibilityActionKind = .default, _ handler: @escaping () -> Swift.Void) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibilityAction(named name: SwiftUI.Text, _ handler: @escaping () -> Swift.Void) -> SwiftUI.ModifiedContent<Content, Modifier>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct ImagePaint : SwiftUI.ShapeStyle {
  public var image: SwiftUI.Image
  public var sourceRect: CoreGraphics.CGRect
  public var scale: CoreGraphics.CGFloat
  public init(image: SwiftUI.Image, sourceRect: CoreGraphics.CGRect = CGRect(x: 0, y: 0, width: 1, height: 1), scale: CoreGraphics.CGFloat = 1)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol PrimitiveButtonStyle {
  associatedtype Body : SwiftUI.View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = SwiftUI.PrimitiveButtonStyleConfiguration
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct PrimitiveButtonStyleConfiguration {
  public struct Label : SwiftUI.View {
    public typealias Body = Swift.Never
  }
  public let label: SwiftUI.PrimitiveButtonStyleConfiguration.Label
  public func trigger()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func buttonStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.PrimitiveButtonStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct EmptyView {
  @inlinable public init() {}
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.EmptyView>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.EmptyView>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct DefaultListStyle : SwiftUI.ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.DefaultListStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.DefaultListStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public static func _makeView(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _AnimatableView : SwiftUI.Animatable, SwiftUI.View {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AnimatableView {
  public static func _makeView(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct SubscriptionView<PublisherType, Content> where PublisherType : Combine.Publisher, Content : SwiftUI.View, PublisherType.Failure == Swift.Never {
  public var content: Content
  public var publisher: PublisherType
  public var action: (PublisherType.Output) -> Swift.Void
  @inlinable public init(content: Content, publisher: PublisherType, action: @escaping (PublisherType.Output) -> Swift.Void) {
        self.content = content
        self.publisher = publisher
        self.action = action
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.SubscriptionView<PublisherType, Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.SubscriptionView<PublisherType, Content>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func onReceive<P>(_ publisher: P, perform action: @escaping (P.Output) -> Swift.Void) -> some SwiftUI.View where P : Combine.Publisher, P.Failure == Swift.Never {
        SubscriptionView(content: self, publisher: publisher, action: action)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewTest {
  public typealias Touch = (location: CoreGraphics.CGPoint, globalLocation: CoreGraphics.CGPoint?, timestamp: Foundation.Date)
  public func sendTouchSequence(_ touches: [Self.Touch])
  public func measureTouchSequence(host: SwiftUI._BenchmarkHost, _ touches: [Self.Touch]) -> [Swift.Double]
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  @inlinable public func sequenced<Other>(before other: Other) -> SwiftUI.SequenceGesture<Self, Other> where Other : SwiftUI.Gesture {
        return SequenceGesture(self, other)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct SequenceGesture<First, Second> where First : SwiftUI.Gesture, Second : SwiftUI.Gesture {
  @frozen public enum Value {
    case first(First.Value)
    case second(First.Value, Second.Value?)
  }
  public var first: First
  public var second: Second
  @inlinable public init(_ first: First, _ second: Second) {
        (self.first, self.second) = (first, second)
    }
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.SequenceGesture<First, Second>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<SwiftUI.SequenceGesture<First, Second>.Value>
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SequenceGesture.Value : Swift.Equatable where First.Value : Swift.Equatable, Second.Value : Swift.Equatable {
  public static func == (a: SwiftUI.SequenceGesture<First, Second>.Value, b: SwiftUI.SequenceGesture<First, Second>.Value) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct OffsetShape<Content> : SwiftUI.Shape where Content : SwiftUI.Shape {
  public var shape: Content
  public var offset: CoreGraphics.CGSize
  @inlinable public init(shape: Content, offset: CoreGraphics.CGSize) {
        self.shape = shape
        self.offset = offset
    }
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = SwiftUI.AnimatablePair<Content.AnimatableData, CoreGraphics.CGSize.AnimatableData>
  public var animatableData: SwiftUI.OffsetShape<Content>.AnimatableData {
    get
    set
  }
  public typealias Body = SwiftUI._ShapeView<SwiftUI.OffsetShape<Content>, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension OffsetShape : SwiftUI.InsettableShape where Content : SwiftUI.InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> SwiftUI.OffsetShape<Content.InsetShape> {
        return shape.inset(by: amount).offset(offset)
    }
  public typealias InsetShape = SwiftUI.OffsetShape<Content.InsetShape>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct ScaledShape<Content> : SwiftUI.Shape where Content : SwiftUI.Shape {
  public var shape: Content
  public var scale: CoreGraphics.CGSize
  public var anchor: SwiftUI.UnitPoint
  @inlinable public init(shape: Content, scale: CoreGraphics.CGSize, anchor: SwiftUI.UnitPoint = .center) {
        self.shape = shape
        self.scale = scale
        self.anchor = anchor
    }
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = SwiftUI.AnimatablePair<Content.AnimatableData, SwiftUI.AnimatablePair<CoreGraphics.CGSize.AnimatableData, SwiftUI.UnitPoint.AnimatableData>>
  public var animatableData: SwiftUI.ScaledShape<Content>.AnimatableData {
    get
    set
  }
  public typealias Body = SwiftUI._ShapeView<SwiftUI.ScaledShape<Content>, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct RotatedShape<Content> : SwiftUI.Shape where Content : SwiftUI.Shape {
  public var shape: Content
  public var angle: SwiftUI.Angle
  public var anchor: SwiftUI.UnitPoint
  @inlinable public init(shape: Content, angle: SwiftUI.Angle, anchor: SwiftUI.UnitPoint = .center) {
        self.shape = shape
        self.angle = angle
        self.anchor = anchor
    }
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = SwiftUI.AnimatablePair<Content.AnimatableData, SwiftUI.AnimatablePair<SwiftUI.Angle.AnimatableData, SwiftUI.UnitPoint.AnimatableData>>
  public var animatableData: SwiftUI.RotatedShape<Content>.AnimatableData {
    get
    set
  }
  public typealias Body = SwiftUI._ShapeView<SwiftUI.RotatedShape<Content>, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension RotatedShape : SwiftUI.InsettableShape where Content : SwiftUI.InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> SwiftUI.RotatedShape<Content.InsetShape> {
        return shape.inset(by: amount).rotation(angle, anchor: anchor)
    }
  public typealias InsetShape = SwiftUI.RotatedShape<Content.InsetShape>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct TransformedShape<Content> : SwiftUI.Shape where Content : SwiftUI.Shape {
  public var shape: Content
  public var transform: CoreGraphics.CGAffineTransform
  @inlinable public init(shape: Content, transform: CoreGraphics.CGAffineTransform) {
        self.shape = shape
        self.transform = transform
    }
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = Content.AnimatableData
  public var animatableData: SwiftUI.TransformedShape<Content>.AnimatableData {
    get
    set
  }
  public typealias Body = SwiftUI._ShapeView<SwiftUI.TransformedShape<Content>, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable public func offset(_ offset: CoreGraphics.CGSize) -> SwiftUI.OffsetShape<Self> {
        return OffsetShape(shape: self, offset: offset)
    }
  @inlinable public func offset(_ offset: CoreGraphics.CGPoint) -> SwiftUI.OffsetShape<Self> {
        return OffsetShape(
            shape: self, offset: CGSize(width: offset.x, height: offset.y))
    }
  @inlinable public func offset(x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> SwiftUI.OffsetShape<Self> {
        return OffsetShape(shape: self, offset: .init(width: x, height: y))
    }
  @inlinable public func scale(x: CoreGraphics.CGFloat = 1, y: CoreGraphics.CGFloat = 1, anchor: SwiftUI.UnitPoint = .center) -> SwiftUI.ScaledShape<Self> {
        return ScaledShape(shape: self,
            scale: CGSize(width: x, height: y), anchor: anchor)
    }
  @inlinable public func scale(_ scale: CoreGraphics.CGFloat, anchor: SwiftUI.UnitPoint = .center) -> SwiftUI.ScaledShape<Self> {
        return self.scale(x: scale, y: scale, anchor: anchor)
    }
  @inlinable public func rotation(_ angle: SwiftUI.Angle, anchor: SwiftUI.UnitPoint = .center) -> SwiftUI.RotatedShape<Self> {
        return RotatedShape(shape: self, angle: angle, anchor: anchor)
    }
  @inlinable public func transform(_ transform: CoreGraphics.CGAffineTransform) -> SwiftUI.TransformedShape<Self> {
        return TransformedShape(shape: self, transform: transform)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var managedObjectContext: CoreData.NSManagedObjectContext {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Rectangle : SwiftUI.Shape {
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  @inlinable public init() {}
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = SwiftUI._ShapeView<SwiftUI.Rectangle, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct RoundedRectangle : SwiftUI.Shape {
  public var cornerSize: CoreGraphics.CGSize
  public var style: SwiftUI.RoundedCornerStyle
  @inlinable public init(cornerSize: CoreGraphics.CGSize, style: SwiftUI.RoundedCornerStyle = .circular) {
        self.cornerSize = cornerSize
        self.style = style
    }
  @inlinable public init(cornerRadius: CoreGraphics.CGFloat, style: SwiftUI.RoundedCornerStyle = .circular) {
        let cornerSize = CGSize(width: cornerRadius, height: cornerRadius)
        self.init(cornerSize: cornerSize, style: style)
    }
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  public var animatableData: CoreGraphics.CGSize.AnimatableData {
    get
    set
  }
  public typealias AnimatableData = CoreGraphics.CGSize.AnimatableData
  public typealias Body = SwiftUI._ShapeView<SwiftUI.RoundedRectangle, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Capsule : SwiftUI.Shape {
  public var style: SwiftUI.RoundedCornerStyle
  @inlinable public init(style: SwiftUI.RoundedCornerStyle = .circular) {
        self.style = style
    }
  public func path(in r: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = SwiftUI._ShapeView<SwiftUI.Capsule, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Ellipse : SwiftUI.Shape {
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  @inlinable public init() {}
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = SwiftUI._ShapeView<SwiftUI.Ellipse, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Circle : SwiftUI.Shape {
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  @inlinable public init() {}
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = SwiftUI._ShapeView<SwiftUI.Circle, SwiftUI.ForegroundStyle>
}
extension _UIHostingView {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol ViewModifier {
  static func _makeView(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  static func _makeViewList(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
  associatedtype Body : SwiftUI.View
  func body(content: Self.Content) -> Self.Body
  typealias Content = SwiftUI._ViewModifier_Content<Self>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier where Self.Body == Swift.Never {
  public func body(content: Self.Content) -> Self.Body
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier where Self : SwiftUI._GraphInputsModifier, Self.Body == Swift.Never {
  public static func _makeView(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct EmptyModifier {
  public static let identity: SwiftUI.EmptyModifier
  @inlinable public init() {}
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI.EmptyModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<SwiftUI.EmptyModifier>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
  public func body(content: SwiftUI.EmptyModifier.Content) -> Swift.Never
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func modifier<T>(_ modifier: T) -> SwiftUI.ModifiedContent<Self, T> {
        return .init(content: self, modifier: modifier)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct ModifiedContent<Content, Modifier> {
  public var content: Content
  public var modifier: Modifier
  @inlinable public init(content: Content, modifier: Modifier) {
        self.content = content
        self.modifier = modifier
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent : Swift.Equatable where Content : Swift.Equatable, Modifier : Swift.Equatable {
  public static func == (a: SwiftUI.ModifiedContent<Content, Modifier>, b: SwiftUI.ModifiedContent<Content, Modifier>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent : SwiftUI.View where Content : SwiftUI.View, Modifier : SwiftUI.ViewModifier {
  public typealias Body = Swift.Never
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.ModifiedContent<Content, Modifier>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.ModifiedContent<Content, Modifier>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public var body: SwiftUI.ModifiedContent<Content, Modifier>.Body {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent : SwiftUI.ViewModifier where Content : SwiftUI.ViewModifier, Modifier : SwiftUI.ViewModifier {
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI.ModifiedContent<Content, Modifier>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<SwiftUI.ModifiedContent<Content, Modifier>>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier {
  @inlinable public func concat<T>(_ modifier: T) -> SwiftUI.ModifiedContent<Self, T> {
        return .init(content: self, modifier: modifier)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct NavigationView<Content> : SwiftUI.View where Content : SwiftUI.View {
  public init(@SwiftUI.ViewBuilder content: () -> Content)
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen @propertyWrapper public struct State<Value> : SwiftUI.DynamicProperty {
  @usableFromInline
  internal var _value: Value
  @usableFromInline
  internal var _location: SwiftUI.AnyLocation<Value>?
  public init(wrappedValue value: Value)
  @_alwaysEmitIntoClient public init(initialValue value: Value) {
        _value = value
    }
  public var wrappedValue: Value {
    get
    nonmutating set
  }
  public var projectedValue: SwiftUI.Binding<Value> {
    get
  }
  public static func _makeProperty<V>(in buffer: inout SwiftUI._DynamicPropertyBuffer, container: SwiftUI._GraphValue<V>, fieldOffset: Swift.Int, inputs: inout SwiftUI._GraphInputs)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension State where Value : Swift.ExpressibleByNilLiteral {
  @inlinable public init() {
        self.init(wrappedValue: nil)
    }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct SidebarListStyle : SwiftUI.ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.SidebarListStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.SidebarListStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public typealias __GridSpacing = SwiftUI.__GridLayout.Spacing
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __GridLayout {
  public struct Spacing {
    public var min: CoreGraphics.CGFloat
    public var max: CoreGraphics.CGFloat?
    public init(min: CoreGraphics.CGFloat = 0, max: CoreGraphics.CGFloat? = nil)
    public init(fixed: CoreGraphics.CGFloat)
  }
  public enum FillDirection {
    case horizontal, vertical
    public static func == (a: SwiftUI.__GridLayout.FillDirection, b: SwiftUI.__GridLayout.FillDirection) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
  public var itemSize: CoreGraphics.CGSize
  public var itemSpacing: SwiftUI.__GridLayout.Spacing
  public var lineSpacing: SwiftUI.__GridLayout.Spacing
  public var fillDirection: SwiftUI.__GridLayout.FillDirection
  public init(itemSize: CoreGraphics.CGSize, itemSpacing: CoreGraphics.CGFloat = 0, lineSpacing: CoreGraphics.CGFloat = 0, fillDirection: SwiftUI.__GridLayout.FillDirection = .horizontal)
  public init(itemSize: CoreGraphics.CGSize, itemSpacing: SwiftUI.__GridLayout.Spacing, lineSpacing: SwiftUI.__GridLayout.Spacing, fillDirection: SwiftUI.__GridLayout.FillDirection = .horizontal)
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol DynamicViewContent : SwiftUI.View {
  associatedtype Data : Swift.Collection
  var data: Self.Data { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach : SwiftUI.DynamicViewContent where Content : SwiftUI.View {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent : SwiftUI.DynamicViewContent where Content : SwiftUI.DynamicViewContent, Modifier : SwiftUI.ViewModifier {
  public var data: Content.Data {
    get
  }
  public typealias Data = Content.Data
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _OverlayLayout {
  public init(contentIndex: Swift.Int? = nil)
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public protocol _UIHostingViewable : AnyObject {
  var rootView: SwiftUI.AnyView { get set }
  func _render(seconds: Swift.Double)
  func _forEachIdentifiedView(body: (SwiftUI._IdentifiedViewProxy) -> Swift.Void)
  func sizeThatFits(in size: CoreGraphics.CGSize) -> CoreGraphics.CGSize
  var _disableSafeArea: Swift.Bool { get set }
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension UIHostingController : SwiftUI._UIHostingViewable where Content == SwiftUI.AnyView {
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public func _makeUIHostingController(_ view: SwiftUI.AnyView) -> ObjectiveC.NSObject & SwiftUI._UIHostingViewable
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public func _makeWatchKitUIHostingController(_ view: SwiftUI.AnyView) -> ObjectiveC.NSObject & SwiftUI._UIHostingViewable
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ScrollableLayoutView<Data, Layout> : SwiftUI.View where Data : Swift.RandomAccessCollection, Layout : SwiftUI._ScrollableLayout, Data.Element : SwiftUI.View, Data.Index : Swift.Hashable {
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._ScrollableLayoutView<Data, Layout>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayoutView : SwiftUI._ScrollableContentProvider {
  public var scrollableContent: SwiftUI._ScrollableLayoutView<Data, Layout> {
    get
  }
  public func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: SwiftUI._Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
  public typealias ScrollableContent = SwiftUI._ScrollableLayoutView<Data, Layout>
  public typealias Root = SwiftUI._ScrollViewRoot<SwiftUI._ScrollableLayoutView<Data, Layout>>
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct RotationGesture : SwiftUI.Gesture {
  public var minimumAngleDelta: SwiftUI.Angle
  public init(minimumAngleDelta: SwiftUI.Angle = .degrees(1))
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.RotationGesture>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<SwiftUI.Angle>
  public typealias Value = SwiftUI.Angle
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var undoManager: Foundation.UndoManager? {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AllowsHitTestingModifier : SwiftUI.ViewModifier, Swift.Equatable {
  public var allowsHitTesting: Swift.Bool
  @inlinable public init(allowsHitTesting: Swift.Bool) {
        self.allowsHitTesting = allowsHitTesting
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._AllowsHitTestingModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._AllowsHitTestingModifier, b: SwiftUI._AllowsHitTestingModifier) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func allowsHitTesting(_ enabled: Swift.Bool) -> some SwiftUI.View {
        return modifier(_AllowsHitTestingModifier(allowsHitTesting: enabled))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AppearanceActionModifier : SwiftUI.ViewModifier {
  public var appear: (() -> Swift.Void)?
  public var disappear: (() -> Swift.Void)?
  @inlinable public init(appear: (() -> Swift.Void)? = nil, disappear: (() -> Swift.Void)? = nil) {
        self.appear = appear
        self.disappear = disappear
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._AppearanceActionModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func onAppear(perform action: (() -> Swift.Void)? = nil) -> some SwiftUI.View {
        return modifier(
            _AppearanceActionModifier(appear: action, disappear: nil))
    }
  
  @inlinable public func onDisappear(perform action: (() -> Swift.Void)? = nil) -> some SwiftUI.View {
        return modifier(
            _AppearanceActionModifier(appear: nil, disappear: action))
    }
  
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct SwitchToggleStyle : SwiftUI.ToggleStyle {
  public init()
  public func makeBody(configuration: SwiftUI.SwitchToggleStyle.Configuration) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI17SwitchToggleStyleV8makeBody13configurationQrAA0dE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct ProjectionTransform {
  public var m11: CoreGraphics.CGFloat = 1.0, m12: CoreGraphics.CGFloat = 0.0, m13: CoreGraphics.CGFloat = 0.0
  public var m21: CoreGraphics.CGFloat = 0.0, m22: CoreGraphics.CGFloat = 1.0, m23: CoreGraphics.CGFloat = 0.0
  public var m31: CoreGraphics.CGFloat = 0.0, m32: CoreGraphics.CGFloat = 0.0, m33: CoreGraphics.CGFloat = 1.0
  @inlinable public init() {}
  @inlinable public init(_ m: CoreGraphics.CGAffineTransform) {
        m11 = m.a
        m12 = m.b
        m21 = m.c
        m22 = m.d
        m31 = m.tx
        m32 = m.ty
    }
  @inlinable public init(_ m: QuartzCore.CATransform3D) {
        m11 = m.m11
        m12 = m.m12
        m13 = m.m14
        m21 = m.m21
        m22 = m.m22
        m23 = m.m24
        m31 = m.m41
        m32 = m.m42
        m33 = m.m44
    }
  @inlinable public var isIdentity: Swift.Bool {
    get {
        return self == ProjectionTransform()
    }
  }
  @inlinable public var isAffine: Swift.Bool {
    get {
        return m13 == 0 && m23 == 0 && m33 == 1
    }
  }
  mutating public func invert() -> Swift.Bool
  public func inverted() -> SwiftUI.ProjectionTransform
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ProjectionTransform : Swift.Equatable {
  public static func == (a: SwiftUI.ProjectionTransform, b: SwiftUI.ProjectionTransform) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ProjectionTransform {
  @inlinable public func concatenating(_ rhs: SwiftUI.ProjectionTransform) -> SwiftUI.ProjectionTransform {
        var m = ProjectionTransform()
        m.m11 = m11 * rhs.m11 + m12 * rhs.m21 + m13 * rhs.m31
        m.m12 = m11 * rhs.m12 + m12 * rhs.m22 + m13 * rhs.m32
        m.m13 = m11 * rhs.m13 + m12 * rhs.m23 + m13 * rhs.m33
        m.m21 = m21 * rhs.m11 + m22 * rhs.m21 + m23 * rhs.m31
        m.m22 = m21 * rhs.m12 + m22 * rhs.m22 + m23 * rhs.m32
        m.m23 = m21 * rhs.m13 + m22 * rhs.m23 + m23 * rhs.m33
        m.m31 = m31 * rhs.m11 + m32 * rhs.m21 + m33 * rhs.m31
        m.m32 = m31 * rhs.m12 + m32 * rhs.m22 + m33 * rhs.m32
        m.m33 = m31 * rhs.m13 + m32 * rhs.m23 + m33 * rhs.m33
        return m
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGPoint {
  public func applying(_ m: SwiftUI.ProjectionTransform) -> CoreGraphics.CGPoint
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct MenuButton<Label, Content> : SwiftUI.View where Label : SwiftUI.View, Content : SwiftUI.View {
  public init(label: Label, @SwiftUI.ViewBuilder content: () -> Content)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI10MenuButtonV4bodyQrvp", 0) 🦸<Label, Content>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension MenuButton where Label == SwiftUI.Text {
  public init(_ titleKey: SwiftUI.LocalizedStringKey, @SwiftUI.ViewBuilder content: () -> Content)
  public init<S>(_ title: S, @SwiftUI.ViewBuilder content: () -> Content) where S : Swift.StringProtocol
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  @inlinable public func simultaneously<Other>(with other: Other) -> SwiftUI.SimultaneousGesture<Self, Other> where Other : SwiftUI.Gesture {
        return SimultaneousGesture(self, other)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct SimultaneousGesture<First, Second> where First : SwiftUI.Gesture, Second : SwiftUI.Gesture {
  @frozen public struct Value {
    public var first: First.Value?
    public var second: Second.Value?
  }
  public var first: First
  public var second: Second
  @inlinable public init(_ first: First, _ second: Second) {
        (self.first, self.second) = (first, second)
    }
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.SimultaneousGesture<First, Second>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<SwiftUI.SimultaneousGesture<First, Second>.Value>
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SimultaneousGesture.Value : Swift.Equatable where First.Value : Swift.Equatable, Second.Value : Swift.Equatable {
  public static func == (a: SwiftUI.SimultaneousGesture<First, Second>.Value, b: SwiftUI.SimultaneousGesture<First, Second>.Value) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SimultaneousGesture.Value : Swift.Hashable where First.Value : Swift.Hashable, Second.Value : Swift.Hashable {
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  public enum RGBColorSpace {
    case sRGB
    case sRGBLinear
    case displayP3
    public static func == (a: SwiftUI.Color.RGBColorSpace, b: SwiftUI.Color.RGBColorSpace) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
  public init(_ colorSpace: SwiftUI.Color.RGBColorSpace = .sRGB, red: Swift.Double, green: Swift.Double, blue: Swift.Double, opacity: Swift.Double = 1)
  public init(_ colorSpace: SwiftUI.Color.RGBColorSpace = .sRGB, white: Swift.Double, opacity: Swift.Double = 1)
  public init(hue: Swift.Double, saturation: Swift.Double, brightness: Swift.Double, opacity: Swift.Double = 1)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct EquatableView<Content> : SwiftUI.View where Content : Swift.Equatable, Content : SwiftUI.View {
  public var content: Content
  @inlinable public init(content: Content) {
        self.content = content
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.EquatableView<Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View where Self : Swift.Equatable {
  @inlinable public func equatable() -> SwiftUI.EquatableView<Self> {
        return EquatableView(content: self)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __BedtimeTickLabelsLayout {
  public init(center: CoreGraphics.CGPoint, radius: CoreGraphics.CGFloat)
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  public static var _background: SwiftUI.Color {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func _addingBackgroundGroup() -> some SwiftUI.View
  
  public func _addingBackgroundLayer() -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension View {
  @available(tvOS, unavailable)
  public func contextMenu<MenuItems>(@SwiftUI.ViewBuilder menuItems: () -> MenuItems) -> some SwiftUI.View where MenuItems : SwiftUI.View
  
  @available(tvOS, unavailable)
  public func contextMenu<MenuItems>(_ contextMenu: SwiftUI.ContextMenu<MenuItems>?) -> some SwiftUI.View where MenuItems : SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct ContextMenu<MenuItems> where MenuItems : SwiftUI.View {
  public init(@SwiftUI.ViewBuilder menuItems: () -> MenuItems)
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct _ContextMenuContainer : SwiftUI._VariadicView.Root {
  public struct Container<Content> : SwiftUI._VariadicView.UnaryViewRoot where Content : SwiftUI.View {
    public func body(children: SwiftUI._VariadicView.Children) -> some SwiftUI.View
    
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI21_ContextMenuContainerV0E0V4body8childrenQrAA22_VariadicView_ChildrenV_tF", 0) 🦸<Content>
  }
  public typealias Tree<MenuItems> = SwiftUI._VariadicView.Tree<SwiftUI._ContextMenuContainer, MenuItems> where MenuItems : SwiftUI.View
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __ViewRemovalLayout {
  public init(showsBothRows: Swift.Bool)
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct EditButton : SwiftUI.View {
  public init()
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI10EditButtonV4bodyQrvp", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _SizedShape<S> : SwiftUI.Shape where S : SwiftUI.Shape {
  public var shape: S
  public var size: CoreGraphics.CGSize
  @inlinable public init(shape: S, size: CoreGraphics.CGSize) {
        self.shape = shape
        self.size = size
    }
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = SwiftUI.AnimatablePair<S.AnimatableData, CoreGraphics.CGSize.AnimatableData>
  public var animatableData: SwiftUI._SizedShape<S>.AnimatableData {
    get
    set
  }
  public typealias Body = SwiftUI._ShapeView<SwiftUI._SizedShape<S>, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable public func size(_ size: CoreGraphics.CGSize) -> some SwiftUI.Shape {
        return _SizedShape(shape: self, size: size)
    }
  
  @inlinable public func size(width: CoreGraphics.CGFloat, height: CoreGraphics.CGFloat) -> some SwiftUI.Shape {
        return size(.init(width: width, height: height))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _DataProviderView : SwiftUI.View where Self.Body == Swift.Never {
  associatedtype Provider : SwiftUI._DataProvider
  func initDataProvider() -> Self.Provider
  associatedtype DataBody : SwiftUI.View
  func body(data: Self.Provider.Data) -> Self.DataBody
  func updateDataProvider(_ dataProvider: inout Self.Provider)
  func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Swift.Bool
  func transactionForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> SwiftUI.Transaction
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _DataProviderView where Self.Provider.Data : Swift.Equatable {
  public func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _DataProviderView {
  public func updateDataProvider(_ dataProvider: inout Self.Provider)
  public func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Swift.Bool
  public func transactionForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> SwiftUI.Transaction
  public static func _makeView(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public var body: Swift.Never {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol AnimatableModifier : SwiftUI.Animatable, SwiftUI.ViewModifier {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnimatableModifier {
  public static func _makeView(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func gesture<T>(_ gesture: T, including mask: SwiftUI.GestureMask = .all) -> some SwiftUI.View where T : SwiftUI.Gesture
  
  public func highPriorityGesture<T>(_ gesture: T, including mask: SwiftUI.GestureMask = .all) -> some SwiftUI.View where T : SwiftUI.Gesture
  
  public func simultaneousGesture<T>(_ gesture: T, including mask: SwiftUI.GestureMask = .all) -> some SwiftUI.View where T : SwiftUI.Gesture
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct GestureMask : Swift.OptionSet {
  public let rawValue: Swift.UInt32
  public init(rawValue: Swift.UInt32)
  public static let none: SwiftUI.GestureMask
  public static let gesture: SwiftUI.GestureMask
  public static let subviews: SwiftUI.GestureMask
  public static let all: SwiftUI.GestureMask
  public typealias Element = SwiftUI.GestureMask
  public typealias ArrayLiteralElement = SwiftUI.GestureMask
  public typealias RawValue = Swift.UInt32
}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
public enum MoveCommandDirection {
  case up
  case down
  case left
  case right
  public static func == (a: SwiftUI.MoveCommandDirection, b: SwiftUI.MoveCommandDirection) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(watchOS, unavailable)
  public func onMoveCommand(perform action: ((SwiftUI.MoveCommandDirection) -> Swift.Void)?) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(watchOS, unavailable)
  public func onExitCommand(perform action: (() -> Swift.Void)?) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func onPlayPauseCommand(perform action: (() -> Swift.Void)?) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDeleteCommand(perform action: (() -> Swift.Void)?) -> some SwiftUI.View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Gesture {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func modifiers(_ modifiers: SwiftUI.EventModifiers) -> SwiftUI._ModifiersGesture<Self>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _ModifiersGesture<Content> : SwiftUI.Gesture where Content : SwiftUI.Gesture {
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI._ModifiersGesture<Content>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Content.Value>
  public typealias Value = Content.Value
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _LayoutTraits : Swift.Equatable {
  public static func == (a: SwiftUI._LayoutTraits, b: SwiftUI._LayoutTraits) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _LayoutTraits : Swift.CustomStringConvertible {
  public var description: Swift.String {
    get
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@usableFromInline
internal struct IsLinkedGroupTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @inlinable public func _listLinkedGroup(_ isLinked: Swift.Bool) -> some SwiftUI.View {
        return _trait(IsLinkedGroupTraitKey.self, isLinked)
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct _IsLinkedGroupTraitKey {
  public static let _linkedGroup: SwiftUI._IsLinkedGroupTraitKey
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension DynamicViewContent {
  public func onInsert(of acceptedTypeIdentifiers: [Swift.String], perform action: @escaping (Swift.Int, [Foundation.NSItemProvider]) -> Swift.Void) -> some SwiftUI.DynamicViewContent
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum LayoutDirection : Swift.Hashable, Swift.CaseIterable {
  case leftToRight
  case rightToLeft
  public static func == (a: SwiftUI.LayoutDirection, b: SwiftUI.LayoutDirection) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public typealias AllCases = [SwiftUI.LayoutDirection]
  public static var allCases: [SwiftUI.LayoutDirection] {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var layoutDirection: SwiftUI.LayoutDirection {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Transaction {
  public init(animation: SwiftUI.Animation?)
  public var animation: SwiftUI.Animation? {
    get
    set
  }
  public var disablesAnimations: Swift.Bool {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol ButtonStyle {
  associatedtype Body : SwiftUI.View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = SwiftUI.ButtonStyleConfiguration
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct ButtonStyleConfiguration {
  public struct Label : SwiftUI.View {
    public typealias Body = Swift.Never
  }
  public let label: SwiftUI.ButtonStyleConfiguration.Label
  public let isPressed: Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func buttonStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.ButtonStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func transformAnchorPreference<A, K>(key _: K.Type = K.self, value: SwiftUI.Anchor<A>.Source, transform: @escaping (inout K.Value, SwiftUI.Anchor<A>) -> Swift.Void) -> some SwiftUI.View where K : SwiftUI.PreferenceKey {
        return modifier(_AnchorTransformModifier<A, K>(
            anchor: value, transform: transform))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AnchorTransformModifier<AnchorValue, Key> : SwiftUI.ViewModifier where Key : SwiftUI.PreferenceKey {
  public var anchor: SwiftUI.Anchor<AnchorValue>.Source
  public var transform: (inout Key.Value, SwiftUI.Anchor<AnchorValue>) -> Swift.Void
  @inlinable public init(anchor: SwiftUI.Anchor<AnchorValue>.Source, transform: @escaping (inout Key.Value, SwiftUI.Anchor<AnchorValue>) -> Swift.Void) {
        self.anchor = anchor
        self.transform = transform
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._AnchorTransformModifier<AnchorValue, Key>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct _DisclosureIndicator : SwiftUI.View {
  public init()
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI20_DisclosureIndicatorV4bodyQrvp", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _BackgroundModifier<Background> : SwiftUI.ViewModifier where Background : SwiftUI.View {
  public var background: Background
  public var alignment: SwiftUI.Alignment
  @inlinable public init(background: Background, alignment: SwiftUI.Alignment = .center) {
        self.background = background
        self.alignment = alignment
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._BackgroundModifier<Background>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BackgroundModifier : Swift.Equatable where Background : Swift.Equatable {
  public static func == (a: SwiftUI._BackgroundModifier<Background>, b: SwiftUI._BackgroundModifier<Background>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func background<Background>(_ background: Background, alignment: SwiftUI.Alignment = .center) -> some SwiftUI.View where Background : SwiftUI.View {
        return modifier(
            _BackgroundModifier(background: background, alignment: alignment))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _OverlayModifier<Overlay> : SwiftUI.ViewModifier where Overlay : SwiftUI.View {
  public var overlay: Overlay
  public var alignment: SwiftUI.Alignment
  @inlinable public init(overlay: Overlay, alignment: SwiftUI.Alignment = .center) {
        self.overlay = overlay
        self.alignment = alignment
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._OverlayModifier<Overlay>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _OverlayModifier : Swift.Equatable where Overlay : Swift.Equatable {
  public static func == (a: SwiftUI._OverlayModifier<Overlay>, b: SwiftUI._OverlayModifier<Overlay>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func overlay<Overlay>(_ overlay: Overlay, alignment: SwiftUI.Alignment = .center) -> some SwiftUI.View where Overlay : SwiftUI.View {
        return modifier(_OverlayModifier(
            overlay: overlay, alignment: alignment))
    }
  
  @inlinable public func border<S>(_ content: S, width: CoreGraphics.CGFloat = 1) -> some SwiftUI.View where S : SwiftUI.ShapeStyle {
        return overlay(Rectangle().strokeBorder(content, lineWidth: width))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct SecureField<Label> : SwiftUI.View where Label : SwiftUI.View {
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI11SecureFieldV4bodyQrvp", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SecureField where Label == SwiftUI.Text {
  public init(_ titleKey: SwiftUI.LocalizedStringKey, text: SwiftUI.Binding<Swift.String>, onCommit: @escaping () -> Swift.Void = {})
  @_disfavoredOverload public init<S>(_ title: S, text: SwiftUI.Binding<Swift.String>, onCommit: @escaping () -> Swift.Void = {}) where S : Swift.StringProtocol
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ProposedSize {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ProposedSize : Swift.Hashable {
  public static func == (a: SwiftUI._ProposedSize, b: SwiftUI._ProposedSize) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public enum ContentMode : Swift.Hashable, Swift.CaseIterable {
  case fit
  case fill
  public static func == (a: SwiftUI.ContentMode, b: SwiftUI.ContentMode) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public typealias AllCases = [SwiftUI.ContentMode]
  public static var allCases: [SwiftUI.ContentMode] {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AspectRatioLayout {
  public var aspectRatio: CoreGraphics.CGFloat?
  public var contentMode: SwiftUI.ContentMode
  @inlinable public init(aspectRatio: CoreGraphics.CGFloat? = nil, contentMode: SwiftUI.ContentMode) {
        self.aspectRatio = aspectRatio
        self.contentMode = contentMode
    }
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func aspectRatio(_ aspectRatio: CoreGraphics.CGFloat? = nil, contentMode: SwiftUI.ContentMode) -> some SwiftUI.View {
        return modifier(_AspectRatioLayout(
            aspectRatio: aspectRatio, contentMode: contentMode))
    }
  
  @inlinable public func aspectRatio(_ aspectRatio: CoreGraphics.CGSize, contentMode: SwiftUI.ContentMode) -> some SwiftUI.View {
        return self.aspectRatio(
            aspectRatio.width / aspectRatio.height, contentMode: contentMode)
    }
  
  @inlinable public func scaledToFit() -> some SwiftUI.View {
        return aspectRatio(contentMode: .fit)
    }
  
  @inlinable public func scaledToFill() -> some SwiftUI.View {
        return aspectRatio(contentMode: .fill)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _ScrollableLayout : SwiftUI.Animatable {
  associatedtype StateType = Swift.Void
  static func initialState() -> Self.StateType
  func update(state: inout Self.StateType, proxy: inout SwiftUI._ScrollableLayoutProxy)
  associatedtype ItemModifier : SwiftUI.ViewModifier = SwiftUI.EmptyModifier
  func modifier(for item: SwiftUI._ScrollableLayoutItem, layout: SwiftUI._ScrollLayout, state: Self.StateType) -> Self.ItemModifier
  func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: SwiftUI._Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayout where Self.StateType == Swift.Void {
  public static func initialState() -> Self.StateType
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayout where Self.ItemModifier == SwiftUI.EmptyModifier {
  public func modifier(for item: SwiftUI._ScrollableLayoutItem, layout: SwiftUI._ScrollLayout, state: Self.StateType) -> Self.ItemModifier
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayout {
  public func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: SwiftUI._Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
  public subscript<T>(data: T) -> SwiftUI._ScrollView<SwiftUI._ScrollableLayoutView<T, Self>> where T : Swift.RandomAccessCollection, T.Element : SwiftUI.View, T.Index : Swift.Hashable {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayout where Self : Swift.RandomAccessCollection, Self.Element : SwiftUI.View, Self.Index : Swift.Hashable {
  public subscript() -> SwiftUI._ScrollView<SwiftUI._ScrollableLayoutView<Self, Self>> {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ScrollableLayoutProxy : Swift.RandomAccessCollection {
  public let size: CoreGraphics.CGSize
  public let visibleRect: CoreGraphics.CGRect
  public let count: Swift.Int
  public var visibleItems: [SwiftUI._ScrollableLayoutItem]
  public var contentSize: CoreGraphics.CGSize
  public var validRect: CoreGraphics.CGRect
  public var startIndex: Swift.Int {
    get
  }
  public var endIndex: Swift.Int {
    get
  }
  public subscript(index: Swift.Int) -> Swift.AnyHashable {
    get
  }
  mutating public func size(of identifier: Swift.AnyHashable, in size: CoreGraphics.CGSize, validatingContent: Swift.Bool = true) -> CoreGraphics.CGSize
  mutating public func size(at index: Swift.Int, in size: CoreGraphics.CGSize, validatingContent: Swift.Bool = true) -> CoreGraphics.CGSize
  mutating public func removeSize(of identifier: Swift.AnyHashable)
  mutating public func removeAllSizes()
  public typealias Element = Swift.AnyHashable
  public typealias Index = Swift.Int
  public typealias SubSequence = Swift.Slice<SwiftUI._ScrollableLayoutProxy>
  public typealias Indices = Swift.Range<Swift.Int>
  public typealias Iterator = Swift.IndexingIterator<SwiftUI._ScrollableLayoutProxy>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ScrollableLayoutItem : Swift.Equatable {
  public var id: Swift.AnyHashable
  public var proposedSize: CoreGraphics.CGSize {
    get
  }
  public var anchor: SwiftUI.UnitPoint {
    get
  }
  public var anchorPosition: CoreGraphics.CGPoint {
    get
  }
  public init(id: Swift.AnyHashable, proposedSize: CoreGraphics.CGSize, anchoring anchor: SwiftUI.UnitPoint = .topLeading, at position: CoreGraphics.CGPoint)
  public static func == (a: SwiftUI._ScrollableLayoutItem, b: SwiftUI._ScrollableLayoutItem) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _FixedSizeLayout {
  @inlinable public init(horizontal: Swift.Bool = true, vertical: Swift.Bool = true) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
  @usableFromInline
  internal var horizontal: Swift.Bool
  @usableFromInline
  internal var vertical: Swift.Bool
}
extension _FixedSizeLayout {
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func fixedSize(horizontal: Swift.Bool, vertical: Swift.Bool) -> some SwiftUI.View {
        return modifier(
            _FixedSizeLayout(horizontal: horizontal, vertical: vertical))
    }
  
  @inlinable public func fixedSize() -> some SwiftUI.View {
        return fixedSize(horizontal: true, vertical: true)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct ForegroundStyle {
  @inlinable public init() {}
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func foregroundColor(_ color: SwiftUI.Color?) -> some SwiftUI.View {
        return environment(\.foregroundColor, color)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @usableFromInline
  internal var foregroundColor: SwiftUI.Color? {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __FourUpLayout {
  public init()
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum _VariadicView {
  public typealias Root = SwiftUI._VariadicView_Root
  public typealias ViewRoot = SwiftUI._VariadicView_ViewRoot
  public typealias Children = SwiftUI._VariadicView_Children
  public typealias UnaryViewRoot = SwiftUI._VariadicView_UnaryViewRoot
  public typealias MultiViewRoot = SwiftUI._VariadicView_MultiViewRoot
  @frozen public struct Tree<Root, Content> where Root : SwiftUI._VariadicView_Root {
    public var root: Root
    public var content: Content
    @inlinable internal init(root: Root, content: Content) {
            self.root = root
            self.content = content
        }
    @inlinable public init(_ root: Root, @SwiftUI.ViewBuilder content: () -> Content) {
            self.root = root
            self.content = content()
        }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _VariadicView_Root {
  static var _viewListOptions: Swift.Int { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_Root {
  public static var _viewListOptions: Swift.Int {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _VariadicView_ViewRoot : SwiftUI._VariadicView_Root {
  static func _makeView(root: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewOutputs
  static func _makeViewList(root: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
  associatedtype Body : SwiftUI.View
  func body(children: SwiftUI._VariadicView.Children) -> Self.Body
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_ViewRoot where Self.Body == Swift.Never {
  public func body(children: SwiftUI._VariadicView.Children) -> Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _VariadicView_UnaryViewRoot : SwiftUI._VariadicView_ViewRoot {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_UnaryViewRoot {
  public static func _makeViewList(root: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _VariadicView_MultiViewRoot : SwiftUI._VariadicView_ViewRoot {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_MultiViewRoot {
  public static func _makeView(root: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _VariadicView_Children {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_ViewRoot {
  public static func _makeView(root: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(root: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView.Tree : SwiftUI.View where Root : SwiftUI._VariadicView_ViewRoot, Content : SwiftUI.View {
  public typealias Body = Swift.Never
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._VariadicView.Tree<Root, Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI._VariadicView.Tree<Root, Content>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct Stepper<Label> : SwiftUI.View where Label : SwiftUI.View {
  public init(onIncrement: (() -> Swift.Void)?, onDecrement: (() -> Swift.Void)?, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, @SwiftUI.ViewBuilder label: () -> Label)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI7StepperV4bodyQrvp", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Stepper {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<V>(value: SwiftUI.Binding<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, @SwiftUI.ViewBuilder label: () -> Label) where V : Swift.Strideable
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<V>(value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, @SwiftUI.ViewBuilder label: () -> Label) where V : Swift.Strideable
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Stepper where Label == SwiftUI.Text {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: SwiftUI.LocalizedStringKey, onIncrement: (() -> Swift.Void)?, onDecrement: (() -> Swift.Void)?, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in })
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S>(_ title: S, onIncrement: (() -> Swift.Void)?, onDecrement: (() -> Swift.Void)?, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }) where S : Swift.StringProtocol
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<V>(_ titleKey: SwiftUI.LocalizedStringKey, value: SwiftUI.Binding<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }) where V : Swift.Strideable
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S, V>(_ title: S, value: SwiftUI.Binding<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }) where S : Swift.StringProtocol, V : Swift.Strideable
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<V>(_ titleKey: SwiftUI.LocalizedStringKey, value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }) where V : Swift.Strideable
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S, V>(_ title: S, value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }) where S : Swift.StringProtocol, V : Swift.Strideable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var defaultMinListRowHeight: CoreGraphics.CGFloat {
    get
    set
  }
  public var defaultMinListHeaderHeight: CoreGraphics.CGFloat? {
    get
    set
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public var _plainListSectionSpacing: CoreGraphics.CGFloat? {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct UnitPoint : Swift.Hashable {
  public var x: CoreGraphics.CGFloat
  public var y: CoreGraphics.CGFloat
  @inlinable public init() {
        self.init(x: 0, y: 0)
    }
  @inlinable public init(x: CoreGraphics.CGFloat, y: CoreGraphics.CGFloat) {
        self.x = x
        self.y = y
    }
  public static let zero: SwiftUI.UnitPoint
  public static let center: SwiftUI.UnitPoint
  public static let leading: SwiftUI.UnitPoint
  public static let trailing: SwiftUI.UnitPoint
  public static let top: SwiftUI.UnitPoint
  public static let bottom: SwiftUI.UnitPoint
  public static let topLeading: SwiftUI.UnitPoint
  public static let topTrailing: SwiftUI.UnitPoint
  public static let bottomLeading: SwiftUI.UnitPoint
  public static let bottomTrailing: SwiftUI.UnitPoint
  public static func == (a: SwiftUI.UnitPoint, b: SwiftUI.UnitPoint) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension UnitPoint : SwiftUI.Animatable {
  public typealias AnimatableData = SwiftUI.AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>
  public var animatableData: SwiftUI.UnitPoint.AnimatableData {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _ViewTest : SwiftUI._Test {
  associatedtype RootView : SwiftUI.View
  func initRootView() -> Self.RootView
  func initSize() -> CoreGraphics.CGSize
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewTest {
  public func setUpTest()
  public func tearDownTest()
  public var rootView: Self.RootView {
    get
  }
  public func viewForIdentifier<V>(_ identifier: Swift.AnyHashable, _ type: V.Type = V.self) -> V? where V : SwiftUI.View
  public func stateForIdentifier<I, S, V>(_ id: I, type _: S.Type = S.self, in _: V.Type = V.self) -> SwiftUI.Binding<S>? where I : Swift.Hashable, V : SwiftUI.View
  public func render(seconds: Swift.Double = 1.0 / 60.0)
  public func initSize() -> CoreGraphics.CGSize
  public func setSize(_ size: CoreGraphics.CGSize)
  public func setEnvironment(_ environment: SwiftUI.EnvironmentValues)
  public func resetEvents()
  public func loop()
  public func turnRunloop(times: Swift.Int = 1)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewTest {
  public func rootState<S>(type _: S.Type = S.self) -> SwiftUI.Binding<S>
  public func rootState<S, V>(type _: S.Type = S.self, in _: V.Type) -> SwiftUI.Binding<S> where V : SwiftUI.View
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol PickerStyle {
  static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<Self, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<Self, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _PickerValue<Style, SelectionValue> where Style : SwiftUI.PickerStyle, SelectionValue : Swift.Hashable {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func pickerStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.PickerStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct SegmentedPickerStyle : SwiftUI.PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.SegmentedPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.SegmentedPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _PaddingLayout {
  public var edges: SwiftUI.Edge.Set
  public var insets: SwiftUI.EdgeInsets?
  @inlinable public init(edges: SwiftUI.Edge.Set = .all, insets: SwiftUI.EdgeInsets?) {
        self.edges = edges
        self.insets = insets
    }
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func padding(_ insets: SwiftUI.EdgeInsets) -> some SwiftUI.View {
        return modifier(_PaddingLayout(insets: insets))
    }
  
  @inlinable public func padding(_ edges: SwiftUI.Edge.Set = .all, _ length: CoreGraphics.CGFloat? = nil) -> some SwiftUI.View {
        let insets = length.map { EdgeInsets(_all: $0) }
        return modifier(_PaddingLayout(edges: edges, insets: insets))
    }
  
  @inlinable public func padding(_ length: CoreGraphics.CGFloat) -> some SwiftUI.View {
        return padding(.all, length)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AnchoredShapeStyle<S> : SwiftUI.ShapeStyle where S : SwiftUI.ShapeStyle {
  public var style: S
  public var bounds: CoreGraphics.CGRect
  @inlinable internal init(style: S, bounds: CoreGraphics.CGRect) {
        self.style = style
        self.bounds = bounds
    }
  public static func _makeView<T>(view: SwiftUI._GraphValue<SwiftUI._ShapeView<T, SwiftUI._AnchoredShapeStyle<S>>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where T : SwiftUI.Shape
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ShapeStyle {
  @inlinable public func `in`(_ rect: CoreGraphics.CGRect) -> some SwiftUI.ShapeStyle {
        return _AnchoredShapeStyle(style: self, bounds: rect)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public enum TextAlignment : Swift.Hashable, Swift.CaseIterable {
  case leading
  case center
  case trailing
  public static func == (a: SwiftUI.TextAlignment, b: SwiftUI.TextAlignment) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public typealias AllCases = [SwiftUI.TextAlignment]
  public static var allCases: [SwiftUI.TextAlignment] {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public enum _VAlignment {
  case top
  case center
  case bottom
  public static func == (a: SwiftUI._VAlignment, b: SwiftUI._VAlignment) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AlignmentLayout {
  public var horizontal: SwiftUI.TextAlignment?
  public var vertical: SwiftUI._VAlignment?
  @inlinable public init(horizontal: SwiftUI.TextAlignment? = nil, vertical: SwiftUI._VAlignment? = nil) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _OffsetEffect : SwiftUI.GeometryEffect, Swift.Equatable {
  public var offset: CoreGraphics.CGSize
  @inlinable public init(offset: CoreGraphics.CGSize) {
        self.offset = offset
    }
  public func effectValue(size: CoreGraphics.CGSize) -> SwiftUI.ProjectionTransform
  public var animatableData: CoreGraphics.CGSize.AnimatableData {
    get
    set
  }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._OffsetEffect>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._OffsetEffect, b: SwiftUI._OffsetEffect) -> Swift.Bool
  public typealias AnimatableData = CoreGraphics.CGSize.AnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func offset(_ offset: CoreGraphics.CGSize) -> some SwiftUI.View {
        return modifier(_OffsetEffect(offset: offset))
    }
  
  @inlinable public func offset(x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> some SwiftUI.View {
        return offset(CGSize(width: x, height: y))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public static func offset(_ offset: CoreGraphics.CGSize) -> SwiftUI.AnyTransition
  public static func offset(x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> SwiftUI.AnyTransition
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AlignmentWritingModifier : SwiftUI.ViewModifier {
  @usableFromInline
  internal let key: SwiftUI.AlignmentKey
  @usableFromInline
  internal let computeValue: (SwiftUI.ViewDimensions) -> CoreGraphics.CGFloat
  @inlinable internal init(key: SwiftUI.AlignmentKey, computeValue: @escaping (SwiftUI.ViewDimensions) -> CoreGraphics.CGFloat) {
        self.key = key
        self.computeValue = computeValue
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._AlignmentWritingModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func alignmentGuide(_ g: SwiftUI.HorizontalAlignment, computeValue: @escaping (SwiftUI.ViewDimensions) -> CoreGraphics.CGFloat) -> some SwiftUI.View {
        return modifier(
            _AlignmentWritingModifier(key: g.key, computeValue: computeValue))
    }
  
  @inlinable public func alignmentGuide(_ g: SwiftUI.VerticalAlignment, computeValue: @escaping (SwiftUI.ViewDimensions) -> CoreGraphics.CGFloat) -> some SwiftUI.View {
        return modifier(
            _AlignmentWritingModifier(key: g.key, computeValue: computeValue))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct EventModifiers : Swift.OptionSet {
  public let rawValue: Swift.Int
  public init(rawValue: Swift.Int)
  public static let capsLock: SwiftUI.EventModifiers
  public static let shift: SwiftUI.EventModifiers
  public static let control: SwiftUI.EventModifiers
  public static let option: SwiftUI.EventModifiers
  public static let command: SwiftUI.EventModifiers
  public static let numericPad: SwiftUI.EventModifiers
  public static let function: SwiftUI.EventModifiers
  public static let all: SwiftUI.EventModifiers
  public typealias RawValue = Swift.Int
  public typealias Element = SwiftUI.EventModifiers
  public typealias ArrayLiteralElement = SwiftUI.EventModifiers
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ViewOutputs {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _PositionLayout {
  public var position: CoreGraphics.CGPoint
  @inlinable public init(position: CoreGraphics.CGPoint) {
        self.position = position
    }
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func position(_ position: CoreGraphics.CGPoint) -> some SwiftUI.View {
        return modifier(_PositionLayout(position: position))
    }
  
  @inlinable public func position(x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> some SwiftUI.View {
        return position(CGPoint(x: x, y: y))
    }
  
}
@usableFromInline
internal struct ListRowPlatterColorTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: SwiftUI.Color? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = SwiftUI.Color?
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @inlinable public func listRowPlatterColor(_ color: SwiftUI.Color?) -> some SwiftUI.View {
        return _trait(ListRowPlatterColorTraitKey.self, color)
    }
  
}
public func __previewThunksHaveFinishedLoading()
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _SafeAreaIgnoringLayout {
  public var edges: SwiftUI.Edge.Set
  @inlinable public init(edges: SwiftUI.Edge.Set = .all) {
        self.edges = edges
    }
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func edgesIgnoringSafeArea(_ edges: SwiftUI.Edge.Set) -> some SwiftUI.View {
        return modifier(_SafeAreaIgnoringLayout(edges: edges))
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct _DigitalCrownModifier : SwiftUI.ViewModifier {
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._DigitalCrownModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct RoundedBorderTextFieldStyle : SwiftUI.TextFieldStyle {
  public init()
  public func _body(configuration: SwiftUI.TextField<SwiftUI.RoundedBorderTextFieldStyle._Label>) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI27RoundedBorderTextFieldStyleV5_body13configurationQrAA0eF0VyAA01_efG5LabelVG_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __IconLayout {
  public init(columnCount: Swift.Int = 4, rowCount: Swift.Int? = nil, openFolderIndex: Swift.Int? = nil, openFolderScale: CoreGraphics.CGFloat = 1.0, iconScale: CoreGraphics.CGFloat = 1.0)
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct _WKStoryboardContent : SwiftUI.View {
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI20_WKStoryboardContentV4bodyQrvp", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _EnvironmentKeyWritingModifier<Value> : SwiftUI.ViewModifier, SwiftUI._GraphInputsModifier {
  public var keyPath: Swift.WritableKeyPath<SwiftUI.EnvironmentValues, Value>
  public var value: Value
  @inlinable public init(keyPath: Swift.WritableKeyPath<SwiftUI.EnvironmentValues, Value>, value: Value) {
        self.keyPath = keyPath
        self.value = value
    }
  public static func _makeInputs(modifier: SwiftUI._GraphValue<SwiftUI._EnvironmentKeyWritingModifier<Value>>, inputs: inout SwiftUI._GraphInputs)
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func environment<V>(_ keyPath: Swift.WritableKeyPath<SwiftUI.EnvironmentValues, V>, _ value: V) -> some SwiftUI.View {
        return modifier(_EnvironmentKeyWritingModifier(
            keyPath: keyPath, value: value))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct AccessibilityChildBehavior : Swift.Hashable {
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (lhs: SwiftUI.AccessibilityChildBehavior, rhs: SwiftUI.AccessibilityChildBehavior) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AccessibilityChildBehavior {
  public static let ignore: SwiftUI.AccessibilityChildBehavior
  public static let contain: SwiftUI.AccessibilityChildBehavior
  public static let combine: SwiftUI.AccessibilityChildBehavior
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct PasteButton : SwiftUI.View {
  public init(supportedTypes: [Swift.String], payloadAction: @escaping ([Foundation.NSItemProvider]) -> Swift.Void)
  public init<Payload>(supportedTypes: [Swift.String], validator: @escaping ([Foundation.NSItemProvider]) -> Payload?, payloadAction: @escaping (Payload) -> Swift.Void)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI11PasteButtonV4bodyQrvp", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Image : Swift.Equatable {
  internal var provider: SwiftUI.AnyImageProviderBox
  public static func == (lhs: SwiftUI.Image, rhs: SwiftUI.Image) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public typealias Body = Swift.Never
}
@usableFromInline
internal class AnyImageProviderBox {
  @objc @usableFromInline
  deinit
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DefaultMenuButtonStyle : SwiftUI.MenuButtonStyle {
  public init()
  public func _body(configuration: SwiftUI.DefaultMenuButtonStyle._Configuration) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI22DefaultMenuButtonStyleV5_body13configurationQrAA01_deF13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func zIndex(_ value: Swift.Double) -> some SwiftUI.View {
        return _trait(ZIndexTraitKey.self, value)
    }
  
}
@usableFromInline
internal struct ZIndexTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Double {
    get { 0.0 }
  }
  @usableFromInline
  internal typealias Value = Swift.Double
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct DragGesture {
  public struct Value : Swift.Equatable {
    public var time: Foundation.Date
    public var location: CoreGraphics.CGPoint
    public var startLocation: CoreGraphics.CGPoint
    public var translation: CoreGraphics.CGSize {
      get
    }
    public var predictedEndLocation: CoreGraphics.CGPoint {
      get
    }
    public var predictedEndTranslation: CoreGraphics.CGSize {
      get
    }
    public static func == (a: SwiftUI.DragGesture.Value, b: SwiftUI.DragGesture.Value) -> Swift.Bool
  }
  public var minimumDistance: CoreGraphics.CGFloat
  public var coordinateSpace: SwiftUI.CoordinateSpace
  public init(minimumDistance: CoreGraphics.CGFloat = 10, coordinateSpace: SwiftUI.CoordinateSpace = .local)
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.DragGesture>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<SwiftUI.DragGesture.Value>
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct DefaultToggleStyle : SwiftUI.ToggleStyle {
  public init()
  public func makeBody(configuration: SwiftUI.DefaultToggleStyle.Configuration) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI18DefaultToggleStyleV8makeBody13configurationQrAA0dE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct Slider<Label, ValueLabel> : SwiftUI.View where Label : SwiftUI.View, ValueLabel : SwiftUI.View {
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI6SliderV4bodyQrvp", 0) 🦸<Label, ValueLabel>
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider {
  @available(tvOS, unavailable)
  public init<V>(value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V> = 0...1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, minimumValueLabel: ValueLabel, maximumValueLabel: ValueLabel, @SwiftUI.ViewBuilder label: () -> Label) where V : Swift.BinaryFloatingPoint, V.Stride : Swift.BinaryFloatingPoint
  public init<V>(value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, minimumValueLabel: ValueLabel, maximumValueLabel: ValueLabel, @SwiftUI.ViewBuilder label: () -> Label) where V : Swift.BinaryFloatingPoint, V.Stride : Swift.BinaryFloatingPoint
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider where ValueLabel == SwiftUI.EmptyView {
  @available(tvOS, unavailable)
  public init<V>(value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V> = 0...1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, @SwiftUI.ViewBuilder label: () -> Label) where V : Swift.BinaryFloatingPoint, V.Stride : Swift.BinaryFloatingPoint
  @available(tvOS, unavailable)
  public init<V>(value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, @SwiftUI.ViewBuilder label: () -> Label) where V : Swift.BinaryFloatingPoint, V.Stride : Swift.BinaryFloatingPoint
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider where Label == SwiftUI.EmptyView, ValueLabel == SwiftUI.EmptyView {
  @available(tvOS, unavailable)
  public init<V>(value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V> = 0...1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }) where V : Swift.BinaryFloatingPoint, V.Stride : Swift.BinaryFloatingPoint
  @available(tvOS, unavailable)
  public init<V>(value: SwiftUI.Binding<V>, in bounds: Swift.ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }) where V : Swift.BinaryFloatingPoint, V.Stride : Swift.BinaryFloatingPoint
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _TransformEffect : SwiftUI.GeometryEffect, Swift.Equatable {
  public var transform: CoreGraphics.CGAffineTransform
  @inlinable public init(transform: CoreGraphics.CGAffineTransform) {
        self.transform = transform
    }
  public func effectValue(size: CoreGraphics.CGSize) -> SwiftUI.ProjectionTransform
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._TransformEffect, b: SwiftUI._TransformEffect) -> Swift.Bool
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func transformEffect(_ transform: CoreGraphics.CGAffineTransform) -> some SwiftUI.View {
        return modifier(_TransformEffect(transform: transform))
    }
  
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public struct ActionSheet {
  public init(title: SwiftUI.Text, message: SwiftUI.Text? = nil, buttons: [SwiftUI.ActionSheet.Button] = [.cancel()])
  public typealias Button = SwiftUI.Alert.Button
}
extension View {
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(OSX, unavailable)
  public func actionSheet<T>(item: SwiftUI.Binding<T?>, content: (T) -> SwiftUI.ActionSheet) -> some SwiftUI.View where T : Swift.Identifiable
  
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(OSX, unavailable)
  public func actionSheet(isPresented: SwiftUI.Binding<Swift.Bool>, content: () -> SwiftUI.ActionSheet) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  public static var accentColor: SwiftUI.Color {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @available(OSX, unavailable)
  @inlinable public func accentColor(_ accentColor: SwiftUI.Color?) -> some SwiftUI.View {
        return environment(\.accentColor, accentColor)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @usableFromInline
  internal var accentColor: SwiftUI.Color? {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var isEnabled: Swift.Bool {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func disabled(_ disabled: Swift.Bool) -> some SwiftUI.View {
        return modifier(_EnvironmentKeyTransformModifier(
            keyPath: \.isEnabled, transform: { $0 = $0 && !disabled }))
    }
  
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public struct GroupedListStyle : SwiftUI.ListStyle {
  public init()
  public static func _sectionInset(_ sectionInset: SwiftUI.EdgeInsets) -> SwiftUI.GroupedListStyle
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.GroupedListStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.GroupedListStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public func renderingMode(_ renderingMode: SwiftUI.Image.TemplateRenderingMode?) -> SwiftUI.Image
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  public static let clear: SwiftUI.Color
  public static let black: SwiftUI.Color
  public static let white: SwiftUI.Color
  public static let gray: SwiftUI.Color
  public static let red: SwiftUI.Color
  public static let green: SwiftUI.Color
  public static let blue: SwiftUI.Color
  public static let orange: SwiftUI.Color
  public static let yellow: SwiftUI.Color
  public static let pink: SwiftUI.Color
  public static let purple: SwiftUI.Color
  public static let primary: SwiftUI.Color
  public static let secondary: SwiftUI.Color
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _RotationEffect : SwiftUI.GeometryEffect, Swift.Equatable {
  public var angle: SwiftUI.Angle
  public var anchor: SwiftUI.UnitPoint
  @inlinable public init(angle: SwiftUI.Angle, anchor: SwiftUI.UnitPoint = .center) {
        self.angle = angle
        self.anchor = anchor
    }
  public func effectValue(size: CoreGraphics.CGSize) -> SwiftUI.ProjectionTransform
  public typealias AnimatableData = SwiftUI.AnimatablePair<SwiftUI.Angle.AnimatableData, SwiftUI.UnitPoint.AnimatableData>
  public var animatableData: SwiftUI._RotationEffect.AnimatableData {
    get
    set
  }
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._RotationEffect, b: SwiftUI._RotationEffect) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func rotationEffect(_ angle: SwiftUI.Angle, anchor: SwiftUI.UnitPoint = .center) -> some SwiftUI.View {
        return modifier(_RotationEffect(angle: angle, anchor: anchor))
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public var defaultWheelPickerItemHeight: CoreGraphics.CGFloat {
    get
    set
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @inlinable public func defaultWheelPickerItemHeight(_ height: CoreGraphics.CGFloat) -> some SwiftUI.View {
        return environment(\.defaultWheelPickerItemHeight, height)
    }
  
}
@available(OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@available(iOS, unavailable)
extension View {
  @available(iOS, unavailable)
  public func focusable(_ isFocusable: Swift.Bool = true, onFocusChange: @escaping (Swift.Bool) -> Swift.Void = { _ in }) -> some SwiftUI.View
  
}
@available(OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@available(iOS, unavailable)
public struct _FocusableModifier : SwiftUI.ViewModifier {
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._FocusableModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ScaleEffect : SwiftUI.GeometryEffect, Swift.Equatable {
  public var scale: CoreGraphics.CGSize
  public var anchor: SwiftUI.UnitPoint
  @inlinable public init(scale: CoreGraphics.CGSize, anchor: SwiftUI.UnitPoint = .center) {
        self.scale = scale
        self.anchor = anchor
    }
  public func effectValue(size: CoreGraphics.CGSize) -> SwiftUI.ProjectionTransform
  public typealias AnimatableData = SwiftUI.AnimatablePair<CoreGraphics.CGSize.AnimatableData, SwiftUI.UnitPoint.AnimatableData>
  public var animatableData: SwiftUI._ScaleEffect.AnimatableData {
    get
    set
  }
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._ScaleEffect, b: SwiftUI._ScaleEffect) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func scaleEffect(_ scale: CoreGraphics.CGSize, anchor: SwiftUI.UnitPoint = .center) -> some SwiftUI.View {
        return modifier(_ScaleEffect(scale: scale, anchor: anchor))
    }
  
  @inlinable public func scaleEffect(_ s: CoreGraphics.CGFloat, anchor: SwiftUI.UnitPoint = .center) -> some SwiftUI.View {
        return scaleEffect(CGSize(width: s, height: s), anchor: anchor)
    }
  
  @inlinable public func scaleEffect(x: CoreGraphics.CGFloat = 0.0, y: CoreGraphics.CGFloat = 0.0, anchor: SwiftUI.UnitPoint = .center) -> some SwiftUI.View {
        return scaleEffect(CGSize(width: x, height: y), anchor: anchor)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public static var scale: SwiftUI.AnyTransition {
    get
  }
  public static func scale(scale: CoreGraphics.CGFloat, anchor: SwiftUI.UnitPoint = .center) -> SwiftUI.AnyTransition
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _BlurEffect : Swift.Equatable {
  public var radius: CoreGraphics.CGFloat
  public var isOpaque: Swift.Bool
  @inlinable public init(radius: CoreGraphics.CGFloat, opaque: Swift.Bool) {
        self.radius = radius
        self.isOpaque = opaque
    }
  public var animatableData: CoreGraphics.CGFloat {
    get
    set
  }
  public static func == (a: SwiftUI._BlurEffect, b: SwiftUI._BlurEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = CoreGraphics.CGFloat
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func blur(radius: CoreGraphics.CGFloat, opaque: Swift.Bool = false) -> some SwiftUI.View {
        return modifier(_BlurEffect(radius: radius, opaque: opaque))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _BrightnessEffect : Swift.Equatable {
  public var amount: Swift.Double
  @inlinable public init(amount: Swift.Double) {
        self.amount = amount
    }
  public var animatableData: Swift.Double {
    get
    set
  }
  public static func == (a: SwiftUI._BrightnessEffect, b: SwiftUI._BrightnessEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = Swift.Double
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func brightness(_ amount: Swift.Double) -> some SwiftUI.View {
        return modifier(_BrightnessEffect(amount: amount))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ColorInvertEffect : Swift.Equatable {
  @inlinable public init() {}
  public static func == (a: SwiftUI._ColorInvertEffect, b: SwiftUI._ColorInvertEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func colorInvert() -> some SwiftUI.View {
        return modifier(_ColorInvertEffect())
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol AlignmentID {
  static func defaultValue(in context: SwiftUI.ViewDimensions) -> CoreGraphics.CGFloat
  static func _combineExplicit(childValue: CoreGraphics.CGFloat, _ n: Swift.Int, into parentValue: inout CoreGraphics.CGFloat?)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AlignmentID {
  public static func _combineExplicit(childValue: CoreGraphics.CGFloat, _ n: Swift.Int, into parentValue: inout CoreGraphics.CGFloat?)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct HorizontalAlignment {
  public init(_ id: SwiftUI.AlignmentID.Type)
  @usableFromInline
  internal let key: SwiftUI.AlignmentKey
  public static func == (a: SwiftUI.HorizontalAlignment, b: SwiftUI.HorizontalAlignment) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct VerticalAlignment {
  public init(_ id: SwiftUI.AlignmentID.Type)
  @usableFromInline
  internal let key: SwiftUI.AlignmentKey
  public static func == (a: SwiftUI.VerticalAlignment, b: SwiftUI.VerticalAlignment) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension HorizontalAlignment {
  public static let leading: SwiftUI.HorizontalAlignment
  public static let center: SwiftUI.HorizontalAlignment
  public static let trailing: SwiftUI.HorizontalAlignment
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension VerticalAlignment {
  public static let top: SwiftUI.VerticalAlignment
  public static let center: SwiftUI.VerticalAlignment
  public static let bottom: SwiftUI.VerticalAlignment
  public static let firstTextBaseline: SwiftUI.VerticalAlignment
  public static let lastTextBaseline: SwiftUI.VerticalAlignment
}
@usableFromInline
@frozen internal struct AlignmentKey : Swift.Hashable, Swift.Comparable {
  private let bits: Swift.UInt
  @usableFromInline
  internal static func < (lhs: SwiftUI.AlignmentKey, rhs: SwiftUI.AlignmentKey) -> Swift.Bool
  @usableFromInline
  internal static func == (a: SwiftUI.AlignmentKey, b: SwiftUI.AlignmentKey) -> Swift.Bool
  @usableFromInline
  internal var hashValue: Swift.Int {
    @usableFromInline
    get
  }
  @usableFromInline
  internal func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  @frozen public enum Orientation : Swift.UInt8, Swift.CaseIterable, Swift.Hashable {
    case up
    case upMirrored
    case down
    case downMirrored
    case left
    case leftMirrored
    case right
    case rightMirrored
    public typealias RawValue = Swift.UInt8
    public init?(rawValue: Swift.UInt8)
    public var rawValue: Swift.UInt8 {
      get
    }
    public typealias AllCases = [SwiftUI.Image.Orientation]
    public static var allCases: [SwiftUI.Image.Orientation] {
      get
    }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ColorMultiplyEffect : SwiftUI.EnvironmentalModifier, Swift.Equatable {
  public var color: SwiftUI.Color
  @inlinable public init(color: SwiftUI.Color) {
        self.color = color
    }
  public func resolve(in environment: SwiftUI.EnvironmentValues) -> SwiftUI._ColorMultiplyEffect._Resolved
  public struct _Resolved {
    public typealias AnimatableData = SwiftUI.AnimatablePair<Swift.Float, SwiftUI.AnimatablePair<Swift.Float, SwiftUI.AnimatablePair<Swift.Float, Swift.Float>>>
    public var animatableData: SwiftUI._ColorMultiplyEffect._Resolved.AnimatableData {
      get
      set
    }
    public typealias Body = Swift.Never
  }
  public typealias ResolvedModifier = SwiftUI._ColorMultiplyEffect._Resolved
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._ColorMultiplyEffect, b: SwiftUI._ColorMultiplyEffect) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func colorMultiply(_ color: SwiftUI.Color) -> some SwiftUI.View {
        return modifier(_ColorMultiplyEffect(color: color))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ContrastEffect : Swift.Equatable {
  public var amount: Swift.Double
  @inlinable public init(amount: Swift.Double) {
        self.amount = amount
    }
  public var animatableData: Swift.Double {
    get
    set
  }
  public static func == (a: SwiftUI._ContrastEffect, b: SwiftUI._ContrastEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = Swift.Double
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func contrast(_ amount: Swift.Double) -> some SwiftUI.View {
        return modifier(_ContrastEffect(amount: amount))
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public enum DigitalCrownRotationalSensitivity {
  case low
  case medium
  case high
  public static func == (a: SwiftUI.DigitalCrownRotationalSensitivity, b: SwiftUI.DigitalCrownRotationalSensitivity) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func digitalCrownRotation<V>(_ binding: SwiftUI.Binding<V>, from minValue: V, through maxValue: V, by stride: V.Stride? = nil, sensitivity: SwiftUI.DigitalCrownRotationalSensitivity = .high, isContinuous: Swift.Bool = false, isHapticFeedbackEnabled: Swift.Bool = true) -> some SwiftUI.View where V : Swift.BinaryFloatingPoint, V.Stride : Swift.BinaryFloatingPoint
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func digitalCrownRotation<V>(_ binding: SwiftUI.Binding<V>) -> some SwiftUI.View where V : Swift.BinaryFloatingPoint
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _digitalCrownRotation<V>(_ binding: SwiftUI.Binding<V>, configuration: SwiftUI._DigitalCrownConfiguration) -> some SwiftUI.View where V : Swift.BinaryFloatingPoint
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _GrayscaleEffect : Swift.Equatable {
  public var amount: Swift.Double
  @inlinable public init(amount: Swift.Double) {
        self.amount = amount
    }
  public var animatableData: Swift.Double {
    get
    set
  }
  public static func == (a: SwiftUI._GrayscaleEffect, b: SwiftUI._GrayscaleEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = Swift.Double
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func grayscale(_ amount: Swift.Double) -> some SwiftUI.View {
        return modifier(_GrayscaleEffect(amount: amount))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _HueRotationEffect : Swift.Equatable {
  public var angle: SwiftUI.Angle
  @inlinable public init(angle: SwiftUI.Angle) {
        self.angle = angle
    }
  public var animatableData: SwiftUI.Angle.AnimatableData {
    get
    set
  }
  public static func == (a: SwiftUI._HueRotationEffect, b: SwiftUI._HueRotationEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.Angle.AnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func hueRotation(_ angle: SwiftUI.Angle) -> some SwiftUI.View {
        return modifier(_HueRotationEffect(angle: angle))
    }
  
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public struct PreferredColorSchemeKey : SwiftUI.PreferenceKey {
  public typealias Value = SwiftUI.ColorScheme?
  public static func reduce(value: inout SwiftUI.PreferredColorSchemeKey.Value, nextValue: () -> SwiftUI.PreferredColorSchemeKey.Value)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @available(OSX, unavailable)
  @inlinable public func preferredColorScheme(_ colorScheme: SwiftUI.ColorScheme?) -> some SwiftUI.View {
        return preference(key: PreferredColorSchemeKey.self,
            value: colorScheme)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _LuminanceToAlphaEffect : Swift.Equatable {
  @inlinable public init() {}
  public static func == (a: SwiftUI._LuminanceToAlphaEffect, b: SwiftUI._LuminanceToAlphaEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func luminanceToAlpha() -> some SwiftUI.View {
        return modifier(_LuminanceToAlphaEffect())
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _SaturationEffect : Swift.Equatable {
  public var amount: Swift.Double
  @inlinable public init(amount: Swift.Double) {
        self.amount = amount
    }
  public var animatableData: Swift.Double {
    get
    set
  }
  public static func == (a: SwiftUI._SaturationEffect, b: SwiftUI._SaturationEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = Swift.Double
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func saturation(_ amount: Swift.Double) -> some SwiftUI.View {
        return modifier(_SaturationEffect(amount: amount))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func transition(_ t: SwiftUI.AnyTransition) -> some SwiftUI.View {
        return _trait(TransitionTraitKey.self, t)
    }
  
}
@usableFromInline
internal struct TransitionTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: SwiftUI.AnyTransition {
    get { .opacity }
  }
  @usableFromInline
  internal typealias Value = SwiftUI.AnyTransition
}
@usableFromInline
internal struct CanTransitionTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _OpacityEffect : Swift.Equatable {
  public var opacity: Swift.Double
  @inlinable public init(opacity: Swift.Double) {
        self.opacity = opacity
    }
  public var animatableData: Swift.Double {
    get
    set
  }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._OpacityEffect>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
  public typealias AnimatableData = Swift.Double
  public static func == (a: SwiftUI._OpacityEffect, b: SwiftUI._OpacityEffect) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func opacity(_ opacity: Swift.Double) -> some SwiftUI.View {
        return modifier(_OpacityEffect(opacity: opacity))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public static let opacity: SwiftUI.AnyTransition
}
@available(iOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct WheelPickerStyle : SwiftUI.PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.WheelPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.WheelPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AnimationModifier<Value> : SwiftUI.ViewModifier where Value : Swift.Equatable {
  public var animation: SwiftUI.Animation?
  public var value: Value
  @inlinable public init(animation: SwiftUI.Animation?, value: Value) {
        self.animation = animation
        self.value = value
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._AnimationModifier<Value>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<SwiftUI._AnimationModifier<Value>>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AnimationModifier : Swift.Equatable {
  public static func == (a: SwiftUI._AnimationModifier<Value>, b: SwiftUI._AnimationModifier<Value>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func animation<V>(_ animation: SwiftUI.Animation?, value: V) -> some SwiftUI.View where V : Swift.Equatable {
        return modifier(_AnimationModifier(animation: animation, value: value))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __Random : Swift.Equatable {
  public var seed: Swift.UInt32
  public init(seed: Swift.UInt32 = 0)
  mutating public func next() -> Swift.Double
  mutating public func next(_ mean: Swift.Double, range: Swift.Double) -> Swift.Double
  mutating public func normal() -> Swift.Double
  mutating public func normal(_ mean: Swift.Double, range: Swift.Double) -> Swift.Double
  mutating public func nextColor(mean: Swift.Double = 0.75, range: Swift.Double = 0.5) -> SwiftUI.Color
  public static func == (a: SwiftUI.__Random, b: SwiftUI.__Random) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func tag<V>(_ tag: V) -> some SwiftUI.View where V : Swift.Hashable {
        return _trait(TagValueTraitKey<V>.self, .tagged(tag))
    }
  
  @inlinable public func _untagged() -> some SwiftUI.View {
        return _trait(IsAuxiliaryContentTraitKey.self, true)
    }
  
}
@usableFromInline
internal struct TagValueTraitKey<V> : SwiftUI._ViewTraitKey where V : Swift.Hashable {
  @usableFromInline
  @frozen internal enum Value {
    case untagged
    case tagged(V)
  }
  @inlinable internal static var defaultValue: SwiftUI.TagValueTraitKey<V>.Value {
    get { .untagged }
  }
}
@usableFromInline
internal struct IsAuxiliaryContentTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __ResizableImagesExampleLayout {
  public init()
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _BlendModeEffect : Swift.Equatable {
  public var blendMode: SwiftUI.BlendMode
  @inlinable public init(blendMode: SwiftUI.BlendMode) {
        self.blendMode = blendMode
    }
  public static func == (a: SwiftUI._BlendModeEffect, b: SwiftUI._BlendModeEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func blendMode(_ blendMode: SwiftUI.BlendMode) -> some SwiftUI.View {
        return modifier(_BlendModeEffect(blendMode: blendMode))
    }
  
}
@usableFromInline
internal struct ListRowBackgroundTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: SwiftUI.AnyView? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = SwiftUI.AnyView?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func listRowBackground<V>(_ view: V?) -> some SwiftUI.View where V : SwiftUI.View {
        return _trait(ListRowBackgroundTraitKey.self, view.map { AnyView($0) })
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum ColorRenderingMode {
  case nonLinear
  case linear
  case extendedLinear
  public static func == (a: SwiftUI.ColorRenderingMode, b: SwiftUI.ColorRenderingMode) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _DrawingGroupEffect : SwiftUI.ViewModifier, Swift.Equatable {
  public var isOpaque: Swift.Bool {
    get
    set
  }
  public var colorMode: SwiftUI.ColorRenderingMode {
    get
    set
  }
  public init(opaque: Swift.Bool = false, colorMode: SwiftUI.ColorRenderingMode = .nonLinear)
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._DrawingGroupEffect>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._DrawingGroupEffect, b: SwiftUI._DrawingGroupEffect) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func drawingGroup(opaque: Swift.Bool = false, colorMode: SwiftUI.ColorRenderingMode = .nonLinear) -> some SwiftUI.View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct GroupBox<Label, Content> : SwiftUI.View where Label : SwiftUI.View, Content : SwiftUI.View {
  public init(label: Label, @SwiftUI.ViewBuilder content: () -> Content)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI8GroupBoxV4bodyQrvp", 0) 🦸<Label, Content>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension GroupBox where Label == SwiftUI.EmptyView {
  public init(@SwiftUI.ViewBuilder content: () -> Content)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct TextField<Label> : SwiftUI.View where Label : SwiftUI.View {
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI9TextFieldV4bodyQrvp", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension TextField where Label == SwiftUI.Text {
  public init(_ titleKey: SwiftUI.LocalizedStringKey, text: SwiftUI.Binding<Swift.String>, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, onCommit: @escaping () -> Swift.Void = {})
  @_disfavoredOverload public init<S>(_ title: S, text: SwiftUI.Binding<Swift.String>, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, onCommit: @escaping () -> Swift.Void = {}) where S : Swift.StringProtocol
  public init<T>(_ titleKey: SwiftUI.LocalizedStringKey, value: SwiftUI.Binding<T>, formatter: Foundation.Formatter, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, onCommit: @escaping () -> Swift.Void = {})
  @_disfavoredOverload public init<S, T>(_ title: S, value: SwiftUI.Binding<T>, formatter: Foundation.Formatter, onEditingChanged: @escaping (Swift.Bool) -> Swift.Void = { _ in }, onCommit: @escaping () -> Swift.Void = {}) where S : Swift.StringProtocol
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct AnyGesture<Value> {
  fileprivate var storage: SwiftUI.AnyGestureStorageBase<Value>
  public init<T>(_ gesture: T) where Value == T.Value, T : SwiftUI.Gesture
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.AnyGesture<Value>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Value>
  public typealias Body = Swift.Never
}
@usableFromInline
internal class AnyGestureStorageBase<Value> {
  @objc @usableFromInline
  deinit
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _CompositingGroupEffect : Swift.Equatable {
  @inlinable public init() {}
  public static func == (a: SwiftUI._CompositingGroupEffect, b: SwiftUI._CompositingGroupEffect) -> Swift.Bool
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func compositingGroup() -> some SwiftUI.View {
        return modifier(_CompositingGroupEffect())
    }
  
}
public func __designTimeSelection<T>(_ instance: T, _ identifier: Swift.String) -> T
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public func __designTimeSelection<T>(_ instance: T, _ identifier: Swift.String) -> some SwiftUI.View where T : SwiftUI.View

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _DataProvider {
  associatedtype Data
  var data: Self.Data { get }
  associatedtype Token
  mutating func addObserver(_ observer: SwiftUI._DataProviderObserver) -> Self.Token
  mutating func removeObserver(token: Self.Token)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _DataProviderObserver {
  func dataWillChange()
  func dataDidChange()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _PreviewProviderLocator {
  static var previewProviders: [SwiftUI._PreviewProvider.Type] { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _PreviewProvider {
  static var _previews: Any { get }
  static var _platform: SwiftUI.PreviewPlatform? { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol PreviewProvider : SwiftUI._PreviewProvider {
  associatedtype Previews : SwiftUI.View
  static var previews: Self.Previews { get }
  static var platform: SwiftUI.PreviewPlatform? { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreviewProvider {
  public static var platform: SwiftUI.PreviewPlatform? {
    get
  }
  public static var _previews: Any {
    get
  }
  public static var _platform: SwiftUI.PreviewPlatform? {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum PreviewPlatform {
  case iOS
  case macOS
  case tvOS
  case watchOS
  public static func == (a: SwiftUI.PreviewPlatform, b: SwiftUI.PreviewPlatform) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum PreviewLayout {
  case device
  case sizeThatFits
  case fixed(width: CoreGraphics.CGFloat, height: CoreGraphics.CGFloat)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct PreviewDevice : Swift.RawRepresentable, Swift.ExpressibleByStringLiteral {
  public let rawValue: Swift.String
  public init(rawValue: Swift.String)
  public init(stringLiteral: Swift.String)
  public typealias RawValue = Swift.String
  public typealias StringLiteralType = Swift.String
  public typealias ExtendedGraphemeClusterLiteralType = Swift.String
  public typealias UnicodeScalarLiteralType = Swift.String
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func previewDevice(_ value: SwiftUI.PreviewDevice?) -> some SwiftUI.View {
        return _trait(PreviewDeviceTraitKey.self, value)
    }
  
  @inlinable public func previewLayout(_ value: SwiftUI.PreviewLayout) -> some SwiftUI.View {
        return _trait(PreviewLayoutTraitKey.self, value)
    }
  
  @inlinable public func previewDisplayName(_ value: Swift.String?) -> some SwiftUI.View {
        return _trait(PreviewDisplayNameTraitKey.self, value)
    }
  
}
@usableFromInline
internal struct PreviewDeviceTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: SwiftUI.PreviewDevice? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = SwiftUI.PreviewDevice?
}
@usableFromInline
internal struct PreviewLayoutTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: SwiftUI.PreviewLayout {
    get { .device }
  }
  @usableFromInline
  internal typealias Value = SwiftUI.PreviewLayout
}
@usableFromInline
internal struct PreviewDisplayNameTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.String? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = Swift.String?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PreviewProvider {
  public static var _allPreviews: [SwiftUI._Preview] {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _Preview {
  public let id: Swift.Int
  public let contentType: Swift.String
  public var content: SwiftUI.AnyView {
    get
  }
  public var displayName: Swift.String? {
    get
  }
  public var device: SwiftUI.PreviewDevice? {
    get
  }
  public var layout: SwiftUI.PreviewLayout {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func anchorPreference<A, K>(key _: K.Type = K.self, value: SwiftUI.Anchor<A>.Source, transform: @escaping (SwiftUI.Anchor<A>) -> K.Value) -> some SwiftUI.View where K : SwiftUI.PreferenceKey {
        return modifier(_AnchorWritingModifier<A, K>(
            anchor: value, transform: transform))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _AnchorWritingModifier<AnchorValue, Key> : SwiftUI.ViewModifier where Key : SwiftUI.PreferenceKey {
  public var anchor: SwiftUI.Anchor<AnchorValue>.Source
  public var transform: (SwiftUI.Anchor<AnchorValue>) -> Key.Value
  @inlinable public init(anchor: SwiftUI.Anchor<AnchorValue>.Source, transform: @escaping (SwiftUI.Anchor<AnchorValue>) -> Key.Value) {
        self.anchor = anchor
        self.transform = transform
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._AnchorWritingModifier<AnchorValue, Key>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ClipEffect<ClipShape> where ClipShape : SwiftUI.Shape {
  public var shape: ClipShape
  public var style: SwiftUI.FillStyle
  @inlinable public init(shape: ClipShape, style: SwiftUI.FillStyle = FillStyle()) {
        self.shape = shape
        self.style = style
    }
  public var animatableData: ClipShape.AnimatableData {
    get
    set
  }
  public typealias Body = Swift.Never
  public typealias AnimatableData = ClipShape.AnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func clipShape<S>(_ shape: S, style: SwiftUI.FillStyle = FillStyle()) -> some SwiftUI.View where S : SwiftUI.Shape {
        return modifier(_ClipEffect(shape: shape, style: style))
    }
  
  @inlinable public func clipped(antialiased: Swift.Bool = false) -> some SwiftUI.View {
        return clipShape(Rectangle(),
            style: FillStyle(antialiased: antialiased))
    }
  
  @inlinable public func cornerRadius(_ radius: CoreGraphics.CGFloat, antialiased: Swift.Bool = true) -> some SwiftUI.View {
        return clipShape(RoundedRectangle(cornerRadius: radius),
            style: FillStyle(antialiased: antialiased))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ShadowEffect : SwiftUI.EnvironmentalModifier, Swift.Equatable {
  public var color: SwiftUI.Color
  public var radius: CoreGraphics.CGFloat
  public var offset: CoreGraphics.CGSize
  @inlinable public init(color: SwiftUI.Color, radius: CoreGraphics.CGFloat, offset: CoreGraphics.CGSize) {
        self.color = color
        self.radius = radius
        self.offset = offset
    }
  public func resolve(in environment: SwiftUI.EnvironmentValues) -> SwiftUI._ShadowEffect._Resolved
  public struct _Resolved {
    public typealias AnimatableData = SwiftUI.AnimatablePair<SwiftUI.AnimatablePair<Swift.Float, SwiftUI.AnimatablePair<Swift.Float, SwiftUI.AnimatablePair<Swift.Float, Swift.Float>>>, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGSize.AnimatableData>>
    public var animatableData: SwiftUI._ShadowEffect._Resolved.AnimatableData {
      get
      set
    }
    public typealias Body = Swift.Never
  }
  public typealias ResolvedModifier = SwiftUI._ShadowEffect._Resolved
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._ShadowEffect, b: SwiftUI._ShadowEffect) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func shadow(color: SwiftUI.Color = Color(.sRGBLinear, white: 0, opacity: 0.33), radius: CoreGraphics.CGFloat, x: CoreGraphics.CGFloat = 0, y: CoreGraphics.CGFloat = 0) -> some SwiftUI.View {
        return modifier(
            _ShadowEffect(
                color: color,
                radius: radius,
                offset: CGSize(width: x, height: y)
        ))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _Test {
  func setUpTest()
  func tearDownTest()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Test {
  public func setUpTest()
  public func tearDownTest()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  public static let `default`: SwiftUI.Animation
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _ScrollableContentProvider {
  associatedtype ScrollableContent : SwiftUI.View
  var scrollableContent: Self.ScrollableContent { get }
  associatedtype Root : SwiftUI.View
  func root(scrollView: SwiftUI._ScrollView<Self>.Main) -> Self.Root
  func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: SwiftUI._Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableContentProvider {
  public func decelerationTarget(contentOffset: CoreGraphics.CGPoint, originalContentOffset: CoreGraphics.CGPoint, velocity: SwiftUI._Velocity<CoreGraphics.CGSize>, size: CoreGraphics.CGSize) -> CoreGraphics.CGPoint?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _ScrollViewGestureProvider {
  func scrollableDirections(proxy: SwiftUI._ScrollViewProxy) -> SwiftUI._EventDirections
  func gestureMask(proxy: SwiftUI._ScrollViewProxy) -> SwiftUI.GestureMask
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollViewGestureProvider {
  public func defaultScrollableDirections(proxy: SwiftUI._ScrollViewProxy) -> SwiftUI._EventDirections
  public func defaultGestureMask(proxy: SwiftUI._ScrollViewProxy) -> SwiftUI.GestureMask
  public func scrollableDirections(proxy: SwiftUI._ScrollViewProxy) -> SwiftUI._EventDirections
  public func gestureMask(proxy: SwiftUI._ScrollViewProxy) -> SwiftUI.GestureMask
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ScrollLayout : Swift.Equatable {
  public var contentOffset: CoreGraphics.CGPoint
  public var size: CoreGraphics.CGSize
  public var visibleRect: CoreGraphics.CGRect
  public init(contentOffset: CoreGraphics.CGPoint, size: CoreGraphics.CGSize, visibleRect: CoreGraphics.CGRect)
  public static func == (a: SwiftUI._ScrollLayout, b: SwiftUI._ScrollLayout) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ScrollViewConfig {
  public static let decelerationRateNormal: Swift.Double
  public static let decelerationRateFast: Swift.Double
  public enum ContentOffset {
    case initially(CoreGraphics.CGPoint)
    case binding(SwiftUI.Binding<CoreGraphics.CGPoint>)
  }
  public var contentOffset: SwiftUI._ScrollViewConfig.ContentOffset
  public var contentInsets: SwiftUI.EdgeInsets
  public var decelerationRate: Swift.Double
  public var alwaysBounceVertical: Swift.Bool
  public var alwaysBounceHorizontal: Swift.Bool
  public var gestureProvider: SwiftUI._ScrollViewGestureProvider
  public var stopDraggingImmediately: Swift.Bool
  public var isScrollEnabled: Swift.Bool
  public var showsHorizontalIndicator: Swift.Bool
  public var showsVerticalIndicator: Swift.Bool
  public var indicatorInsets: SwiftUI.EdgeInsets
  public init()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ScrollView<Provider> : SwiftUI.View where Provider : SwiftUI._ScrollableContentProvider {
  public var contentProvider: Provider
  public var config: SwiftUI._ScrollViewConfig
  public init(contentProvider: Provider, config: SwiftUI._ScrollViewConfig = _ScrollViewConfig())
  public var body: some SwiftUI.View {
    get
  }
  public struct Main : SwiftUI.View {
    public typealias Body = Swift.Never
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI11_ScrollViewV4bodyQrvp", 0) 🦸<Provider>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func _scrollable(stretchChildrenToMaxHeight: Swift.Bool = false, horizontal: SwiftUI.TextAlignment? = .center, vertical: SwiftUI._VAlignment? = .center) -> SwiftUI._ScrollView<SwiftUI._AligningContentProvider<Self>>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _AligningContentProvider<Content> : SwiftUI._ScrollableContentProvider where Content : SwiftUI.View {
  public var content: Content
  public var horizontal: SwiftUI.TextAlignment?
  public var vertical: SwiftUI._VAlignment?
  public init(content: Content, horizontal: SwiftUI.TextAlignment? = nil, vertical: SwiftUI._VAlignment? = nil)
  public var scrollableContent: SwiftUI.ModifiedContent<Content, SwiftUI._AligningContentProvider<Content>.AligningContentProviderLayout> {
    get
  }
  public struct AligningContentProviderLayout {
    public typealias Body = Swift.Never
    public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  }
  public typealias ScrollableContent = SwiftUI.ModifiedContent<Content, SwiftUI._AligningContentProvider<Content>.AligningContentProviderLayout>
  public typealias Root = SwiftUI._ScrollViewRoot<SwiftUI._AligningContentProvider<Content>>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct PlainListStyle : SwiftUI.ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.PlainListStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.PlainListStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol ToggleStyle {
  associatedtype Body : SwiftUI.View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = SwiftUI.ToggleStyleConfiguration
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct ToggleStyleConfiguration {
  public struct Label : SwiftUI.View {
    public typealias Body = Swift.Never
  }
  public let label: SwiftUI.ToggleStyleConfiguration.Label
  @SwiftUI.Binding @_projectedValueProperty($isOn) public var isOn: Swift.Bool {
    get
    nonmutating set
  }
  public var $isOn: SwiftUI.Binding<Swift.Bool> {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func toggleStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.ToggleStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _PagingViewConfig : Swift.Equatable {
  public enum Direction {
    case vertical
    case horizontal
    public static func == (a: SwiftUI._PagingViewConfig.Direction, b: SwiftUI._PagingViewConfig.Direction) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
  public var direction: SwiftUI._PagingViewConfig.Direction
  public var size: CoreGraphics.CGFloat?
  public var margin: CoreGraphics.CGFloat
  public var spacing: CoreGraphics.CGFloat
  public var constrainedDeceleration: Swift.Bool
  public init(direction: SwiftUI._PagingViewConfig.Direction = .horizontal, size: CoreGraphics.CGFloat? = nil, margin: CoreGraphics.CGFloat = 0, spacing: CoreGraphics.CGFloat = 0, constrainedDeceleration: Swift.Bool = true)
  public static func == (a: SwiftUI._PagingViewConfig, b: SwiftUI._PagingViewConfig) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _PagingView<Views> : SwiftUI.View where Views : Swift.RandomAccessCollection, Views.Element : SwiftUI.View, Views.Index : Swift.Hashable {
  public var views: Views
  public var page: SwiftUI.Binding<Views.Index>?
  public var config: SwiftUI._PagingViewConfig
  public var scrollViewConfig: SwiftUI._ScrollViewConfig
  public init(config: SwiftUI._PagingViewConfig = _PagingViewConfig(), page: SwiftUI.Binding<Views.Index>? = nil, views: Views)
  public init(direction: SwiftUI._PagingViewConfig.Direction, page: SwiftUI.Binding<Views.Index>? = nil, views: Views)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI11_PagingViewV4bodyQrvp", 0) 🦸<Views>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public enum TemplateRenderingMode {
    case template
    case original
    public static func == (a: SwiftUI.Image.TemplateRenderingMode, b: SwiftUI.Image.TemplateRenderingMode) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
  @available(OSX, unavailable)
  public enum Scale {
    case small
    case medium
    case large
    public static func == (a: SwiftUI.Image.Scale, b: SwiftUI.Image.Scale) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum UserInterfaceSizeClass {
  case compact
  case regular
  public static func == (a: SwiftUI.UserInterfaceSizeClass, b: SwiftUI.UserInterfaceSizeClass) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum ColorScheme : Swift.CaseIterable {
  case light
  case dark
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (a: SwiftUI.ColorScheme, b: SwiftUI.ColorScheme) -> Swift.Bool
  public typealias AllCases = [SwiftUI.ColorScheme]
  public static var allCases: [SwiftUI.ColorScheme] {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum ColorSchemeContrast : Swift.CaseIterable {
  case standard
  case increased
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (a: SwiftUI.ColorSchemeContrast, b: SwiftUI.ColorSchemeContrast) -> Swift.Bool
  public typealias AllCases = [SwiftUI.ColorSchemeContrast]
  public static var allCases: [SwiftUI.ColorSchemeContrast] {
    get
  }
}
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum ControlActiveState : Swift.Equatable, Swift.CaseIterable {
  case key
  case active
  case inactive
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (a: SwiftUI.ControlActiveState, b: SwiftUI.ControlActiveState) -> Swift.Bool
  public typealias AllCases = [SwiftUI.ControlActiveState]
  public static var allCases: [SwiftUI.ControlActiveState] {
    get
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public enum _DeviceVariant : Swift.Equatable {
  case compact
  case regular
  case h394
  case h448
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (a: SwiftUI._DeviceVariant, b: SwiftUI._DeviceVariant) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum LegibilityWeight : Swift.Hashable {
  case regular
  case bold
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (a: SwiftUI.LegibilityWeight, b: SwiftUI.LegibilityWeight) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func colorScheme(_ colorScheme: SwiftUI.ColorScheme) -> some SwiftUI.View {
        return environment(\.colorScheme, colorScheme)
    }
  
  @available(OSX, unavailable)
  @inlinable public func imageScale(_ scale: SwiftUI.Image.Scale) -> some SwiftUI.View {
        return environment(\.imageScale, scale)
    }
  
  @inlinable public func font(_ font: SwiftUI.Font?) -> some SwiftUI.View {
        return environment(\.font, font)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var font: SwiftUI.Font? {
    get
    set
  }
  public var displayScale: CoreGraphics.CGFloat {
    get
    set
  }
  @available(OSX, unavailable)
  public var imageScale: SwiftUI.Image.Scale {
    get
    set
  }
  public var pixelLength: CoreGraphics.CGFloat {
    get
  }
  public var legibilityWeight: SwiftUI.LegibilityWeight? {
    get
    set
  }
  public var locale: Foundation.Locale {
    get
    set
  }
  public var calendar: Foundation.Calendar {
    get
    set
  }
  public var timeZone: Foundation.TimeZone {
    get
    set
  }
  public var colorScheme: SwiftUI.ColorScheme {
    get
    set
  }
  public var colorSchemeContrast: SwiftUI.ColorSchemeContrast {
    get
  }
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public var horizontalSizeClass: SwiftUI.UserInterfaceSizeClass? {
    get
    set
  }
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public var verticalSizeClass: SwiftUI.UserInterfaceSizeClass? {
    get
    set
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public var controlActiveState: SwiftUI.ControlActiveState {
    get
    set
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public var _deviceVariant: SwiftUI._DeviceVariant {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct DefaultPickerStyle : SwiftUI.PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.DefaultPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.DefaultPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _FrameLayout {
  internal let width: CoreGraphics.CGFloat?
  internal let height: CoreGraphics.CGFloat?
  internal let alignment: SwiftUI.Alignment
  @usableFromInline
  internal init(width: CoreGraphics.CGFloat?, height: CoreGraphics.CGFloat?, alignment: SwiftUI.Alignment)
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func frame(width: CoreGraphics.CGFloat? = nil, height: CoreGraphics.CGFloat? = nil, alignment: SwiftUI.Alignment = .center) -> some SwiftUI.View {
        return modifier(
            _FrameLayout(width: width, height: height, alignment: alignment))
    }
  
  @available(*, deprecated, message: "Please pass one or more parameters.")
  @inlinable public func frame() -> some SwiftUI.View {
        return frame(width: nil, height: nil, alignment: .center)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _FlexFrameLayout {
  internal let minWidth: CoreGraphics.CGFloat?
  internal let idealWidth: CoreGraphics.CGFloat?
  internal let maxWidth: CoreGraphics.CGFloat?
  internal let minHeight: CoreGraphics.CGFloat?
  internal let idealHeight: CoreGraphics.CGFloat?
  internal let maxHeight: CoreGraphics.CGFloat?
  internal let alignment: SwiftUI.Alignment
  @usableFromInline
  internal init(minWidth: CoreGraphics.CGFloat? = nil, idealWidth: CoreGraphics.CGFloat? = nil, maxWidth: CoreGraphics.CGFloat? = nil, minHeight: CoreGraphics.CGFloat? = nil, idealHeight: CoreGraphics.CGFloat? = nil, maxHeight: CoreGraphics.CGFloat? = nil, alignment: SwiftUI.Alignment)
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func frame(minWidth: CoreGraphics.CGFloat? = nil, idealWidth: CoreGraphics.CGFloat? = nil, maxWidth: CoreGraphics.CGFloat? = nil, minHeight: CoreGraphics.CGFloat? = nil, idealHeight: CoreGraphics.CGFloat? = nil, maxHeight: CoreGraphics.CGFloat? = nil, alignment: SwiftUI.Alignment = .center) -> some SwiftUI.View {
        func areInNondecreasingOrder(
            _ min: CGFloat?, _ ideal: CGFloat?, _ max: CGFloat?
        ) -> Bool {
            let min = min ?? -.infinity
            let ideal = ideal ?? min
            let max = max ?? ideal
            return min <= ideal && ideal <= max
        }

        if !areInNondecreasingOrder(minWidth, idealWidth, maxWidth)
            || !areInNondecreasingOrder(minHeight, idealHeight, maxHeight)
        {
            os_log(
                .fault, log: Log.runtimeIssuesLog,
                "Contradictory frame constraints specified.")
        }

        return modifier(
            _FlexFrameLayout(
                minWidth: minWidth,
                idealWidth: idealWidth, maxWidth: maxWidth,
                minHeight: minHeight,
                idealHeight: idealHeight, maxHeight: maxHeight,
                alignment: alignment))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct AccessibilityAttachmentModifier {
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct DefaultNavigationViewStyle : SwiftUI.NavigationViewStyle {
  public init()
  public func _body(configuration: SwiftUI._NavigationViewStyleConfiguration) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI26DefaultNavigationViewStyleV5_body13configurationQrAA01_deF13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public enum Edge : Swift.Int8, Swift.CaseIterable {
  case top, leading, bottom, trailing
  @frozen public struct Set : Swift.OptionSet {
    public typealias Element = SwiftUI.Edge.Set
    public let rawValue: Swift.Int8
    public init(rawValue: Swift.Int8)
    public static let top: SwiftUI.Edge.Set
    public static let leading: SwiftUI.Edge.Set
    public static let bottom: SwiftUI.Edge.Set
    public static let trailing: SwiftUI.Edge.Set
    public static let all: SwiftUI.Edge.Set
    public static let horizontal: SwiftUI.Edge.Set
    public static let vertical: SwiftUI.Edge.Set
    public init(_ e: SwiftUI.Edge)
    public typealias ArrayLiteralElement = SwiftUI.Edge.Set.Element
    public typealias RawValue = Swift.Int8
  }
  public typealias RawValue = Swift.Int8
  public init?(rawValue: Swift.Int8)
  public var rawValue: Swift.Int8 {
    get
  }
  public typealias AllCases = [SwiftUI.Edge]
  public static var allCases: [SwiftUI.Edge] {
    get
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct PopUpButtonPickerStyle : SwiftUI.PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.PopUpButtonPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.PopUpButtonPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum PopoverAttachmentAnchor {
  case rect(SwiftUI.Anchor<CoreGraphics.CGRect>.Source)
  case point(SwiftUI.UnitPoint)
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func popover<Item, Content>(item: SwiftUI.Binding<Item?>, attachmentAnchor: SwiftUI.PopoverAttachmentAnchor = .rect(.bounds), arrowEdge: SwiftUI.Edge = .top, @SwiftUI.ViewBuilder content: @escaping (Item) -> Content) -> some SwiftUI.View where Item : Swift.Identifiable, Content : SwiftUI.View
  
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func popover<Content>(isPresented: SwiftUI.Binding<Swift.Bool>, attachmentAnchor: SwiftUI.PopoverAttachmentAnchor = .rect(.bounds), arrowEdge: SwiftUI.Edge = .top, @SwiftUI.ViewBuilder content: @escaping () -> Content) -> some SwiftUI.View where Content : SwiftUI.View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct CheckboxToggleStyle : SwiftUI.ToggleStyle {
  public init()
  public func makeBody(configuration: SwiftUI.CheckboxToggleStyle.Configuration) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI19CheckboxToggleStyleV8makeBody13configurationQrAA0dE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _IgnoredByLayoutEffect<Base> : SwiftUI.GeometryEffect where Base : SwiftUI.GeometryEffect {
  public var base: Base
  public static var _affectsLayout: Swift.Bool {
    get
  }
  @inlinable public init(_ base: Base) {
        self.base = base
    }
  public func effectValue(size: CoreGraphics.CGSize) -> SwiftUI.ProjectionTransform
  public var animatableData: Base.AnimatableData {
    get
    set
  }
  public typealias Body = Swift.Never
  public typealias AnimatableData = Base.AnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _IgnoredByLayoutEffect : Swift.Equatable where Base : Swift.Equatable {
  public static func == (a: SwiftUI._IgnoredByLayoutEffect<Base>, b: SwiftUI._IgnoredByLayoutEffect<Base>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension GeometryEffect {
  @inlinable public func ignoredByLayout() -> SwiftUI._IgnoredByLayoutEffect<Self> {
        return _IgnoredByLayoutEffect(self)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var accessibilityEnabled: Swift.Bool {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Path : Swift.Equatable, Swift.LosslessStringConvertible {
  @usableFromInline
  final internal class PathBox : Swift.Equatable {
    @usableFromInline
    internal static func == (lhs: SwiftUI.Path.PathBox, rhs: SwiftUI.Path.PathBox) -> Swift.Bool
    @objc @usableFromInline
    deinit
  }
  @usableFromInline
  @frozen internal enum Storage : Swift.Equatable {
    case empty
    case rect(CoreGraphics.CGRect)
    case ellipse(CoreGraphics.CGRect)
    indirect case roundedRect(SwiftUI.FixedRoundedRect)
    indirect case stroked(SwiftUI.StrokedPath)
    indirect case trimmed(SwiftUI.TrimmedPath)
    case path(SwiftUI.Path.PathBox)
    @usableFromInline
    internal static func == (a: SwiftUI.Path.Storage, b: SwiftUI.Path.Storage) -> Swift.Bool
  }
  internal var storage: SwiftUI.Path.Storage
  public init()
  public init(_ path: CoreGraphics.CGPath)
  public init(_ path: CoreGraphics.CGMutablePath)
  public init(_ rect: CoreGraphics.CGRect)
  public init(roundedRect rect: CoreGraphics.CGRect, cornerSize: CoreGraphics.CGSize, style: SwiftUI.RoundedCornerStyle = .circular)
  public init(roundedRect rect: CoreGraphics.CGRect, cornerRadius: CoreGraphics.CGFloat, style: SwiftUI.RoundedCornerStyle = .circular)
  public init(ellipseIn rect: CoreGraphics.CGRect)
  public init(_ callback: (inout SwiftUI.Path) -> ())
  public init?(_ string: Swift.String)
  public var description: Swift.String {
    get
  }
  public var cgPath: CoreGraphics.CGPath {
    get
  }
  public var isEmpty: Swift.Bool {
    get
  }
  public var boundingRect: CoreGraphics.CGRect {
    get
  }
  public func contains(_ p: CoreGraphics.CGPoint, eoFill: Swift.Bool = false) -> Swift.Bool
  @frozen public enum Element : Swift.Equatable {
    case move(to: CoreGraphics.CGPoint)
    case line(to: CoreGraphics.CGPoint)
    case quadCurve(to: CoreGraphics.CGPoint, control: CoreGraphics.CGPoint)
    case curve(to: CoreGraphics.CGPoint, control1: CoreGraphics.CGPoint, control2: CoreGraphics.CGPoint)
    case closeSubpath
    public static func == (a: SwiftUI.Path.Element, b: SwiftUI.Path.Element) -> Swift.Bool
  }
  public func forEach(_ body: (SwiftUI.Path.Element) -> Swift.Void)
  public func strokedPath(_ style: SwiftUI.StrokeStyle) -> SwiftUI.Path
  public func trimmedPath(from: CoreGraphics.CGFloat, to: CoreGraphics.CGFloat) -> SwiftUI.Path
  public static func == (a: SwiftUI.Path, b: SwiftUI.Path) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Path : SwiftUI.Shape {
  public func path(in _: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = SwiftUI._ShapeView<SwiftUI.Path, SwiftUI.ForegroundStyle>
}
@usableFromInline
internal struct StrokedPath : Swift.Equatable {
  public init(path: SwiftUI.Path, style: SwiftUI.StrokeStyle)
  @usableFromInline
  internal static func == (lhs: SwiftUI.StrokedPath, rhs: SwiftUI.StrokedPath) -> Swift.Bool
}
@usableFromInline
internal struct TrimmedPath : Swift.Equatable {
  @usableFromInline
  internal static func == (lhs: SwiftUI.TrimmedPath, rhs: SwiftUI.TrimmedPath) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Path {
  mutating public func move(to p: CoreGraphics.CGPoint)
  mutating public func addLine(to p: CoreGraphics.CGPoint)
  mutating public func addQuadCurve(to p: CoreGraphics.CGPoint, control cp: CoreGraphics.CGPoint)
  mutating public func addCurve(to p: CoreGraphics.CGPoint, control1 cp1: CoreGraphics.CGPoint, control2 cp2: CoreGraphics.CGPoint)
  mutating public func closeSubpath()
  mutating public func addRect(_ rect: CoreGraphics.CGRect, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addRoundedRect(in rect: CoreGraphics.CGRect, cornerSize: CoreGraphics.CGSize, style: SwiftUI.RoundedCornerStyle = .circular, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addEllipse(in rect: CoreGraphics.CGRect, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addRects(_ rects: [CoreGraphics.CGRect], transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addLines(_ lines: [CoreGraphics.CGPoint])
  mutating public func addRelativeArc(center: CoreGraphics.CGPoint, radius: CoreGraphics.CGFloat, startAngle: SwiftUI.Angle, delta: SwiftUI.Angle, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addArc(center: CoreGraphics.CGPoint, radius: CoreGraphics.CGFloat, startAngle: SwiftUI.Angle, endAngle: SwiftUI.Angle, clockwise: Swift.Bool, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addArc(tangent1End p1: CoreGraphics.CGPoint, tangent2End p2: CoreGraphics.CGPoint, radius: CoreGraphics.CGFloat, transform: CoreGraphics.CGAffineTransform = .identity)
  mutating public func addPath(_ path: SwiftUI.Path, transform: CoreGraphics.CGAffineTransform = .identity)
  public var currentPoint: CoreGraphics.CGPoint? {
    get
  }
  public func applying(_ transform: CoreGraphics.CGAffineTransform) -> SwiftUI.Path
  public func offsetBy(dx: CoreGraphics.CGFloat, dy: CoreGraphics.CGFloat) -> SwiftUI.Path
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum RoundedCornerStyle {
  case circular
  case continuous
  public static func == (a: SwiftUI.RoundedCornerStyle, b: SwiftUI.RoundedCornerStyle) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@usableFromInline
internal struct FixedRoundedRect : Swift.Equatable {
  @usableFromInline
  internal static func == (a: SwiftUI.FixedRoundedRect, b: SwiftUI.FixedRoundedRect) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct NavigationLink<Label, Destination> : SwiftUI.View where Label : SwiftUI.View, Destination : SwiftUI.View {
  public init(destination: Destination, @SwiftUI.ViewBuilder label: () -> Label)
  public init(destination: Destination, isActive: SwiftUI.Binding<Swift.Bool>, @SwiftUI.ViewBuilder label: () -> Label)
  public init<V>(destination: Destination, tag: V, selection: SwiftUI.Binding<V?>, @SwiftUI.ViewBuilder label: () -> Label) where V : Swift.Hashable
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI14NavigationLinkV4bodyQrvp", 0) 🦸<Label, Destination>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension NavigationLink where Label == SwiftUI.Text {
  public init(_ titleKey: SwiftUI.LocalizedStringKey, destination: Destination)
  @_disfavoredOverload public init<S>(_ title: S, destination: Destination) where S : Swift.StringProtocol
  public init(_ titleKey: SwiftUI.LocalizedStringKey, destination: Destination, isActive: SwiftUI.Binding<Swift.Bool>)
  @_disfavoredOverload public init<S>(_ title: S, destination: Destination, isActive: SwiftUI.Binding<Swift.Bool>) where S : Swift.StringProtocol
  public init<V>(_ titleKey: SwiftUI.LocalizedStringKey, destination: Destination, tag: V, selection: SwiftUI.Binding<V?>) where V : Swift.Hashable
  @_disfavoredOverload public init<S, V>(_ title: S, destination: Destination, tag: V, selection: SwiftUI.Binding<V?>) where S : Swift.StringProtocol, V : Swift.Hashable
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension NavigationLink where Destination == SwiftUI._WKStoryboardContent {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public init(destinationName: Swift.String, @SwiftUI.ViewBuilder label: () -> Label)
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public init(destinationName: Swift.String, isActive: SwiftUI.Binding<Swift.Bool>, @SwiftUI.ViewBuilder label: () -> Label)
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public init<V>(destinationName: Swift.String, tag: V, selection: SwiftUI.Binding<V?>, @SwiftUI.ViewBuilder label: () -> Label) where V : Swift.Hashable
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension NavigationLink {
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func isDetailLink(_ isDetailLink: Swift.Bool) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Gradient : Swift.Equatable {
  @frozen public struct Stop : Swift.Equatable {
    public var color: SwiftUI.Color
    public var location: CoreGraphics.CGFloat
    public init(color: SwiftUI.Color, location: CoreGraphics.CGFloat)
    public static func == (a: SwiftUI.Gradient.Stop, b: SwiftUI.Gradient.Stop) -> Swift.Bool
  }
  public var stops: [SwiftUI.Gradient.Stop]
  public init(stops: [SwiftUI.Gradient.Stop])
  public init(colors: [SwiftUI.Color])
  public static func == (a: SwiftUI.Gradient, b: SwiftUI.Gradient) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ViewInputs {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum BlendMode {
  case normal
  case multiply
  case screen
  case overlay
  case darken
  case lighten
  case colorDodge
  case colorBurn
  case softLight
  case hardLight
  case difference
  case exclusion
  case hue
  case saturation
  case color
  case luminosity
  case sourceAtop
  case destinationOver
  case destinationOut
  case plusDarker
  case plusLighter
  public static func == (a: SwiftUI.BlendMode, b: SwiftUI.BlendMode) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var accessibilityDifferentiateWithoutColor: Swift.Bool {
    get
  }
  public var accessibilityReduceTransparency: Swift.Bool {
    get
  }
  public var accessibilityReduceMotion: Swift.Bool {
    get
  }
  public var accessibilityInvertColors: Swift.Bool {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public enum Interpolation {
    case none
    case low
    case medium
    case high
    public static func == (a: SwiftUI.Image.Interpolation, b: SwiftUI.Image.Interpolation) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public func interpolation(_ interpolation: SwiftUI.Image.Interpolation) -> SwiftUI.Image
  public func antialiased(_ isAntialiased: Swift.Bool) -> SwiftUI.Image
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _HiddenModifier : SwiftUI.ViewModifier {
  @inlinable public init() {}
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._HiddenModifier>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func hidden() -> some SwiftUI.View {
        return modifier(_HiddenModifier())
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct FillStyle : Swift.Equatable {
  public var isEOFilled: Swift.Bool
  public var isAntialiased: Swift.Bool
  public init(eoFill: Swift.Bool = false, antialiased: Swift.Bool = true)
  public static func == (a: SwiftUI.FillStyle, b: SwiftUI.FillStyle) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct StrokeStyle : Swift.Equatable {
  public var lineWidth: CoreGraphics.CGFloat
  public var lineCap: CoreGraphics.CGLineCap
  public var lineJoin: CoreGraphics.CGLineJoin
  public var miterLimit: CoreGraphics.CGFloat
  public var dash: [CoreGraphics.CGFloat]
  public var dashPhase: CoreGraphics.CGFloat
  public init(lineWidth: CoreGraphics.CGFloat = 1, lineCap: CoreGraphics.CGLineCap = .butt, lineJoin: CoreGraphics.CGLineJoin = .miter, miterLimit: CoreGraphics.CGFloat = 10, dash: [CoreGraphics.CGFloat] = [CGFloat](), dashPhase: CoreGraphics.CGFloat = 0)
  public static func == (a: SwiftUI.StrokeStyle, b: SwiftUI.StrokeStyle) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension StrokeStyle : SwiftUI.Animatable {
  public typealias AnimatableData = SwiftUI.AnimatablePair<CoreGraphics.CGFloat, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>>
  public var animatableData: SwiftUI.StrokeStyle.AnimatableData {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public static var slide: SwiftUI.AnyTransition {
    get
  }
}
extension View {
  @available(iOS 13.0, tvOS 13.0, *)
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func keyboardType(_ type: UIKit.UIKeyboardType) -> some SwiftUI.View
  
}
extension View {
  @available(iOS 13.0, tvOS 13.0, *)
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func autocapitalization(_ style: UIKit.UITextAutocapitalizationType) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func onPreferenceChange<K>(_ key: K.Type = K.self, perform action: @escaping (K.Value) -> Swift.Void) -> some SwiftUI.View where K : SwiftUI.PreferenceKey, K.Value : Swift.Equatable {
        return modifier(_PreferenceActionModifier<K>(action: action))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _PreferenceActionModifier<Key> : SwiftUI.ViewModifier where Key : SwiftUI.PreferenceKey, Key.Value : Swift.Equatable {
  public var action: (Key.Value) -> Swift.Void
  @inlinable public init(action: @escaping (Key.Value) -> Swift.Void) {
        self.action = action
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._PreferenceActionModifier<Key>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct RadioGroupPickerStyle : SwiftUI.PickerStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.RadioGroupPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._PickerValue<SwiftUI.RadioGroupPickerStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func horizontalRadioGroupLayout() -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public protocol NavigationViewStyle {
  associatedtype _Body : SwiftUI.View
  func _body(configuration: SwiftUI._NavigationViewStyleConfiguration) -> Self._Body
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct _NavigationViewStyleConfiguration {
  public struct Content {
    public typealias Body = Swift.Never
  }
  public let content: SwiftUI._NavigationViewStyleConfiguration.Content
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension View {
  @available(watchOS, unavailable)
  public func navigationViewStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.NavigationViewStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol ListStyle {
  static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<Self, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<Self, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ListValue<Style, SelectionValue> where Style : SwiftUI.ListStyle, SelectionValue : Swift.Hashable {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func listStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.ListStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct List<SelectionValue, Content> : SwiftUI.View where SelectionValue : Swift.Hashable, Content : SwiftUI.View {
  @available(watchOS, unavailable)
  public init(selection: SwiftUI.Binding<Swift.Set<SelectionValue>>?, @SwiftUI.ViewBuilder content: () -> Content)
  @available(watchOS, unavailable)
  public init(selection: SwiftUI.Binding<SelectionValue?>?, @SwiftUI.ViewBuilder content: () -> Content)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI4ListV4bodyQrvp", 0) 🦸<SelectionValue, Content>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension List {
  @available(watchOS, unavailable)
  public init<Data, RowContent>(_ data: Data, selection: SwiftUI.Binding<Swift.Set<SelectionValue>>?, @SwiftUI.ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == SwiftUI.ForEach<Data, Data.Element.ID, SwiftUI.HStack<RowContent>>, Data : Swift.RandomAccessCollection, RowContent : SwiftUI.View, Data.Element : Swift.Identifiable
  @available(watchOS, unavailable)
  public init<Data, ID, RowContent>(_ data: Data, id: Swift.KeyPath<Data.Element, ID>, selection: SwiftUI.Binding<Swift.Set<SelectionValue>>?, @SwiftUI.ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == SwiftUI.ForEach<Data, ID, SwiftUI.HStack<RowContent>>, Data : Swift.RandomAccessCollection, ID : Swift.Hashable, RowContent : SwiftUI.View
  @available(watchOS, unavailable)
  public init<RowContent>(_ data: Swift.Range<Swift.Int>, selection: SwiftUI.Binding<Swift.Set<SelectionValue>>?, @SwiftUI.ViewBuilder rowContent: @escaping (Swift.Int) -> RowContent) where Content == SwiftUI.ForEach<Swift.Range<Swift.Int>, Swift.Int, SwiftUI.HStack<RowContent>>, RowContent : SwiftUI.View
  @available(watchOS, unavailable)
  public init<Data, RowContent>(_ data: Data, selection: SwiftUI.Binding<SelectionValue?>?, @SwiftUI.ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == SwiftUI.ForEach<Data, Data.Element.ID, SwiftUI.HStack<RowContent>>, Data : Swift.RandomAccessCollection, RowContent : SwiftUI.View, Data.Element : Swift.Identifiable
  @available(watchOS, unavailable)
  public init<Data, ID, RowContent>(_ data: Data, id: Swift.KeyPath<Data.Element, ID>, selection: SwiftUI.Binding<SelectionValue?>?, @SwiftUI.ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == SwiftUI.ForEach<Data, ID, SwiftUI.HStack<RowContent>>, Data : Swift.RandomAccessCollection, ID : Swift.Hashable, RowContent : SwiftUI.View
  @available(watchOS, unavailable)
  public init<RowContent>(_ data: Swift.Range<Swift.Int>, selection: SwiftUI.Binding<SelectionValue?>?, @SwiftUI.ViewBuilder rowContent: @escaping (Swift.Int) -> RowContent) where Content == SwiftUI.ForEach<Swift.Range<Swift.Int>, Swift.Int, SwiftUI.HStack<RowContent>>, RowContent : SwiftUI.View
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension List where SelectionValue == Swift.Never {
  public init(@SwiftUI.ViewBuilder content: () -> Content)
  public init<Data, RowContent>(_ data: Data, @SwiftUI.ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == SwiftUI.ForEach<Data, Data.Element.ID, SwiftUI.HStack<RowContent>>, Data : Swift.RandomAccessCollection, RowContent : SwiftUI.View, Data.Element : Swift.Identifiable
  public init<Data, ID, RowContent>(_ data: Data, id: Swift.KeyPath<Data.Element, ID>, @SwiftUI.ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == SwiftUI.ForEach<Data, ID, SwiftUI.HStack<RowContent>>, Data : Swift.RandomAccessCollection, ID : Swift.Hashable, RowContent : SwiftUI.View
  public init<RowContent>(_ data: Swift.Range<Swift.Int>, @SwiftUI.ViewBuilder rowContent: @escaping (Swift.Int) -> RowContent) where Content == SwiftUI.ForEach<Swift.Range<Swift.Int>, Swift.Int, SwiftUI.HStack<RowContent>>, RowContent : SwiftUI.View
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Section<Parent, Content, Footer> {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Section : SwiftUI.View where Parent : SwiftUI.View, Content : SwiftUI.View, Footer : SwiftUI.View {
  public typealias Body = Swift.Never
  public init(header: Parent, footer: Footer, @SwiftUI.ViewBuilder content: () -> Content)
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.Section<Parent, Content, Footer>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Section where Parent == SwiftUI.EmptyView, Content : SwiftUI.View, Footer : SwiftUI.View {
  public init(footer: Footer, @SwiftUI.ViewBuilder content: () -> Content)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Section where Parent : SwiftUI.View, Content : SwiftUI.View, Footer == SwiftUI.EmptyView {
  public init(header: Parent, @SwiftUI.ViewBuilder content: () -> Content)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Section where Parent == SwiftUI.EmptyView, Content : SwiftUI.View, Footer == SwiftUI.EmptyView {
  public init(@SwiftUI.ViewBuilder content: () -> Content)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension Section where Parent : SwiftUI.View, Content : SwiftUI.View, Footer : SwiftUI.View {
  public func collapsible(_ collapsible: Swift.Bool) -> some SwiftUI.View
  
}
@usableFromInline
internal struct IsCollapsibleTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { true }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _PreferenceTransformModifier<Key> : SwiftUI.ViewModifier where Key : SwiftUI.PreferenceKey {
  public var transform: (inout Key.Value) -> Swift.Void
  @inlinable public init(key _: Key.Type = Key.self, transform: @escaping (inout Key.Value) -> Swift.Void) {
        self.transform = transform
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._PreferenceTransformModifier<Key>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func transformPreference<K>(_ key: K.Type = K.self, _ callback: @escaping (inout K.Value) -> Swift.Void) -> some SwiftUI.View where K : SwiftUI.PreferenceKey {
        return modifier(_PreferenceTransformModifier<K>(transform: callback))
    }
  
}
@available(iOS 13.0, OSX 10.15, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
public struct MagnificationGesture : SwiftUI.Gesture {
  public var minimumScaleDelta: CoreGraphics.CGFloat
  public init(minimumScaleDelta: CoreGraphics.CGFloat = 0.01)
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.MagnificationGesture>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<CoreGraphics.CGFloat>
  public typealias Value = CoreGraphics.CGFloat
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_Children : SwiftUI.View {
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI._VariadicView.Children>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_Children : Swift.RandomAccessCollection {
  public struct Element : SwiftUI.View, Swift.Identifiable {
    public var id: Swift.AnyHashable {
      get
    }
    public func id<ID>(as _: ID.Type = ID.self) -> ID? where ID : Swift.Hashable
    public subscript<Trait>(key: Trait.Type) -> Trait.Value where Trait : SwiftUI._ViewTraitKey {
      get
      set
    }
    public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._VariadicView_Children.Element>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
    public typealias ID = Swift.AnyHashable
    public typealias Body = Swift.Never
  }
  public var startIndex: Swift.Int {
    get
  }
  public var endIndex: Swift.Int {
    get
  }
  public subscript(index: Swift.Int) -> SwiftUI._VariadicView_Children.Element {
    get
  }
  public typealias Index = Swift.Int
  public typealias Iterator = Swift.IndexingIterator<SwiftUI._VariadicView_Children>
  public typealias SubSequence = Swift.Slice<SwiftUI._VariadicView_Children>
  public typealias Indices = Swift.Range<Swift.Int>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct HSplitView<Content> : SwiftUI.View where Content : SwiftUI.View {
  public init(@SwiftUI.ViewBuilder content: () -> Content)
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.HSplitView<Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct VSplitView<Content> : SwiftUI.View where Content : SwiftUI.View {
  public init(@SwiftUI.ViewBuilder content: () -> Content)
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.VSplitView<Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _HSplitViewContainer : SwiftUI._VariadicView.UnaryViewRoot {
  public func body(children: SwiftUI._VariadicView.Children) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI20_HSplitViewContainerV4body8childrenQrAA09_VariadicD9_ChildrenV_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _VSplitViewContainer : SwiftUI._VariadicView.UnaryViewRoot {
  public func body(children: SwiftUI._VariadicView.Children) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI20_VSplitViewContainerV4body8childrenQrAA09_VariadicD9_ChildrenV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct TupleView<T> {
  public var value: T
  @inlinable public init(_ value: T) { self.value = value }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.TupleView<T>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.TupleView<T>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DefaultDatePickerStyle : SwiftUI.DatePickerStyle {
  public init()
  public func _body(configuration: SwiftUI.DatePicker<SwiftUI.DefaultDatePickerStyle._Label>) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI22DefaultDatePickerStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct StepperFieldDatePickerStyle : SwiftUI.DatePickerStyle {
  public init()
  public func _body(configuration: SwiftUI.DatePicker<SwiftUI.StepperFieldDatePickerStyle._Label>) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI27StepperFieldDatePickerStyleV5_body13configurationQrAA0eF0VyAA01_efG5LabelVG_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct FieldDatePickerStyle : SwiftUI.DatePickerStyle {
  public init()
  public func _body(configuration: SwiftUI.DatePicker<SwiftUI.FieldDatePickerStyle._Label>) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI20FieldDatePickerStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct GraphicalDatePickerStyle : SwiftUI.DatePickerStyle {
  public init()
  public func _body(configuration: SwiftUI.DatePicker<SwiftUI.GraphicalDatePickerStyle._Label>) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI24GraphicalDatePickerStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _FlipForRTLEffect : SwiftUI.ViewModifier, Swift.Equatable {
  public var isEnabled: Swift.Bool
  @inlinable public init(isEnabled: Swift.Bool = true) {
        self.isEnabled = isEnabled
    }
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._FlipForRTLEffect, b: SwiftUI._FlipForRTLEffect) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func flipsForRightToLeftLayoutDirection(_ enabled: Swift.Bool) -> some SwiftUI.View {
        return modifier(_FlipForRTLEffect())
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _FlipForRTLEffect {
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._FlipForRTLEffect>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol InsettableShape : SwiftUI.Shape {
  associatedtype InsetShape : SwiftUI.InsettableShape
  func inset(by amount: CoreGraphics.CGFloat) -> Self.InsetShape
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension InsettableShape {
  @inlinable public func strokeBorder<S>(_ content: S, style: SwiftUI.StrokeStyle, antialiased: Swift.Bool = true) -> some SwiftUI.View where S : SwiftUI.ShapeStyle {
        return inset(by: style.lineWidth * 0.5)
            .stroke(style: style)
            .fill(content, style: FillStyle(antialiased: antialiased))
    }
  
  @inlinable public func strokeBorder(style: SwiftUI.StrokeStyle, antialiased: Swift.Bool = true) -> some SwiftUI.View {
        return inset(by: style.lineWidth * 0.5)
            .stroke(style: style)
            .fill(style: FillStyle(antialiased: antialiased))
    }
  
  @inlinable public func strokeBorder<S>(_ content: S, lineWidth: CoreGraphics.CGFloat = 1, antialiased: Swift.Bool = true) -> some SwiftUI.View where S : SwiftUI.ShapeStyle {
        return strokeBorder(content, style: StrokeStyle(lineWidth: lineWidth),
            antialiased: antialiased)
    }
  
  @inlinable public func strokeBorder(lineWidth: CoreGraphics.CGFloat = 1, antialiased: Swift.Bool = true) -> some SwiftUI.View {
        return strokeBorder(style: StrokeStyle(lineWidth: lineWidth),
            antialiased: antialiased)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Rectangle : SwiftUI.InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some SwiftUI.InsettableShape {
        return _Inset(amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : SwiftUI.InsettableShape {
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(amount: CoreGraphics.CGFloat) {
            self.amount = amount
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
    @usableFromInline
    internal var animatableData: CoreGraphics.CGFloat {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> SwiftUI.Rectangle._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = SwiftUI.Rectangle._Inset
    @usableFromInline
    internal typealias AnimatableData = CoreGraphics.CGFloat
    @usableFromInline
    internal typealias Body = SwiftUI._ShapeView<SwiftUI.Rectangle._Inset, SwiftUI.ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI9RectangleV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension RoundedRectangle : SwiftUI.InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some SwiftUI.InsettableShape {
        return _Inset(base: self, amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : SwiftUI.InsettableShape {
    @usableFromInline
    internal var base: SwiftUI.RoundedRectangle
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(base: SwiftUI.RoundedRectangle, amount: CoreGraphics.CGFloat) {
            (self.base, self.amount) = (base, amount)
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
    @usableFromInline
    internal var animatableData: SwiftUI.AnimatablePair<SwiftUI.RoundedRectangle.AnimatableData, CoreGraphics.CGFloat> {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> SwiftUI.RoundedRectangle._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = SwiftUI.RoundedRectangle._Inset
    @usableFromInline
    internal typealias AnimatableData = SwiftUI.AnimatablePair<SwiftUI.RoundedRectangle.AnimatableData, CoreGraphics.CGFloat>
    @usableFromInline
    internal typealias Body = SwiftUI._ShapeView<SwiftUI.RoundedRectangle._Inset, SwiftUI.ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI16RoundedRectangleV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Capsule : SwiftUI.InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some SwiftUI.InsettableShape {
        return _Inset(amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : SwiftUI.InsettableShape {
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(amount: CoreGraphics.CGFloat) {
            self.amount = amount
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
    @usableFromInline
    internal var animatableData: CoreGraphics.CGFloat {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> SwiftUI.Capsule._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = SwiftUI.Capsule._Inset
    @usableFromInline
    internal typealias AnimatableData = CoreGraphics.CGFloat
    @usableFromInline
    internal typealias Body = SwiftUI._ShapeView<SwiftUI.Capsule._Inset, SwiftUI.ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI7CapsuleV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Ellipse : SwiftUI.InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some SwiftUI.InsettableShape {
        return _Inset(amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : SwiftUI.InsettableShape {
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(amount: CoreGraphics.CGFloat) {
            self.amount = amount
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
    @usableFromInline
    internal var animatableData: CoreGraphics.CGFloat {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> SwiftUI.Ellipse._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = SwiftUI.Ellipse._Inset
    @usableFromInline
    internal typealias AnimatableData = CoreGraphics.CGFloat
    @usableFromInline
    internal typealias Body = SwiftUI._ShapeView<SwiftUI.Ellipse._Inset, SwiftUI.ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI7EllipseV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Circle : SwiftUI.InsettableShape {
  @inlinable public func inset(by amount: CoreGraphics.CGFloat) -> some SwiftUI.InsettableShape {
        return _Inset(amount: amount)
    }
  
  @usableFromInline
  @frozen internal struct _Inset : SwiftUI.InsettableShape {
    @usableFromInline
    internal var amount: CoreGraphics.CGFloat
    @inlinable internal init(amount: CoreGraphics.CGFloat) {
            self.amount = amount
        }
    @usableFromInline
    internal func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
    @usableFromInline
    internal var animatableData: CoreGraphics.CGFloat {
      get
      set
    }
    @inlinable internal func inset(by amount: CoreGraphics.CGFloat) -> SwiftUI.Circle._Inset {
            var copy = self
            copy.amount += amount
            return copy
        }
    @usableFromInline
    internal typealias InsetShape = SwiftUI.Circle._Inset
    @usableFromInline
    internal typealias AnimatableData = CoreGraphics.CGFloat
    @usableFromInline
    internal typealias Body = SwiftUI._ShapeView<SwiftUI.Circle._Inset, SwiftUI.ForegroundStyle>
  }
  public typealias InsetShape = @_opaqueReturnTypeOf("$s7SwiftUI6CircleV5inset2byQr12CoreGraphics7CGFloatV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct GeometryReader<Content> : SwiftUI.View where Content : SwiftUI.View {
  public var content: (SwiftUI.GeometryProxy) -> Content
  @inlinable public init(@SwiftUI.ViewBuilder content: @escaping (SwiftUI.GeometryProxy) -> Content) {
        self.content = content
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.GeometryReader<Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct GeometryProxy {
  public var size: CoreGraphics.CGSize {
    get
  }
  public subscript<T>(anchor: SwiftUI.Anchor<T>) -> T {
    get
  }
  public var safeAreaInsets: SwiftUI.EdgeInsets {
    get
  }
  public func frame(in coordinateSpace: SwiftUI.CoordinateSpace) -> CoreGraphics.CGRect
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct TouchBar<Content> where Content : SwiftUI.View {
  public init(@SwiftUI.ViewBuilder content: () -> Content)
  public init(id: Swift.String, @SwiftUI.ViewBuilder content: () -> Content)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum TouchBarItemPresence {
  case required(_: Swift.String)
  case `default`(_: Swift.String)
  case optional(_: Swift.String)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func touchBar<Content>(_ touchBar: SwiftUI.TouchBar<Content>) -> some SwiftUI.View where Content : SwiftUI.View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func touchBar<Content>(@SwiftUI.ViewBuilder content: () -> Content) -> some SwiftUI.View where Content : SwiftUI.View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _TouchBarModifier<Content> : SwiftUI.ViewModifier where Content : SwiftUI.View {
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._TouchBarModifier<Content>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
extension View {
  @inlinable public func textContentType(_ textContentType: UIKit.UITextContentType?) -> some SwiftUI.View {
        return environment(\.textContentType, textContentType?.rawValue)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @usableFromInline
  internal var textContentType: Swift.String? {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Transaction {
  public var isContinuous: Swift.Bool {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol Shape : SwiftUI.Animatable, SwiftUI.View {
  func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol ShapeStyle {
  static func _makeView<S>(view: SwiftUI._GraphValue<SwiftUI._ShapeView<S, Self>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where S : SwiftUI.Shape
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ViewModifier_Content<Modifier> where Modifier : SwiftUI.ViewModifier {
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._ViewModifier_Content<Modifier>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI._ViewModifier_Content<Modifier>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier {
  public static func _makeView(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color : SwiftUI.ShapeStyle {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct LinearGradient : SwiftUI.ShapeStyle, SwiftUI.View {
  internal var gradient: SwiftUI.Gradient
  internal var startPoint: SwiftUI.UnitPoint
  internal var endPoint: SwiftUI.UnitPoint
  public init(gradient: SwiftUI.Gradient, startPoint: SwiftUI.UnitPoint, endPoint: SwiftUI.UnitPoint)
  public typealias Body = SwiftUI._ShapeView<SwiftUI.Rectangle, SwiftUI.LinearGradient>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct RadialGradient : SwiftUI.ShapeStyle, SwiftUI.View {
  internal var gradient: SwiftUI.Gradient
  internal var center: SwiftUI.UnitPoint
  internal var startRadius: CoreGraphics.CGFloat
  internal var endRadius: CoreGraphics.CGFloat
  public init(gradient: SwiftUI.Gradient, center: SwiftUI.UnitPoint, startRadius: CoreGraphics.CGFloat, endRadius: CoreGraphics.CGFloat)
  public typealias Body = SwiftUI._ShapeView<SwiftUI.Rectangle, SwiftUI.RadialGradient>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct AngularGradient : SwiftUI.ShapeStyle, SwiftUI.View {
  internal var gradient: SwiftUI.Gradient
  internal var center: SwiftUI.UnitPoint
  internal var startAngle: SwiftUI.Angle
  internal var endAngle: SwiftUI.Angle
  public init(gradient: SwiftUI.Gradient, center: SwiftUI.UnitPoint, startAngle: SwiftUI.Angle = .zero, endAngle: SwiftUI.Angle = .zero)
  public init(gradient: SwiftUI.Gradient, center: SwiftUI.UnitPoint, angle: SwiftUI.Angle = .zero)
  public typealias Body = SwiftUI._ShapeView<SwiftUI.Rectangle, SwiftUI.AngularGradient>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __FluidSpringTestLayout {
  public static let count: Swift.Int
  public init(iteration: Swift.Int, location: CoreGraphics.CGPoint?)
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func labelsHidden() -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct __ScaleToFitView<V> : SwiftUI.View where V : SwiftUI.View {
  public var content: V
  public var bounds: CoreGraphics.CGRect
  @inlinable public init(content: V, bounds: CoreGraphics.CGRect) {
        self.content = content
        self.bounds = bounds
    }
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI16__ScaleToFitViewV4bodyQrvp", 0) 🦸<V>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct __SetFrameLayout {
  @usableFromInline
  internal var frame: CoreGraphics.CGRect
  @inlinable public init(_ frame: CoreGraphics.CGRect) {
        self.frame = frame
    }
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@propertyWrapper @frozen public struct ObservedObject<ObjectType> : SwiftUI.DynamicProperty where ObjectType : Combine.ObservableObject {
  @dynamicMemberLookup @frozen public struct Wrapper {
    internal let root: ObjectType
    public subscript<Subject>(dynamicMember keyPath: Swift.ReferenceWritableKeyPath<ObjectType, Subject>) -> SwiftUI.Binding<Subject> {
      get
    }
  }
  @usableFromInline
  internal var _seed: Swift.Int = 0
  @_alwaysEmitIntoClient public init(initialValue: ObjectType) {
      self.init(wrappedValue: initialValue)
    }
  public init(wrappedValue: ObjectType)
  public var wrappedValue: ObjectType
  public var projectedValue: SwiftUI.ObservedObject<ObjectType>.Wrapper {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ObservedObject {
  public static func _makeProperty<V>(in buffer: inout SwiftUI._DynamicPropertyBuffer, container: SwiftUI._GraphValue<V>, fieldOffset: Swift.Int, inputs: inout SwiftUI._GraphInputs)
}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct WheelDatePickerStyle : SwiftUI.DatePickerStyle {
  public init()
  public func _body(configuration: SwiftUI.DatePicker<SwiftUI.WheelDatePickerStyle._Label>) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI20WheelDatePickerStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct VStack<Content> : SwiftUI.View where Content : SwiftUI.View {
  @usableFromInline
  internal var _tree: SwiftUI._VariadicView.Tree<SwiftUI._VStackLayout, Content>
  @inlinable public init(alignment: SwiftUI.HorizontalAlignment = .center, spacing: CoreGraphics.CGFloat? = nil, @SwiftUI.ViewBuilder content: () -> Content) {
        _tree = .init(
            root: _VStackLayout(alignment: alignment, spacing: spacing), content: content())
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.VStack<Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _VStackLayout {
  public var alignment: SwiftUI.HorizontalAlignment
  public var spacing: CoreGraphics.CGFloat?
  @inlinable public init(alignment: SwiftUI.HorizontalAlignment = .center, spacing: CoreGraphics.CGFloat? = nil) {
        self.alignment = alignment
        self.spacing = spacing
    }
  public typealias Body = Swift.Never
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct PlainButtonStyle : SwiftUI.PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: SwiftUI.PlainButtonStyle.Configuration) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI16PlainButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol Gesture {
  associatedtype Value
  static func _makeGesture(gesture: SwiftUI._GraphValue<Self>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Self.Value>
  associatedtype Body : SwiftUI.Gesture
  var body: Self.Body { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Never {
  public typealias Value = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture where Self.Value == Self.Body.Value {
  public static func _makeGesture(gesture: SwiftUI._GraphValue<Self>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Self.Body.Value>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _GestureInputs {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _GestureOutputs<Value> {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol DynamicProperty {
  static func _makeProperty<V>(in buffer: inout SwiftUI._DynamicPropertyBuffer, container: SwiftUI._GraphValue<V>, fieldOffset: Swift.Int, inputs: inout SwiftUI._GraphInputs)
  mutating func update()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension DynamicProperty {
  public static func _makeProperty<V>(in buffer: inout SwiftUI._DynamicPropertyBuffer, container: SwiftUI._GraphValue<V>, fieldOffset: Swift.Int, inputs: inout SwiftUI._GraphInputs)
  mutating public func update()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Optional : SwiftUI.Gesture where Wrapped : SwiftUI.Gesture {
  public typealias Value = Wrapped.Value
  public static func _makeGesture(gesture: SwiftUI._GraphValue<Swift.Optional<Wrapped>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Wrapped.Value>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct AnyView : SwiftUI.View {
  internal var storage: SwiftUI.AnyViewStorageBase
  public init<V>(_ view: V) where V : SwiftUI.View
  public init?(_fromValue value: Any)
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.AnyView>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.AnyView>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public typealias Body = Swift.Never
}
@usableFromInline
internal class AnyViewStorageBase {
  @objc @usableFromInline
  deinit
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct DefaultButtonStyle : SwiftUI.PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: SwiftUI.DefaultButtonStyle.Configuration) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI18DefaultButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct DoubleColumnNavigationViewStyle : SwiftUI.NavigationViewStyle {
  public init()
  public func _body(configuration: SwiftUI._NavigationViewStyleConfiguration) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI31DoubleColumnNavigationViewStyleV5_body13configurationQrAA01_efG13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Divider : SwiftUI.View {
  public init()
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.Divider>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
public func __designTimeBoolean<T>(_ key: Swift.String, fallback: T) -> T where T : Swift.ExpressibleByBooleanLiteral
public func __designTimeFloat<T>(_ key: Swift.String, fallback: T) -> T where T : Swift.ExpressibleByFloatLiteral
public func __designTimeInteger<T>(_ key: Swift.String, fallback: T) -> T where T : Swift.ExpressibleByIntegerLiteral
public func __designTimeString<T>(_ key: Swift.String, fallback: T) -> T where T : Swift.ExpressibleByStringLiteral
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public func __designTimeApplyIncrementalValues(_ updates: [[Swift.String : Any]])
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  public func onEnded(_ action: @escaping (Self.Value) -> Swift.Void) -> SwiftUI._EndedGesture<Self>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture where Self.Value : Swift.Equatable {
  public func onChanged(_ action: @escaping (Self.Value) -> Swift.Void) -> SwiftUI._ChangedGesture<Self>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _EndedGesture<Content> where Content : SwiftUI.Gesture {
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI._EndedGesture<Content>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Content.Value>
  public typealias Value = Content.Value
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ChangedGesture<Content> where Content : SwiftUI.Gesture, Content.Value : Swift.Equatable {
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI._ChangedGesture<Content>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Content.Value>
  public typealias Value = Content.Value
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Spacer {
  public var minLength: CoreGraphics.CGFloat?
  @inlinable public init(minLength: CoreGraphics.CGFloat? = nil) {
        self.minLength = minLength
    }
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _HSpacer {
  public var minWidth: CoreGraphics.CGFloat?
  @inlinable public init(minWidth: CoreGraphics.CGFloat? = nil) {
        self.minWidth = minWidth
    }
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _VSpacer {
  public var minHeight: CoreGraphics.CGFloat?
  @inlinable public init(minHeight: CoreGraphics.CGFloat? = nil) {
        self.minHeight = minHeight
    }
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  public func map<T>(_ body: @escaping (Self.Value) -> T) -> SwiftUI._MapGesture<Self, T>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _MapGesture<Content, Value> where Content : SwiftUI.Gesture {
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI._MapGesture<Content, Value>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Value>
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct ScrollView<Content> : SwiftUI.View where Content : SwiftUI.View {
  public var content: Content
  public var axes: SwiftUI.Axis.Set {
    get
    set
  }
  public var showsIndicators: Swift.Bool {
    get
    set
  }
  public init(_ axes: SwiftUI.Axis.Set = .vertical, showsIndicators: Swift.Bool = true, @SwiftUI.ViewBuilder content: () -> Content)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI10ScrollViewV4bodyQrvp", 0) 🦸<Content>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public func combined(with other: SwiftUI.AnyTransition) -> SwiftUI.AnyTransition
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  @inlinable public func exclusively<Other>(before other: Other) -> SwiftUI.ExclusiveGesture<Self, Other> where Other : SwiftUI.Gesture {
        return ExclusiveGesture(self, other)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct ExclusiveGesture<First, Second> where First : SwiftUI.Gesture, Second : SwiftUI.Gesture {
  @frozen public enum Value {
    case first(First.Value)
    case second(Second.Value)
  }
  public var first: First
  public var second: Second
  @inlinable public init(_ first: First, _ second: Second) {
        (self.first, self.second) = (first, second)
    }
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.ExclusiveGesture<First, Second>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<SwiftUI.ExclusiveGesture<First, Second>.Value>
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ExclusiveGesture.Value : Swift.Equatable where First.Value : Swift.Equatable, Second.Value : Swift.Equatable {
  public static func == (a: SwiftUI.ExclusiveGesture<First, Second>.Value, b: SwiftUI.ExclusiveGesture<First, Second>.Value) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct PlainTextFieldStyle : SwiftUI.TextFieldStyle {
  public init()
  public func _body(configuration: SwiftUI.TextField<SwiftUI.PlainTextFieldStyle._Label>) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI19PlainTextFieldStyleV5_body13configurationQrAA0dE0VyAA01_deF5LabelVG_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var _layoutCorrectnessAtTheExpenseOfSpeed: Swift.Bool {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct TabView<SelectionValue, Content> : SwiftUI.View where SelectionValue : Swift.Hashable, Content : SwiftUI.View {
  public init(selection: SwiftUI.Binding<SelectionValue>?, @SwiftUI.ViewBuilder content: () -> Content)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI7TabViewV4bodyQrvp", 0) 🦸<SelectionValue, Content>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension TabView where SelectionValue == Swift.Int {
  @available(watchOS, unavailable)
  public init(@SwiftUI.ViewBuilder content: () -> Content)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _EventDirections : Swift.OptionSet {
  public let rawValue: Swift.Int8
  public init(rawValue: Swift.Int8)
  public static let left: SwiftUI._EventDirections
  public static let right: SwiftUI._EventDirections
  public static let up: SwiftUI._EventDirections
  public static let down: SwiftUI._EventDirections
  public static let horizontal: SwiftUI._EventDirections
  public static let vertical: SwiftUI._EventDirections
  public static let all: SwiftUI._EventDirections
  public typealias Element = SwiftUI._EventDirections
  public typealias RawValue = Swift.Int8
  public typealias ArrayLiteralElement = SwiftUI._EventDirections
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public static func modifier<E>(active: E, identity: E) -> SwiftUI.AnyTransition where E : SwiftUI.ViewModifier
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension View {
  @available(OSX, unavailable)
  public func navigationBarHidden(_ hidden: Swift.Bool) -> some SwiftUI.View
  
  @available(OSX, unavailable)
  public func navigationBarTitle(_ title: SwiftUI.Text) -> some SwiftUI.View
  
  @available(OSX, unavailable)
  public func navigationBarTitle(_ titleKey: SwiftUI.LocalizedStringKey) -> some SwiftUI.View
  
  @available(OSX, unavailable)
  @_disfavoredOverload public func navigationBarTitle<S>(_ title: S) -> some SwiftUI.View where S : Swift.StringProtocol
  
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarTitle(_ title: SwiftUI.Text, displayMode: SwiftUI.NavigationBarItem.TitleDisplayMode) -> some SwiftUI.View
  
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarTitle(_ titleKey: SwiftUI.LocalizedStringKey, displayMode: SwiftUI.NavigationBarItem.TitleDisplayMode) -> some SwiftUI.View
  
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarItems<L, T>(leading: L, trailing: T) -> some SwiftUI.View where L : SwiftUI.View, T : SwiftUI.View
  
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarItems<L>(leading: L) -> some SwiftUI.View where L : SwiftUI.View
  
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public func navigationBarItems<T>(trailing: T) -> some SwiftUI.View where T : SwiftUI.View
  
  @available(OSX, unavailable)
  public func navigationBarBackButtonHidden(_ hidesBackButton: Swift.Bool) -> some SwiftUI.View
  
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public struct NavigationBarItem {
  public enum TitleDisplayMode {
    case automatic
    case inline
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    case large
    public static func == (a: SwiftUI.NavigationBarItem.TitleDisplayMode, b: SwiftUI.NavigationBarItem.TitleDisplayMode) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct BorderlessButtonStyle : SwiftUI.PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: SwiftUI.BorderlessButtonStyle.Configuration) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI21BorderlessButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __UniversalListStyle : SwiftUI.ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.__UniversalListStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.__UniversalListStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _EventDebugTriggers : Swift.OptionSet {
  public let rawValue: Swift.Int
  public init(rawValue: Swift.Int)
  public static let responders: SwiftUI._EventDebugTriggers
  public static let sendEvents: SwiftUI._EventDebugTriggers
  public static let eventBindings: SwiftUI._EventDebugTriggers
  public static let eventPhases: SwiftUI._EventDebugTriggers
  public typealias Element = SwiftUI._EventDebugTriggers
  public typealias ArrayLiteralElement = SwiftUI._EventDebugTriggers
  public typealias RawValue = Swift.Int
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public var _eventDebugTriggers: SwiftUI._EventDebugTriggers
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text {
  public enum TruncationMode {
    case head
    case tail
    case middle
    public static func == (a: SwiftUI.Text.TruncationMode, b: SwiftUI.Text.TruncationMode) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  public var multilineTextAlignment: SwiftUI.TextAlignment {
    get
    set
  }
  public var truncationMode: SwiftUI.Text.TruncationMode {
    get
    set
  }
  public var lineSpacing: CoreGraphics.CGFloat {
    get
    set
  }
  public var allowsTightening: Swift.Bool {
    get
    set
  }
  public var lineLimit: Swift.Int? {
    get
    set
  }
  public var minimumScaleFactor: CoreGraphics.CGFloat {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func multilineTextAlignment(_ alignment: SwiftUI.TextAlignment) -> some SwiftUI.View {
        return environment(\.multilineTextAlignment, alignment)
    }
  
  @inlinable public func truncationMode(_ mode: SwiftUI.Text.TruncationMode) -> some SwiftUI.View {
        return environment(\.truncationMode, mode)
    }
  
  @inlinable public func lineSpacing(_ lineSpacing: CoreGraphics.CGFloat) -> some SwiftUI.View {
        return environment(\.lineSpacing, lineSpacing)
    }
  
  @inlinable public func allowsTightening(_ flag: Swift.Bool) -> some SwiftUI.View {
        return environment(\.allowsTightening, flag)
    }
  
  @inlinable public func lineLimit(_ number: Swift.Int?) -> some SwiftUI.View {
        return environment(\.lineLimit, number)
    }
  
  @inlinable public func minimumScaleFactor(_ factor: CoreGraphics.CGFloat) -> some SwiftUI.View {
        return environment(\.minimumScaleFactor, factor)
    }
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onCommand(_ selector: ObjectiveC.Selector, perform action: (() -> Swift.Void)?) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onPasteCommand(of supportedTypes: [Swift.String], perform payloadAction: @escaping ([Foundation.NSItemProvider]) -> Swift.Void) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onPasteCommand<Payload>(of supportedTypes: [Swift.String], validator: @escaping ([Foundation.NSItemProvider]) -> Payload?, perform payloadAction: @escaping (Payload) -> Swift.Void) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onCopyCommand(perform payloadAction: (() -> [Foundation.NSItemProvider])?) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onCutCommand(perform payloadAction: (() -> [Foundation.NSItemProvider])?) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _Placement : Swift.Equatable {
  public var proposedSize: CoreGraphics.CGSize {
    get
    set
  }
  public var anchor: SwiftUI.UnitPoint
  public var anchorPosition: CoreGraphics.CGPoint
  public init(proposedSize: CoreGraphics.CGSize, anchoring anchor: SwiftUI.UnitPoint = .topLeading, at anchorPosition: CoreGraphics.CGPoint)
  public static func == (a: SwiftUI._Placement, b: SwiftUI._Placement) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct TapGesture {
  public var count: Swift.Int
  public init(count: Swift.Int = 1)
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.TapGesture>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<Swift.Void>
  public typealias Value = ()
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension View {
  public func onTapGesture(count: Swift.Int = 1, perform action: @escaping () -> Swift.Void) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public enum Axis : Swift.Int8, Swift.CaseIterable {
  case horizontal
  case vertical
  @frozen public struct Set : Swift.OptionSet {
    public typealias Element = SwiftUI.Axis.Set
    public let rawValue: Swift.Int8
    public init(rawValue: Swift.Int8)
    public static let horizontal: SwiftUI.Axis.Set
    public static let vertical: SwiftUI.Axis.Set
    public typealias RawValue = Swift.Int8
    public typealias ArrayLiteralElement = SwiftUI.Axis.Set.Element
  }
  public typealias RawValue = Swift.Int8
  public init?(rawValue: Swift.Int8)
  public var rawValue: Swift.Int8 {
    get
  }
  public typealias AllCases = [SwiftUI.Axis]
  public static var allCases: [SwiftUI.Axis] {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Axis : Swift.CustomStringConvertible {
  public var description: Swift.String {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public func animation(_ animation: SwiftUI.Animation?) -> SwiftUI.AnyTransition
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum _ViewDebug {
  public enum Property : Swift.UInt32, Swift.Hashable {
    case type
    case value
    case transform
    case position
    case size
    case environment
    case phase
    case layoutComputer
    case displayList
    public typealias RawValue = Swift.UInt32
    public init?(rawValue: Swift.UInt32)
    public var rawValue: Swift.UInt32 {
      get
    }
  }
  public struct Properties : Swift.OptionSet {
    public let rawValue: Swift.UInt32
    public init(rawValue: Swift.UInt32)
    public static let type: SwiftUI._ViewDebug.Properties
    public static let value: SwiftUI._ViewDebug.Properties
    public static let transform: SwiftUI._ViewDebug.Properties
    public static let position: SwiftUI._ViewDebug.Properties
    public static let size: SwiftUI._ViewDebug.Properties
    public static let environment: SwiftUI._ViewDebug.Properties
    public static let phase: SwiftUI._ViewDebug.Properties
    public static let layoutComputer: SwiftUI._ViewDebug.Properties
    public static let displayList: SwiftUI._ViewDebug.Properties
    public static let all: SwiftUI._ViewDebug.Properties
    public typealias Element = SwiftUI._ViewDebug.Properties
    public typealias ArrayLiteralElement = SwiftUI._ViewDebug.Properties
    public typealias RawValue = Swift.UInt32
  }
  public struct Data {
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewDebug {
  public static func serializedData(_ viewDebugData: [SwiftUI._ViewDebug.Data]) -> Foundation.Data?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewDebug.Data : Swift.Encodable {
  public func encode(to encoder: Swift.Encoder) throws
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public static let identity: SwiftUI.AnyTransition
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@propertyWrapper @frozen public struct GestureState<Value> : SwiftUI.DynamicProperty {
  fileprivate var state: SwiftUI.State<Value>
  fileprivate let reset: (SwiftUI.Binding<Value>) -> Swift.Void
  public init(wrappedValue: Value)
  @_alwaysEmitIntoClient public init(initialValue: Value) {
        self.init(wrappedValue: initialValue, resetTransaction: Transaction())
    }
  public init(wrappedValue: Value, resetTransaction: SwiftUI.Transaction)
  @_alwaysEmitIntoClient public init(initialValue: Value, resetTransaction: SwiftUI.Transaction) {
      self.init(wrappedValue: initialValue, resetTransaction: resetTransaction)
    }
  public init(wrappedValue: Value, reset: @escaping (Value, inout SwiftUI.Transaction) -> Swift.Void)
  @_alwaysEmitIntoClient public init(initialValue: Value, reset: @escaping (Value, inout SwiftUI.Transaction) -> Swift.Void) {
      self.init(wrappedValue: initialValue, reset: reset)
    }
  public var wrappedValue: Value {
    get
  }
  public var projectedValue: SwiftUI.GestureState<Value> {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension GestureState where Value : Swift.ExpressibleByNilLiteral {
  public init(resetTransaction: SwiftUI.Transaction = Transaction())
  public init(reset: @escaping (Value, inout SwiftUI.Transaction) -> Swift.Void)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  @inlinable public func updating<State>(_ state: SwiftUI.GestureState<State>, body: @escaping (Self.Value, inout State, inout SwiftUI.Transaction) -> Swift.Void) -> SwiftUI.GestureStateGesture<Self, State> {
        return .init(base: self, state: state, body: body)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct GestureStateGesture<Base, State> : SwiftUI.Gesture where Base : SwiftUI.Gesture {
  public typealias Value = Base.Value
  public var base: Base
  public var state: SwiftUI.GestureState<State>
  public var body: (SwiftUI.GestureStateGesture<Base, State>.Value, inout State, inout SwiftUI.Transaction) -> Swift.Void
  @inlinable public init(base: Base, state: SwiftUI.GestureState<State>, body: @escaping (SwiftUI.GestureStateGesture<Base, State>.Value, inout State, inout SwiftUI.Transaction) -> Swift.Void) {
        self.base = base
        self.state = state
        self.body = body
    }
  public static func _makeGesture(gesture: SwiftUI._GraphValue<SwiftUI.GestureStateGesture<Base, State>>, inputs: SwiftUI._GestureInputs) -> SwiftUI._GestureOutputs<SwiftUI.GestureStateGesture<Base, State>.Value>
  public typealias Body = Swift.Never
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public enum EditMode {
  case inactive
  case transient
  case active
  public var isEditing: Swift.Bool {
    get
  }
  public static func == (a: SwiftUI.EditMode, b: SwiftUI.EditMode) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  public var editMode: SwiftUI.Binding<SwiftUI.EditMode>? {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ConfigurableContentWriter<Content, ContentBody> : SwiftUI.ViewModifier, SwiftUI._GraphInputsModifier where ContentBody : SwiftUI.View {
  public static func _makeInputs(modifier: SwiftUI._GraphValue<SwiftUI._ConfigurableContentWriter<Content, ContentBody>>, inputs: inout SwiftUI._GraphInputs)
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct AnyTransition {
  fileprivate let box: SwiftUI.AnyTransitionBox
}
@usableFromInline
internal class AnyTransitionBox {
  @objc @usableFromInline
  deinit
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum ControlSize : Swift.CaseIterable {
  case regular
  case small
  case mini
  public static func == (a: SwiftUI.ControlSize, b: SwiftUI.ControlSize) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public typealias AllCases = [SwiftUI.ControlSize]
  public static var allCases: [SwiftUI.ControlSize] {
    get
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public var controlSize: SwiftUI.ControlSize {
    get
    set
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func controlSize(_ controlSize: SwiftUI.ControlSize) -> some SwiftUI.View {
        return environment(\.controlSize, controlSize)
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct CarouselListStyle : SwiftUI.ListStyle {
  public init()
  public static func _makeView<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.CarouselListStyle, SelectionValue>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where SelectionValue : Swift.Hashable
  public static func _makeViewList<SelectionValue>(value: SwiftUI._GraphValue<SwiftUI._ListValue<SwiftUI.CarouselListStyle, SelectionValue>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs where SelectionValue : Swift.Hashable
}
@usableFromInline
internal class AnyLocationBase {
  @objc @usableFromInline
  deinit
}
@usableFromInline
internal class AnyLocation<Value> : SwiftUI.AnyLocationBase {
  @objc @usableFromInline
  deinit
}
@usableFromInline
internal struct ListRowInsetsTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: SwiftUI.EdgeInsets? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = SwiftUI.EdgeInsets?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func listRowInsets(_ insets: SwiftUI.EdgeInsets?) -> some SwiftUI.View {
        return _trait(ListRowInsetsTraitKey.self, insets)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _IdentifiedViewProxy {
  public var identifier: Swift.AnyHashable
  public var boundingRect: CoreGraphics.CGRect {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum _IdentifiedViewTree {
  case empty
  case proxy(SwiftUI._IdentifiedViewProxy)
  case array([SwiftUI._IdentifiedViewTree])
  public func forEach(_ body: (SwiftUI._IdentifiedViewProxy) -> Swift.Void)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _IdentifiedViewsKey {
  public typealias Value = SwiftUI._IdentifiedViewTree
  public static let defaultValue: SwiftUI._IdentifiedViewTree
  public static func reduce(value: inout SwiftUI._IdentifiedViewsKey.Value, nextValue: () -> SwiftUI._IdentifiedViewsKey.Value)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _IdentifiedModifier<Identifier> : SwiftUI.ViewModifier, Swift.Equatable where Identifier : Swift.Hashable {
  public var identifier: Identifier
  @inlinable public init(identifier: Identifier) {
        self.identifier = identifier
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._IdentifiedModifier<Identifier>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._IdentifiedModifier<Identifier>, b: SwiftUI._IdentifiedModifier<Identifier>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func _identified<I>(by identifier: I) -> some SwiftUI.View where I : Swift.Hashable {
        return modifier(_IdentifiedModifier(identifier: identifier))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ScrollViewProxy : Swift.Equatable {
  public var config: SwiftUI._ScrollViewConfig {
    get
  }
  public var contentOffset: CoreGraphics.CGPoint {
    get
    set
  }
  public var minContentOffset: CoreGraphics.CGPoint {
    get
  }
  public var maxContentOffset: CoreGraphics.CGPoint {
    get
  }
  public var contentSize: CoreGraphics.CGSize {
    get
  }
  public var pageSize: CoreGraphics.CGSize {
    get
  }
  public var visibleRect: CoreGraphics.CGRect {
    get
  }
  public var isDragging: Swift.Bool {
    get
  }
  public var isDecelerating: Swift.Bool {
    get
  }
  public var isScrolling: Swift.Bool {
    get
  }
  public var isScrollingHorizontally: Swift.Bool {
    get
  }
  public var isScrollingVertically: Swift.Bool {
    get
  }
  public func setContentOffset(_ newOffset: CoreGraphics.CGPoint, animated: Swift.Bool, completion: ((Swift.Bool) -> Swift.Void)? = nil)
  public func scrollRectToVisible(_ rect: CoreGraphics.CGRect, animated: Swift.Bool, completion: ((Swift.Bool) -> Swift.Void)? = nil)
  public func contentOffsetOfNextPage(_ directions: SwiftUI._EventDirections) -> CoreGraphics.CGPoint
  public static func == (lhs: SwiftUI._ScrollViewProxy, rhs: SwiftUI._ScrollViewProxy) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ContainedScrollViewKey {
  public typealias Value = SwiftUI._ScrollViewProxy?
  public static func reduce(value: inout SwiftUI._ContainedScrollViewKey.Value, nextValue: () -> SwiftUI._ContainedScrollViewKey.Value)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct LinkButtonStyle : SwiftUI.PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: SwiftUI.LinkButtonStyle.Configuration) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI15LinkButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public static func move(edge: SwiftUI.Edge) -> SwiftUI.AnyTransition
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font {
  public func italic() -> SwiftUI.Font
  public func smallCaps() -> SwiftUI.Font
  public func lowercaseSmallCaps() -> SwiftUI.Font
  public func uppercaseSmallCaps() -> SwiftUI.Font
  public func monospacedDigit() -> SwiftUI.Font
  public func weight(_ weight: SwiftUI.Font.Weight) -> SwiftUI.Font
  public func bold() -> SwiftUI.Font
  public func _stylisticAlternative(_ alternative: SwiftUI.Font._StylisticAlternative) -> SwiftUI.Font
  @frozen public struct Weight : Swift.Hashable {
    internal var value: CoreGraphics.CGFloat
    public static let ultraLight: SwiftUI.Font.Weight
    public static let thin: SwiftUI.Font.Weight
    public static let light: SwiftUI.Font.Weight
    public static let regular: SwiftUI.Font.Weight
    public static let medium: SwiftUI.Font.Weight
    public static let semibold: SwiftUI.Font.Weight
    public static let bold: SwiftUI.Font.Weight
    public static let heavy: SwiftUI.Font.Weight
    public static let black: SwiftUI.Font.Weight
    public static func == (a: SwiftUI.Font.Weight, b: SwiftUI.Font.Weight) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
  public enum _StylisticAlternative : Swift.Int, Swift.Hashable {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case eleven
    case twelve
    case thirteen
    case fourteen
    case fifteen
    case sixteen
    case seventeen
    case eighteen
    case nineteen
    case twenty
    public typealias RawValue = Swift.Int
    public init?(rawValue: Swift.Int)
    public var rawValue: Swift.Int {
      get
    }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __DesignTimeSelectionIdentifier : Swift.Hashable {
  public let identifier: Swift.String
  public init(_ identifier: Swift.String)
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (a: SwiftUI.__DesignTimeSelectionIdentifier, b: SwiftUI.__DesignTimeSelectionIdentifier) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol Animatable {
  associatedtype AnimatableData : SwiftUI.VectorArithmetic
  var animatableData: Self.AnimatableData { get set }
  static func _makeAnimatable(value: inout SwiftUI._GraphValue<Self>, inputs: SwiftUI._GraphInputs)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animatable where Self : SwiftUI.VectorArithmetic {
  public var animatableData: Self {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animatable where Self.AnimatableData == SwiftUI.EmptyAnimatableData {
  public var animatableData: SwiftUI.EmptyAnimatableData {
    @inlinable get { return EmptyAnimatableData() }
    @inlinable set {}
  }
  public static func _makeAnimatable(value: inout SwiftUI._GraphValue<Self>, inputs: SwiftUI._GraphInputs)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animatable {
  public static func _makeAnimatable(value: inout SwiftUI._GraphValue<Self>, inputs: SwiftUI._GraphInputs)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct EmptyAnimatableData : SwiftUI.VectorArithmetic {
  @inlinable public init() {}
  @inlinable public static var zero: SwiftUI.EmptyAnimatableData {
    get { return .init() }
  }
  @inlinable public static func += (lhs: inout SwiftUI.EmptyAnimatableData, rhs: SwiftUI.EmptyAnimatableData) {}
  @inlinable public static func -= (lhs: inout SwiftUI.EmptyAnimatableData, rhs: SwiftUI.EmptyAnimatableData) {}
  @inlinable public static func + (lhs: SwiftUI.EmptyAnimatableData, rhs: SwiftUI.EmptyAnimatableData) -> SwiftUI.EmptyAnimatableData {
        return .zero
    }
  @inlinable public static func - (lhs: SwiftUI.EmptyAnimatableData, rhs: SwiftUI.EmptyAnimatableData) -> SwiftUI.EmptyAnimatableData {
        return .zero
    }
  @inlinable mutating public func scale(by rhs: Swift.Double) {}
  @inlinable public var magnitudeSquared: Swift.Double {
    get { return 0 }
  }
  public static func == (a: SwiftUI.EmptyAnimatableData, b: SwiftUI.EmptyAnimatableData) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Optional : SwiftUI.View where Wrapped : SwiftUI.View {
  public typealias Body = Swift.Never
  public static func _makeView(view: SwiftUI._GraphValue<Swift.Optional<Wrapped>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<Swift.Optional<Wrapped>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct SeparatorShapeStyle : SwiftUI.ShapeStyle {
  public init()
  public static func _makeView<S>(view: SwiftUI._GraphValue<SwiftUI._ShapeView<S, SwiftUI.SeparatorShapeStyle>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where S : SwiftUI.Shape
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _SystemShapeStyle : SwiftUI.ShapeStyle {
  public static let primaryFill: SwiftUI._SystemShapeStyle
  public static let secondaryFill: SwiftUI._SystemShapeStyle
  public static let tertiaryFill: SwiftUI._SystemShapeStyle
  public static let quaternaryFill: SwiftUI._SystemShapeStyle
  public static func _makeView<S>(view: SwiftUI._GraphValue<SwiftUI._ShapeView<S, SwiftUI._SystemShapeStyle>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs where S : SwiftUI.Shape
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct AnimatablePair<First, Second> : SwiftUI.VectorArithmetic where First : SwiftUI.VectorArithmetic, Second : SwiftUI.VectorArithmetic {
  public var first: First
  public var second: Second
  @inlinable public init(_ first: First, _ second: Second) {
        self.first = first
        self.second = second
    }
  @inlinable internal subscript() -> (First, Second) {
    get { return (first, second) }
    set { (first, second) = newValue }
  }
  @_transparent public static var zero: SwiftUI.AnimatablePair<First, Second> {
    get {
        return .init(First.zero, Second.zero)
    }
  }
  @_transparent public static func += (lhs: inout SwiftUI.AnimatablePair<First, Second>, rhs: SwiftUI.AnimatablePair<First, Second>) {
        lhs.first += rhs.first
        lhs.second += rhs.second
    }
  @_transparent public static func -= (lhs: inout SwiftUI.AnimatablePair<First, Second>, rhs: SwiftUI.AnimatablePair<First, Second>) {
        lhs.first -= rhs.first
        lhs.second -= rhs.second
    }
  @_transparent public static func + (lhs: SwiftUI.AnimatablePair<First, Second>, rhs: SwiftUI.AnimatablePair<First, Second>) -> SwiftUI.AnimatablePair<First, Second> {
        return .init(lhs.first + rhs.first, lhs.second + rhs.second)
    }
  @_transparent public static func - (lhs: SwiftUI.AnimatablePair<First, Second>, rhs: SwiftUI.AnimatablePair<First, Second>) -> SwiftUI.AnimatablePair<First, Second> {
        return .init(lhs.first - rhs.first, lhs.second - rhs.second)
    }
  @_transparent mutating public func scale(by rhs: Swift.Double) {
        first.scale(by: rhs)
        second.scale(by: rhs)
    }
  @_transparent public var magnitudeSquared: Swift.Double {
    get {
        return first.magnitudeSquared + second.magnitudeSquared
    }
  }
  public static func == (a: SwiftUI.AnimatablePair<First, Second>, b: SwiftUI.AnimatablePair<First, Second>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollView.Main {
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._ScrollView<Provider>.Main>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum _ScrollViewAnimationMode {
  case never
  case discreteChanges
  case always
  public static func == (a: SwiftUI._ScrollViewAnimationMode, b: SwiftUI._ScrollViewAnimationMode) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Transaction {
  public var _scrollViewAnimates: SwiftUI._ScrollViewAnimationMode {
    get
    set
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  public static func easeInOut(duration: Swift.Double) -> SwiftUI.Animation
  public static var easeInOut: SwiftUI.Animation {
    get
  }
  public static func easeIn(duration: Swift.Double) -> SwiftUI.Animation
  public static var easeIn: SwiftUI.Animation {
    get
  }
  public static func easeOut(duration: Swift.Double) -> SwiftUI.Animation
  public static var easeOut: SwiftUI.Animation {
    get
  }
  public static func linear(duration: Swift.Double) -> SwiftUI.Animation
  public static var linear: SwiftUI.Animation {
    get
  }
  public static func timingCurve(_ c0x: Swift.Double, _ c0y: Swift.Double, _ c1x: Swift.Double, _ c1y: Swift.Double, duration: Swift.Double = 0.35) -> SwiftUI.Animation
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct ForEach<Data, ID, Content> where Data : Swift.RandomAccessCollection, ID : Swift.Hashable {
  public var data: Data
  public var content: (Data.Element) -> Content
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach : SwiftUI.View where Content : SwiftUI.View {
  public typealias Body = Swift.Never
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.ForEach<Data, ID, Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.ForEach<Data, ID, Content>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach where ID == Data.Element.ID, Content : SwiftUI.View, Data.Element : Swift.Identifiable {
  public init(_ data: Data, @SwiftUI.ViewBuilder content: @escaping (Data.Element) -> Content)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach where Content : SwiftUI.View {
  public init(_ data: Data, id: Swift.KeyPath<Data.Element, ID>, content: @escaping (Data.Element) -> Content)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach where Data == Swift.Range<Swift.Int>, ID == Swift.Int, Content : SwiftUI.View {
  public init(_ data: Swift.Range<Swift.Int>, @SwiftUI.ViewBuilder content: @escaping (Swift.Int) -> Content)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  public static func interpolatingSpring(mass: Swift.Double = 1.0, stiffness: Swift.Double, damping: Swift.Double, initialVelocity: Swift.Double = 0.0) -> SwiftUI.Animation
}
@usableFromInline
@frozen internal struct IDView<Content, ID> : SwiftUI.View where Content : SwiftUI.View, ID : Swift.Hashable {
  @usableFromInline
  internal var content: Content
  @usableFromInline
  internal var id: ID
  @inlinable internal init(_ content: Content, id: ID) {
        self.content = content
        self.id = id
    }
  @usableFromInline
  internal var body: Swift.Never {
    get
  }
  @usableFromInline
  internal typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func id<ID>(_ id: ID) -> some SwiftUI.View where ID : Swift.Hashable {
        return IDView(self, id: id)
    }
  
}
extension IDView {
  @usableFromInline
  internal static func _makeView(view: SwiftUI._GraphValue<SwiftUI.IDView<Content, ID>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
}
extension IDView {
  @usableFromInline
  internal static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.IDView<Content, ID>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _PreferenceValue<Key> where Key : SwiftUI.PreferenceKey {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _DelayedPreferenceView<Key, Content> : SwiftUI.View where Key : SwiftUI.PreferenceKey, Content : SwiftUI.View {
  public var transform: (SwiftUI._PreferenceValue<Key>) -> Content
  @inlinable public init(transform: @escaping (SwiftUI._PreferenceValue<Key>) -> Content) {
        self.transform = transform
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._DelayedPreferenceView<Key, Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreferenceKey {
  @inlinable public static func _delay<T>(_ transform: @escaping (SwiftUI._PreferenceValue<Self>) -> T) -> some SwiftUI.View where T : SwiftUI.View {
        return _DelayedPreferenceView(transform: transform)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func overlayPreferenceValue<Key, T>(_ key: Key.Type = Key.self, @SwiftUI.ViewBuilder _ transform: @escaping (Key.Value) -> T) -> some SwiftUI.View where Key : SwiftUI.PreferenceKey, T : SwiftUI.View {
        return Key._delay { self.overlay($0._force(transform)) }
    }
  
  @inlinable public func backgroundPreferenceValue<Key, T>(_ key: Key.Type = Key.self, @SwiftUI.ViewBuilder _ transform: @escaping (Key.Value) -> T) -> some SwiftUI.View where Key : SwiftUI.PreferenceKey, T : SwiftUI.View {
        return Key._delay { self.background($0._force(transform)) }
    }
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public enum _CrownHapticsConfiguration {
  case none
  case infiniteScrolling
  case finiteScrolling(CoreGraphics.CGFloat, CoreGraphics.CGFloat)
  case platters([SwiftUI._CrownHapticsConfiguration.Notch])
  public struct Notch {
    public enum Strength {
      case weak
      case standard
      case strong
      public static func == (a: SwiftUI._CrownHapticsConfiguration.Notch.Strength, b: SwiftUI._CrownHapticsConfiguration.Notch.Strength) -> Swift.Bool
      public var hashValue: Swift.Int {
        get
      }
      public func hash(into hasher: inout Swift.Hasher)
    }
    public init(from: CoreGraphics.CGFloat, to: CoreGraphics.CGFloat, strength: SwiftUI._CrownHapticsConfiguration.Notch.Strength)
  }
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public protocol _CrownHapticsConfigurationProvider {
  func makeConfiguration() -> SwiftUI._CrownHapticsConfiguration
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension _CrownHapticsConfigurationProvider {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func notchRadius(forHeight notchHeight: CoreGraphics.CGFloat) -> CoreGraphics.CGFloat
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  public func delay(_ delay: Swift.Double) -> SwiftUI.Animation
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  public func speed(_ speed: Swift.Double) -> SwiftUI.Animation
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text : SwiftUI.View {
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.Text>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _SymmetricallyScaledText : SwiftUI.View {
  public var source: SwiftUI.Text
  public var reference: SwiftUI.Text
  public init(source: SwiftUI.Text, reference: SwiftUI.Text)
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._SymmetricallyScaledText>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text {
  public func foregroundColor(_ color: SwiftUI.Color?) -> SwiftUI.Text
  public func font(_ font: SwiftUI.Font?) -> SwiftUI.Text
  public func fontWeight(_ weight: SwiftUI.Font.Weight?) -> SwiftUI.Text
  public func bold() -> SwiftUI.Text
  public func italic() -> SwiftUI.Text
  public func strikethrough(_ active: Swift.Bool = true, color: SwiftUI.Color? = nil) -> SwiftUI.Text
  public func underline(_ active: Swift.Bool = true, color: SwiftUI.Color? = nil) -> SwiftUI.Text
  public func kerning(_ kerning: CoreGraphics.CGFloat) -> SwiftUI.Text
  public func tracking(_ tracking: CoreGraphics.CGFloat) -> SwiftUI.Text
  public func baselineOffset(_ baselineOffset: CoreGraphics.CGFloat) -> SwiftUI.Text
  public func _stylisticAlternative(_ alternative: SwiftUI.Font._StylisticAlternative) -> SwiftUI.Text
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  public static func asymmetric(insertion: SwiftUI.AnyTransition, removal: SwiftUI.AnyTransition) -> SwiftUI.AnyTransition
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol EnvironmentalModifier : SwiftUI.ViewModifier where Self.Body == Swift.Never {
  associatedtype ResolvedModifier : SwiftUI.ViewModifier
  func resolve(in environment: SwiftUI.EnvironmentValues) -> Self.ResolvedModifier
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentalModifier {
  public static func _makeView(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(modifier: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs) -> SwiftUI._ViewListOutputs
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font {
  public static let largeTitle: SwiftUI.Font
  public static let title: SwiftUI.Font
  public static var headline: SwiftUI.Font
  public static var subheadline: SwiftUI.Font
  public static var body: SwiftUI.Font
  public static var callout: SwiftUI.Font
  public static var footnote: SwiftUI.Font
  public static var caption: SwiftUI.Font
  public static func system(_ style: SwiftUI.Font.TextStyle, design: SwiftUI.Font.Design = .default) -> SwiftUI.Font
  public static func system(size: CoreGraphics.CGFloat, weight: SwiftUI.Font.Weight = .regular, design: SwiftUI.Font.Design = .default) -> SwiftUI.Font
  public static func custom(_ name: Swift.String, size: CoreGraphics.CGFloat) -> SwiftUI.Font
  public init(_ font: CoreText.CTFont)
  public enum TextStyle : Swift.CaseIterable {
    case largeTitle
    case title
    case headline
    case subheadline
    case body
    case callout
    case footnote
    case caption
    public static func == (a: SwiftUI.Font.TextStyle, b: SwiftUI.Font.TextStyle) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
    public typealias AllCases = [SwiftUI.Font.TextStyle]
    public static var allCases: [SwiftUI.Font.TextStyle] {
      get
    }
  }
  public enum Design : Swift.Hashable {
    case `default`
    @available(watchOS, unavailable)
    case serif
    case rounded
    @available(watchOS, unavailable)
    case monospaced
    public static func == (a: SwiftUI.Font.Design, b: SwiftUI.Font.Design) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct SelectionShapeStyle : SwiftUI.ShapeStyle {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@_functionBuilder public struct ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock() -> SwiftUI.EmptyView {
        return EmptyView()
    }
  @_alwaysEmitIntoClient public static func buildBlock<Content>(_ content: Content) -> Content where Content : SwiftUI.View {
        return content
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildIf<Content>(_ content: Content?) -> Content? where Content : SwiftUI.View {
        return content
    }
  @_alwaysEmitIntoClient public static func buildEither<TrueContent, FalseContent>(first: TrueContent) -> SwiftUI._ConditionalContent<TrueContent, FalseContent> where TrueContent : SwiftUI.View, FalseContent : SwiftUI.View {
    return .init(storage: .trueContent(first))
  }
  @_alwaysEmitIntoClient public static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> SwiftUI._ConditionalContent<TrueContent, FalseContent> where TrueContent : SwiftUI.View, FalseContent : SwiftUI.View {
    return .init(storage: .falseContent(second))
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _CircleLayout {
  public let radius: CoreGraphics.CGFloat
  public init(radius: CoreGraphics.CGFloat)
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func accessibility(hidden: Swift.Bool) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(label: SwiftUI.Text) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(value: SwiftUI.Text) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(hint: SwiftUI.Text) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(addTraits traits: SwiftUI.AccessibilityTraits) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(removeTraits traits: SwiftUI.AccessibilityTraits) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(identifier: Swift.String) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(selectionIdentifier: Swift.AnyHashable) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(sortPriority: Swift.Double) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(activationPoint: CoreGraphics.CGPoint) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
  public func accessibility(activationPoint: SwiftUI.UnitPoint) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent where Modifier == SwiftUI.AccessibilityAttachmentModifier {
  public func accessibility(hidden: Swift.Bool) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(label: SwiftUI.Text) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(value: SwiftUI.Text) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(hint: SwiftUI.Text) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(addTraits traits: SwiftUI.AccessibilityTraits) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(removeTraits traits: SwiftUI.AccessibilityTraits) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(identifier: Swift.String) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(selectionIdentifier: Swift.AnyHashable) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(sortPriority: Swift.Double) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(activationPoint: CoreGraphics.CGPoint) -> SwiftUI.ModifiedContent<Content, Modifier>
  public func accessibility(activationPoint: SwiftUI.UnitPoint) -> SwiftUI.ModifiedContent<Content, Modifier>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@usableFromInline
internal struct MenuDepthTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Int {
    get { 0 }
  }
  @usableFromInline
  internal typealias Value = Swift.Int
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Binding {
  public init<V>(_ base: SwiftUI.Binding<V>) where Value == V?
  public init?(_ base: SwiftUI.Binding<Value?>)
  public init<V>(_ base: SwiftUI.Binding<V>) where Value == Swift.AnyHashable, V : Swift.Hashable
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _navigationDestination<Content>(isPresented: SwiftUI.Binding<Swift.Bool>, @SwiftUI.ViewBuilder content: () -> Content) -> some SwiftUI.View where Content : SwiftUI.View
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _navigationDestination<Item, Content>(item: SwiftUI.Binding<Item?>, @SwiftUI.ViewBuilder content: @escaping (Item) -> Content) -> some SwiftUI.View where Item : Swift.Identifiable, Content : SwiftUI.View
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _navigationDestination(isPresented: SwiftUI.Binding<Swift.Bool>, storyboardName: Swift.String) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _navigationDestination<Item>(item: SwiftUI.Binding<Item?>, storyboardName: Swift.String) -> some SwiftUI.View where Item : Swift.Identifiable
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable public func fill<S>(_ content: S, style: SwiftUI.FillStyle = FillStyle()) -> some SwiftUI.View where S : SwiftUI.ShapeStyle {
        return _ShapeView(shape: self, style: content, fillStyle: style)
    }
  
  @inlinable public func fill(style: SwiftUI.FillStyle = FillStyle()) -> some SwiftUI.View {
        return _ShapeView(shape: self,
            style: ForegroundStyle(), fillStyle: style)
    }
  
  @inlinable public func stroke<S>(_ content: S, style: SwiftUI.StrokeStyle) -> some SwiftUI.View where S : SwiftUI.ShapeStyle {
        return stroke(style: style).fill(content)
    }
  
  @inlinable public func stroke<S>(_ content: S, lineWidth: CoreGraphics.CGFloat = 1) -> some SwiftUI.View where S : SwiftUI.ShapeStyle {
        return stroke(content, style: StrokeStyle(lineWidth: lineWidth))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  public var body: SwiftUI._ShapeView<Self, SwiftUI.ForegroundStyle> {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ShapeStyle where Self : SwiftUI.View, Self.Body == SwiftUI._ShapeView<SwiftUI.Rectangle, Self> {
  public var body: SwiftUI._ShapeView<SwiftUI.Rectangle, Self> {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ShapeView<Content, Style> : SwiftUI.View where Content : SwiftUI.Shape, Style : SwiftUI.ShapeStyle {
  public var shape: Content
  public var style: Style
  public var fillStyle: SwiftUI.FillStyle
  @inlinable public init(shape: Content, style: Style, fillStyle: SwiftUI.FillStyle = FillStyle()) {
        self.shape = shape
        self.style = style
        self.fillStyle = fillStyle
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._ShapeView<Content, Style>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _ProminentPopUpButtonStyle : SwiftUI._PopUpButtonStyle {
  public init()
  public func body(configuration: SwiftUI._ResolvedPopUpButton) -> SwiftUI._ProminentPopUpButtonStyle.Body
  public struct Body : SwiftUI.View {
    public var body: some SwiftUI.View {
      get
    }
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI26_ProminentPopUpButtonStyleV4BodyV4bodyQrvp", 0) 🦸
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _PlainPopUpButtonStyle : SwiftUI._PopUpButtonStyle {
  public init(showArrows: Swift.Bool)
  public func body(configuration: SwiftUI._ResolvedPopUpButton) -> SwiftUI._PlainPopUpButtonStyle.Body
  public struct Body : SwiftUI.View {
    public var body: some SwiftUI.View {
      get
    }
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI22_PlainPopUpButtonStyleV4BodyV4bodyQrvp", 0) 🦸
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _TexturedPopUpButtonStyle : SwiftUI._PopUpButtonStyle {
  public init()
  public func body(configuration: SwiftUI._ResolvedPopUpButton) -> SwiftUI._TexturedPopUpButtonStyle.Body
  public struct Body : SwiftUI.View {
    public var body: some SwiftUI.View {
      get
    }
    public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI25_TexturedPopUpButtonStyleV4BodyV4bodyQrvp", 0) 🦸
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  public init(_ name: Swift.String, bundle: Foundation.Bundle? = nil)
  public static var _mainNamedBundle: Foundation.Bundle?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _PreferenceReadingView<Key, Content> : SwiftUI.View where Key : SwiftUI.PreferenceKey, Content : SwiftUI.View {
  public var value: SwiftUI._PreferenceValue<Key>
  public var transform: (Key.Value) -> Content
  @inlinable public init(value: SwiftUI._PreferenceValue<Key>, transform: @escaping (Key.Value) -> Content) {
        self.value = value
        self.transform = transform
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._PreferenceReadingView<Key, Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PreferenceValue {
  @inlinable public func _force<T>(_ transform: @escaping (Key.Value) -> T) -> SwiftUI._PreferenceReadingView<Key, T> where T : SwiftUI.View {
        return _PreferenceReadingView(value: self, transform: transform)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  public func repeatCount(_ repeatCount: Swift.Int, autoreverses: Swift.Bool = true) -> SwiftUI.Animation
  public func repeatForever(autoreverses: Swift.Bool = true) -> SwiftUI.Animation
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ViewListInputs {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _ViewListOutputs {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension View {
  @available(watchOS, unavailable)
  public func tabItem<V>(@SwiftUI.ViewBuilder _ label: () -> V) -> some SwiftUI.View where V : SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct HStack<Content> : SwiftUI.View where Content : SwiftUI.View {
  @usableFromInline
  internal var _tree: SwiftUI._VariadicView.Tree<SwiftUI._HStackLayout, Content>
  @inlinable public init(alignment: SwiftUI.VerticalAlignment = .center, spacing: CoreGraphics.CGFloat? = nil, @SwiftUI.ViewBuilder content: () -> Content) {
        _tree = .init(
            root: _HStackLayout(alignment: alignment, spacing: spacing), content: content())
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.HStack<Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _HStackLayout {
  public var alignment: SwiftUI.VerticalAlignment
  public var spacing: CoreGraphics.CGFloat?
  @inlinable public init(alignment: SwiftUI.VerticalAlignment = .center, spacing: CoreGraphics.CGFloat? = nil) {
        self.alignment = alignment
        self.spacing = spacing
    }
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
public var _disableAnimations: Swift.Bool
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct AccessibilityTraits : Swift.SetAlgebra {
  public static let isButton: SwiftUI.AccessibilityTraits
  public static let isHeader: SwiftUI.AccessibilityTraits
  public static let isSelected: SwiftUI.AccessibilityTraits
  public static let isLink: SwiftUI.AccessibilityTraits
  public static let isSearchField: SwiftUI.AccessibilityTraits
  public static let isImage: SwiftUI.AccessibilityTraits
  public static let playsSound: SwiftUI.AccessibilityTraits
  public static let isKeyboardKey: SwiftUI.AccessibilityTraits
  public static let isStaticText: SwiftUI.AccessibilityTraits
  public static let isSummaryElement: SwiftUI.AccessibilityTraits
  public static let updatesFrequently: SwiftUI.AccessibilityTraits
  public static let startsMediaSession: SwiftUI.AccessibilityTraits
  public static let allowsDirectInteraction: SwiftUI.AccessibilityTraits
  public static let causesPageTurn: SwiftUI.AccessibilityTraits
  public static let isModal: SwiftUI.AccessibilityTraits
  public init()
  mutating public func formUnion(_ other: SwiftUI.AccessibilityTraits)
  public func intersection(_ other: SwiftUI.AccessibilityTraits) -> SwiftUI.AccessibilityTraits
  mutating public func formIntersection(_ other: SwiftUI.AccessibilityTraits)
  public func symmetricDifference(_ other: SwiftUI.AccessibilityTraits) -> SwiftUI.AccessibilityTraits
  mutating public func formSymmetricDifference(_ other: SwiftUI.AccessibilityTraits)
  public func contains(_ member: SwiftUI.AccessibilityTraits) -> Swift.Bool
  public func union(_ other: SwiftUI.AccessibilityTraits) -> SwiftUI.AccessibilityTraits
  mutating public func remove(_ member: SwiftUI.AccessibilityTraits) -> SwiftUI.AccessibilityTraits?
  mutating public func insert(_ newMember: SwiftUI.AccessibilityTraits) -> (inserted: Swift.Bool, memberAfterInsert: SwiftUI.AccessibilityTraits)
  mutating public func update(with newMember: SwiftUI.AccessibilityTraits) -> SwiftUI.AccessibilityTraits?
  public typealias Element = SwiftUI.AccessibilityTraits
  public typealias ArrayLiteralElement = SwiftUI.AccessibilityTraits
  public static func == (a: SwiftUI.AccessibilityTraits, b: SwiftUI.AccessibilityTraits) -> Swift.Bool
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct SquareBorderTextFieldStyle : SwiftUI.TextFieldStyle {
  public init()
  public func _body(configuration: SwiftUI.TextField<SwiftUI.SquareBorderTextFieldStyle._Label>) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI26SquareBorderTextFieldStyleV5_body13configurationQrAA0eF0VyAA01_efG5LabelVG_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func _defaultContext() -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _Rotation3DEffect : SwiftUI.GeometryEffect, Swift.Equatable {
  public var angle: SwiftUI.Angle
  public var axis: (x: CoreGraphics.CGFloat, y: CoreGraphics.CGFloat, z: CoreGraphics.CGFloat)
  public var anchor: SwiftUI.UnitPoint
  public var anchorZ: CoreGraphics.CGFloat
  public var perspective: CoreGraphics.CGFloat
  @inlinable public init(angle: SwiftUI.Angle, axis: (x: CoreGraphics.CGFloat, y: CoreGraphics.CGFloat, z: CoreGraphics.CGFloat), anchor: SwiftUI.UnitPoint = .center, anchorZ: CoreGraphics.CGFloat = 0, perspective: CoreGraphics.CGFloat = 1) {
        self.angle = angle
        self.axis = axis
        self.anchor = anchor
        self.anchorZ = anchorZ
        self.perspective = perspective
    }
  public func effectValue(size: CoreGraphics.CGSize) -> SwiftUI.ProjectionTransform
  public typealias AnimatableData = SwiftUI.AnimatablePair<SwiftUI.Angle.AnimatableData, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, SwiftUI.AnimatablePair<SwiftUI.UnitPoint.AnimatableData, SwiftUI.AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>>>>>>
  public var animatableData: SwiftUI._Rotation3DEffect.AnimatableData {
    get
    set
  }
  public static func == (lhs: SwiftUI._Rotation3DEffect, rhs: SwiftUI._Rotation3DEffect) -> Swift.Bool
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func rotation3DEffect(_ angle: SwiftUI.Angle, axis: (x: CoreGraphics.CGFloat, y: CoreGraphics.CGFloat, z: CoreGraphics.CGFloat), anchor: SwiftUI.UnitPoint = .center, anchorZ: CoreGraphics.CGFloat = 0, perspective: CoreGraphics.CGFloat = 1) -> some SwiftUI.View {
        return modifier(_Rotation3DEffect(
            angle: angle, axis: axis, anchor: anchor, anchorZ: anchorZ,
            perspective: perspective
        ))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Alignment : Swift.Equatable {
  public var horizontal: SwiftUI.HorizontalAlignment
  public var vertical: SwiftUI.VerticalAlignment
  @inlinable public init(horizontal: SwiftUI.HorizontalAlignment, vertical: SwiftUI.VerticalAlignment) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
  public static let center: SwiftUI.Alignment
  public static let leading: SwiftUI.Alignment
  public static let trailing: SwiftUI.Alignment
  public static let top: SwiftUI.Alignment
  public static let bottom: SwiftUI.Alignment
  public static let topLeading: SwiftUI.Alignment
  public static let topTrailing: SwiftUI.Alignment
  public static let bottomLeading: SwiftUI.Alignment
  public static let bottomTrailing: SwiftUI.Alignment
  public static func == (a: SwiftUI.Alignment, b: SwiftUI.Alignment) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct ZStack<Content> : SwiftUI.View where Content : SwiftUI.View {
  @usableFromInline
  internal var _tree: SwiftUI._VariadicView.Tree<SwiftUI._ZStackLayout, Content>
  @inlinable public init(alignment: SwiftUI.Alignment = .center, @SwiftUI.ViewBuilder content: () -> Content) {
        _tree = .init(
            root: _ZStackLayout(alignment: alignment), content: content())
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI.ZStack<Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ZStackLayout {
  public var alignment: SwiftUI.Alignment
  @inlinable public init(alignment: SwiftUI.Alignment = .center) {
        self.alignment = alignment
    }
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@usableFromInline
internal struct TouchBarItemPresenceTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: SwiftUI.TouchBarItemPresence? {
    get { nil }
  }
  @usableFromInline
  internal typealias Value = SwiftUI.TouchBarItemPresence?
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func touchBarItemPresence(_ presence: SwiftUI.TouchBarItemPresence) -> some SwiftUI.View {
        return _trait(TouchBarItemPresenceTraitKey.self, presence)
    }
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@usableFromInline
internal struct TouchBarItemPrincipalTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func touchBarItemPrincipal(_ principal: Swift.Bool = true) -> some SwiftUI.View {
        return _trait(TouchBarItemPrincipalTraitKey.self, principal)
    }
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@usableFromInline
internal struct TouchBarCustomizationLabelTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: SwiftUI.Text {
    get { Text("") }
  }
  @usableFromInline
  internal typealias Value = SwiftUI.Text
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @inlinable public func touchBarCustomizationLabel(_ label: SwiftUI.Text) -> some SwiftUI.View {
        return _trait(TouchBarCustomizationLabelTraitKey.self, label)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Angle {
  public var radians: Swift.Double
  @inlinable public var degrees: Swift.Double {
    get { return radians * (180.0 / .pi) }
    set { radians = newValue * (.pi / 180.0) }
  }
  @inlinable public init() {
        self.init(radians: 0.0)
    }
  @inlinable public init(radians: Swift.Double) {
        self.radians = radians
    }
  @inlinable public init(degrees: Swift.Double) {
        self.init(radians: degrees * (.pi / 180.0))
    }
  @inlinable public static func radians(_ radians: Swift.Double) -> SwiftUI.Angle {
        return Angle(radians: radians)
    }
  @inlinable public static func degrees(_ degrees: Swift.Double) -> SwiftUI.Angle {
        return Angle(degrees: degrees)
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Angle : Swift.Hashable, Swift.Comparable {
  @inlinable public static func < (lhs: SwiftUI.Angle, rhs: SwiftUI.Angle) -> Swift.Bool {
        return lhs.radians < rhs.radians
    }
  public static func == (a: SwiftUI.Angle, b: SwiftUI.Angle) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Angle : SwiftUI.Animatable, SwiftUI._VectorMath {
  public var animatableData: Swift.Double {
    get
    set
  }
  @inlinable public static var zero: SwiftUI.Angle {
    get {
        return .init()
    }
  }
  public typealias AnimatableData = Swift.Double
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _EnvironmentKeyTransformModifier<Value> : SwiftUI.ViewModifier, SwiftUI._GraphInputsModifier {
  public var keyPath: Swift.WritableKeyPath<SwiftUI.EnvironmentValues, Value>
  public var transform: (inout Value) -> Swift.Void
  @inlinable public init(keyPath: Swift.WritableKeyPath<SwiftUI.EnvironmentValues, Value>, transform: @escaping (inout Value) -> Swift.Void) {
        self.keyPath = keyPath
        self.transform = transform
    }
  public static func _makeInputs(modifier: SwiftUI._GraphValue<SwiftUI._EnvironmentKeyTransformModifier<Value>>, inputs: inout SwiftUI._GraphInputs)
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func transformEnvironment<V>(_ keyPath: Swift.WritableKeyPath<SwiftUI.EnvironmentValues, V>, transform: @escaping (inout V) -> Swift.Void) -> some SwiftUI.View {
        return modifier(_EnvironmentKeyTransformModifier(
            keyPath: keyPath, transform: transform))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct FetchedResults<Result> : Swift.RandomAccessCollection where Result : CoreData.NSFetchRequestResult {
  public var startIndex: Swift.Int {
    get
  }
  public var endIndex: Swift.Int {
    get
  }
  public subscript(position: Swift.Int) -> Result {
    get
  }
  public typealias Element = Result
  public typealias Index = Swift.Int
  public typealias SubSequence = Swift.Slice<SwiftUI.FetchedResults<Result>>
  public typealias Indices = Swift.Range<Swift.Int>
  public typealias Iterator = Swift.IndexingIterator<SwiftUI.FetchedResults<Result>>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@propertyWrapper public struct FetchRequest<Result> : SwiftUI.DynamicProperty where Result : CoreData.NSFetchRequestResult {
  public var wrappedValue: SwiftUI.FetchedResults<Result> {
    get
  }
  public init(entity: CoreData.NSEntityDescription, sortDescriptors: [Foundation.NSSortDescriptor], predicate: Foundation.NSPredicate? = nil, animation: SwiftUI.Animation? = nil)
  public init(fetchRequest: CoreData.NSFetchRequest<Result>, animation: SwiftUI.Animation? = nil)
  public init(fetchRequest: CoreData.NSFetchRequest<Result>, transaction: SwiftUI.Transaction)
  mutating public func update()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension FetchRequest where Result : CoreData.NSManagedObject {
  public init(sortDescriptors: [Foundation.NSSortDescriptor], predicate: Foundation.NSPredicate? = nil, animation: SwiftUI.Animation? = nil)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct PresentationMode {
  public var isPresented: Swift.Bool {
    get
    }
  mutating public func dismiss()
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
  public var presentationMode: SwiftUI.Binding<SwiftUI.PresentationMode> {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct ViewDimensions {
  public var width: CoreGraphics.CGFloat {
    get
  }
  public var height: CoreGraphics.CGFloat {
    get
  }
  public subscript(guide: SwiftUI.HorizontalAlignment) -> CoreGraphics.CGFloat {
    get
  }
  public subscript(guide: SwiftUI.VerticalAlignment) -> CoreGraphics.CGFloat {
    get
  }
  public subscript(explicit guide: SwiftUI.HorizontalAlignment) -> CoreGraphics.CGFloat? {
    get
  }
  public subscript(explicit guide: SwiftUI.VerticalAlignment) -> CoreGraphics.CGFloat? {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewDimensions : Swift.Equatable {
  public static func == (lhs: SwiftUI.ViewDimensions, rhs: SwiftUI.ViewDimensions) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func accessibilityScrollAction(_ handler: @escaping (SwiftUI.Edge) -> Swift.Void) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent where Modifier == SwiftUI.AccessibilityAttachmentModifier {
  public func accessibilityScrollAction(_ handler: @escaping (SwiftUI.Edge) -> Swift.Void) -> SwiftUI.ModifiedContent<Content, Modifier>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public init(_ cgImage: CoreGraphics.CGImage, scale: CoreGraphics.CGFloat, orientation: SwiftUI.Image.Orientation = .up, label: SwiftUI.Text)
  public init(decorative cgImage: CoreGraphics.CGImage, scale: CoreGraphics.CGFloat, orientation: SwiftUI.Image.Orientation = .up)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _CoordinateSpaceModifier<Name> : SwiftUI.ViewModifier, Swift.Equatable where Name : Swift.Hashable {
  public var name: Name
  @inlinable public init(name: Name) {
        self.name = name
    }
  public static func _makeViewInputs(modifier: SwiftUI._GraphValue<SwiftUI._CoordinateSpaceModifier<Name>>, inputs: inout SwiftUI._ViewInputs)
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._CoordinateSpaceModifier<Name>, b: SwiftUI._CoordinateSpaceModifier<Name>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func coordinateSpace<T>(name: T) -> some SwiftUI.View where T : Swift.Hashable {
        return modifier(_CoordinateSpaceModifier(name: name))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ContentShapeModifier<ContentShape> : SwiftUI.ViewModifier where ContentShape : SwiftUI.Shape {
  public var shape: ContentShape
  public var eoFill: Swift.Bool
  @inlinable public init(shape: ContentShape, eoFill: Swift.Bool = false) {
        self.shape = shape
        self.eoFill = eoFill
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._ContentShapeModifier<ContentShape>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func contentShape<S>(_ shape: S, eoFill: Swift.Bool = false) -> some SwiftUI.View where S : SwiftUI.Shape {
        return modifier(_ContentShapeModifier(shape: shape, eoFill: eoFill))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BenchmarkHost {
  public func viewForIdentifier<I, V>(_ identifier: I, _ type: V.Type) -> V? where I : Swift.Hashable, V : SwiftUI.View
  public func stateForIdentifier<I, S, V>(_ id: I, type _: S.Type, in _: V.Type) -> SwiftUI.Binding<S>? where I : Swift.Hashable, V : SwiftUI.View
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _PreferenceWritingModifier<Key> : SwiftUI.ViewModifier where Key : SwiftUI.PreferenceKey {
  public var value: Key.Value
  @inlinable public init(key _: Key.Type = Key.self, value: Key.Value) {
        self.value = value
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._PreferenceWritingModifier<Key>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PreferenceWritingModifier : Swift.Equatable where Key.Value : Swift.Equatable {
  public static func == (a: SwiftUI._PreferenceWritingModifier<Key>, b: SwiftUI._PreferenceWritingModifier<Key>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func preference<K>(key _: K.Type = K.self, value: K.Value) -> some SwiftUI.View where K : SwiftUI.PreferenceKey {
        return modifier(_PreferenceWritingModifier<K>(value: value))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func transaction(_ transform: @escaping (inout SwiftUI.Transaction) -> Swift.Void) -> some SwiftUI.View {
        return modifier(_TransactionModifier(transform: transform))
    }
  
  @inlinable public func animation(_ animation: SwiftUI.Animation?) -> some SwiftUI.View {
        return transaction { $0.animation = animation }
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier {
  @inlinable public func transaction(_ transform: @escaping (inout SwiftUI.Transaction) -> Swift.Void) -> some SwiftUI.ViewModifier {
        return _PushPopTransactionModifier(content: self, transform: transform)
    }
  
  @inlinable public func animation(_ animation: SwiftUI.Animation?) -> some SwiftUI.ViewModifier {
        return transaction { $0.animation = animation }
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _TransactionModifier : SwiftUI.ViewModifier, SwiftUI._GraphInputsModifier {
  public var transform: (inout SwiftUI.Transaction) -> Swift.Void
  @inlinable public init(transform: @escaping (inout SwiftUI.Transaction) -> Swift.Void) {
        self.transform = transform
    }
  public static func _makeInputs(modifier: SwiftUI._GraphValue<SwiftUI._TransactionModifier>, inputs: inout SwiftUI._GraphInputs)
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _PushPopTransactionModifier<Content> : SwiftUI.ViewModifier where Content : SwiftUI.ViewModifier {
  public var content: Content
  public var base: SwiftUI._TransactionModifier
  @inlinable public init(content: Content, transform: @escaping (inout SwiftUI.Transaction) -> Swift.Void) {
        self.content = content
        base = .init(transform: transform)
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._PushPopTransactionModifier<Content>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func accessibilityElement(children: SwiftUI.AccessibilityChildBehavior = .ignore) -> some SwiftUI.View
  
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public enum _DigitalCrownDecelerationRate {
  case immediate
  case fast
  case normal
  public static func == (a: SwiftUI._DigitalCrownDecelerationRate, b: SwiftUI._DigitalCrownDecelerationRate) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
public struct _DigitalCrownConfiguration {
  public var _isScrollIndicatorAlwaysOnScreen: Swift.Bool
  public var _onlyUseMinorDetents: Swift.Bool
  public var _decelerationRate: SwiftUI._DigitalCrownDecelerationRate
  public var _hapticsStrength: SwiftUI._CrownHapticsConfiguration.Notch.Strength
  public var isContinuous: Swift.Bool {
    get
    set
  }
  public var isHapticFeedbackEnabled: Swift.Bool
  public var rotationalSensitivity: SwiftUI.DigitalCrownRotationalSensitivity
  public init(minValue: Swift.Double, maxValue: Swift.Double, stride: Swift.Double.Stride? = nil)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _Detachable {
  static func matches<K>(key: K.Type) -> Swift.Bool where K : SwiftUI.PreferenceKey
  static var detachedProperties: SwiftUI._DetachableProperties { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _DetachableProperties : Swift.OptionSet {
  public let rawValue: Swift.UInt32
  public init(rawValue: Swift.UInt32)
  public static let position: SwiftUI._DetachableProperties
  public static let dimensions: SwiftUI._DetachableProperties
  public static let environment: SwiftUI._DetachableProperties
  public static let transaction: SwiftUI._DetachableProperties
  public static let layout: SwiftUI._DetachableProperties
  public static let all: SwiftUI._DetachableProperties
  public typealias Element = SwiftUI._DetachableProperties
  public typealias ArrayLiteralElement = SwiftUI._DetachableProperties
  public typealias RawValue = Swift.UInt32
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Detachable {
  public static var detachedProperties: SwiftUI._DetachableProperties {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _DetachedView<Detached, Content, Child> : SwiftUI.View where Detached : SwiftUI._Detachable, Content : SwiftUI.View, Child : SwiftUI.View {
  public var content: Content
  public var transform: (SwiftUI._DetachedPlaceholder<Detached>) -> Child
  @inlinable public init(content: Content, transform: @escaping (SwiftUI._DetachedPlaceholder<Detached>) -> Child) {
        self.content = content
        self.transform = transform
    }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._DetachedView<Detached, Content, Child>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func _detached<T, U>(with _: T.Type = T.self, _ transform: @escaping (SwiftUI._DetachedPlaceholder<T>) -> U) -> some SwiftUI.View where T : SwiftUI._Detachable, U : SwiftUI.View {
        return _DetachedView(content: self, transform: transform)
    }
  
  @inlinable public func _detached<T>(_ transform: @escaping (SwiftUI._DetachedPlaceholder<SwiftUI._EmptyDetached>) -> T) -> some SwiftUI.View where T : SwiftUI.View {
        return _DetachedView(content: self, transform: transform)
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _DetachedKey<Key> : SwiftUI._Detachable where Key : SwiftUI.PreferenceKey {
  public static func matches<K>(key: K.Type) -> Swift.Bool where K : SwiftUI.PreferenceKey
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _EmptyDetached : SwiftUI._Detachable {
  public static func matches<K>(key: K.Type) -> Swift.Bool where K : SwiftUI.PreferenceKey
  public static var detachedProperties: SwiftUI._DetachableProperties {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _DetachedPlaceholder<Detached> : SwiftUI.View where Detached : SwiftUI._Detachable {
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._DetachedPlaceholder<Detached>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _DynamicPropertyBuffer {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _GraphInputs {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _GraphInputsModifier {
  static func _makeInputs(modifier: SwiftUI._GraphValue<Self>, inputs: inout SwiftUI._GraphInputs)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func layoutPriority(_ value: Swift.Double) -> some SwiftUI.View {
        return _trait(LayoutPriorityTraitKey.self, value)
    }
  
}
@usableFromInline
internal struct LayoutPriorityTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Double {
    get { 0.0 }
  }
  @usableFromInline
  internal typealias Value = Swift.Double
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Group<Content> {
  @usableFromInline
  internal var content: Content
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Group : SwiftUI.View where Content : SwiftUI.View {
  public typealias Body = Swift.Never
  @inlinable public init(@SwiftUI.ViewBuilder content: () -> Content) {
        self.content = content()
    }
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI.Group<Content>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@usableFromInline
internal struct DepthTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Int {
    get { 0 }
  }
  @usableFromInline
  internal typealias Value = Swift.Int
}
@usableFromInline
internal struct IsSectionedTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@usableFromInline
internal struct IsEmptyViewTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@usableFromInline
internal struct IsSectionFooterTraitKey : SwiftUI._ViewTraitKey {
  @inlinable internal static var defaultValue: Swift.Bool {
    get { false }
  }
  @usableFromInline
  internal typealias Value = Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol TextFieldStyle {
  associatedtype _Body : SwiftUI.View
  func _body(configuration: SwiftUI.TextField<Self._Label>) -> Self._Body
  typealias _Label = SwiftUI._TextFieldStyleLabel
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _TextFieldStyleLabel : SwiftUI.View {
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func textFieldStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI.TextFieldStyle
  
}
@usableFromInline
@frozen internal struct PropertyList : Swift.CustomStringConvertible {
  @usableFromInline
  internal var elements: SwiftUI.PropertyList.Element?
  @inlinable internal init() { elements = nil }
  @usableFromInline
  internal var description: Swift.String {
    get
  }
}
extension PropertyList {
  @usableFromInline
  internal class Tracker {
    @objc @usableFromInline
    deinit
  }
}
extension PropertyList {
  @usableFromInline
  internal class Element : Swift.CustomStringConvertible {
    @usableFromInline
    internal var description: Swift.String {
      get
    }
    @objc @usableFromInline
    deinit
  }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol _PopUpButtonStyle {
  associatedtype Body : SwiftUI.View
  func body(configuration: SwiftUI._ResolvedPopUpButton) -> Self.Body
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _ResolvedPopUpButton : SwiftUI.View {
  public typealias Body = Swift.Never
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func _popUpButtonStyle<S>(_ style: S) -> some SwiftUI.View where S : SwiftUI._PopUpButtonStyle
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func mask<Mask>(_ mask: Mask) -> some SwiftUI.View where Mask : SwiftUI.View {
        return modifier(_MaskEffect(mask: mask))
    }
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _MaskEffect<Mask> : SwiftUI.ViewModifier where Mask : SwiftUI.View {
  public var mask: Mask
  @inlinable public init(mask: Mask) {
        self.mask = mask
    }
  public static func _makeView(modifier: SwiftUI._GraphValue<SwiftUI._MaskEffect<Mask>>, inputs: SwiftUI._ViewInputs, body: @escaping (SwiftUI._Graph, SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _MaskEffect : Swift.Equatable where Mask : Swift.Equatable {
  public static func == (a: SwiftUI._MaskEffect<Mask>, b: SwiftUI._MaskEffect<Mask>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen @propertyWrapper public struct Environment<Value> : SwiftUI.DynamicProperty {
  @usableFromInline
  @frozen internal enum Content {
    case keyPath(Swift.KeyPath<SwiftUI.EnvironmentValues, Value>)
    case value(Value)
  }
  @usableFromInline
  internal var content: SwiftUI.Environment<Value>.Content
  @inlinable public init(_ keyPath: Swift.KeyPath<SwiftUI.EnvironmentValues, Value>) {
        content = .keyPath(keyPath)
    }
  @inlinable public var wrappedValue: Value {
    get {
        switch content {
        case let .value(value):
            return value
        case let .keyPath(keyPath):
            // not bound to a view, return the default value.
            return EnvironmentValues()[keyPath : keyPath]
        }
    }
  }
  @usableFromInline
  internal func error() -> Swift.Never
  public static func _makeProperty<V>(in buffer: inout SwiftUI._DynamicPropertyBuffer, container: SwiftUI._GraphValue<V>, fieldOffset: Swift.Int, inputs: inout SwiftUI._GraphInputs)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen @propertyWrapper @dynamicMemberLookup public struct Binding<Value> {
  public var transaction: SwiftUI.Transaction
  internal var location: SwiftUI.AnyLocation<Value>
  fileprivate var _value: Value
  public init(get: @escaping () -> Value, set: @escaping (Value) -> Swift.Void)
  public init(get: @escaping () -> Value, set: @escaping (Value, SwiftUI.Transaction) -> Swift.Void)
  public static func constant(_ value: Value) -> SwiftUI.Binding<Value>
  public var wrappedValue: Value {
    get
    nonmutating set
  }
  public var projectedValue: SwiftUI.Binding<Value> {
    get
  }
  public subscript<Subject>(dynamicMember keyPath: Swift.WritableKeyPath<Value, Subject>) -> SwiftUI.Binding<Subject> {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Binding {
  public func transaction(_ transaction: SwiftUI.Transaction) -> SwiftUI.Binding<Value>
  public func animation(_ animation: SwiftUI.Animation? = .default) -> SwiftUI.Binding<Value>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Binding : SwiftUI.DynamicProperty {
  public static func _makeProperty<V>(in buffer: inout SwiftUI._DynamicPropertyBuffer, container: SwiftUI._GraphValue<V>, fieldOffset: Swift.Int, inputs: inout SwiftUI._GraphInputs)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Anchor.Source where Value == CoreGraphics.CGRect {
  public static func rect(_ r: CoreGraphics.CGRect) -> SwiftUI.Anchor<Value>.Source
  public static var bounds: SwiftUI.Anchor<CoreGraphics.CGRect>.Source {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol View {
  static func _makeView(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  static func _makeViewList(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  associatedtype Body : SwiftUI.View
  var body: Self.Body { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Never : SwiftUI.View {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _UnaryViewAdaptor<Content> : SwiftUI.View where Content : SwiftUI.View {
  public var content: Content
  @inlinable public init(_ content: Content) { self.content = content }
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._UnaryViewAdaptor<Content>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public typealias Body = Swift.Never
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension Image {
  public init(uiImage: UIKit.UIImage)
}
extension RangeReplaceableCollection where Self : Swift.MutableCollection {
  mutating public func remove(atOffsets offsets: Foundation.IndexSet)
}
extension MutableCollection {
  mutating public func move(fromOffsets source: Foundation.IndexSet, toOffset destination: Swift.Int)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __SimpleColumnLayout {
  public init()
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension Color {
  public init(_ color: UIKit.UIColor)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum AccessibilityAdjustmentDirection {
  case increment
  case decrement
  public static func == (a: SwiftUI.AccessibilityAdjustmentDirection, b: SwiftUI.AccessibilityAdjustmentDirection) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func accessibilityAdjustableAction(_ handler: @escaping (SwiftUI.AccessibilityAdjustmentDirection) -> Swift.Void) -> SwiftUI.ModifiedContent<Self, SwiftUI.AccessibilityAttachmentModifier>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent where Modifier == SwiftUI.AccessibilityAttachmentModifier {
  public func accessibilityAdjustableAction(_ handler: @escaping (SwiftUI.AccessibilityAdjustmentDirection) -> Swift.Void) -> SwiftUI.ModifiedContent<Content, Modifier>
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public struct StackNavigationViewStyle : SwiftUI.NavigationViewStyle {
  public init()
  public func _body(configuration: SwiftUI._NavigationViewStyleConfiguration) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI24StackNavigationViewStyleV5_body13configurationQrAA01_deF13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGPoint : SwiftUI.Animatable {
  public typealias AnimatableData = SwiftUI.AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>
  public var animatableData: CoreGraphics.CGPoint.AnimatableData {
    @inlinable get { return .init(x, y) }
    @inlinable set { (x, y) = newValue[] }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGSize : SwiftUI.Animatable {
  public typealias AnimatableData = SwiftUI.AnimatablePair<CoreGraphics.CGFloat, CoreGraphics.CGFloat>
  public var animatableData: CoreGraphics.CGSize.AnimatableData {
    @inlinable get { return .init(width, height) }
    @inlinable set { (width, height) = newValue[] }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGRect : SwiftUI.Animatable {
  public typealias AnimatableData = SwiftUI.AnimatablePair<CoreGraphics.CGPoint.AnimatableData, CoreGraphics.CGSize.AnimatableData>
  public var animatableData: CoreGraphics.CGRect.AnimatableData {
    @inlinable get {
            return .init(origin.animatableData, size.animatableData)
        }
    @inlinable set {
            (origin.animatableData, size.animatableData) = newValue[]
        }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Form<Content> : SwiftUI.View where Content : SwiftUI.View {
  public init(@SwiftUI.ViewBuilder content: () -> Content)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI4FormV4bodyQrvp", 0) 🦸<Content>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol VectorArithmetic : Swift.AdditiveArithmetic {
  mutating func scale(by rhs: Swift.Double)
  var magnitudeSquared: Swift.Double { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Float : SwiftUI.VectorArithmetic {
  @_transparent mutating public func scale(by rhs: Swift.Double) { self *= Float(rhs) }
  @_transparent public var magnitudeSquared: Swift.Double {
    get { return Double(self * self) }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Double : SwiftUI.VectorArithmetic {
  @_transparent mutating public func scale(by rhs: Swift.Double) { self *= rhs }
  @_transparent public var magnitudeSquared: Swift.Double {
    get { return self * self }
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGFloat : SwiftUI.VectorArithmetic {
  @_transparent mutating public func scale(by rhs: Swift.Double) { self *= CGFloat(rhs) }
  @_transparent public var magnitudeSquared: Swift.Double {
    get { return Double(self * self) }
  }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public protocol UIViewRepresentable : SwiftUI.View where Self.Body == Swift.Never {
  associatedtype UIViewType : UIKit.UIView
  func makeUIView(context: Self.Context) -> Self.UIViewType
  func updateUIView(_ uiView: Self.UIViewType, context: Self.Context)
  static func dismantleUIView(_ uiView: Self.UIViewType, coordinator: Self.Coordinator)
  associatedtype Coordinator = Swift.Void
  func makeCoordinator() -> Self.Coordinator
  func _identifiedViewTree(in uiView: Self.UIViewType) -> SwiftUI._IdentifiedViewTree
  func _overrideSizeThatFits(_ size: inout CoreGraphics.CGSize, in proposedSize: SwiftUI._ProposedSize, uiView: Self.UIViewType)
  func _overrideLayoutTraits(_ layoutTraits: inout SwiftUI._LayoutTraits, for uiView: Self.UIViewType)
  typealias Context = SwiftUI.UIViewRepresentableContext<Self>
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension UIViewRepresentable where Self.Coordinator == Swift.Void {
  public func makeCoordinator() -> Self.Coordinator
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension UIViewRepresentable {
  public static func dismantleUIView(_ uiView: Self.UIViewType, coordinator: Self.Coordinator)
  public static func _makeView(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public func _identifiedViewTree(in uiView: Self.UIViewType) -> SwiftUI._IdentifiedViewTree
  public func _overrideSizeThatFits(_ size: inout CoreGraphics.CGSize, in proposedSize: SwiftUI._ProposedSize, uiView: Self.UIViewType)
  public func _overrideLayoutTraits(_ layoutTraits: inout SwiftUI._LayoutTraits, for uiView: Self.UIViewType)
  public var body: Swift.Never {
    get
  }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public struct UIViewRepresentableContext<Representable> where Representable : SwiftUI.UIViewRepresentable {
  public let coordinator: Representable.Coordinator
  public var transaction: SwiftUI.Transaction {
    get
    }
  public var environment: SwiftUI.EnvironmentValues {
    get
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Button<Label> : SwiftUI.View where Label : SwiftUI.View {
  public init(action: @escaping () -> Swift.Void, @SwiftUI.ViewBuilder label: () -> Label)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI6ButtonV4bodyQrvp", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Button where Label == SwiftUI.PrimitiveButtonStyleConfiguration.Label {
  @available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
  public init(_ configuration: SwiftUI.PrimitiveButtonStyleConfiguration)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Button where Label == SwiftUI.Text {
  public init(_ titleKey: SwiftUI.LocalizedStringKey, action: @escaping () -> Swift.Void)
  @_disfavoredOverload public init<S>(_ title: S, action: @escaping () -> Swift.Void) where S : Swift.StringProtocol
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Picker<Label, SelectionValue, Content> : SwiftUI.View where Label : SwiftUI.View, SelectionValue : Swift.Hashable, Content : SwiftUI.View {
  public init(selection: SwiftUI.Binding<SelectionValue>, label: Label, @SwiftUI.ViewBuilder content: () -> Content)
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI6PickerV4bodyQrvp", 0) 🦸<Label, SelectionValue, Content>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Picker where Label == SwiftUI.Text {
  public init(_ titleKey: SwiftUI.LocalizedStringKey, selection: SwiftUI.Binding<SelectionValue>, @SwiftUI.ViewBuilder content: () -> Content)
  @_disfavoredOverload public init<S>(_ title: S, selection: SwiftUI.Binding<SelectionValue>, @SwiftUI.ViewBuilder content: () -> Content) where S : Swift.StringProtocol
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct EnvironmentValues : Swift.CustomStringConvertible {
  public init()
  public subscript<K>(key: K.Type) -> K.Value where K : SwiftUI.EnvironmentKey {
    get
    set
  }
  public var description: Swift.String {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol PreferenceKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
  static func reduce(value: inout Self.Value, nextValue: () -> Self.Value)
  static var _includesRemovedValues: Swift.Bool { get }
  static var _isReadableByHost: Swift.Bool { get }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreferenceKey where Self.Value : Swift.ExpressibleByNilLiteral {
  public static var defaultValue: Self.Value {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreferenceKey {
  public static var _includesRemovedValues: Swift.Bool {
    get
  }
  public static var _isReadableByHost: Swift.Bool {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Transaction {
  @usableFromInline
  internal var plist: SwiftUI.PropertyList
  @inlinable public init() {
        plist = PropertyList()
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public func withTransaction<Result>(_ transaction: SwiftUI.Transaction, _ body: () throws -> Result) rethrows -> Result
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public func withAnimation<Result>(_ animation: SwiftUI.Animation? = .default, _ body: () throws -> Result) rethrows -> Result
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  public func opacity(_ opacity: Swift.Double) -> SwiftUI.Color
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Anchor.Source where Value == CoreGraphics.CGPoint {
  public static func point(_ p: CoreGraphics.CGPoint) -> SwiftUI.Anchor<Value>.Source
  public static func unitPoint(_ p: SwiftUI.UnitPoint) -> SwiftUI.Anchor<Value>.Source
  public static var topLeading: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var top: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var topTrailing: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var leading: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var center: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var trailing: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var bottomLeading: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var bottom: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
  public static var bottomTrailing: SwiftUI.Anchor<CoreGraphics.CGPoint>.Source {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableContentProvider {
  public func root(scrollView: SwiftUI._ScrollView<Self>.Main) -> SwiftUI._ScrollViewRoot<Self>
}
public struct _ScrollViewRoot<P> : SwiftUI.View where P : SwiftUI._ScrollableContentProvider {
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI15_ScrollViewRootV4bodyQrvp", 0) 🦸<P>
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct PullDownMenuButtonStyle : SwiftUI.MenuButtonStyle {
  public init()
  public func _body(configuration: SwiftUI.PullDownMenuButtonStyle._Configuration) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI23PullDownMenuButtonStyleV5_body13configurationQrAA01_efG13ConfigurationV_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct BorderlessPullDownMenuButtonStyle : SwiftUI.MenuButtonStyle {
  public init()
  public func _body(configuration: SwiftUI.BorderlessPullDownMenuButtonStyle._Configuration) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI33BorderlessPullDownMenuButtonStyleV5_body13configurationQrAA01_fgH13ConfigurationV_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct BorderlessButtonMenuButtonStyle : SwiftUI.MenuButtonStyle {
  public init()
  public func _body(configuration: SwiftUI.BorderlessButtonMenuButtonStyle._Configuration) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI020BorderlessButtonMenuD5StyleV5_body13configurationQrAA01_edF13ConfigurationV_tF", 0) 🦸
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct _TexturedPullDownMenuButtonStyle : SwiftUI.MenuButtonStyle {
  public init()
  public func _body(configuration: SwiftUI._TexturedPullDownMenuButtonStyle._Configuration) -> some SwiftUI.View
  
  public typealias _Body = @_opaqueReturnTypeOf("$s7SwiftUI32_TexturedPullDownMenuButtonStyleV5_body13configurationQrAA01_fgH13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol EnvironmentKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDrop(of supportedTypes: [Swift.String], isTargeted: SwiftUI.Binding<Swift.Bool>?, perform action: @escaping ([Foundation.NSItemProvider]) -> Swift.Bool) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDrop(of supportedTypes: [Swift.String], isTargeted: SwiftUI.Binding<Swift.Bool>?, perform action: @escaping ([Foundation.NSItemProvider], CoreGraphics.CGPoint) -> Swift.Bool) -> some SwiftUI.View
  
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func onDrop(of supportedTypes: [Swift.String], delegate: SwiftUI.DropDelegate) -> some SwiftUI.View
  
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DropInfo {
  public var location: CoreGraphics.CGPoint {
    get
  }
  public func hasItemsConforming(to types: [Swift.String]) -> Swift.Bool
  public func itemProviders(for types: [Swift.String]) -> [Foundation.NSItemProvider]
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol DropDelegate {
  func validateDrop(info: SwiftUI.DropInfo) -> Swift.Bool
  func performDrop(info: SwiftUI.DropInfo) -> Swift.Bool
  func dropEntered(info: SwiftUI.DropInfo)
  func dropUpdated(info: SwiftUI.DropInfo) -> SwiftUI.DropProposal?
  func dropExited(info: SwiftUI.DropInfo)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DropDelegate {
  public func validateDrop(info: SwiftUI.DropInfo) -> Swift.Bool
  public func dropEntered(info: SwiftUI.DropInfo)
  public func dropUpdated(info: SwiftUI.DropInfo) -> SwiftUI.DropProposal?
  public func dropExited(info: SwiftUI.DropInfo)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public enum DropOperation {
  case cancel
  case forbidden
  case copy
  case move
  public static func == (a: SwiftUI.DropOperation, b: SwiftUI.DropOperation) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
  public func hash(into hasher: inout Swift.Hasher)
}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DropProposal {
  public let operation: SwiftUI.DropOperation
  public init(operation: SwiftUI.DropOperation)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Anchor<Value> {
  fileprivate let box: SwiftUI.AnchorValueBoxBase<Value>
  @frozen public struct Source {
    private var box: SwiftUI.AnchorBoxBase<Value>
  }
}
@usableFromInline
internal class AnchorBoxBase<T> {
  @objc @usableFromInline
  deinit
}
@usableFromInline
internal class AnchorValueBoxBase<T> {
  @objc @usableFromInline
  deinit
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Anchor.Source {
  public init<T>(_ array: [SwiftUI.Anchor<T>.Source]) where Value == [T]
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Anchor.Source {
  public init<T>(_ anchor: SwiftUI.Anchor<T>.Source?) where Value == T?
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol _VectorMath : SwiftUI.Animatable {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VectorMath {
  @inlinable public var magnitude: Swift.Double {
    get {
        return animatableData.magnitudeSquared.squareRoot()
    }
  }
  @inlinable mutating public func negate() {
        animatableData = .zero - animatableData
    }
  @inlinable prefix public static func - (operand: Self) -> Self {
        var result = operand
        result.negate()
        return result
    }
  @inlinable public static func += (lhs: inout Self, rhs: Self) {
        lhs.animatableData += rhs.animatableData
    }
  @inlinable public static func + (lhs: Self, rhs: Self) -> Self {
        var result = lhs
        result += rhs
        return result
    }
  @inlinable public static func -= (lhs: inout Self, rhs: Self) {
        lhs.animatableData -= rhs.animatableData
    }
  @inlinable public static func - (lhs: Self, rhs: Self) -> Self {
        var result = lhs
        result -= rhs
        return result
    }
  @inlinable public static func *= (lhs: inout Self, rhs: Swift.Double) {
        lhs.animatableData.scale(by: rhs)
    }
  @inlinable public static func * (lhs: Self, rhs: Swift.Double) -> Self {
        var result = lhs
        result *= rhs
        return result
    }
  @inlinable public static func /= (lhs: inout Self, rhs: Swift.Double) {
        lhs *= 1 / rhs
    }
  @inlinable public static func / (lhs: Self, rhs: Swift.Double) -> Self {
        var result = lhs
        result /= rhs
        return result
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ProjectionEffect : SwiftUI.GeometryEffect, Swift.Equatable {
  public var transform: SwiftUI.ProjectionTransform
  @inlinable public init(transform: SwiftUI.ProjectionTransform) {
        self.transform = transform
    }
  public func effectValue(size: CoreGraphics.CGSize) -> SwiftUI.ProjectionTransform
  public typealias Body = Swift.Never
  public static func == (a: SwiftUI._ProjectionEffect, b: SwiftUI._ProjectionEffect) -> Swift.Bool
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func projectionEffect(_ transform: SwiftUI.ProjectionTransform) -> some SwiftUI.View {
        return modifier(_ProjectionEffect(transform: transform))
    }
  
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
public protocol _PerformanceTest {
  var name: Swift.String { get }
  func runTest(host: SwiftUI._BenchmarkHost, options: [Swift.AnyHashable : Any])
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension __App {
  public static func _registerPerformanceTests(_ tests: [SwiftUI._PerformanceTest])
}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension _BenchmarkHost {
  public func _started(test: SwiftUI._PerformanceTest)
  public func _finished(test: SwiftUI._PerformanceTest)
  public func _failed(test: SwiftUI._PerformanceTest)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __SpiralLayout {
  public typealias AnimatableData = SwiftUI.Angle.AnimatableData
  public init(spacing: SwiftUI.Angle)
  public var animatableData: SwiftUI.__SpiralLayout.AnimatableData {
    get
    set
  }
  public typealias Body = Swift.Never
}
@usableFromInline
internal enum Log {
  @usableFromInline
  internal static var runtimeIssuesLog: os.OSLog
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _Graph {
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct _GraphValue<Value> : Swift.Equatable {
  public subscript<U>(keyPath: Swift.KeyPath<Value, U>) -> SwiftUI._GraphValue<U> {
    get
  }
  public static func == (a: SwiftUI._GraphValue<Value>, b: SwiftUI._GraphValue<Value>) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _ConditionalContent<TrueContent, FalseContent> {
  @usableFromInline
  @frozen internal enum Storage {
    case trueContent(TrueContent)
    case falseContent(FalseContent)
  }
  @usableFromInline
  internal let storage: SwiftUI._ConditionalContent<TrueContent, FalseContent>.Storage
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ConditionalContent : SwiftUI.View where TrueContent : SwiftUI.View, FalseContent : SwiftUI.View {
  public typealias Body = Swift.Never
  @usableFromInline
  internal init(storage: SwiftUI._ConditionalContent<TrueContent, FalseContent>.Storage)
  public static func _makeView(view: SwiftUI._GraphValue<SwiftUI._ConditionalContent<TrueContent, FalseContent>>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<SwiftUI._ConditionalContent<TrueContent, FalseContent>>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
public struct BorderedButtonStyle : SwiftUI.PrimitiveButtonStyle {
  public init()
  public func makeBody(configuration: SwiftUI.BorderedButtonStyle.Configuration) -> some SwiftUI.View
  
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI19BorderedButtonStyleV8makeBody13configurationQrAA09PrimitivedE13ConfigurationV_tF", 0) 🦸
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum CoordinateSpace {
  case global
  case local
  case named(Swift.AnyHashable)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension CoordinateSpace {
  public var isGlobal: Swift.Bool {
    get
  }
  public var isLocal: Swift.Bool {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension CoordinateSpace : Swift.Equatable, Swift.Hashable {
  public func hash(into hasher: inout Swift.Hasher)
  public static func == (lhs: SwiftUI.CoordinateSpace, rhs: SwiftUI.CoordinateSpace) -> Swift.Bool
  public var hashValue: Swift.Int {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct __RadialLayout {
  public var radius: CoreGraphics.CGFloat
  public var size: CoreGraphics.CGSize
  public init(radius: CoreGraphics.CGFloat, size: CoreGraphics.CGSize)
  public typealias AnimatableData = SwiftUI.EmptyAnimatableData
  public typealias Body = Swift.Never
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct Animation {
  internal var box: SwiftUI.AnimationBoxBase
  public static func == (lhs: SwiftUI.Animation, rhs: SwiftUI.Animation) -> Swift.Bool
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation : Swift.CustomStringConvertible, Swift.CustomDebugStringConvertible, Swift.CustomReflectable {
  public var description: Swift.String {
    get
  }
  public var debugDescription: Swift.String {
    get
  }
  public var customMirror: Swift.Mirror {
    get
  }
}
@usableFromInline
internal class AnimationBoxBase {
  @objc @usableFromInline
  deinit
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DatePicker<Label> : SwiftUI.View where Label : SwiftUI.View {
  public typealias Components = SwiftUI.DatePickerComponents
  public var body: some SwiftUI.View {
    get
  }
  public typealias Body = @_opaqueReturnTypeOf("$s7SwiftUI10DatePickerV4bodyQrvp", 0) 🦸<Label>
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DatePicker {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(selection: SwiftUI.Binding<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date], @SwiftUI.ViewBuilder label: () -> Label)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.ClosedRange<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date], @SwiftUI.ViewBuilder label: () -> Label)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.PartialRangeFrom<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date], @SwiftUI.ViewBuilder label: () -> Label)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.PartialRangeThrough<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date], @SwiftUI.ViewBuilder label: () -> Label)
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension DatePicker where Label == SwiftUI.Text {
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: SwiftUI.LocalizedStringKey, selection: SwiftUI.Binding<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date])
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: SwiftUI.LocalizedStringKey, selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.ClosedRange<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date])
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: SwiftUI.LocalizedStringKey, selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.PartialRangeFrom<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date])
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init(_ titleKey: SwiftUI.LocalizedStringKey, selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.PartialRangeThrough<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date])
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload public init<S>(_ title: S, selection: SwiftUI.Binding<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date]) where S : Swift.StringProtocol
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<S>(_ title: S, selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.ClosedRange<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date]) where S : Swift.StringProtocol
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<S>(_ title: S, selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.PartialRangeFrom<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date]) where S : Swift.StringProtocol
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public init<S>(_ title: S, selection: SwiftUI.Binding<Foundation.Date>, in range: Swift.PartialRangeThrough<Foundation.Date>, displayedComponents: SwiftUI.DatePicker<Label>.Components = [.hourAndMinute, .date]) where S : Swift.StringProtocol
}
@available(iOS 13.0, OSX 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct DatePickerComponents : Swift.OptionSet {
  public let rawValue: Swift.UInt
  public init(rawValue: Swift.UInt)
  public static let hourAndMinute: SwiftUI.DatePickerComponents
  public static let date: SwiftUI.DatePickerComponents
  public typealias Element = SwiftUI.DatePickerComponents
  public typealias RawValue = Swift.UInt
  public typealias ArrayLiteralElement = SwiftUI.DatePickerComponents
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct _StrokedShape<S> : SwiftUI.Shape where S : SwiftUI.Shape {
  public var shape: S
  public var style: SwiftUI.StrokeStyle
  @inlinable public init(shape: S, style: SwiftUI.StrokeStyle) {
        self.shape = shape
        self.style = style
    }
  public func path(in rect: CoreGraphics.CGRect) -> SwiftUI.Path
  public typealias AnimatableData = SwiftUI.AnimatablePair<S.AnimatableData, SwiftUI.StrokeStyle.AnimatableData>
  public var animatableData: SwiftUI._StrokedShape<S>.AnimatableData {
    get
    set
  }
  public typealias Body = SwiftUI._ShapeView<SwiftUI._StrokedShape<S>, SwiftUI.ForegroundStyle>
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable public func stroke(style: SwiftUI.StrokeStyle) -> some SwiftUI.Shape {
        return _StrokedShape(shape: self, style: style)
    }
  
  @inlinable public func stroke(lineWidth: CoreGraphics.CGFloat = 1) -> some SwiftUI.Shape {
        return stroke(style: StrokeStyle(lineWidth: lineWidth))
    }
  
}
@available(iOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  public func statusBar(hidden: Swift.Bool) -> some SwiftUI.View
  
  @available(OSX, unavailable)
  @available(tvOS, unavailable)
  public func _statusBar(hidden: Swift.Bool) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen @propertyWrapper public struct EnvironmentObject<ObjectType> : SwiftUI.DynamicProperty where ObjectType : Combine.ObservableObject {
  @dynamicMemberLookup @frozen public struct Wrapper {
    internal let root: ObjectType
    public subscript<Subject>(dynamicMember keyPath: Swift.ReferenceWritableKeyPath<ObjectType, Subject>) -> SwiftUI.Binding<Subject> {
      get
    }
  }
  @inlinable public var wrappedValue: ObjectType {
    get {
      guard let store = _store else { error() }
      return store
    }
  }
  @usableFromInline
  internal var _store: ObjectType?
  @usableFromInline
  internal var _seed: Swift.Int = 0
  public var projectedValue: SwiftUI.EnvironmentObject<ObjectType>.Wrapper {
    get
  }
  @usableFromInline
  internal func error() -> Swift.Never
  public init()
  public static func _makeProperty<V>(in buffer: inout SwiftUI._DynamicPropertyBuffer, container: SwiftUI._GraphValue<V>, fieldOffset: Swift.Int, inputs: inout SwiftUI._GraphInputs)
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable public func environmentObject<B>(_ bindable: B) -> some SwiftUI.View where B : Combine.ObservableObject {
        return environment(B.environmentStore, bindable)
    }
  
}
extension ObservableObject {
  @usableFromInline
  internal static var environmentStore: Swift.WritableKeyPath<SwiftUI.EnvironmentValues, Self?> {
    get
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Alert {
  public init(title: SwiftUI.Text, message: SwiftUI.Text? = nil, dismissButton: SwiftUI.Alert.Button? = nil)
  public init(title: SwiftUI.Text, message: SwiftUI.Text? = nil, primaryButton: SwiftUI.Alert.Button, secondaryButton: SwiftUI.Alert.Button)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(OSX, unavailable)
  public static func sideBySideButtons(title: SwiftUI.Text, message: SwiftUI.Text? = nil, primaryButton: SwiftUI.Alert.Button, secondaryButton: SwiftUI.Alert.Button) -> SwiftUI.Alert
  public struct Button {
    public static func `default`(_ label: SwiftUI.Text, action: (() -> Swift.Void)? = {}) -> SwiftUI.Alert.Button
    public static func cancel(_ label: SwiftUI.Text, action: (() -> Swift.Void)? = {}) -> SwiftUI.Alert.Button
    public static func cancel(_ action: (() -> Swift.Void)? = {}) -> SwiftUI.Alert.Button
    public static func destructive(_ label: SwiftUI.Text, action: (() -> Swift.Void)? = {}) -> SwiftUI.Alert.Button
  }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func alert<Item>(item: SwiftUI.Binding<Item?>, content: (Item) -> SwiftUI.Alert) -> some SwiftUI.View where Item : Swift.Identifiable
  
  public func alert(isPresented: SwiftUI.Binding<Swift.Bool>, content: () -> SwiftUI.Alert) -> some SwiftUI.View
  
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  public enum ResizingMode {
    case tile
    case stretch
    public static func == (a: SwiftUI.Image.ResizingMode, b: SwiftUI.Image.ResizingMode) -> Swift.Bool
    public var hashValue: Swift.Int {
      get
    }
    public func hash(into hasher: inout Swift.Hasher)
  }
  public func resizable(capInsets: SwiftUI.EdgeInsets = EdgeInsets(), resizingMode: SwiftUI.Image.ResizingMode = .stretch) -> SwiftUI.Image
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> SwiftUI.TupleView<(C0, C1)> where C0 : SwiftUI.View, C1 : SwiftUI.View {
        return .init((c0, c1))
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> SwiftUI.TupleView<(C0, C1, C2)> where C0 : SwiftUI.View, C1 : SwiftUI.View, C2 : SwiftUI.View {
        return .init((c0, c1, c2))
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> SwiftUI.TupleView<(C0, C1, C2, C3)> where C0 : SwiftUI.View, C1 : SwiftUI.View, C2 : SwiftUI.View, C3 : SwiftUI.View {
        return .init((c0, c1, c2, c3))
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> SwiftUI.TupleView<(C0, C1, C2, C3, C4)> where C0 : SwiftUI.View, C1 : SwiftUI.View, C2 : SwiftUI.View, C3 : SwiftUI.View, C4 : SwiftUI.View {
        return .init((c0, c1, c2, c3, c4))
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> SwiftUI.TupleView<(C0, C1, C2, C3, C4, C5)> where C0 : SwiftUI.View, C1 : SwiftUI.View, C2 : SwiftUI.View, C3 : SwiftUI.View, C4 : SwiftUI.View, C5 : SwiftUI.View {
        return .init((c0, c1, c2, c3, c4, c5))
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> SwiftUI.TupleView<(C0, C1, C2, C3, C4, C5, C6)> where C0 : SwiftUI.View, C1 : SwiftUI.View, C2 : SwiftUI.View, C3 : SwiftUI.View, C4 : SwiftUI.View, C5 : SwiftUI.View, C6 : SwiftUI.View {
        return .init((c0, c1, c2, c3, c4, c5, c6))
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> SwiftUI.TupleView<(C0, C1, C2, C3, C4, C5, C6, C7)> where C0 : SwiftUI.View, C1 : SwiftUI.View, C2 : SwiftUI.View, C3 : SwiftUI.View, C4 : SwiftUI.View, C5 : SwiftUI.View, C6 : SwiftUI.View, C7 : SwiftUI.View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7))
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> SwiftUI.TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8)> where C0 : SwiftUI.View, C1 : SwiftUI.View, C2 : SwiftUI.View, C3 : SwiftUI.View, C4 : SwiftUI.View, C5 : SwiftUI.View, C6 : SwiftUI.View, C7 : SwiftUI.View, C8 : SwiftUI.View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7, c8))
    }
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> SwiftUI.TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> where C0 : SwiftUI.View, C1 : SwiftUI.View, C2 : SwiftUI.View, C3 : SwiftUI.View, C4 : SwiftUI.View, C5 : SwiftUI.View, C6 : SwiftUI.View, C7 : SwiftUI.View, C8 : SwiftUI.View, C9 : SwiftUI.View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7, c8, c9))
    }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public protocol UIViewControllerRepresentable : SwiftUI.View where Self.Body == Swift.Never {
  associatedtype UIViewControllerType : UIKit.UIViewController
  func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType
  func updateUIViewController(_ uiViewController: Self.UIViewControllerType, context: Self.Context)
  static func dismantleUIViewController(_ uiViewController: Self.UIViewControllerType, coordinator: Self.Coordinator)
  associatedtype Coordinator = Swift.Void
  func makeCoordinator() -> Self.Coordinator
  func _identifiedViewTree(in uiViewController: Self.UIViewControllerType) -> SwiftUI._IdentifiedViewTree
  typealias Context = SwiftUI.UIViewControllerRepresentableContext<Self>
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension UIViewControllerRepresentable where Self.Coordinator == Swift.Void {
  public func makeCoordinator() -> Self.Coordinator
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension UIViewControllerRepresentable {
  public static func dismantleUIViewController(_ uiViewController: Self.UIViewControllerType, coordinator: Self.Coordinator)
  public static func _makeView(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewInputs) -> SwiftUI._ViewOutputs
  public static func _makeViewList(view: SwiftUI._GraphValue<Self>, inputs: SwiftUI._ViewListInputs) -> SwiftUI._ViewListOutputs
  public func _identifiedViewTree(in uiViewController: Self.UIViewControllerType) -> SwiftUI._IdentifiedViewTree
  public var body: Swift.Never {
    get
  }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
public struct UIViewControllerRepresentableContext<Representable> where Representable : SwiftUI.UIViewControllerRepresentable {
  public let coordinator: Representable.Coordinator
  public var transaction: SwiftUI.Transaction {
    get
    }
  public var environment: SwiftUI.EnvironmentValues {
    get
    }
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
open class _UIHostingView<Content> : UIKit.UIView where Content : SwiftUI.View {
  required public init(rootView: Content)
  @objc required dynamic public init?(coder aDecoder: Foundation.NSCoder)
  @objc deinit
  @objc override dynamic open func didMoveToWindow()
  @objc override dynamic open func didMoveToSuperview()
  @objc override dynamic open func layoutSubviews()
  @objc override dynamic open var frame: CoreGraphics.CGRect {
    @objc get
    @objc set
  }
  @objc override dynamic open var bounds: CoreGraphics.CGRect {
    @objc get
    @objc set
  }
  @objc override dynamic open func tintColorDidChange()
  @objc override dynamic open func traitCollectionDidChange(_ previousTraitCollection: UIKit.UITraitCollection?)
  @objc override dynamic open func safeAreaInsetsDidChange()
  @objc override dynamic open var safeAreaInsets: UIKit.UIEdgeInsets {
    @objc get
  }
  @objc override dynamic open var backgroundColor: UIKit.UIColor? {
    @objc get
    @objc set
  }
  @objc override dynamic open func sizeThatFits(_ size: CoreGraphics.CGSize) -> CoreGraphics.CGSize
  @objc override dynamic open var accessibilityElements: [Any]? {
    @objc get
    @objc set
  }
  @available(iOS 13.0, tvOS 13.0, *)
  @available(OSX, unavailable)
  @available(watchOS, unavailable)
  final public func _viewDebugData() -> [SwiftUI._ViewDebug.Data]
  @objc override dynamic open var canBecomeFirstResponder: Swift.Bool {
    @objc get
  }
  @objc override dynamic public init(frame: CoreGraphics.CGRect)
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension _UIHostingView {
  public func _renderForTest(interval: Swift.Double)
  public func _performScrollTest(startOffset: CoreGraphics.CGFloat = 0.0, iterations: Swift.Int = 0, delta: CoreGraphics.CGFloat = 0.0, length: CoreGraphics.CGFloat = 0.0, completion: (() -> Swift.Void)? = nil)
}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
open class UIHostingController<Content> : UIKit.UIViewController where Content : SwiftUI.View {
  public init(rootView: Content)
  public init?(coder aDecoder: Foundation.NSCoder, rootView: Content)
  @objc required dynamic public init?(coder aDecoder: Foundation.NSCoder)
  @objc override dynamic open func viewWillAppear(_ animated: Swift.Bool)
  public var rootView: Content {
    get
    set
  }
  public func sizeThatFits(in size: CoreGraphics.CGSize) -> CoreGraphics.CGSize
  public func _render(seconds: Swift.Double)
  public func _forEachIdentifiedView(body: (SwiftUI._IdentifiedViewProxy) -> Swift.Void)
  public var _disableSafeArea: Swift.Bool {
    get
    set
  }
  @objc override dynamic open var preferredStatusBarStyle: UIKit.UIStatusBarStyle {
    @objc get
  }
  @objc override dynamic open var prefersStatusBarHidden: Swift.Bool {
    @objc get
  }
  @objc override dynamic open var preferredStatusBarUpdateAnimation: UIKit.UIStatusBarAnimation {
    @objc get
  }
  @objc override dynamic public init(nibName nibNameOrNil: Swift.String?, bundle nibBundleOrNil: Foundation.Bundle?)
  @objc deinit
}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ButtonGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._TraitWritingModifier : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension SwiftUI.LongPressGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Animation : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image : SwiftUI.View {}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension SwiftUI.Image.Scale : Swift.Equatable {}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension SwiftUI.Image.Scale : Swift.Hashable {}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.UserInterfaceSizeClass : Swift.Equatable {}
@available(iOS 13.0, *)
@available(OSX, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.UserInterfaceSizeClass : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Swift.Never : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.EmptyView : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.SubscriptionView : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.SequenceGesture : SwiftUI.Gesture {}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension SwiftUI._UIHostingView : SwiftUI._BenchmarkHost {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.EmptyModifier : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__GridLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__GridLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__GridLayout.FillDirection : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__GridLayout.FillDirection : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._OverlayLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._OverlayLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._OverlayLayout : SwiftUI._VariadicView_ViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.SimultaneousGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color.RGBColorSpace : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color.RGBColorSpace : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__BedtimeTickLabelsLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__BedtimeTickLabelsLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__ViewRemovalLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__ViewRemovalLayout : SwiftUI.Animatable {}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.MoveCommandDirection : Swift.Equatable {}
@available(OSX 10.15, tvOS 13.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.MoveCommandDirection : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._AspectRatioLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._AspectRatioLayout : SwiftUI.ViewModifier {}
extension SwiftUI._FixedSizeLayout : SwiftUI.Animatable {}
extension SwiftUI._FixedSizeLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ForegroundStyle : SwiftUI.ShapeStyle {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__FourUpLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__FourUpLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._PaddingLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._PaddingLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._VAlignment : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._VAlignment : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._AlignmentLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._AlignmentLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._PositionLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._PositionLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._SafeAreaIgnoringLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._SafeAreaIgnoringLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__IconLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__IconLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension SwiftUI.DragGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._BlurEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._BlurEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._BrightnessEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._BrightnessEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ColorInvertEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ColorInvertEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.HorizontalAlignment : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.VerticalAlignment : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image.Orientation : Swift.RawRepresentable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ColorMultiplyEffect._Resolved : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ColorMultiplyEffect._Resolved : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ContrastEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ContrastEffect : SwiftUI.ViewModifier {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension SwiftUI.DigitalCrownRotationalSensitivity : Swift.Equatable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension SwiftUI.DigitalCrownRotationalSensitivity : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._GrayscaleEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._GrayscaleEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._HueRotationEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._HueRotationEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._LuminanceToAlphaEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._LuminanceToAlphaEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._SaturationEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._SaturationEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._OpacityEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._OpacityEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__ResizableImagesExampleLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__ResizableImagesExampleLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._BlendModeEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._BlendModeEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ColorRenderingMode : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ColorRenderingMode : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.AnyGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._CompositingGroupEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._CompositingGroupEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.PreviewPlatform : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.PreviewPlatform : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ClipEffect : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ClipEffect : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ShadowEffect._Resolved : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ShadowEffect._Resolved : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._AligningContentProvider.AligningContentProviderLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._AligningContentProvider.AligningContentProviderLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._PagingViewConfig.Direction : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._PagingViewConfig.Direction : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image.TemplateRenderingMode : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ColorScheme : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ColorScheme : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ColorSchemeContrast : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ColorSchemeContrast : Swift.Hashable {}
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.ControlActiveState : Swift.Hashable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension SwiftUI._DeviceVariant : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._FrameLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._FrameLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._FlexFrameLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._FlexFrameLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.AccessibilityAttachmentModifier : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Edge : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Edge : Swift.RawRepresentable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.RoundedCornerStyle : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.BlendMode : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image.Interpolation : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
extension SwiftUI._NavigationViewStyleConfiguration.Content : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.TupleView : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ViewModifier_Content : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__FluidSpringTestLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__FluidSpringTestLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__SetFrameLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__SetFrameLayout : SwiftUI.ViewModifier {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._VStackLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._VStackLayout : SwiftUI.Animatable {}
extension SwiftUI._VStackLayout : SwiftUI._VariadicView_ViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._EndedGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ChangedGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Spacer : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._HSpacer : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._VSpacer : SwiftUI.View {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._MapGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ExclusiveGesture : SwiftUI.Gesture {}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension SwiftUI.NavigationBarItem.TitleDisplayMode : Swift.Equatable {}
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(OSX, unavailable)
extension SwiftUI.NavigationBarItem.TitleDisplayMode : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Text.TruncationMode : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Text.TruncationMode : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension SwiftUI.TapGesture : SwiftUI.Gesture {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Axis : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Axis : Swift.RawRepresentable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ViewDebug.Property : Swift.RawRepresentable {}
@available(iOS 13.0, tvOS 13.0, *)
@available(OSX, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.EditMode : Swift.Hashable {}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.ControlSize : Swift.Equatable {}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.ControlSize : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._IdentifiedViewsKey : SwiftUI.PreferenceKey {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ContainedScrollViewKey : SwiftUI.PreferenceKey {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Font._StylisticAlternative : Swift.RawRepresentable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ScrollViewAnimationMode : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ScrollViewAnimationMode : Swift.Hashable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension SwiftUI._CrownHapticsConfiguration.Notch.Strength : Swift.Equatable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension SwiftUI._CrownHapticsConfiguration.Notch.Strength : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Font.TextStyle : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Font.TextStyle : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._CircleLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._CircleLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._HStackLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._HStackLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ZStackLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI._ZStackLayout : SwiftUI.Animatable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension SwiftUI._DigitalCrownDecelerationRate : Swift.Equatable {}
@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(OSX, unavailable)
@available(tvOS, unavailable)
extension SwiftUI._DigitalCrownDecelerationRate : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__SimpleColumnLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__SimpleColumnLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.AccessibilityAdjustmentDirection : Swift.Equatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.AccessibilityAdjustmentDirection : Swift.Hashable {}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.DropOperation : Swift.Equatable {}
@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension SwiftUI.DropOperation : Swift.Hashable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__SpiralLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__SpiralLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__RadialLayout : SwiftUI._VariadicView_UnaryViewRoot {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.__RadialLayout : SwiftUI.Animatable {}
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image.ResizingMode : Swift.Hashable {}
