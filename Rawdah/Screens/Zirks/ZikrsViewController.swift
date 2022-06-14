//
//  ZikrsViewController.swift
//  99Names
//
//  Created by Sapar Jumabekov on 28.05.2022.
//

import UIKit
import StoreKit
import SPAlert

class ZikrsViewController: UIViewController {

    // MARK: - Variables
    
    // MARK: - Outlets
    @IBOutlet weak var mainStackView: UIStackView!
    
    @IBOutlet weak var firstTextLabel: UILabel!
    
    @IBOutlet weak var secondTextLabel: UILabel!
    
    @IBOutlet weak var thirdTextLabel: UILabel!
    
    @IBOutlet weak var copyCardButton: UIButton!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    @IBAction func cardCopyButtonDidTapped(_ sender: Any) {
        let url = URL(string: "https://sapa.notion.site/Donate-Rawdah-99-names-of-Allah-a1c97879d6a848e0b681abf743fe7458")
        guard let url = url, UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url)
    }
    
    // MARK: - Setup
    private func setup() {
        navigationItem.title = "tabs_zikrs".localized
        
        firstTextLabel.text = "zikrs_first_text".localized
        secondTextLabel.text = "zikrs_second_text".localized
        thirdTextLabel.text = "zikrs_third_text".localized
        copyCardButton.setTitle("zikrs_button_text".localized, for: [])
        
        mainStackView.layer.borderWidth = 1.0
        mainStackView.layer.borderColor = UIColor.systemGreen.cgColor
        mainStackView.isLayoutMarginsRelativeArrangement = true
        mainStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 32, leading: 12, bottom: 32, trailing: 12)
        mainStackView.layer.cornerRadius = 24
        mainStackView.clipsToBounds = true
        
        copyCardButton.backgroundColor = .secondarySystemBackground
        copyCardButton.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        copyCardButton.clipsToBounds = true
        copyCardButton.layer.cornerRadius = 6
    }
}
