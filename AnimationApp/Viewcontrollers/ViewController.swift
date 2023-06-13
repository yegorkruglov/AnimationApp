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
    
    let animations = Animation.getAnimations()
    var currentAnimation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentAnimation = animations.randomElement()
        setupInfo(from: currentAnimation)
    }
    
    @IBAction func runAnimationPressed(_ sender: UIButton) {
        greenView.animation = currentAnimation.name
        greenView.curve = currentAnimation.curve
        greenView.force = currentAnimation.force
        greenView.duration = currentAnimation.duration
        greenView.delay = currentAnimation.delay
        greenView.animate()
        
//        infoLabel.animation = "fadeOut"
//        infoLabel.duration = 1
//        infoLabel.delay = 5
//        infoLabel.animate()
        
        currentAnimation = animations.randomElement()
        setupInfo(from: currentAnimation)
        
        infoLabel.animation = "fadeIn"
        infoLabel.duration = 1
        infoLabel.animate()
    }
    
    private func setupInfo(from animation: Animation) {
        infoLabel.text = String(
            format: """
            Animation: \(animation.name)
            Curve: \(animation.curve)
            Force: %.2f
            Duration: %.2f
            Delay: %.2f
            """,
            animation.force,
            animation.duration,
            animation.delay
        )
        
        runButton.setTitle("Run \(currentAnimation.name)", for: .normal)
    }
    
    
}

