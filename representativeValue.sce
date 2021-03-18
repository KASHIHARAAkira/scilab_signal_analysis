rangeData = 3000:4000;  // Extract the area for view

DATA = csvRead("./src/data.csv",',', [], 'string');   // Import data

TEMP = DATA(rangeData, 2).';    // Extract temperature data
TEMP = strtod(TEMP);    // Convert string to double (decimal)

maxTemp = max(TEMP) // Maximum temperature
minTemp = min(TEMP) // Minimum temperature
meanTemp = mean(TEMP)   // Average of temperature
medianTemp = median(TEMP)   // Median of temperature

// Make an array of result
representTemp = [minTemp, maxTemp, meanTemp, medianTemp]    // Result array
strLegend = ["min","max","mean", "median"]    // Legend array
representiveValue = [strLegend; string(representTemp)]  // A array for display
disp(representiveValue) // Display result

// plot representative value
[srow, scol] = size(TEMP);  // Get the size of plot
plotDataMin = minTemp * ones(scol,1);   // Minimum value plot data
plotDataMax = maxTemp * ones(scol,1);   // Maximum value plot data
plotDataMean = meanTemp * ones(scol,1); // Mean value plot data
plotDataMedian = medianTemp * ones(scol,1); // Median value plot data

plot(TEMP, 'b')  // Plot 2D line graph of raw data
ylabel("Temperature [degree]")  // y-axis data
xlabel("Hour [-]")  // x-axis label

plot(plotDataMin, 'r-')     // plot minimum data
plot(plotDataMax, 'r--')    // plot maximum data
plot(plotDataMean, 'r:')    // plot mean data
plot(plotDataMedian, 'r-.') // plot median data
