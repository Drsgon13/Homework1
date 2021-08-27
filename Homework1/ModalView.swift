//
//  ModalView.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 11.08.2021.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        VStack(spacing: 16){
            Text("Настройки профиля")
                .foregroundColor(.yellow)

        }
        .frame( maxWidth: .infinity)
        .frame(height: 150)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(radius: 30)
        .padding(.horizontal, 30)
    
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
