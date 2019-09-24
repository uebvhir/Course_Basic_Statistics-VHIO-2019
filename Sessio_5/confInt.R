x9 <- rnorm (n=9, mean=15, sd=2)
x25 <- rnorm (n=25, mean=15, sd=2)
x100 <- rnorm (n=100, mean=15, sd=2)

t.test(x9)
t.test(x25)
t.test(x100)

y25 <- rbinom (n=25, size=1,prob=0.12)
y100 <- rbinom (n=100, size=1,prob=0.12)
y500 <- rbinom (n=500, size=1,prob=0.12)

prop.test(sum(y25), length(y25), conf.level = 0.95, correct = TRUE)
prop.test(sum(y100), length(y100), conf.level = 0.95, correct = TRUE)
prop.test(sum(y500), length(y500), conf.level = 0.95, correct = TRUE)
             