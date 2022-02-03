//
//  Quote.swift
//  quotesChallenge16
//
//  Created by Hamed Mohamed on 17/12/2021.
//

import Foundation
class QutesModel: Identifiable, Decodable {
    var id:UUID?
    var person:String
    var imagePerson:String
    var image:String
    var quotes:[String]
}
