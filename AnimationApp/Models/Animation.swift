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
    
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let animationsNames = DataStore.shared.animationsNames.shuffled()
        let curves = DataStore.shared.curves.shuffled()
        
        for animationsName in animationsNames {
            let animation = animationsName
            let curve = curves.randomElement() ?? "easeIn"
            let force = Double.random(in: 0.5...3)
            let duaration = Double.random(in: 0.5...3)
            let delay = Double.random(in: 0...1)
            
            animations.append(Animation(
                name: animation,
                curve: curve,
                force: force,
                duration: duaration,
                delay: delay))
        }
        
        return animations
    }
    
}
