//
//  DescriptionCoffeeViewController.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 8.10.24.
//

import UIKit

class DescriptionCoffeeViewController: UIViewController {

    var drink: Drink?
    var orderedProducts: [Drink] = []
    var buttonPrice: Double = 0.0

    @IBOutlet weak var titleBar: UINavigationItem!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var addToBasketButton: UIButton!
    @IBOutlet weak var volumeSegmented: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        volumeSegmented.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        volumeSegmented.setTitleTextAttributes([.foregroundColor: UIColor.systemGray], for: .normal)

        if let drink = drink {
            if DrinksData.deserts.contains(where: { $0.name == drink.name }) {
                volumeSegmented.removeAllSegments()
                let segment = ["1 piece", "2 pieces", "3 pieces"]
                for (index, title) in segment.enumerated() {
                    volumeSegmented.insertSegment(withTitle: title, at: index, animated: false)
                }
                volumeSegmented.selectedSegmentIndex = 0
            }
            titleBar.title = drink.name
            descriptionLabel.text = drink.description
            buttonPrice = drink.price
            addToBasketButton.setTitle("Add to cart \(drink.price)₽", for: .normal)
            imageView.image = UIImage(named: drink.image)
        }
    }

    @IBAction func drinkVolumeSegmented(_ sender: UISegmentedControl) {
        if let drink = drink {
            switch sender.selectedSegmentIndex {
            case 1:
                buttonPrice = drink.price * 1.5
            case 2:
                buttonPrice = drink.price * 2
            default:
                buttonPrice = drink.price
            }
        }
        addToBasketButton.setTitle("Add to cart \(buttonPrice)₽", for: .normal)
    }

    @IBAction func addToBasketTapped(_ sender: UIButton) {
        if let drink = drink {
            // Создаем новый экземпляр Drink с изменённой ценой
            let newDrink = Drink(name: drink.name, description: drink.description, image: drink.image, price: buttonPrice, category: drink.category)

            // Загружаем существующие продукты из UserDefaults
            if let savedData = UserDefaults.standard.data(forKey: "orderedProducts"),
               let savedProducts = try? JSONDecoder().decode([Drink].self, from: savedData) {
                orderedProducts = savedProducts
            }

            // Добавляем новый продукт
            orderedProducts.append(newDrink)

            // Сохраняем обновлённый список в UserDefaults
            if let encoded = try? JSONEncoder().encode(orderedProducts) {
                UserDefaults.standard.set(encoded, forKey: "orderedProducts")
            }

            // Отправляем уведомление о добавлении нового продукта
            NotificationCenter.default.post(name: Notification.Name("ProductAdded"), object: nil)

            // Показываем сообщение об успешном добавлении
            let message = "Товар успешно добавлен в корзину!"
            let alert = UIAlertController(title: "Успешно", message: message, preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.dismiss(animated: true)
            }

            alert.addAction(okAction)
            self.present(alert, animated: true)
        }
    }
}
