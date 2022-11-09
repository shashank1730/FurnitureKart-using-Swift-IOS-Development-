//
//  furnitureViewController.swift
//  Shashank
//
//  Created by nikhilesh yadav on 04/11/22.
//  Copyright © 2022 nikhilesh yadav. All rights reserved.
//

import UIKit

class furnitureViewController: UIViewController {

    @IBOutlet weak var segOut: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var Wardata:[WardrobesModel] = []
    var Sofadata:[SofaModel] = []
    var Beddata:[BedModel] = []
    var Tvdata:[TvUnitModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Wardata = [
            WardrobesModel(Price: "Wood Wardrobe", img: #imageLiteral(resourceName: "war4"), title: "30,000"),
            WardrobesModel(Price: "Designer Wardrobe", img: #imageLiteral(resourceName: "war2"), title: "40,000"),
            WardrobesModel(Price: "Royal White Wardrobe", img: #imageLiteral(resourceName: "war1"), title: "60,000"),
            WardrobesModel(Price: "Children Wardrobe", img: #imageLiteral(resourceName: "war3"), title: "25,000"),
            WardrobesModel(Price: "Wood Wardrobe", img: #imageLiteral(resourceName: "war4"), title: "30,000"),
            WardrobesModel(Price: "Designer Wardrobe", img: #imageLiteral(resourceName: "war2"), title: "40,000"),
            WardrobesModel(Price: "Royal White Wardrobe", img: #imageLiteral(resourceName: "war1"), title: "60,000"),
            WardrobesModel(Price: "Children Wardrobe", img: #imageLiteral(resourceName: "war3"), title: "25,000")]
        
        Sofadata = [
            SofaModel(Price: "Leather Sofa", img: #imageLiteral(resourceName: "sofa3"), title: "80,000"),
            SofaModel(Price: "Coloured Sofa", img: #imageLiteral(resourceName: "sofa2"), title: "90,000"),
            SofaModel(Price: "Sofa Set", img: #imageLiteral(resourceName: "sofa1"), title: "99,000"),
            SofaModel(Price: "Designer Sofa", img: #imageLiteral(resourceName: "sofa4"), title: "75,000"),
            SofaModel(Price: "Leather Sofa", img: #imageLiteral(resourceName: "sofa3"), title: "80,000"),
            SofaModel(Price: "Coloured Sofa", img: #imageLiteral(resourceName: "sofa2"), title: "90,000"),
            SofaModel(Price: "Sofa Set", img: #imageLiteral(resourceName: "sofa1"), title: "99,000"),
            SofaModel(Price: "Designer Sofa", img: #imageLiteral(resourceName: "sofa4"), title: "75,000")
        ]
        
        Beddata = [
            BedModel(Price: "Queen Bed", img: #imageLiteral(resourceName: "bed1"), title: "15,000"),
            BedModel(Price: "Royal Bed", img: #imageLiteral(resourceName: "bed4"), title: "25,000"),
            BedModel(Price: "Italian Bed", img: #imageLiteral(resourceName: "bed3"), title: "55,000"),
            BedModel(Price: "Modern Bed", img: #imageLiteral(resourceName: "bed5"), title: "75,000"),
            BedModel(Price: "Double Bed", img: #imageLiteral(resourceName: "bed2"), title: "33,000"),
            BedModel(Price: "Queen Bed", img: #imageLiteral(resourceName: "bed1"), title: "15,000"),
            BedModel(Price: "Royal Bed", img: #imageLiteral(resourceName: "bed4"), title: "25,000"),
            BedModel(Price: "Italian Bed", img: #imageLiteral(resourceName: "bed3"), title: "55,000"),
            BedModel(Price: "Modern Bed", img: #imageLiteral(resourceName: "bed5"), title: "75,000"),
            BedModel(Price: "Double Bed", img: #imageLiteral(resourceName: "bed2"), title: "33,000")]
        
        Tvdata = [
            TvUnitModel(Price: "Small TvUnit", img: #imageLiteral(resourceName: "tv3"), title: "41,000"),
            TvUnitModel(Price: "Customized Unit", img: #imageLiteral(resourceName: "tv1"), title: "69,000"),
            TvUnitModel(Price: "White TvUnit", img: #imageLiteral(resourceName: "tv2"), title: "29,000"),
            TvUnitModel(Price: "Small TvUnit", img: #imageLiteral(resourceName: "tv3"), title: "41,000"),
            TvUnitModel(Price: "Customized Unit", img: #imageLiteral(resourceName: "tv1"), title: "69,000"),
            TvUnitModel(Price: "White TvUnit", img: #imageLiteral(resourceName: "tv2"), title: "29,000")]

    }
    
    
    
    @IBAction func btnSegClick(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
}

extension furnitureViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value = 0
        switch segOut.selectedSegmentIndex{
        case 0:
            value = Wardata.count
            break
        case 1:
            value = Sofadata.count
            break
        case 2:
            value = Beddata.count
            break
        case 3:
            value = Tvdata.count
            break
        default:
            break
        }
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        switch segOut.selectedSegmentIndex {
        case 0:
            cell.warModel = Wardata[indexPath.row]
            break
        case 1:
            cell.sofModel = Sofadata[indexPath.row]
            break
        case 2:
            cell.bedModel = Beddata[indexPath.row]
             break
        case 3:
            cell.tvModel = Tvdata[indexPath.row]
            break
        default:
            break
        }
        return cell
    }
    
    
}
