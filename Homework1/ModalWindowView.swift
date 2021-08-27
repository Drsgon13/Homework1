//
//  ModalWindowView.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 10.08.2021.
//

import SwiftUI

struct ModalWindowView: View {
    @State var showModal = false
    @State var isAnimating: Bool = false
    var body: some View {
        VStack {
            
            Toggle("Animating", isOn: $isAnimating)
            ActivityIndikator(isAnimated: isAnimating)
            
            Button(action: {
                self.showModal.toggle()
            }, label: {
                Text("Модальное окно")
            })
            ModalView()
                .offset(y: showModal ? 100 : 600)
        }
    }
}

struct ModalWindowView_Previews: PreviewProvider {
    static var previews: some View {
        ModalWindowView()
    }
}
