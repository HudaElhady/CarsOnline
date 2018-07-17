//
//  CarTableViewCell.swift
//  Cars
//
//  Created by MIS on 7/13/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit
import Kingfisher
import CountdownLabel


class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var carNameLabel: UILabel!
    
    @IBOutlet weak var carPriceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lotLabel: UILabel!
    @IBOutlet weak var bidsLabel: UILabel!
    
    var seconds = 60
    var timer = Timer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setStyle()
        
    }

    func configureCell(carObj : Car , ticks : Double) {
        carNameLabel.text = "\(carObj.makeEn ?? "")"
        carPriceLabel.text = "\(carObj.auctionInfo.currentPrice ?? 0)"
        lotLabel.text = "\(carObj.auctionInfo.lot ?? 0)"
        bidsLabel.text = "\(carObj.auctionInfo.bids ?? 0)"
        timeLabel.textColor = UIColor.black
        currencyLabel.text = "\(carObj.auctionInfo.currencyEn ?? "")"
        getDateFromTimeStamp(timeStamp: ticks)
        if let img = carObj.image {
            let imgWithWidth = img.replacingOccurrences(of: "[w]", with: "500")
            let imgWithHeight = imgWithWidth.replacingOccurrences(of: "[h]", with: "500")
            if let imgURL = URL(string:"\(imgWithHeight)")
            {
                carImage.kf.setImage(with: imgURL)
            }else{
                carImage.image = nil
            }
        }
        runTimer()
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 15, target: self,   selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
    }
    @objc func updateTimer() {
        //TODO: Fix timer when scroll
        timeLabel.textColor = UIColor.red
    }
    
    func getDateFromTimeStamp(timeStamp : Double) {
        (timeLabel as! CountdownLabel).setCountDownTime(minutes: timeStamp)
        (timeLabel as! CountdownLabel).animationType = .Scale
        (timeLabel as! CountdownLabel).start()
    }

    func setStyle() {
        contentView.layer.cornerRadius = 5
        containerView.layer.cornerRadius = 5
        addShadow(view: containerView, color: UIColor.lightGray)
    }
}
