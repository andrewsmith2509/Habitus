//
//  WorkoutButtonView.swift
//  Habitus
//
//  Created by Andrew Smith on 7/20/22.
//

import SwiftUI

struct WorkoutButtonView: View {
    
    var height:Int
    
    var body: some View {

            Rectangle()
                .frame(width: 350, height: CGFloat(height), alignment: .center)
                .foregroundColor(.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding()
                
        
        
    }
}

struct WorkoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutButtonView(height: 70)
    }
}
