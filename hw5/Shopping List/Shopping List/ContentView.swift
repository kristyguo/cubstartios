//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int   // changed String to Int
    
    init(imageName: String, itemName: String, quantity: Int) {   // changed String to Int
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
}


struct ContentView: View {
    
    var fruitList = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)
    ]
    
    var drinkList = [
        Items(imageName: "coke", itemName: "Cocacola", quantity: 6),
        Items(imageName: "seven-up", itemName: "Seven-up", quantity: 10),
        Items(imageName: "orange juice", itemName: "Orange Juice", quantity: 5)
    ]
    
    var snackList = [
        Items(imageName: "chocolate", itemName: "Chocolate", quantity: 4),
        Items(imageName: "candy", itemName: "Candy", quantity: 20)
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruitList) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Drinks")) {
                    ForEach(drinkList) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Snacks")) {
                    ForEach(snackList) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }.navigationTitle("Shopping List")
        }
    }
}
