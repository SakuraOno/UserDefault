//
//  ViewController.swift
//  UserDefault
//
//  Created by 小野　櫻 on 2018/06/06.
//  Copyright © 2018年 小野　櫻. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //使っているTextFieldとButtonを定義
    @IBOutlet weak var fruit: UITextField!
    @IBOutlet weak var vege: UITextField!
    @IBOutlet weak var save: UIButton!
    
    // UserDefaults のインスタンス
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //saveDataに保存されたfruitとKeyを指定されたString型のものをfruitというTextFieldに入れる？
        if saveData.object(forKey: "fruit") != nil{
            fruit.text = (saveData.object(forKey: "fruit") as! String)
        }
         //saveDataに保存されたvegeとKeyを指定されたString型のものをvegeというTextFieldに入れる？
        if saveData.object(forKey: "vege") != nil{
            vege.text = (saveData.object(forKey: "vege") as! String)
        }
        
    }
    
    //保存ボタンが押された時の処理
    @IBAction func saveWord(){
        
        // Keyを指定して読み込み
        let fruit :String = self.fruit.text!
        
        saveData.set(fruit, forKey: "fruit")
        // Keyを指定して読み込み
        let vege :String = self.vege.text!
        saveData.set(vege, forKey: "vege")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

