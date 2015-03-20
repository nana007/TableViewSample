//
//  ViewController.swift
//  sss
//
//  Created by KishimotoNana on 2015/03/20.
//  Copyright (c) 2015年 Nana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //TableViewの宣言
    @IBOutlet var tableView: UITableView!
    
    //空の文字列の配列を作る
    var nameArray=[String]()
    //からの画像の配列
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ////TableViewクラスに書かれているdatasourceメソッドの処理をこのクラスに任せる。（データ提出元をviecontrollにする）
        tableView.dataSource = self
        
        //UITbaleViewにかいてある処理をViewController(self)にまかせてもらう(delegate=まかせる)
        tableView.delegate = self
        
        nameArray = ["がみ", "DJ", "まっすー", "ぶんぶん", "ハリウッド"]
        
        imageArray.append(UIImage(named: "a.png")!)
        imageArray.append(UIImage(named: "b.jpg")!)
        imageArray.append(UIImage(named: "c.jpg")!)
        imageArray.append(UIImage(named: "d.jpg")!)
        imageArray.append(UIImage(named: "a.png")!)
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    //1セクションあたりのセル
    {
    return nameArray.count
    }
    
    
    
    //Cellに値を設定する.
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 再利用できる１０つきのCellを取得する.
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        // セル上のラベルにnameArrayに入っている文字列を表示する
        //"IndexPath.row"は何列目"かを表す
        cell.textLabel!.text = nameArray[indexPath.row]
        cell.imageView!.image = imageArray[indexPath.row]
        
        return cell
        
    }
    
    //MARK UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        //何番目のセルが押されたかをチェックする
        NSLog("%d",indexPath.row)
    }
}

