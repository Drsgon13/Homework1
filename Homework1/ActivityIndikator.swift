//
//  ActivityIndikator.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 11.08.2021.
//

import SwiftUI

struct ActivityIndikator: UIViewRepresentable {
    
    typealias Context = UIViewRepresentableContext<Self>
    typealias UIViewType = UIActivityIndicatorView

    let isAnimated: Bool

    public func makeUIView(context: Context) -> UIViewType {
        UIActivityIndicatorView(style: .large) // create the instance of the view
        
    }

    public func updateUIView(_ uiView: UIViewType, context: Context) {
        // Check if isAnimated is true, and if the view is inactive.
        if isAnimated && !uiView.isAnimating {
            uiView.startAnimating() // Animate
        }

        // Check if isAnimated is false, and if the view is active.
        if !isAnimated && uiView.isAnimating {
            uiView.stopAnimating() // Stop animating
        }
    }
}
