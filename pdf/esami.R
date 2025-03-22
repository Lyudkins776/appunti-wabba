#ESAMI E SIMULAZIONI

#FAC SIMILE ESAME 

#es1
sumxy <- 2759.003
sumxmeanx <- 4513.0572

b1 <- sumxy/sumxmeanx

yi <- 3192
meany <- (3192)/76
xi <- 835
meanx <- 835/76

b0 <- meany-(b1*meanx)

yhat <- b0+b1*10

#es2
mu0 <- 10000
mux <- 9900
sdx <- 125
nx <- 30
alfa <- 0.95

T <- (mux-mu0)/(sdx/sqrt(nx))
qt(1-alfa, df=nx-1)

pt(T, df= nx-1)

#es3
sdx <- 2
alfa <- 0.975
nx <- 16
mux <- 22

inf <- mux - qnorm(alfa)*(sdx/sqrt(nx))
sup <- mux + qnorm(alfa)*(sdx/sqrt(nx))

#es4
mu <- 30
var <- 36
sd <- sqrt(36)

1-(pnorm(40, mu, sd)-pnorm(24, mu, sd))

qnorm(0.15, mu, sd, lower.tail = TRUE)

pnorm(33, mu, sd/sqrt(10))

#es5
n <- 7
p <- 0.35

pbinom(3, n, p, lower.tail = FALSE)
 n1 <- 700
 mu <- n1*p
 var <- n1*p*(1-p)
 
pnorm(260, mu, sqrt(var))-pnorm(240, mu, sqrt(var))

#es6
acquisti <- c(1, 2, 3, 5, 6)
clienti <- c(11, 14, 28, 13, 8)

median(rep(acquisti, times= clienti))
mean(rep(acquisti, times= clienti))

#SIMULAZIONE ESAME

#es1
mu <- 30
var <- 36
#intervallo (22;38), distano rispettivamente 8 dalla media
delta <- 8
sd <- sqrt(var)
k <- delta/sd
chebishev <- 1-1/k^2

#es2
irraggiamento = c(970, 1030, 1010, 1018, 1000, 1020)
temperatura = c(22, 21, 21, 24, 21, 23)
modello <- lm(temperatura~irraggiamento)
summary(modello)
b0 <-  14.800000
b1 <- 0.007143
yhat <- b0+b1*1024

#es3
num.c <- c(0, 1, 3, 4)
freq <- c(25, 48, 15, 22)

median(rep(num.c, times=freq))
mean <- mean(rep(num.c, times=freq))

prob <- (48+15+22)/sum(freq)
sd <- sd(rep(num.c, times=freq))
cv <- sd/mean

#es4
mu0 <- 3.25
nx <- 400
mux <- 3.15
sdx <- 2.25

Z <- (mux-mu0)/(sdx/sqrt(nx))
pnorm(Z)

#es5
mu <- 30
var <- 36
sd <- sqrt(var)

1-(pnorm(40, mu, sd)-pnorm(24, mu, sd))

qnorm(0.15, mu, sd, lower.tail= TRUE)

pnorm(33, mu, sd/sqrt(10))

#es6
min <- c(16.1, 14.1, 14.8, 8.2, 14.3, 8.1)
mux <- mean(min)
var <- 12.4
sd <- sqrt(var)
alfa <- 1-0.005

inf <- mux - qnorm(0.995)*(sd/sqrt(6))
sup <- mux + qnorm(0.995)*(sd/sqrt(6))

#ESAME 11/06

#es1

n <- 200
vegetariano <- c(20, 35)
vegano <- c(15, 25)
onnivoro <- c(65, 40)

tab <- data.frame(vegetariano, vegano, onnivoro)
chisq.test(tab)

#es2

n <- 10
p <- 0.3

dbinom(3, n, p)

mu <- n*p
var <- n*p*(1-p)
sd <- sqrt(var)

complementare <- dbinom(0, n, p)+dbinom(1, n, p)
1-complementare

n <- 100
p <- 0.3
mu <- n*p
var <- n*p*(1-p)
sd <- sqrt(var)

pnorm(60, mu, sd)-pnorm(40, mu, sd)

#es3
n <- 15
mm <- c(5, 12, 9, 7, 15, 10, 8, 13, 6, 14, 11, 9, 8, 7, 10)
quantile(mm, probs= 0.25)

prob <- 4/15

#es4
auto <- c(1, 12, 13, 4, 15, 6, 17, 8, 19, 10, 11, 12, 13, 14, 15)

profitto <- c(2.1, 2.9, 3.5, 3.7, 4.2, 4.9, 5.1, 5.8,
              6.3, 6.8, 7.1, 7.6, 8.2, 8.5, 9.0)

modello <- lm(profitto~auto)
summary(modello)

#es5
mu0 <- 10000
mux <- 9900
nx <- 20
sdx <- 125

T <- (mux-mu0)/(sdx/sqrt(nx))
qt(1-0.95, df= nx-1)
-qt(1-0.95, df= nx-1)

pt(T, df= nx-1)

#ESAME 25/06

#es1
n <- 100
mele <- 30
banane <- 25
arance <- 20
uva <- 25

tab <- data.frame(mele, banane, arance, uva)
chisq.test(tab)

#es2
prezzo<- c(2.8, 3.5, 3, 2.4, 3.2, 4, 4.5, 4.2, 3.6)
distanza <- c(650, 500, 700, 850, 200, 400, 350, 150, 200)

mean(distanza)
quantile(prezzo, probs= 0.5)

boxplot(prezzo)

mean(prezzo)

lm(prezzo~distanza)
summary(lm(prezzo~distanza))

#es3
sdx <- 2
alfa <- 0.95
nx <- 16
mux <- 22

inf <- mux - qnorm(alfa)*(sdx/sqrt(nx))
sup <- mux + qnorm(alfa)*(sdx/sqrt(nx))

#es4
mu0 <- 10000
mux <- 9900
nx <- 20
sdx <- 115

T <- (mux-mu0)/(sdx/sqrt(nx))

alfa <- 0.95
qt(1-alfa, df= nx-1)
-qt(1-alfa, df= nx-1)

pt(T, df= nx-1)

#es5
p <- 0.35
n <- 10

dbinom(2, n, p)

pnorm(70, 80, 15, lower.tail= FALSE)

#es6
mu <- 30
var <- 36
sd <- sqrt(var)

#intervallo (22;38) gli estremi distano rispettivamente 8 dalla media

delta <- 8
k <- delta/sd

chebishev <- 1-1/k^2

#ESAME 9/07

#es1
calcio <- c(20, 10, 30)
basket <- c(15, 30, 45)
tennis <- c(25, 20, 45)

tab <- data.frame(calcio, basket, tennis)
n <- 120

chisq.test(tab)

#es2 
nx <- 30
ny <- 25
mux <- 50
muy <- 45
sdx <- 15
sdy <- 16

Z <- (nx-ny)/sqrt((sdx^2/nx)+(sdy^2/ny))
qnorm(1-0.01/2)

pnorm(Z)*2

#es3
x <- c(2, 3, 4, 5, 6)
y <- c(50, 65, 70, 90, 98)

modello <- lm(y~x)
summary(modello)

b0 <- 26.200
b1 <-  12.100 

yhat <- b0+b1*7

#es4

freq <- c(5, 12, 18, 10, 5)

18/sum(freq)

class <- c("0-10", "10, 20", "20, 30", "30, 40", "40, 50")

tab <- data.frame(class, freq)

median(rep(class, times= freq))

#RIVEDERE

#es5
mu <- 50
sd <- 5
delta <- 10

k <- delta/sd
chebishev <- 1-1/k^2

#es6
nx <- 50
mux <- 85
sdx <- 5
alfa <- 0.95

inf <- mux - qnorm(alfa)*(sdx/sqrt(nx))
sup <- mux + qnorm(alfa)*(sdx/sqrt(nx))

#es7
mu <- 70
sd <- 10

pnorm(80, mu, sd)-pnorm(60, mu, sd)

pnorm(65, mu, sd/sqrt(10), lower.tail = TRUE)
