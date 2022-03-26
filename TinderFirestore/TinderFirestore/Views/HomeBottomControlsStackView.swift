//
//  HomeBottomControlsStackView.swift
//  TinderFirestore
//
//  Created by Edgar Delgado on 3/21/22.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let iconImages = [UIImage(named: "refresh_circle"), UIImage(named: "dismiss_circle"), UIImage(named: "super_like_circle"), UIImage(named: "like_circle"), UIImage(named: "boost_circle")]
        let subviews = iconImages.map { (image) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(image?.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        subviews.forEach { view in
            addArrangedSubview(view)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
