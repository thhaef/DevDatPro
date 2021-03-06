---
title       : Course Project
subtitle    : Slidify Presentation
author      : Thomas H.
job         : 
framework   : shower     # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

---  
   
   
# Course Project   
## Developing Data Products   
### Slidify Presentation   



--- .class #id
  
  
## Application
For the Course Project of the Course `Developing Data Products` I created a tiny app to calculate shipping costs between a few european cities.   

You can check the app here:   
https://thhaef.shinyapps.io/Project




---


## Mechanics

The app uses the dataset `eurodist` to get the distances between selected cities in europe.   
Based on these distances it estimates a price for the total shipping.    
Options for different packages sizes/weights and fast shipping are included.

---   
  
  
## Opportunities
It is an easy-to-use application and close to actual usage. (The way the prices are calculated has to be altered, obviously, but by actual shipping companies).   
To compare the distances i will show a map of europe in the next slide, produced with some R code.   





--- 
  
  
  
## Europe
  
<!-- GeoChart generated in R 3.1.2 by googleVis 0.5.10 package -->
<!-- Fri Sep 25 18:36:52 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataGeoChartID1afc58394e62 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Alabama",
2.1 
],
[
 "Alaska",
1.5 
],
[
 "Arizona",
1.8 
],
[
 "Arkansas",
1.9 
],
[
 "California",
1.1 
],
[
 "Colorado",
0.7 
],
[
 "Connecticut",
1.1 
],
[
 "Delaware",
0.9 
],
[
 "Florida",
1.3 
],
[
 "Georgia",
2 
],
[
 "Hawaii",
1.9 
],
[
 "Idaho",
0.6 
],
[
 "Illinois",
0.9 
],
[
 "Indiana",
0.7 
],
[
 "Iowa",
0.5 
],
[
 "Kansas",
0.6 
],
[
 "Kentucky",
1.6 
],
[
 "Louisiana",
2.8 
],
[
 "Maine",
0.7 
],
[
 "Maryland",
0.9 
],
[
 "Massachusetts",
1.1 
],
[
 "Michigan",
0.9 
],
[
 "Minnesota",
0.6 
],
[
 "Mississippi",
2.4 
],
[
 "Missouri",
0.8 
],
[
 "Montana",
0.6 
],
[
 "Nebraska",
0.6 
],
[
 "Nevada",
0.5 
],
[
 "New Hampshire",
0.7 
],
[
 "New Jersey",
1.1 
],
[
 "New Mexico",
2.2 
],
[
 "New York",
1.4 
],
[
 "North Carolina",
1.8 
],
[
 "North Dakota",
0.8 
],
[
 "Ohio",
0.8 
],
[
 "Oklahoma",
1.1 
],
[
 "Oregon",
0.6 
],
[
 "Pennsylvania",
1 
],
[
 "Rhode Island",
1.3 
],
[
 "South Carolina",
2.3 
],
[
 "South Dakota",
0.5 
],
[
 "Tennessee",
1.7 
],
[
 "Texas",
2.2 
],
[
 "Utah",
0.6 
],
[
 "Vermont",
0.6 
],
[
 "Virginia",
1.4 
],
[
 "Washington",
0.6 
],
[
 "West Virginia",
1.4 
],
[
 "Wisconsin",
0.7 
],
[
 "Wyoming",
0.6 
] 
];
data.addColumn('string','state.name');
data.addColumn('number','Illiteracy');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartGeoChartID1afc58394e62() {
var data = gvisDataGeoChartID1afc58394e62();
var options = {};
options["width"] =    600;
options["height"] =    400;
options["region"] = "150";

    var chart = new google.visualization.GeoChart(
    document.getElementById('GeoChartID1afc58394e62')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "geochart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartGeoChartID1afc58394e62);
})();
function displayChartGeoChartID1afc58394e62() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartGeoChartID1afc58394e62"></script>
 
<!-- divChart -->
  
<div id="GeoChartID1afc58394e62" 
  style="width: 600; height: 400;">
</div>

