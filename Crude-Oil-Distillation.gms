Set
j "Inputs"               / Arabian-lCrude, GhauriCrude, HaliniCrude, DharianCrude/
i "Output/Products/Commodities"  / Naphtha, Kerosene, Gasoil,HighSulphurFuelOil-HSFO180CST /

pu       "productive units"    / pipestill /
pr       "processes"   / 'd-arab-l  distilling arabian light crude',
                           'd-Ghauri distilling Ghauri crude',
                           'd-Halini distilling Halini crude',
                           'd-Dharian  distilling Dharian crude'/ ;
Parameter

p(j)     "price of products  ($/Barrel)"
s(j)  "Daily Supply of crude (1000 tons)"
c(j) "Cost of inputs i.e. prices of crudes ($ / Barrel)"
d(i) "Daily Demand per type of commodity (1000 tons ; where 1ton = 7.33 barrels)"
a(i,j) "Inputs (Crude Types) of j required to produce one unit of i (Commodities) (input used / products produced)"


Variables

X(i)     "Products sold (No. of barrels sold of Naphtha , Kerosene, Gas-oil, High Sulphur Fuel Oil - HSFO 180 CST)"
Y(j)     "Inputs used (No. of barrels of Crudes used)"  ;



