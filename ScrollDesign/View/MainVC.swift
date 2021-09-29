//
//  ViewController.swift
//  ScrollDesign
//
//  Created by Ahmad Abdulrady on 28/09/2021.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet private weak var checkOutBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        configNavBarUI()
        checkOutBtn.setCornerRadius = 20
    }
   
    func configNavBarUI() {
        
        let backBtn = UIBarButtonItem.setNavButton(withImg: UIImage(asset: Asset.group))
        let detailBtn = UIBarButtonItem.setNavButton(withImg: UIImage(asset: Asset.group9))
        let loveBtn = UIBarButtonItem.setNavButton(withImg: UIImage(asset: Asset.group2))
        
        navigationItem.leftBarButtonItem = backBtn
        navigationItem.rightBarButtonItems = [detailBtn,
                                              loveBtn]
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.clipsToBounds = true
    }
 
}
