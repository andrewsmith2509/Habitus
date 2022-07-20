//
//  ContentView.swift
//  Habitus
//
//  Created by Andrew Smith on 7/20/22.
//

import SwiftUI

struct HomeTabView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            
            WorkoutListView()
                .tabItem {
                    VStack{
                        Image(systemName: "figure.walk")
                            
                        Text("Workouts")
                    }
                }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
