//
//  DescriptionCoffeeViewController.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 25.09.24.
//

import UIKit

class DescriptionCoffeeViewController: UIViewController {

    @IBAction func addToBasketTapped(_ sender: UIButton) {
        let message = "Товар успешно добвлен в корзину!"
        let alert = UIAlertController(title: "Успешно", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.dismiss(animated: true)
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
