//
//  CustomCell.swift
//  StarWarsList
//
//  Created by Sandra Cabeza Bravo on 5/7/22.
//

import UIKit

class CustomCell: UITableViewCell{
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var customActivityIndicator: UIActivityIndicatorView!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
