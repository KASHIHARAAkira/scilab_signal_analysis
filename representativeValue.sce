rangeData = 1:1000;  // 1から1000の範囲を示します。

DATA = csvRead("./src/data.csv",',', [], 'string');   // data.csvを読み込みます。

TEMP = DATA(rangeData, 2).';    // 読み込んだデータの中から、気温データだけを抽出します。
TEMP = strtod(TEMP);    // 文字列データとして読み込んだので、数値に変換します。

// データを線グラフに描画する
plot(TEMP, 'b')  // 気温データを青色の線グラフで表示する
ylabel("Temperature [degree]");  // y軸のラベルを表示
xlabel("Hour [-]");  // x軸のラベルを表示

// 代表値の算出
maxTemp = max(TEMP) // 最大値の算出
minTemp = min(TEMP) // 最小値の算出
meanTemp = mean(TEMP)   // 平均値の算出
medianTemp = median(TEMP)   // 中央値の算出

// 代表値の算出結果をコンソールに出力するためのブロック
representTemp = [minTemp, maxTemp, meanTemp, medianTemp]    // 代表値算出結果を配列に代入
strLegend = ["min","max","mean", "median"]    // 凡例の配列を作成
representiveValue = [strLegend; string(representTemp)]  // 表示用の配列を作成
disp(representiveValue) // 結果の表示

// 代表値をグラフに描画するためのデータ作成
[srow, scol] = size(TEMP);  // プロットする最大サイズを取得
plotDataMin = minTemp * ones(scol,1);   // 最小値を描画するための配列を作成
plotDataMax = maxTemp * ones(scol,1);   // 最大値を描画するための配列を作成
plotDataMean = meanTemp * ones(scol,1); // 平均値を描画するための配列を作成
plotDataMedian = medianTemp * ones(scol,1); // 中央値を描画するための配列を作成

// 代表値を描画する
plot(plotDataMin, 'r-')     // 最小値の描画（赤色の実線）
plot(plotDataMax, 'r--')    // 最小値の描画（--の破線）
plot(plotDataMean, 'r:')    // 平均値の描画（..の点線）
plot(plotDataMedian, 'r-.') // 中央値の描画（-.の点破線）
a = gca();  // アクティブな軸情報を取得
a.data_bounds(:,1) = [0;1000];  //描画範囲を前1000個に限定

