//
//  SelectCoinView.swift
//  unknown
//
//  Created by m1 on 19/09/2022.
//

import UIKit

protocol CoinDelegate{
    func getCoin(coin: Coin)
}


class SelectCoinViewController: UITableViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var coinDelegate: CoinDelegate?
    
    var country = [
    
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
    
    var flag = ["us.png", "de.png", "ca.png", "uk.png", "se.png", "au.png", "jp.png", "fr.png", "nz.png","dk.png", "nz.png", "at.png", "it.png", "lu.png", "sg.png", "es.png", "cn.png", "ie.png", "kr.png", "br.png", "th.png", "in.png", "pt.png", "ru.png", "il.png"]
    
    var coins = ["us.png", "de.png"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return country.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CoinTableViewCell
        
        cell.country!.text = country[indexPath.row]
        cell.countryFlag!.image = UIImage(named: flag[indexPath.row])
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let newCoin = Coin(heads: coins[0] , tails: coins[1])
        coinDelegate?.getCoin(coin: newCoin)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
}
