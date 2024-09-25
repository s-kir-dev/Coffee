//
//  MainViewController.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 22.09.24.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
        
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        
        segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.darkText], for: .normal)
    }

}


extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DrinksData.coffee.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DrinkCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let coffee = DrinksData.coffee[indexPath.row]
        
        cell.nameLabel.text = coffee.name
        cell.priceLabel.text = "\(coffee.price)₽"
        cell.imageView.image = UIImage(named: coffee.image)
        
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
