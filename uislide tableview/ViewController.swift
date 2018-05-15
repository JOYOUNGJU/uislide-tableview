//
//  ViewController.swift
//  uislide tableview
//
//  Created by D7703_27 on 2018. 5. 15..
//  Copyright © 2018년 kwackjihoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mytableview: UITableView!
    @IBOutlet weak var mylb: UILabel!
    @IBOutlet weak var myslide: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mytableview.dataSource = self
        mytableview.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }

    @IBAction func slide(_ sender: Any) {
        mytableview.reloadData()
        
        let val = Int(myslide.value)
        print(Int(myslide.value))
        print("슬라이드 움직임")
        mylb.text = String(val)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identtifier = "RE"
        let cell = mytableview.dequeueReusableCell(withIdentifier: identtifier, for: indexPath)
        cell.textLabel?.text = String(Int(myslide.value) + indexPath.row)
        return cell
    }

    
}

