//
//  ItemDetail.swift
//  iOrder
//
//  Created by Gaston Gasquet on 21/12/2020.
//

import SwiftUI

struct ItemDetail: View {
    // MARK: - Properties
    @EnvironmentObject var order: Order
    var item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.mainImage)
            Text(item.description)
                .padding()
            
            Button("Order this") {
                self.order.add(item: self.item)
            }.font(.headline)
            Spacer()
            
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
        }
    }
}
