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
    
    var description: String {
        String(
            format: """
            Animation: \(name)
            Curve: \(curve)
            Force: %.2f
            Duration: %.2f
            Delay: %.2f
            """,
            force,
            duration,
            delay
        )
    }
    
    static func getAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animationsNames.randomElement()?.rawValue ?? "zoomIn",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0.5...3),
            duration: Double.random(in: 0.5...1.5),
            delay: Double.random(in: 0.5...0.7))
    }
    
}
