DATA = csvRead("../src/temperature.csv", ',', [], 'string'); // Read csv file

TEMP = DATA(2:$, 2).';    // Extract temperature data
month = DATA(2:$, 1).';
TEMP = strtod(TEMP);    // Convert string to double (decimal)

plot(TEMP)  // Plot 2D line graph
ylabel("Temperature [degree]")  // y-axis data
xlabel("Date [-]")  // x-axis label

maxTemp = max(TEMP) // Maximum temperature
minTemp = min(TEMP) // Minimum temperature
meanTemp = mean(TEMP)   // Average of temperature
medianTemp = median(TEMP)   // Median of temperature

// Make an array of result
representTemp = [minTemp, maxTemp, meanTemp, medianTemp]    // Result array
strLegend = ["min","max","mean", "median"]    // Legend array
representiveValue = [strLegend; string(representTemp)]  // A array for display

disp(representiveValue) // Display result
