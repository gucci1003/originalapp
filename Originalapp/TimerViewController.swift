//
//  TimerViewController.swift
//  Originalapp
//
//  Created by 関口 聡 on 2017/12/27.
//  Copyright © 2017年 gucci1003. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var timerlabel: UILabel!
    
    var timer: Timer!
    // タイマー用の時間のための変数
    var timer_sec = 0
    
    @IBAction func starttimer(_ sender: Any) {
        // 動作中のタイマーを1つに保つために、 timer が存在しない場合だけ、タイマーを生成して動作させる
        if self.timer == nil {
            // タイマーの作成、始動
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updatetimer), userInfo: nil, repeats: true)
        }
    }
    
    // タイムを表示する
    func updatetimer(timer: Timer) {
        self.timer_sec += 1
        self.timerlabel.text = String(format: "\(timer_sec)")
    }
    
    @IBAction func resettimer(_ sender: Any) {
        // タイマーが動いていれば止める
        if self.timer != nil {
            self.timer.invalidate()   // 現在のタイマーを破棄する
            self.timer = nil          // startTimer() の timer == nil で判断するために、 timer = nil としておく
        }
        
        // DBにタイムを保存する
        
        // タイムをリセットする
        self.timer_sec = 0
        self.timerlabel.text = String(format: "\(timer_sec)")
        
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
