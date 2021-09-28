//
//  NavigationBarButtons.swift
//  ScrollDesign
//
//  Created by Ahmad Abdulrady on 28/09/2021.
//

import UIKit

extension UIBarButtonItem {
    static func setNavButton(withImg img: UIImage?) -> UIBarButtonItem {
        let btn = UIButton(type: .custom)
        btn.setImage(img, for: .normal)
        return UIBarButtonItem(customView: btn)
    }
}
