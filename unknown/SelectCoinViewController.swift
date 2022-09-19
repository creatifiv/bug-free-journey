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
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return coins.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel!.text = coins[indexPath.row]
        
        return cell
        
    }
    
    
    
    
    
    
    
    
}
