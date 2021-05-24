//
//  PokemonCell.swift
//  PokedexSwiftUI
//
//  Created by Luis Adrian Pineda Herrera on 23/05/21.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    
    let pokemonModel: PokemonModel
    let viewModel: PokemonViewModel
    
    let backgroundColor: Color
    
    init(pokemon: PokemonModel, viewModel: PokemonViewModel) {
        self.pokemonModel = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemonModel.type))
    }
    
    var body: some View {
        ZStack{
            VStack( alignment: .leading){
                
                Text(pokemonModel.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                
                HStack{
                    
                    Text(pokemonModel.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    KFImage(URL(string: pokemonModel.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding(
                            [.bottom, .trailing], 4
                        )
                }
            }
        }
        .background(backgroundColor)
        .cornerRadius(12)
        .shadow(color: backgroundColor, radius: 6, x: 0.0, y: 0.0)
    }
}
