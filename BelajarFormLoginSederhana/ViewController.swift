//
//  ViewController.swift
//  BelajarFormLoginSederhana
//
//  Created by Nova Arisma on 9/6/20.
//  Copyright © 2020 Nova Arisma. All rights reserved.
//
//belajar dari medium.com
//https://medium.com/swift-id/membuat-form-login-sederhana-dalam-ios-app-3a2f92976cd5
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblFormLogin: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPressLogin(_ sender: Any) {
        let username = usernameField.text!
            let password = passwordField.text!
            
            if username.isEmpty || password.isEmpty {
                let alertkosong = UIAlertController(title: "Form Login", message: "Form tidak boleh kosong", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertkosong.addAction(okAction)
                present(alertkosong, animated: true, completion: nil)
                return
            }
            if (username == "test") && (password == "12345") {
                let alert = UIAlertController( title: "Success",
                                               message: "Selamat Datang Di Aplikasi ini",
                                               preferredStyle: .alert )
                let okAction =  UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion:  nil)
                
            }
            else{
                let alert = UIAlertController(title: "Gagal",
                                              message: "username/passwordnya salah",
                                              preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK",
                                             style: .default,
                                             handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            }
        }
    }
    


