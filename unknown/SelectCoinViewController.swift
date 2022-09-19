//
//  SelectCoinView.swift
//  unknown
//
//  Created by m1 on 19/09/2022.
//

import UIKit


class SelectCoinViewController: UITableViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var coins = [
    
    "United States of America",
    "Germany",
    "Canada",
    "United Kingdom",
    "Sweden",
    "Australia",
    "Japan",
    "France",
    "Netherlands",
    "Denmark",
    "New Zealand",
    "Austria",
    "Italy",
    "Luxembourg",
    "Singapore",
    "Spain",
    "China",
    "Ireland",
    "South Korea",
    "Brazil",
    "Thailand",
    "India",
    "Portugal",
    "Russia",
    "Israel",
    ]
    
    var flag = ["us.png", "de.png", "ca.png", "uk.png", "se.png", "au.png", "jp.png", "fr.png", "nz.png", "au.png", "it.png", "lu.png", "sg.png", "es.png", "ch.png"]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return coins.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CoinTableViewCell
        
        cell.country!.text = coins[indexPath.row]
        cell.countryFlag!.image = UIImage(named: flag[0])
        
        return cell
        
    }
    
    
    
    
    
    
    
    
}
