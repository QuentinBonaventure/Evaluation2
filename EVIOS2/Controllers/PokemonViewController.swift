//
//  PokemonViewController.swift
//  EVIOS2
//
//  Created by Quentin Bona on 23/08/2022.
//

import UIKit

class PokemonViewController: UIViewController {
    
    var pokemons = [Pokemon]()

    @IBOutlet weak var pokemonTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonTableView.register(UINib(nibName: PokemonCell.identifier, bundle: .main), forCellReuseIdentifier: PokemonCell.identifier)
        loadPokemon()
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
   
    }
    
    func loadPokemon(){
        
        pokemons.append(Pokemon(name: "Bulbizarre", type: .grass, generation: 1, image: UIImage(named: "Bulbizarre"), pokedex: 2, height: 102))
        pokemons.append(Pokemon(name: "Carapuce",type: .water,generation: 1, image: UIImage(named: "Carapuce"), pokedex: 4, height: 59))
        pokemons.append(Pokemon(name: "Dracaufeu",type: .fire, generation: 1, image: UIImage(named: "Dracaufeu"), pokedex: 9, height: 150 ))
        pokemons.append(Pokemon(name: "Florizarre",type: .poison, generation: 2, image: UIImage(named: "Florizarre"), pokedex: 4, height: 120))
        pokemons.append(Pokemon(name: "Herbizarre",type: .grass, generation: 1, image: UIImage(named: "Herbizarre"), pokedex: 6, height: 123))
        pokemons.append(Pokemon(name: "Reptincel",type: .fire, generation: 1, image: UIImage(named: "Reptincel"), pokedex: 8, height: 125))
        
        
    }

}

extension PokemonViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
                tableView.dequeueReusableCell(withIdentifier: PokemonCell.identifier, for: indexPath) as? PokemonCell
        else {
            fatalError("Unable to retrieve pokemons cell")
        }
       
        cell.setup(pokemon: pokemons[indexPath.row])
        return cell
    }
    
    
    
}
extension PokemonViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        170
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if  let detailsViewController = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController")as? DetailsViewController{
            detailsViewController.pokemon = pokemons[indexPath.row]
            navigationController?.pushViewController(detailsViewController, animated: true)
           
        }
                else {
            fatalError("Unable to instantiate pokemon details")
        }
            
        
    }
}
