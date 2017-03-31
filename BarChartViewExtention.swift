//
//  BarChartViewExtention.swift
//  
//  Extension for simplify using of BarChartView class from Charts https://github.com/danielgindi/Charts
//  This extention just add new method setBarChartData(:[String]:[Double]:String) wich set string values for xAxis and numeric values for yAxis
//
//  Created by Alexander Smetannikov on 31/03/2017.
//  Copyright © 2017 AlexSmetannikov. All rights reserved.
//

import Foundation
import Charts


extension BarChartView {
    
    private class BarChartFormatter: NSObject, IAxisValueFormatter {
        
        var labels: [String] = []
        
        func stringForValue(_ value: Double, axis: AxisBase?) -> String {
            return labels[Int(value)]
        }
        
        init(labels: [String]) {
            super.init()
            self.labels = labels
        }
    }
    
    /// Set string values for xAxis and numeric values for yAxis.
    /// Number of values calculated by yValues.Count
    /// - parameter xValues: String values for xAxis
    /// - parameter yValues: Numeric values (Double) for yAxix
    /// - parameter label: Just label for data
    func setBarChartData(xValues: [String], yValues: [Double], label: String) {
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<yValues.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: yValues[i])
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: label)
        let chartData = BarChartData(dataSet: chartDataSet)
        
        let chartFormatter = BarChartFormatter(labels: xValues)
        let xAxis = XAxis()
        xAxis.valueFormatter = chartFormatter
        self.xAxis.valueFormatter = xAxis.valueFormatter
        
        self.data = chartData
    }
}
