//
//  BookTableViewCell.swift
//  Livre Partage ios
//
//  Created by Julie Saby on 09/12/2020.
//

import UIKit

class BookTableViewCell: UITableViewCell {

	@IBOutlet weak var titleLabel: UILabel!
	
	var book: Item?
	
    override func awakeFromNib() {
        super.awakeFromNib()
        
		self.titleLabel.text = book?.volumeInfo?.title
    }

	func configure(book: Item) {
		self.book = book
		
		self.titleLabel.text = book.volumeInfo?.title
	}
	
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
