//
//  File.swift
//  jsonParsing
//
//  Created by Macbook on 26/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import Foundation

struct Course : Decodable{
    
    var id : Int
    var name : String
    var link : String
    var imageUrl : String
    var number_of_lessons : Int
}
