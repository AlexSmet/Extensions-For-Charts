# Extension for Charts
[![Platform](https://img.shields.io/badge/platform-ios-lightgrey.svg?style=flat)](https://img.shields.io/badge/platform-ios-lightgrey.svg?style=flat)
[![Language](https://img.shields.io/badge/language-swift-orange.svg?style=flat-square)](https://swift.org/about/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://opensource.org/licenses/MIT)

The class extension for simplifying the work with [danielgindi/Charts](https://github.com/danielgindi/Charts)


## Usage

If you use [Charts](https://github.com/danielgindi/Charts) and already have BarChartView in your project, just add  file with extension (BarChartViewExtention.swift) in the project and use function setBarChartData for set values for X and Y axis.

```swift
    @IBOutlet weak var barChartView: BarChartView!

    ...

    func setChart(){
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let unitsSold = [20.0, 4.0, 3.0, 6.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        
        barChartView.setBarChartData(xValues: months, yValues: unitsSold, label: "Monthly Sales")
    }    
```

## Author
Created by Alexander Smetannikov (alexsmetdev@gmail.com)
