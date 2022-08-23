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
        // Do any additional setup after loading the view.
    }
    
    func loadPokemon(){
        pokemons.append(Pokemon(name: "Bulbizarre", image: UIImage(named: "Bulbizarre")))
        pokemons.append(Pokemon(name: "Carapuce", image: UIImage(named: "Carapuce")))
        pokemons.append(Pokemon(name: "Dracaufeu", image: UIImage(named: "Dracaufeu")))
        pokemons.append(Pokemon(name: "Florizarre", image: UIImage(named: "Florizarre")))
        pokemons.append(Pokemon(name: "Herbizarre", image: UIImage(named: "Herbizarre")))
        pokemons.append(Pokemon(name: "Reptincel", image: UIImage(named: "Reptincel")))
        
        
        
        
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

extension PokemonViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
                tableView.dequeueReusableCell(withIdentifier: PokemonCell.identifier, for: indexPath) as? PokemonCell
        else {
            fatalError("Impossible to retrieve pokemons cell")
        }
        cell.setup(pokemon: pokemons[indexPath.row])
        return cell
    }
    
    
}
