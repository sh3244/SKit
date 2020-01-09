//
//  SLabel.swift
//  SKit
//
//  Created by Sam on 1/9/20.
//  Copyright © 2020 shny. All rights reserved.
//

import UIKit

public class SLabel: UILabel {

    var customInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

    convenience init(text: String = "", fontStyle: FontStyle = .normal, fontSize: CGFloat = 12, color: UIColor = .white) {
        self.init(text: text, fontStyle: fontStyle, fontSize: fontSize, color: color, .clear, 0)
    }

    convenience init(text: String = "", fontStyle: FontStyle = .normal, fontSize: CGFloat = 12,
                     color: UIColor = .white, _ backgroundColor: UIColor = .clear, _ cornerRadius: CGFloat = 0) {
        self.init(frame: .zero)

        self.text = text
        self.backgroundColor = backgroundColor
        self.textColor = color
        self.layer.cornerRadius = cornerRadius

        self.font = UIFont.appFont(fontStyle, size: fontSize)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        textAlignment = .center
        textColor = .white

        layer.masksToBounds = true
    }

    override public func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: customInsets))
//        invalidateIntrinsicContentSize()
    }

//    override func invalidateIntrinsicContentSize() {
//        <#code#>
//    }

    override public var intrinsicContentSize: CGSize {
        let aSize = super.intrinsicContentSize
        return CGSize(width: aSize.width + customInsets.left + customInsets.right, height: aSize.height + customInsets.top + customInsets.bottom)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
