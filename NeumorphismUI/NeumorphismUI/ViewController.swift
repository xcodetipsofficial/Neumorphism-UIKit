//
//  ViewController.swift
//  NeumorphismUI
//
//  Created by Kyle Wilson on 2020-03-24.
//  Copyright © 2020 Xcode Tips. All rights reserved.
//

import UIKit
import EMTNeumorphicView

class ViewController: UIViewController {
    
    let buttonPlay: EMTNeumorphicButton = {
        let button = EMTNeumorphicButton(type: .custom)
        button.setImage(UIImage(named: "play"), for: .normal)
        button.setImage(UIImage(named: "play-filled"), for: .selected)
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 26, left: 24, bottom: 22, right: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tapped(_:)), for: .touchUpInside)
        button.neumorphicLayer?.cornerRadius = 22.5
        return button
    }()
    
    let buttonFastForward: EMTNeumorphicButton = {
        let button = EMTNeumorphicButton(type: .custom)
        button.setImage(UIImage(named: "fast-forward"), for: .normal)
        button.setImage(UIImage(named: "fast-forward-filled"), for: .selected)
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 26, left: 24, bottom: 22, right: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tapped(_:)), for: .touchUpInside)
        button.neumorphicLayer?.cornerRadius = 22.5
        return button
    }()
    
    let buttonRewind: EMTNeumorphicButton = {
        let button = EMTNeumorphicButton(type: .custom)
        button.setImage(UIImage(named: "rewind"), for: .normal)
        button.setImage(UIImage(named: "rewind-filled"), for: .selected)
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 26, left: 24, bottom: 22, right: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tapped(_:)), for: .touchUpInside)
        button.neumorphicLayer?.cornerRadius = 22.5
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.offWhite
        
        buttonPlay.neumorphicLayer?.elementBackgroundColor = view.backgroundColor?.cgColor ?? UIColor.white.cgColor
        buttonFastForward.neumorphicLayer?.elementBackgroundColor = view.backgroundColor?.cgColor ?? UIColor.white.cgColor
        buttonRewind.neumorphicLayer?.elementBackgroundColor = view.backgroundColor?.cgColor ?? UIColor.white.cgColor
        
        view.addSubview(buttonPlay)
        view.addSubview(buttonFastForward)
        view.addSubview(buttonRewind)

        NSLayoutConstraint.activate([
            buttonPlay.widthAnchor.constraint(equalToConstant: 80),
            buttonPlay.heightAnchor.constraint(equalToConstant: 80),
            buttonPlay.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            buttonPlay.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            buttonFastForward.widthAnchor.constraint(equalToConstant: 80),
            buttonFastForward.heightAnchor.constraint(equalToConstant: 80),
            buttonFastForward.centerXAnchor.constraint(equalTo: buttonPlay.centerXAnchor, constant: 100),
            buttonFastForward.centerYAnchor.constraint(equalTo: buttonPlay.centerYAnchor, constant: 0),
            
            buttonRewind.widthAnchor.constraint(equalToConstant: 80),
            buttonRewind.heightAnchor.constraint(equalToConstant: 80),
            buttonRewind.centerXAnchor.constraint(equalTo: buttonPlay.centerXAnchor, constant: -100),
            buttonRewind.centerYAnchor.constraint(equalTo: buttonPlay.centerYAnchor, constant: 0),
        ])
    }
    
    @objc func tapped(_ button: EMTNeumorphicButton) {
        button.isSelected = !button.isSelected
    }

}

extension UIColor {
    static let offWhite = UIColor(red: 225 / 255, green: 225 / 255, blue: 235 / 255, alpha: 1.0)
}
