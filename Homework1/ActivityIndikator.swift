//
//  ActivityIndikator.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 11.08.2021.
//

import SwiftUI

struct ActivityIndikator: UIViewRepresentable {
    
    @Binding var isAnimating: Bool

    let style: UIActivityIndicatorView.Style
    func makeUIView(context: UIViewRepresentableContext<ActivityIndikator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndikator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
