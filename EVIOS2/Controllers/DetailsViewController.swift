//
//  DetailsViewController.swift
//  EVIOS2
//
//  Created by Quentin Bona on 24/08/2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokedexLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var generationLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    var pokemon : Pokemon!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
      
       
        
        // Do any additional setup after loading the view.
    }
    
    func setup(){
        nameLabel.text = pokemon.name
        pokemonImage.image = pokemon.image
        pokedexLabel.text = pokemon.pokedex.description
        typeLabel.text = pokemon.type.rawValue
        generationLabel.text = pokemon.generation.description
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
