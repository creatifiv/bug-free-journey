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
        
        coins = [coin1, coin2, coin3, coin4, coin5]
    }
    
    var coinDelegate: CoinDelegate?
    
    var coins:[Coin] = []
    
    var country = [
    
    "United States of America",
    "Germany",
    "Canada",
    "Austrailia",
    "Japan",
    /*
    "united Kingdom",
    "Sweden",
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
    "Israel", */
    ]
    
    var flag = ["us.png", "de.png", "ca.png", "au.png", "jp.png", /*"uk.png", "se.png", "fr.png", "nz.png","dk.png", "nz.png", "at.png", "it.png", "lu.png", "sg.png", "es.png", "cn.png", "ie.png", "kr.png", "br.png", "th.png", "in.png", "pt.png", "ru.png", "il.png"*/]
    
    let coin1 = Coin(heads: "us_front.png", tails: "us_back.png")
    let coin2 = Coin(heads: "de_front.png", tails: "de_back.png")
    let coin3 = Coin(heads: "ca_front.png", tails: "ca_back.png")
    let coin4 = Coin(heads: "au_front.png", tails: "au_back.png")
    let coin5 = Coin(heads: "jp_front.png", tails: "jp_back.png")
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return country.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CoinTableViewCell
        
        cell.country!.text = country[indexPath.row]
        cell.countryFlag!.image = UIImage(named: flag[indexPath.row])
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
       return "Select new coin"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        coinDelegate?.getCoin(coin: coins[indexPath.row])
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
}
