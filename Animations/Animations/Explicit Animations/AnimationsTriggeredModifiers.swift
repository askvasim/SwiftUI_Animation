//
//  AnimationsTriggeredModifiers.swift
//  Animations
//
//  Created by Vasim Khan on 2/26/23.
//

import SwiftUI

struct AnimationsTriggeredModifiers: View {
    @State private var isToggled = false
    
    var body: some View {
        Button("Toggle") {
            withAnimation(.easeInOut) {
                isToggled.toggle()
            }
        }
        .font(.largeTitle)
        .fontWeight(.heavy)
        .foregroundColor(isToggled ? .red : .blue)
    }
}

struct AnimationsTriggeredModifiers_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsTriggeredModifiers()
    }
}
