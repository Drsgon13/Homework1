//
//  ListView.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 10.08.2021.
//

import SwiftUI

struct ListView: View {

    @Binding var listItem: Int

    @State var arrayList = [Array(number: 1),
                            Array(number: 2),
                            Array(number: 3)]

    var body: some View {
        NavigationView {
            List(arrayList){ item in
                if(listItem != 0) {
                    NavigationLink(
                        destination: ListLinkView(num: item.number)) {
                        Text(String(item.number))
                    }
                } else {
                    NavigationLink(
                        destination: ListLinkView(num: item.number)) {
                        Text(String(item.number))
                    }
                }

            }
        }
    }

}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
