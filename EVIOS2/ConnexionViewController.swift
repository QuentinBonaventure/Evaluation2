//
//  ConnexionViewController.swift
//  EVIOS2
//
//  Created by Quentin Bona on 23/08/2022.
//

import UIKit

class ConnexionViewController: UIViewController {
    
    @IBOutlet  var headerImage: UIImageView!
    @IBAction func closeButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    var image: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        headerImage.image = UIImage(named: image)
        // Do any additional setup after loading the view.
    }
    


}
