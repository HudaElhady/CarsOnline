//
//  ViewController.swift
//  Cars
//
//  Created by MIS on 7/6/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class CarsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var noDataLabel: UILabel!
    @IBOutlet weak var ScrollLabel: UILabel!
    @IBOutlet weak var filterView: UIView!
    @IBOutlet weak var carsTableView: UITableView!
    var carsArr = [Car]()
    var ticks : Double!
    var refreshControl: UIRefreshControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
      
        self.refreshControl = UIRefreshControl()
        self.refreshControl.addTarget(self, action: #selector(getCars), for: UIControlEvents.valueChanged)
        self.refreshControl.tintColor = UIColor.red
        self.carsTableView.addSubview(refreshControl)
         getCars()
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    //MARK: - tableview methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath) as! CarTableViewCell
        cell.configureCell(carObj: carsArr[indexPath.row], ticks: ticks)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
   
    //MARK: - Retrieve Cars
    @objc func getCars() {
        ScrollLabel.text = ""
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        if !refreshControl.isRefreshing
        {
        
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activityIndicator.startAnimating()
        }
        let carService = CarServices()
        carService.getCars(complation: { json in
            if let obj = json , obj.cars.count > 0
            {
                activityIndicator.stopAnimating()
                self.refreshControl.endRefreshing()
                //TODO: To be localized
                self.ScrollLabel.text = "Scroll down to search"
                self.carsArr.removeAll()
              
                self.carsArr.append(contentsOf: obj.cars)
                self.ticks = Double(obj.ticks)
                
                self.carsTableView.reloadData()
            }else{
               self.noDataLabel.text = "Something went wrong"
            }
            
        }) { (errorCode) in
            //TODO: To be localized
            self.ScrollLabel.text = "Scroll down to search"
            activityIndicator.stopAnimating()
           self.refreshControl.endRefreshing()
                if errorCode == ErrorCode.NoInternet
                {
                    self.noDataLabel.text = "Please check your internet connection"

                }else{
                    self.noDataLabel.text = "Something went wrong"
                }
        }
    }
    
    func setStyle() {
        filterView.layer.cornerRadius = 5
        addShadow(view: filterView, color: UIColor.lightGray)
    }
}



