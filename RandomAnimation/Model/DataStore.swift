//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Nicholas Smith on 11/2/22.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
