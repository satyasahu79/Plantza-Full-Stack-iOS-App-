//
//  FAQData.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 17/09/21.
//

import Foundation

import SwiftUI

struct FAQ : Identifiable {
    var id = UUID()
    var headline : String
    var text : String
}

var FAQData : [FAQ] = [
    
    
    
    FAQ(headline: "What are the little dark flies swarming over the pots of my plant?", text: "They are probably fungus gnats. They are not very harmful to plants but very annoying to us:)"),
    
    FAQ(headline: "Do I really need the soil moisture meter?", text: "We strongly recommend getting the Soil Moisture Meter. This tool will help you to understand when your plant is ready for a drink to avoid over or under watering."),
    
    FAQ(headline: "Why are my leaves rotting?", text: "Rotting leaves are a sign of overwatering and can also be the sign of root rot."),
    
    FAQ(headline: "Can i have a plant replaced using an existing planter?", text: "If you have purchased a plant potted in one of our Lechuza self-watering planters, you can replace your plant using an existing planter. The same type or any other type of a plant that is available for this planter shape and color."),
    
    FAQ(headline: "Can i have a plant replaced using an existing planter?", text: "If you have purchased a plant potted in one of our Lechuza self-watering planters, you can replace your plant using an existing planter. The same type or any other type of a plant that is available for this planter shape and color."),
    
    FAQ(headline: "How do I cancel my order?", text: "You can cancel your order at any time before the product has been shipped by sending an email to out support team, however if the product has been shipped the order cannot be cancelled."),
    
    FAQ(headline: "When will my product be shipped?", text: "Due to the Covid-19 restrictions products may take longer than usual to be shipped, for most orders the products will be shipped after a day or two of recieving the order.")

]
