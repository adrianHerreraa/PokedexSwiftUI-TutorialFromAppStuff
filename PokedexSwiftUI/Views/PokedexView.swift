//
//  PokedexView.swift
//  PokedexSwiftUI
//
//  Created by Luis Adrian Pineda Herrera on 23/05/21.
//

import SwiftUI

struct PokedexView: View {
    
    private let gridItems = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach( viewModel.pokemonModel ) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
