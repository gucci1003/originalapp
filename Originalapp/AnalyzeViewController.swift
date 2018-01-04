//
//  AnalyzeViewController.swift
//  Originalapp
//
//  Created by 関口 聡 on 2017/12/27.
//  Copyright © 2017年 gucci1003. All rights reserved.
//

import UIKit

class AnalyzeViewController: UIViewController {

    @IBOutlet weak var graf: UILabel!
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            graf.text = "グラフ0"
        case 1:
            graf.text = "グラフ1"
        case 2:
            graf.text = "グラフ2"
        case 3:
            graf.text = "グラフ3"
        default:
            print("該当なし")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
