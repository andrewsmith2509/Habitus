//
//  Workout.swift
//  Habitus
//
//  Created by Andrew Smith on 7/20/22.
//

import Foundation

struct Workout: Decodable, Identifiable {
    
    var id = 0
    var name = "workout"
    var excercises: [Excercise]

}

struct Excercise: Decodable, Identifiable {
    
    var id = 0
    var name = "name"
    var sets = 4
    var reps = "reps"
    
}
