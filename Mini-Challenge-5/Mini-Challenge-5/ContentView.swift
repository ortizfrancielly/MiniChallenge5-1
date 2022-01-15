//
//  ContentView.swift
//  Mini-Challenge-5
//
//  Created by Francielly Cristina Ortiz Candido on 14/01/22.
//

import SwiftUI

struct Box: Hashable {
    //var id: Int
    let categoriesTitle: String
    let categoriesImages: String
}


struct ContentView: View {
    
    let boxes = [Box(categoriesTitle: "Temperatuta", categoriesImages: "Temperatura"), Box(categoriesTitle: "Massa", categoriesImages: "Massa")]
    

    @ViewBuilder
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                Spacer()
                    .padding(4)
                ScrollView(.horizontal){
                    HStack(alignment: .firstTextBaseline) {
                        Spacer()
                            CategoryItem(imageName: "Temperatura", text: "Temperatura")
                            Spacer()
                                .padding(1)
                            CategoryItem(imageName: "Massa", text: "Massa")
                            Spacer()
                                .padding(1)
                            CategoryItem(imageName: "Dados", text: "Dados")
                            Spacer()
                                .padding(1)
                            CategoryItem(imageName: "Comprimento", text: "Comprimento")
                    }
                }
            }
            .navigationTitle("Categorias")
            .navigationBarTitleDisplayMode(.large)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
