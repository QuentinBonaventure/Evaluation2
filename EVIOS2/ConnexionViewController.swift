//
//  ConnexionViewController.swift
//  EVIOS2
//
//  Created by Quentin Bona on 23/08/2022.
//

import UIKit

class ConnexionViewController: UIViewController {
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet  var headerImage: UIImageView!
    @IBOutlet weak var connectButton: UIButton!
    
    var image: String!
    @IBAction func closeButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func show(_ sender: Any) {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
         
          let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        if predicate.evaluate(with: loginTextField.text) && (passwordTextField.text?.count ?? 0) >= 4 {
              performLogin()
          } else{
              showError()
          }
       
    }
    
    func performLogin(){
        if let validLogin = storyboard?.instantiateViewController(withIdentifier: "TabBarControllerViewController"){
            validLogin.modalPresentationStyle = .fullScreen
            present(validLogin, animated: true)
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        headerImage.image = UIImage(named: image)
        passwordTextField.delegate = self
        loginTextField.delegate = self
        #if DEBUG
        loginTextField.text = "bonasdfsdf@gmail.com"
        #endif
    }
    
 
    
    func showError(){
        let alert = UIAlertController(title: "Error", message: "Vous n'avez pas bien saisi les champs de ma ndé", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true)
    }


}

extension ConnexionViewController: UITextFieldDelegate{
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        }else if(textField == passwordTextField) {
            view.endEditing(true)
        }
        return true
    }
}
