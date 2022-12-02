//
//  OtherCurrencyDataTableViewCell.swift
//  CurrencyConverter
//
//  Created by Irfan Saeed on 2022-12-03.
//

import UIKit

class OtherCurrencyDataTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    public var cellModel : CurrencyRoot! {
        didSet {
            self.titleLabel.text = cellModel.currencySymbol + StringConstants.epsilonString + cellModel.currencyValue
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        titleLabel.text = StringConstants.emptyString
    }

}
