//
//  ContentModel.swift
//  Habitus
//
//  Created by Andrew Smith on 7/20/22.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var workouts = [Workout]()
    
    init() {
        
        getWorkout()
        
    }
    
    func getWorkout() {
        
        let pathstring = Bundle.main.path(forResource: "data", ofType: "json")
        
        if pathstring != nil {
            let url = URL(fileURLWithPath: pathstring!)
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                do{
                    let workoutData = try decoder.decode([Workout].self, from: data)
                    workouts += workoutData
                }
                catch{
                    print("error 2")
                }

            }
            catch{
               print("error 1")
            }
        }
    }
    
}
