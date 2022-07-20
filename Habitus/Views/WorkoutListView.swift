//
//  WorkoutsView.swift
//  Habitus
//
//  Created by Andrew Smith on 7/20/22.
//

import SwiftUI

struct WorkoutListView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                Text("Workouts")
                    .font(.largeTitle)
                    .bold()
                    .padding([.leading, .top])
                ScrollView{
                       
                        LazyVStack {
                            
                            ForEach(model.workouts) { workout in
                                NavigationLink {
                                    WorkoutDetailView(workout: workout)
                                } label: {
                                    ZStack {
                                        WorkoutButtonView(height: 60)
                                        
                                        Text(workout.name)
                                            .font(.headline)
                                            .bold()
                                        }
                                }
                                .buttonStyle(.plain)
                            }
                        }
                    }
                .navigationBarHidden(true)
            }
        }
        
    }
}

struct WorkoutListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
