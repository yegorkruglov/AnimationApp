//
//  Animation.swift
//  SpringAnimation
//
//  Created by Egor Kruglov on 13.06.2023.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    let description: String
    
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let animationsNames = DataStore.shared.animationsNames.shuffled()
        let curves = DataStore.shared.curves.shuffled()
        
        for animationsName in animationsNames {
            let animation = animationsName
            let curve = curves.randomElement()
            let force = Double.random(in: 0.5...3)
            let duration = Double.random(in: 0.5...3)
            let delay = Double.random(in: 0...1)
            var description: String {
                String(
                    format: """
                    Animation: \(animation)
                    Curve: \(String(describing: curve))
                    Force: %.2f
                    Duration: %.2f
                    Delay: %.2f
                    """,
                    force,
                    duration,
                    delay
                )
            }
            
            animations.append(Animation(
                name: animation.rawValue,
                curve: curve?.rawValue ?? "easeIn",
                force: force,
                duration: duration,
                delay: delay,
                description: description))
        }
        
        return animations
    }
    
}
