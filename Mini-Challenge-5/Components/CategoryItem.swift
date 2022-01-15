//
//  CategoryItem.swift
//  Mini-Challenge-5
//
//  Created by Francielly Cristina Ortiz Candido on 15/01/22.
//

import SwiftUI

struct CategoryItem: View {
    var imageName: String
    var text: String
    
    var body: some View {
        VStack {
            ZStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(10)
            }
            .shadow(radius: 1)
            
            Text(text)
                .font(.caption)
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(imageName: "Temperatura", text: "Temperatura")
    }
}
