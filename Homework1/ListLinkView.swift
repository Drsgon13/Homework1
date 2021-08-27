//
//  ListLinkView.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 10.08.2021.
//

import SwiftUI

struct ListLinkView: View {
    let num: Int
    var body: some View {
        Text("Номер пункта: " + String(num))
    }
}

//struct ListLinkView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListLinkView()
//    }
//}
