//
//  ViewController.swift
//  EVIOS2
//
//  Created by Quentin Bona on 23/08/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    var imageHeader : String!
    
    @IBOutlet weak var googleButton: UIButton!
    
    @IBOutlet weak var facebookButton: UIButton!
    
   
   
    @IBAction func toGoogleView(){
       if let loginPage = storyboard?.instantiateViewController(withIdentifier: "loginPage") as? ConnexionViewController{
           loginPage.modalPresentationStyle = .fullScreen
           
           loginPage.image = "google_header"
           present(loginPage, animated: true, completion : nil)
        }
        
        
        
        
        
        
        
//        facebookImage.image = UIImage(named: imageHeader)
//        if let googleViewController = storyboard?.instantiateViewController(withIdentifier: <#T##String#>)
        
    }
    
    @IBAction func toFacebookView(){
          if let loginPage = storyboard?.instantiateViewController(withIdentifier: "loginPage") as? ConnexionViewController{
            loginPage.modalPresentationStyle = .fullScreen
              loginPage.image = "faceook_header"
            present(loginPage, animated: true, completion : nil)
            
         }
       
       
        
        
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

