//
//  ViewController.swift
//  AnimationApp
//
//  Created by Egor Kruglov on 13.06.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var greenView: SpringView!
    @IBOutlet var infoLabel: SpringLabel!
    @IBOutlet var runButton: UIButton!
    
    private var currentAnimation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInfo(from: currentAnimation)
    }
    
    @IBAction func runButtonPressed() {
        setupInfo(from: currentAnimation)
        
        greenView.animation = currentAnimation.name
        greenView.curve = currentAnimation.curve
        greenView.force = currentAnimation.force
        greenView.duration = currentAnimation.duration
        greenView.delay = currentAnimation.delay
        greenView.animate()
        
        currentAnimation = Animation.getAnimation()
        runButton.setTitle("Run \(currentAnimation.name)", for: .normal)
        
        infoLabel.animation = "fadeIn"
        infoLabel.animate()
    }
    
    private func setupInfo(from animation: Animation) {
        infoLabel.text = currentAnimation.description
        
        runButton.setTitle("Run \(currentAnimation.name)", for: .normal)
    }
    
    
}

