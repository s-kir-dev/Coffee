//
//  OrderViewCell.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 8.10.24.
//

import UIKit

class OrderViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productPrice: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Инициализация кода
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Конфигурируем отображение для выбранного состояния
    }
}
