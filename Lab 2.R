#Calculate descriptive statistics
describe(Carseats)
describe(Carseats,Sales,CompPrice,Income)
describe(Carseats,Sales:Income)
describe(Carseats,-(Sales:Income))

#Normality Test
normality(Carseats)
normality(Carseats,Sales,CompPrice,Income)
normality(Carseats,Sales:Income)
normality(Carseats,-(Sales:Income))

#Normality Visualization
plot_normality(Carseats)

#Correlate
correlate(Carseats)
correlate(Carseats,Sales,CompPrice,Income)
correlate(Carseats,Sales:Income)
correlate(Carseats,-(Sales:Income))

#Plot correlate
plot_correlate(Carseats)

#EDA based on target variable
categ <- target_by(Carseats,US)

#Target variable: Cat, Predictor: Num
cat_num <- relate(categ, Sales)
cat_num
summary(cat_num)
plot(cat_num)

#Target variable: Cat, Predictor: Cat
cat_cat <- relate(categ, ShelveLoc)
cat_cat
summary(cat_cat)
plot(cat_cat)

#Target variable: Num, Predictor: Num
num_num <- target_by(Carseats, Sales)
num_num
summary(num_num)
plot(num_num)

#Target variable: Num, Predictor: Cat
num_cat <- relate(num, ShelveLoc)
num_cat
summary(num_cat)
plot(num_cat)

#Churn
Churn_Train %>%
  eda_web_report(target = "Monthly Charges", subtitle = "Monthly Charges",
                 output_dlr = "./", output_file = "EDA_lab2.html", theme = "blue")