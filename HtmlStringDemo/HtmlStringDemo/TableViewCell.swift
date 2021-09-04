//
//  TableViewCell.swift
//  HtmlStringDemo
//
//  Created by Molder on 2021/9/4.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var htmlTextView: UITextView!
    @IBOutlet weak var textViewStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
