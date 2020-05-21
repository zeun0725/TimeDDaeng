//
//  CalenderView.swift
//  TimeDDaeng
//
//  Created by 박지은 on 05/05/2020.
//  Copyright © 2020 박지은. All rights reserved.
//

import Foundation
import UIKit


class CalenderView : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var numOfDays=[31,28,31,30,31,30,31,31,30,31,30,31]
    var currentMonthIndex=0
    var currentDaysIndex=0
    var currentYear=0
    let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    @IBOutlet weak var DaysCollectionView: UICollectionView!
    
    
    @IBOutlet weak var monthButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.DaysCollectionView.delegate = self
        self.DaysCollectionView.dataSource = self
        self.DaysCollectionView.reloadData()
        print(weekDay(currentWeekday))
        print(self.DaysCollectionView.frame.size.width, self.DaysCollectionView.frame.size.height)
        for index in 0..<day.count {
            let label = UILabel(frame: CGRect(x: self.DaysCollectionView.frame.size.width/7*CGFloat(index), y: CGFloat(self.monthButton.frame.origin.y)+50.0, width: self.DaysCollectionView.frame.size.width/7, height: 20))
            
        
            label.textAlignment = .left
            label.text = day[index]
            self.view.addSubview(label)
            print(self.DaysCollectionView.frame.size.width/7,label.frame.origin.x,label.frame.width,self.monthButton.frame.origin.y+25)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 35
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DaysCollectionCell", for: indexPath)
        //cell.backgroundColor=UIColor.black
        cell.layer.borderColor=UIColor.gray.cgColor
        cell.layer.borderWidth=1
 
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSizeWidth = collectionView.frame.width
        let itemSizeHeight = collectionView.frame.height
        return CGSize(width: itemSizeWidth/7, height: itemSizeHeight/5)
        //return CGSize(width: collectionView.frame.width/3, height: collectionView.frame.height/3)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    

}
