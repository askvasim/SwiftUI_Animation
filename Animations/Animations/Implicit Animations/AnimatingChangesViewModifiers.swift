//
//  AnimatingChangesViewModifiers.swift
//  Animations
//
//  Created by Vasim Khan on 2/26/23.
//

import SwiftUI

struct AnimatingChangesViewModifiers: View {
    @State private var isHighlighted = false
    
    var body: some View {
        Button("Tap Me") {
            isHighlighted.toggle()
        }
        .font(.largeTitle)
        .fontWeight(.heavy)
        .padding()
        .background(isHighlighted ? Color.yellow : Color.white)
        .cornerRadius(10)
        .animation(.easeInOut(duration: 0.3), value: isHighlighted)
    }
}

struct AnimatingChangesViewModifiers_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingChangesViewModifiers()
    }
}
