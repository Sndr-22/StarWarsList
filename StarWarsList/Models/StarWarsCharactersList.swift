//
//  StarWarsCharactersList.swift
//  StarWarsList
//
//  Created by Sandra Cabeza Bravo on 1/7/22.
//

import Foundation

class StarWarsCharactersList: Mappable{
    
    class Item: Mappable{
        var name: String?
        var birth_year: String?
        var gender: String?
        var height: String?
        var mass: String?
        var hair_color: String?
        var skin_color: String?
        var eye_color: String?
    }
    var results = [Item]()
}
