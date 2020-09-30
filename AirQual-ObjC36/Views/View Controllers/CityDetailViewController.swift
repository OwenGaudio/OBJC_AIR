//
//  CityDetailViewController.swift
//  AirQual-ObjC36
//
//  Created by Owen Gaudio on 9/30/20.
//  Copyright © 2020 Owen Gaudio. All rights reserved.
//

import UIKit

import UIKit

class CityDetailViewController: UIViewController {
    
    // MARK: - Properties
    var country: String?
    var state: String?
    var city: String?
    
    // MARK: - Outlets
        @IBOutlet weak var cityNameLabel: UILabel!
        @IBOutlet weak var stateLabel: UILabel!
        @IBOutlet weak var countryLabel: UILabel!
        @IBOutlet weak var temperatureLabel: UILabel!
        @IBOutlet weak var humidityLabel: UILabel!
        @IBOutlet weak var windSpeedLabel: UILabel!
        @IBOutlet weak var aqiLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let city = city,
            let state = state,
            let country = country
            else { return }
        
        CityAirQualityController.fetchCityData(city, state: state, country: country) { (cityDetails) in
            if let details = cityDetails {
                self.updateViews(with: details)
            }
        }
    }
    
    // MARK: - Class Methods
    func updateViews(with details: CityAirQuality) {
        DispatchQueue.main.async {
            self.cityNameLabel.text = details.city
            self.stateLabel.text = details.state
            self.countryLabel.text = details.country
            self.aqiLabel.text = "\(details.pollution.airQualityIndex)"
            self.windSpeedLabel.text = "\(details.weather.windSpeed)"
            self.temperatureLabel.text = "\(details.weather.temperature)"
            self.humidityLabel.text = "\(details.weather.humidity)"
        }
    }
}
