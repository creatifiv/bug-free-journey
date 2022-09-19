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
    
    var coins = ["USA", "Germany"]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return coins.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel!.text = "Row \(indexPath.row)"
        
        return cell
        
    }
    
    
    
    
    
    
    
    
}
