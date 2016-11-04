help (read.csv) #example of help...

con = url ("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")#you can also download it to local space.for example:wget http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv for linux system.
adv=read.csv(con,row.names=1)
summary(adv)
plot (adv)


summary(lm(Sales~.,data=adv))
plot(lm(Sales~.,data=adv))

mod = lm(Sales~.,data=adv)
step(mod)

mod1 = lm(Sales~TV+Radio,data=adv)
summary(mod1)
plot(mod1)


mod2 = lm(Sales~TV*Radio,data=adv)
summary(mod2)
plot(mod2)

anova(mod1, mod2)
