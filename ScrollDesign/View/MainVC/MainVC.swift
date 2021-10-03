//
//  ViewController.swift
//  ScrollDesign
//
//  Created by Ahmad Abdulrady on 28/09/2021.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet private weak var checkOutBtn: UIButton!
    @IBOutlet private weak var profileHeader: ProfileHeader!
    @IBOutlet private weak var descriptionLabl: UILabel!
    @IBOutlet private weak var titeDescription: UILabel!
    @IBOutlet private weak var descriptionBackgoundView: UIView!
    @IBOutlet private weak var checkoutBtnBG: UIView!
    
    var showMoreState: ShowMoreState = .showMore

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configNavBarUI()
        checkOutBtn.setCornerRadius = 20
        profileHeader.setCorners(with: 20,
                                 corners: [.layerMinXMinYCorner,
                                           .layerMaxXMinYCorner])
//        titeDescription.setCorners(with: 20,
//
//                                   corners: [.layerMinXMinYCorner,
//                                           .layerMaxXMinYCorner])
        descriptionBackgoundView.setCorners(with: 20,
                                            
                                            corners: [.layerMinXMinYCorner,
                                                    .layerMaxXMinYCorner])
        configCeckoutBG()
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
    
    @IBAction func showMoreBtn(_ sender: UIButton) {
        descriptionLabl.numberOfLines = descriptionLabl.numberOfLines == 2 ? 0 : 2
        
        switch showMoreState {
        case .showMore:
            showMoreState = .showLess
        case .showLess:
            showMoreState = .showMore
        }
        let title = NSAttributedString(string: showMoreState.rawValue, attributes: [.underlineStyle: true])
        sender.setAttributedTitle(title, for: .normal)
//        sender.setTitle(showMoreState.rawValue, for: .normal)
    }
    
    enum ShowMoreState: String {
        case showMore = "Show More"
        case showLess = "Show Less"
    }
    
    func configCeckoutBG() {
        let gradient = CAGradientLayer()
        
        let color = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        gradient.colors = [color.withAlphaComponent(0.0).cgColor,
                           color.withAlphaComponent(0.4).cgColor,
                           color.withAlphaComponent(0.6).cgColor,
                           color.withAlphaComponent(0.8).cgColor,
                           color.withAlphaComponent(1).cgColor]
        gradient.locations = [0.0, 0.2, 0.4, 0.6, 0.1]
        gradient.frame = checkoutBtnBG.bounds
        checkoutBtnBG.layer.addSublayer(gradient)
    }
    
}
