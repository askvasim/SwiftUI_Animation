//
//  CustomExplicitAnimation.swift
//  Animations
//
//  Created by Vasim Khan on 2/26/23.
//

import SwiftUI

struct CustomExplicitAnimation: View {
    @State private var isToggled = false
    
    var body: some View {
        Button("Toggle") {
            withAnimation {
                isToggled.toggle()
            }
        }
        .font(.largeTitle)
        .fontWeight(.heavy)
        .scaleEffect(isToggled ? 2 : 1)
        .springAnimation(stiffness: 50, damping: 2)
    }
}

struct CustomExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CustomExplicitAnimation()
    }
}

struct SpringAnimation: ViewModifier {
    let stiffness: Double
    let damping: Double
    
    func body(content: Content) -> some View {
        content
            .animation(.spring(response: 0.5, dampingFraction: damping, blendDuration: 0.5))
    }
}

extension View {
    func springAnimation(stiffness: Double, damping: Double) -> some View {
        self.modifier(SpringAnimation(stiffness: stiffness, damping: damping))
    }
}
