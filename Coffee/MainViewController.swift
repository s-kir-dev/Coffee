//
//  MainViewController.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 22.09.24.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var drinksSegmented: UISegmentedControl!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        
        segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.darkText], for: .normal)
        
        drinksSegmented.addTarget(self, action: #selector (valueChanged), for: .valueChanged)
    }
    
    @objc func valueChanged(_ sender: UISegmentedControl) {
        collectionView.setContentOffset(.zero, animated: true)
        collectionView.reloadData()
    }

}


extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch drinksSegmented.selectedSegmentIndex {
        case 0 : return DrinksData.coffee.count
        case 1 : return DrinksData.tea.count
        case 2 : return DrinksData.coldDrinks.count
        case 3 : return DrinksData.deserts.count
        default : return 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DrinkCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        if segmentedControl.selectedSegmentIndex == 0 {
            let coffee = DrinksData.coffee[indexPath.row]
            
            cell.nameLabel.text = coffee.name
            cell.priceLabel.text = "\(coffee.price)₽"
            cell.imageView.image = UIImage(named: coffee.image)
        } else if segmentedControl.selectedSegmentIndex == 1 {
            let tea = DrinksData.tea[indexPath.row]
            
            cell.nameLabel.text = tea.name
            cell.priceLabel.text = "\(tea.price)₽"
            cell.imageView.image = UIImage(named: tea.image)
        } else if segmentedControl.selectedSegmentIndex == 2 {
            let coldDrinks = DrinksData.coldDrinks[indexPath.row]
            
            cell.nameLabel.text = coldDrinks.name
            cell.priceLabel.text = "\(coldDrinks.price)₽"
            cell.imageView.image = UIImage(named: coldDrinks.image)
        } else if segmentedControl.selectedSegmentIndex == 3 {
            let desserts = DrinksData.deserts[indexPath.row]
            
            cell.nameLabel.text = desserts.name
            cell.priceLabel.text = "\(desserts.price)₽"
            cell.imageView.image = UIImage(named: desserts.image)
        }
        
        return cell
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(
            width: collectionView.frame.width / 3.2,
            height: collectionView.frame.width / 3.2
        )
    }
    
}
