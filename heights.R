library(caret)
library(dplyr)

library(dslabs)
data(heights)

y <- heights$sex
x <- heights$height


set.seed(2)
test_index <- createDataPartition(y, times=1, p=0.5, list=FALSE)

train_set <- heights[-test_index, ]
test_set <- heights[test_index, ]

y_hat <- sample(c("male", "female"), length(train_set), replace=TRUE) %>% factor(levels = levels(test_set$sex))

