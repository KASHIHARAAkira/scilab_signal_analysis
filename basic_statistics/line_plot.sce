rangeData = 1:1000;  // 1から1000の範囲を示します。

DATA = csvRead("./src/data.csv",',', [], 'string');   // data.csvを読み込みます。

TEMP = DATA(rangeData, 2).';    // 読み込んだデータの中から、気温データだけを抽出します。
TEMP = strtod(TEMP);    // 文字列データとして読み込んだので、数値に変換します。

plot(TEMP, 'b')  // 気温データを青色の線グラフで表示する
ylabel("Temperature [degree]");  // y軸のラベルを表示
xlabel("Hour [-]");  // x軸のラベルを表示
