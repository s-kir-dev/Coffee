//
//  DrinkCollectionViewCell.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 25.09.24.
//

import UIKit

class DrinkCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfCellsInRow: CGFloat = 2 // Количество ячеек в одном ряду
        let padding: CGFloat = 5 // Отступ между ячейками
        let totalPadding = padding * (numberOfCellsInRow + 1) // Общий отступ
        let availableWidth = collectionView.frame.width - totalPadding // Доступная ширина
        let cellWidth = availableWidth / numberOfCellsInRow // Ширина одной ячейки
        
        return CGSize(width: cellWidth, height: cellWidth * 1.5) // Высота может быть больше ширины
    }
    
    func collectionViewlayout(_ collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
