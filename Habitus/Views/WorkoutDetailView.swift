//
//  WorkoutDetailView.swift
//  Habitus
//
//  Created by Andrew Smith on 7/20/22.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    var workout: Workout
    @State var sheet = false
    
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack(spacing: 10){
                ForEach(workout.excercises) { excercise in
                        
                    Button {
                        sheet = true
                    } label: {
                        ZStack(alignment: .leading){
                            WorkoutButtonView(height: 100)
                            
                            VStack(alignment: .leading){
                                Text(excercise.name)
                                    .font(.headline)
                                    .padding(.bottom, 5)
                                Text("\(excercise.sets) sets")
                                    .font(.subheadline)
                                Text("\(excercise.reps) reps")
                                    .font(.subheadline)
                            }
                            .padding(.leading, 30)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .sheet(isPresented: $sheet) {
                        WorkoutRepsView(excercise: excercise)
                    }

                }
            }
            .navigationBarHidden(true)
        }
        }
    }
}

