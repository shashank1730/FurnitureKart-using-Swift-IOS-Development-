//
//  TableViewCell.swift
//  Shashank
//
//  Created by nikhilesh yadav on 05/11/22.
//  Copyright © 2022 nikhilesh yadav. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var warModel:WardrobesModel!{
        didSet{
            lblPrice.text = warModel.Price
            lblTitle.text = warModel.title
            img.image = warModel.img
        }
    }
    
    var sofModel:SofaModel!{
        didSet{
            lblPrice.text = sofModel.Price
            lblTitle.text = sofModel.title
            img.image = sofModel.img
        }
    }
    
    var bedModel:BedModel!{
        didSet{
            lblPrice.text = bedModel.Price
            lblTitle.text = bedModel.title
            img.image = bedModel.img
        }
    }
    
    var tvModel:TvUnitModel!{
        didSet{
            lblPrice.text = tvModel.Price
            lblTitle.text = tvModel.title
            img.image = tvModel.img
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
    

}
