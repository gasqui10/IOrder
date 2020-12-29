//
//  iOrderApp.swift
//  iOrder
//
//  Created by Gaston Gasquet on 19/12/2020.
//

import SwiftUI

@main
struct iOrderApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}



