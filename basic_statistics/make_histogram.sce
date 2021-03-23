rangeData = 2:1001;  // 1から1000の範囲を示します。

DATA = csvRead("./src/data.csv",',', [], 'string');   // data.csvを読み込みます。

TEMP = DATA(rangeData, 2).';    // 読み込んだデータの中から、気温データだけを抽出します。
TEMP = strtod(TEMP);    // 文字列データとして読み込んだので、数値に変換します。

// データを線グラフに描画する
histplot([16:36],TEMP, normalization=%f)  // 気温データをヒストグラムで表示する
ylabel("Count [-]");  // y軸のラベルを表示
xlabel("Temperature [degree]");  // x軸のラベルを表示


