//
//  Layer+.swift
//  ScrollDesign
//
//  Created by Ahmad Abdulrady on 28/09/2021.
//

import UIKit

extension UIView {
    var setCornerRadius: CGFloat {
        get {
            fatalError("set only property")
        }
        set(radius) {
            self.layer.cornerRadius = radius
        }
    }
    
    func setCorners(with radius: CGFloat, corners: CACornerMask) {
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = corners
    }
}
