//
//  PiockerViewController.swift
//  EVIOS2
//
//  Created by Quentin Bona on 23/08/2022.
//
import SafariServices
import UIKit

class PickerViewController: UIViewController {
    

    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBAction func  didTapMoreInfos(){
        if let url = URL(string: "https://google.fr"){
        let vc = SFSafariViewController(url: url)
            present(vc, animated: true)
        }
        
    }
    var pokemons = [Pokemon]()
    var color = [Color]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadColor()
        loadPokemon()
        pickerView.reloadAllComponents()
        pickerView.dataSource = self
        pickerView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func loadColor(){
            color.append(Color(colorName: "Red", backGroundColor: .red))
            color.append(Color(colorName: "Blue", backGroundColor: .blue))
            color.append(Color(colorName: "Yellow", backGroundColor: .yellow))
            color.append(Color(colorName: "Purple", backGroundColor: .purple))
            color.append(Color(colorName: "Black", backGroundColor: .black))
            color.append(Color(colorName: "Green", backGroundColor: .green))
            color.append(Color(colorName: "White", backGroundColor: .white))
        }
    func loadPokemon(){
        
        pokemons.append(Pokemon(name: "Bulbizarre", type: .grass, generation: 1, image: UIImage(named: "Bulbizarre"), pokedex: 2, height: 102))
        pokemons.append(Pokemon(name: "Carapuce",type: .water,generation: 1, image: UIImage(named: "Carapuce"), pokedex: 4, height: 59))
        pokemons.append(Pokemon(name: "Dracaufeu",type: .fire, generation: 1, image: UIImage(named: "Dracaufeu"), pokedex: 9, height: 150 ))
        pokemons.append(Pokemon(name: "Florizarre",type: .poison, generation: 2, image: UIImage(named: "Florizarre"), pokedex: 4, height: 120))
        pokemons.append(Pokemon(name: "Herbizarre",type: .grass, generation: 1, image: UIImage(named: "Herbizarre"), pokedex: 6, height: 123))
        pokemons.append(Pokemon(name: "Reptincel",type: .fire, generation: 1, image: UIImage(named: "Reptincel"), pokedex: 8, height: 125))
        
        
    }
    @objc func didTapSegmentControl(segmentedControl:UISegmentedControl){
            if segmentedControl.selectedSegmentIndex == 0 {

                imagePokemon.isHidden = false
                pickerView.isHidden = false


            }else{
                imagePokemon.isHidden = true
                pickerView.isHidden = true
            }
        }
    
    

    

 

}

extension PickerViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        switch component {
        case 0 :
           return pokemons.count
        case 1 :
           return color.count
        default:
           return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return pokemons[row].name
        case 1:
            return color[row].colorName
        default:
           return ""
        }
    }


    /*func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return pokemons[row].name
        case 1:
            return color[row].colorName
        default:
           return ""
        }
    }
    */
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        switch component {
        case 0:
            imagePokemon.image = pokemons[row].image
        case 1:
            imagePokemon.backgroundColor = color[row].backGroundColor
        default:
            return
        }

        }
    override func viewDidAppear(_ animated: Bool) {
        imagePokemon.backgroundColor = .red
        imagePokemon.image = pokemons[0].image
    }

}
