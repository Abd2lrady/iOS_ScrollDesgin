//
//  ViewController.swift
//  ScrollDesign
//
//  Created by Ahmad Abdulrady on 28/09/2021.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configNavBar()
    }

    func configNavBar() {
        
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
