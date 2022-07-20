//
//  WorkoutRepsView.swift
//  Habitus
//
//  Created by Andrew Smith on 7/20/22.
//

import SwiftUI

struct WorkoutRepsView: View {
    
    @EnvironmentObject var model: ContentModel
    var excercise: Excercise
    @State var weightSelection = 5
    var weights = [5, 10, 15, 20, 25]
    
    var body: some View {
        Picker("Weights", selection: $weightSelection) {
            ForEach(0..<weights.count, id: \.self) { index in
                Text("\(weights[index]) lbs")
                    .tag(weights[index])
            }
        }
        .pickerStyle(WheelPickerStyle())
        
    }
}


