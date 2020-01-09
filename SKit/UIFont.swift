//
//  UIFont.swift
//  SKit
//
//  Created by Sam on 1/9/20.
//  Copyright © 2020 shny. All rights reserved.
//

import Stevia

@objc public enum FontStyle: Int {
    case normal, light, bold, semibold

    /// Override this for custom fonts
    static func nameForStyle(_ style: FontStyle) -> String {
        switch style {
        case .light:
            return "ProximaNova-Light"
        case .normal:
            return "ProximaNova-Regular"
        case .bold:
            return "ProximaNova-Bold"
        case .semibold:
            return "ProximaNova-Semibold"
        }
    }
}

public extension UIFont {
    class func appFont(_ style: FontStyle, size: CGFloat) -> UIFont! {
        return UIFont(name: FontStyle.nameForStyle(style), size: size)
    }

    func lineSpacingForBaseLineHeight(_ baseLineHeight: CGFloat) -> CGFloat {
        return baseLineHeight - pointSize
    }

    class func logLoadedFonts() {
        for family in UIFont.familyNames {
            NSLog("FAMILY: \(family)")

            for font in UIFont.fontNames(forFamilyName: family ) {
                NSLog("FONT: \(font)")
            }
        }
    }

    class func attributesFor(font: UIFont) -> [NSAttributedString.Key: Any] {
        return [
            NSAttributedString.Key.font: font
        ]
    }

    class func attributesFor(style: FontStyle, color: UIColor, size: CGFloat) -> [NSAttributedString.Key: Any] {
        return [
            NSAttributedString.Key.font: UIFont.appFont(style, size: size) ?? UIFont.systemFont(ofSize: size),
            NSAttributedString.Key.foregroundColor: color
        ]
    }
}
