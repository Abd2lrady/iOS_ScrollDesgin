// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let _0993KBixtI4QLSJOO = ImageAsset(name: "0_993KBixtI4QLSJOO")
  internal static let accentColor = ColorAsset(name: "AccentColor")
  internal static let barsStatusBarIPhoneLight = ImageAsset(name: "Bars_Status_Bar_iPhone_Light")
  internal static let group = ImageAsset(name: "Group")
  internal static let group10 = ImageAsset(name: "Group_10")
  internal static let group2 = ImageAsset(name: "Group_2")
  internal static let group2Copy = ImageAsset(name: "Group_2_Copy")
  internal static let group4 = ImageAsset(name: "Group_4")
  internal static let group5 = ImageAsset(name: "Group_5")
  internal static let group5Copy = ImageAsset(name: "Group_5_Copy")
  internal static let group6 = ImageAsset(name: "Group_6")
  internal static let group629 = ImageAsset(name: "Group_629")
  internal static let group9 = ImageAsset(name: "Group_9")
  internal static let image = ImageAsset(name: "Image")
  internal static let imageCopy = ImageAsset(name: "Image_Copy")
  internal static let line4 = ImageAsset(name: "Line_4")
  internal static let lineCopy = ImageAsset(name: "Line_Copy")
  internal static let path = ImageAsset(name: "Path")
  internal static let path1 = ImageAsset(name: "Path_1")
  internal static let path2 = ImageAsset(name: "Path_2")
  internal static let rectangle = ImageAsset(name: "Rectangle")
  internal static let rectangle1 = ImageAsset(name: "Rectangle_1")
  internal static let rectangle121 = ImageAsset(name: "Rectangle_121")
  internal static let rectangle160 = ImageAsset(name: "Rectangle_160")
  internal static let rectangleCopy8 = ImageAsset(name: "Rectangle_Copy_8")
  internal static let rectangleCopy9 = ImageAsset(name: "Rectangle_Copy_9")
  internal static let bigBtn = ImageAsset(name: "big-btn")
  internal static let bigBtnCopy = ImageAsset(name: "big-btn_copy")
  internal static let bigBtnCopy2 = ImageAsset(name: "big-btn_copy_2")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
