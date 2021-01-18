//
//  ViewController.swift
//  Swift5Keyboard1
//
//  Created by 長井崚介 on 2021/01/18.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
        
        
        
    }


    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
        
        //画面タッチでキーボードを閉じる
        
        }
        
        //リターンキーを押した時にキーボードを閉じる
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            //キーボードが閉じる
            textField.resignFirstResponder()
            return true
        }
        
    }
    

