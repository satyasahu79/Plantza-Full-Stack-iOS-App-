//
//  Product.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import Foundation

import SwiftUI

struct Product : Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var price : String
    var type : String
    var productImage : String
    var description : String
    var temperature : String
    var lighting : String
    var humidity : String
    var size : String
}


var productData : [Product] = [
    
    Product(title: "Aglaonema Classico", subtitle: "Aglaonema Classico is one of the easiest indoor plants to own.", price: "79", type: "Air Purifing", productImage: "Cactus", description: "Aglaonema Classico is one of the easiest indoor plants to own and is tolerant of low light conditions and infrequent watering. Native to the Philippines, Aglaonema Classico has beautiful, slow-growing foliage that makes a wonderful accent to any space. This is one of only a few plants that can survive under florescent lighting alone making is a great choice for low light office spaces.",temperature : "18 - 24 °C",lighting : "Low Light", humidity : "12 Si", size : "300 - 400 cm"),
    
    Product(title: "Mentha Piperita", subtitle: "Aglaonema Classico is one of the easiest indoor plants to own.", price: "39", type: "Herbal", productImage: "Mint", description: "Aglaonema Classico is one of the easiest indoor plants to own and is tolerant of low light conditions and infrequent watering. Native to the Philippines, Aglaonema Classico has beautiful, slow-growing foliage that makes a wonderful accent to any space. This is one of only a few plants that can survive under florescent lighting alone making is a great choice for low light office spaces.",temperature : "18 - 24 °C",lighting : "Low Light", humidity : "12 Si", size : "300 - 400 cm"),

    Product(title: "Monstera Deliciosa", subtitle: "Aglaonema Classico is one of the easiest indoor plants to own.", price: "89", type: "Fast Growing", productImage: "Potted Plants", description: "Aglaonema Classico is one of the easiest indoor plants to own and is tolerant of low light conditions and infrequent watering. Native to the Philippines, Aglaonema Classico has beautiful, slow-growing foliage that makes a wonderful accent to any space. This is one of only a few plants that can survive under florescent lighting alone making is a great choice for low light office spaces.",temperature : "18 - 24 °C",lighting : "Low Light", humidity : "12 Si", size : "300 - 400 cm"),
    
    Product(title: "Aglaonema Classico", subtitle: "Aglaonema Classico is one of the easiest indoor plants to own.", price: "79", type: "Air Purifing", productImage: "Medium Light", description: "Aglaonema Classico is one of the easiest indoor plants to own and is tolerant of low light conditions and infrequent watering. Native to the Philippines, Aglaonema Classico has beautiful, slow-growing foliage that makes a wonderful accent to any space. This is one of only a few plants that can survive under florescent lighting alone making is a great choice for low light office spaces.",temperature : "18 - 24 °C",lighting : "Low Light", humidity : "12 Si", size : "300 - 400 cm")
    
]
