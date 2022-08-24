//
//  PokemonCell.swift
//  EVIOS2
//
//  Created by Quentin Bona on 23/08/2022.
//

import UIKit

class PokemonCell: UITableViewCell {
    static let identifier = "PokemonCell"
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(pokemon: Pokemon){
        pokemonName.text = pokemon.name
        pokemonImage.image = pokemon.image
        
    }
    
    override func prepareForReuse() {
        pokemonImage.image = nil
        pokemonName.text = ""
    }
    
}
