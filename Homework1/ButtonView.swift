//
//  ButtonView.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 10.08.2021.
//

import SwiftUI

struct ButtonView: View {
    @State var listItem = 0
    let action: () -> Void
    @State var showTab = false
    var body: some View {
        Button(action: action, label: {
            Text("Второй таб")
        })
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
