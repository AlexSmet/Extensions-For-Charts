# Extension for Charts
The extension for simplifying the work with [Charts](https://github.com/danielgindi/Charts)


## Usage

If you use [Charts](https://github.com/danielgindi/Charts) and already have BarChartView in your project, just add  file with extension (BarChartViewExtention.swift) in the project and use function setBarChartData for set values for X and Y axis.

```
    @IBOutlet weak var barChartView: BarChartView!

    ...

    func setChart(){
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let unitsSold = [20.0, 4.0, 3.0, 6.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        
        barChartView.setBarChartData(xValues: months, yValues: unitsSold, label: "Monthly Sales")
    }    
```
