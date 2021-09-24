//
//  BlogDataModel.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 19/09/21.
//

import Foundation
import SwiftUI

struct BlogData : Identifiable {
    var id = UUID()
    var image : URL
    var headline : String
    var subhadline : String
    var body : String
}


var blogData : [BlogData] = [
    
    BlogData(image: URL(string:"https://dl.dropbox.com/s/azj6jn8v6i3oyvy/BlogImage2.jpg?dl=0")!, headline: "How to divide Bird of Paradise plant?", subhadline: "Today I will teach you how to divide Bird of Paradise plant and make multiple arrangements and then arrange them according to the asthetics your room.",
             body: """
                Bird of paradise plants can be divided if :
                
                - You wish to have a few arrangements instead of one
                - Your plant outgrew its pot but you do not have a space for a larger pot.
                
                Extra Tips :
                
                - The best time to divide your plants is early Spring- early Summer.
                - Use fresh soil for repotting.
                - Divided and potted plants need to be water more frequently for the first 3 months.
                - Plants require more water in dry and hot weather.
                - Do not allow the soil to dry out completely.
                - Check the soil often to ensure that it stays moist.
                - Place plants in the brightest light spot.
                - Rotate every time you water to provide an equal light exposure to all sides.
                - Mist frequently for refreshment.
                - Place humidifier nearby to elevate humidity levels.
                """
    ),
    
    BlogData(image: URL(string:"https://dl.dropbox.com/s/yxkcrf8cee2r83a/BlogImage1.jpg?dl=0")!, headline: "How to divide Bird of plant?", subhadline: "Today I will teach you how to divide Bird of Paradise plant and make multiple arrangements and then arrange them according to the asthetics your room.",
             body: """
                Bird of paradise plants can be divided if :
                
                - You wish to have a few arrangements instead of one
                - Your plant outgrew its pot but you do not have a space for a larger pot.
                
                Extra Tips :
                
                - The best time to divide your plants is early Spring- early Summer.
                - Use fresh soil for repotting.
                - Divided and potted plants need to be water more frequently for the first 3 months.
                - Plants require more water in dry and hot weather.
                - Do not allow the soil to dry out completely.
                - Check the soil often to ensure that it stays moist.
                - Place plants in the brightest light spot.
                - Rotate every time you water to provide an equal light exposure to all sides.
                - Mist frequently for refreshment.
                - Place humidifier nearby to elevate humidity levels.
                """
    )

]
