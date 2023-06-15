//
//  DataStore.swift
//  SpringAnimation
//
//  Created by Egor Kruglov on 13.06.2023.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animationsNames = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
