//
//  Facts.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 20/09/21.
//

import SwiftUI


struct Fact {
    var id = UUID()
    var title : String
    var text : String
    
}

var factData : [Fact] = [

    Fact(title: "House plants love stability.", text: "Plants thrive once they are used to their surroundings!. Light and temprature are important."),
    Fact(title: "Plants purify the air!", text: "Your watering and cleaning pay off because, house plants are removing toxins all around you making the air more purified."),
    Fact(title: "Decrease your stress levels.", text: "House plants are proven to relieve stress and improve mental wellbeing and as a result, increasing productivity."),
    Fact(title: "Plants love music.", text: "House plants love music and it encourages growth, so turn up your playlist!"),
    Fact(title: "Reduce noise pollution.", text: "Houseplants, such as peace lilies, have been found to absorb sound! Surround your workspace with it to create a quiet sanctuary."),
    Fact(title: "Boost your immune system!", text: "Plants are known to be calming, leaving you more relaxed and improving your sleep. They can help you stay happy and healthy!")
    
]
