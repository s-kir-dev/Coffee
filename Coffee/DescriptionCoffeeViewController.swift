//
//  DescriptionCoffeeViewController.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 25.09.24.
//

import UIKit

class DescriptionCoffeeViewController: UIViewController {

    var drink: Drink?

    @IBOutlet weak var titleBar: UINavigationItem!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
 
    @IBOutlet weak var addToBasketButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let drink = drink {
            titleBar.title = drink.name
            descriptionLabel.text = drink.description
            addToBasketButton.setTitle("Add to cart \(drink.price)₽", for: .normal)
            imageView.image = UIImage(named: drink.image)
        }
    }

    @IBAction func addToBasketTapped(_ sender: UIButton) {
        let message = "Товар успешно добвлен в корзину!"
        let alert = UIAlertController(title: "Успешно", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.dismiss(animated: true)
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
}
