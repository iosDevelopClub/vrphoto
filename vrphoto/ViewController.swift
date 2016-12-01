//
//  ViewController.swift
//  vrphoto
//
//  Created by David Kakaladze on 27.07.16.
//  Copyright © 2016 iosDevelopClub. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100 // возвращаем количество ячеек
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell // выводим управление ячейкой в отдельный класс
        
        cell.label.text = String((indexPath as NSIndexPath).row) // текст в ячейках
        cell.backgroundColor = UIColor.lightGray // цвет ячеек
        
        return cell
     }
    
    func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
    
        let size = CGSize(width: 80, height: 80) // задаем размеры ячейки
        return size
    
    }
    
    

}

