//
//  ButtonView.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 10.08.2021.
//

import SwiftUI

struct ButtonView: View {
    @State var listItem = 0
    @State var actionList = false
    let action: () -> Void
    @State var showTab = false
    var body: some View {
        VStack {
            Button(action: action, label: {
                Text("Второй таб")
            })
            Button(action: {
                actionList.toggle()
            })
            {
                Text("Второй пукт листа")
            }.sheet(isPresented: $actionList) {
                ListLinkView(num: 2)
            }
        }
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
