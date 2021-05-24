//
//  PokemonModel.swift
//  PokedexSwiftUI
//
//  Created by Luis Adrian Pineda Herrera on 23/05/21.
//

import Foundation


struct PokemonModel: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    
}


//let MOCK_POKEMON: [PokemonModel] = [
//    .init(id: 0, name: "Bulbasur", imageUrl: "bulbasur", type: "Poison"),
//    .init(id: 1, name: "Ivysaur", imageUrl: "bulbasur", type: "Poison"),
//    .init(id: 2, name: "Venasaur", imageUrl: "bulbasur", type: "Poison"),
//    .init(id: 3, name: "Charmander", imageUrl: "bulbasur", type: "Fire"),
//    .init(id: 4, name: "Charmeleon", imageUrl: "bulbasur", type: "Fire"),
//    .init(id: 5, name: "Charizard", imageUrl: "bulbasur", type: "Fire")
//]
