//
//  ProfileHeader.swift
//  ScrollDesign
//
//  Created by Ahmad Abdulrady on 29/09/2021.
//

import UIKit

class ProfileHeader: UIView {
        
    @IBOutlet private weak var img: UIImageView!
    @IBOutlet private weak var name: UILabel!
    @IBOutlet private weak var title: UILabel!
    @IBOutlet private weak var rating: UILabel!
    @IBOutlet private weak var reviewsNo: UILabel!
    @IBOutlet private weak var viewProfileBtn: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let profileHeader = Bundle.main.loadNibNamed("ProfileHeader",
                                                     owner: self)?.first as? UIView
        profileHeader?.frame = self.bounds
        self.addSubview(profileHeader ?? UIView())
    }
}
