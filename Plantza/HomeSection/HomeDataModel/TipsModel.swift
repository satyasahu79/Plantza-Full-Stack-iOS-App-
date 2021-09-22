//
//  TipsModel.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 22/09/21.
//

import SwiftUI

struct Tips : Identifiable{
    var id = UUID()
    var title : String
    var text : String
}

var tipsData : [Tips] = [

    Tips(title: "How can I tell if a plant is struggling?",
         
         text: """
        Here are some general signs of a problem :
        - Loss of leaf color.
        - Weak growth.
        - Yellowing or dropping leaves.
        - Leaves are curling in.
        - Droopiness or wilting.
        - White spots or web are showing on a plant
        """
        ),
    
    Tips(title: "Why are leaves turning yellow?",
         
         text: """
        This can be happening for a few reasons :
        - Plant is under stress due to environmental changes or while coping with an acclimation period to its new home.
        - Some older leaves might turn yellow and shed. Usually, it happens to the lower leaves.
        - Nutrient deficiency.
        """
        )
    

]
