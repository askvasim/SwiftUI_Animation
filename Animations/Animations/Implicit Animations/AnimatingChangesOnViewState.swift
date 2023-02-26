//
//  AnimatingChangesOnViewState.swift
//  Animations
//
//  Created by Vasim Khan on 2/26/23.
//

import SwiftUI

struct AnimatingChangesOnViewState: View {
    @State private var isToggled = false
    
    var body: some View {
        Button("Toggle") {
            withAnimation {
                isToggled.toggle()
            }
        }
        .font(.largeTitle)
        .fontWeight(.heavy)
        .foregroundColor(isToggled ? .red : .blue)
    }
}

struct AnimatingChangesOnViewState_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingChangesOnViewState()
    }
}
