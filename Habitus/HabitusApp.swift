//
//  HabitusApp.swift
//  Habitus
//
//  Created by Andrew Smith on 7/20/22.
//

import SwiftUI

@main
struct HabitusApp: App {
    var body: some Scene {
        WindowGroup {
            HomeTabView()
                .environmentObject(ContentModel())
        }
    }
}
