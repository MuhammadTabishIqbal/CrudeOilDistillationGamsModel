
Set
j "Inputs"               / Arabian-lCrude, GhauriCrude, HaliniCrude, DharianCrude/
i "Output/Products/Commodities"  / Naphtha, Kerosene, Gasoil,HighSulphurFuelOil-HSFO180CST /

pu       "productive units"    / pipestill /
pr       "processes"   / 'd-arab-l  distilling arabian light crude',
                           'd-Ghauri distilling Ghauri crude',
                           'd-Halini distilling Halini crude',
                           'd-Dharian  distilling Dharian crude'/ ;
Parameter

p(i)     "price of products  ($/Barrel)"
s(j)  "Daily Supply of crude (1000 tons)"
c(j) "Cost of inputs i.e. prices of crudes ($ / Barrel)"
d(i) "Daily Demand per type of commodity (1000 tons ; where 1ton = 7.33 barrels)"
c (i,j) "Output (Commodities) i produced from one unit of Inputs j (Crude Types) used (Output produced / input used )";

Crude oil information Data
Table a(j,s,c) 'Supply and cost of Crude'
                Daily Supply of crude (1000 tons)      Price of Crudes
Arabian-light            110                             65.395
Ghauri                   165                             56.62
Dharian                  165                             61.85
Halini                   80                              65.60;

Output Demand Data
Table b(i,d,p) 'Demand and Prices of Products'

          Demand          Prices of Output
Naphtha     40                   66.40
Kerosene    20                   75.93
Gas-oil     50                   76.01
HSFO180CST  145                  54.64;

Yield Data
Table c(i,j)
                 Arabian-light   Ghauri   Dharian    Halini

Naphtha               0.1640     0.1341    0.1503     0.1467
Kerosene              0.1698               0.0647     0.1434
Gas-Oil               0.2269               0.1701     0.2530
HSFO180CST            0.4393     0.8659    0.6149     0.4569;

Variables

X(i)     "Products sold (No. of barrels sold of Naphtha , Kerosene, Gas-oil, High Sulphur Fuel Oil - HSFO 180 CST)"
Y(j)     "Inputs used (No. of barrels of Crudes used)";

Equation

R 'REVENUE EQUATION'
COST 'COST EQUATION'
REQ(CR) 'CRUDE REQUIRED BY PRODUCTS'
Pft 'Profit Function'
Supply 'Supply of crude (1000 tons)'
Demand 'Demand of product '

R..   sum( p(i)*X(i) ) =e= R
COST.. C=e= sum(c(j) * Y(j))

Pft.. Pft=e= R-C

Supply.. s(j) =g= Y(j)
Demand.. d(i) =g= X(i);

Model CrudeOilDistillation 'CRUDE-OIL-DISTILLATION MODEL' / all /;

solve CrudeOilDistillation using lp maximizing Pft;

display R.l, COST.l, Pft.l ;




