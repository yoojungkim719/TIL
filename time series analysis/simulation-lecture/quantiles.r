################################################################################
### 2022년 1학기 대학원 시뮬레이션 수업 때 발표했던 것 정리


################################################################################
### basic setting
rm(list=ls())
cat("\014")


################################################################################
### type1
type1 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p == 0) {
    Qs <- data[1]
  } else if (p == 1) {
    Qs <- data[n]
  } else {
    m = 0
    j = floor(n*p+m) # 정수부분
    g = (n*p+m) - j # 소수부분
    Qs = ifelse(g>0, data[j+1], data[j])
  }
  return(Qs)
}


################################################################################
### type2
type2 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p == 0) {
    Qs <- data[1]
  } else if (p == 1) {
    Qs <- data[n]
  } else {
    m = 0 
    j = floor(n*p+m) #정수부분
    g = (n*p+m) - j #소수부분
    Qs = ifelse(g>0, data[j+1],(data[j] + data[j+1])/2)
  }
  return(Qs)
}


################################################################################
### type3
type3 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p<=(1/2)/n) {
    Qs <- data[1]
  } else {
    m = -0.5 
    j = floor(n*p+m) # 정수부분
    g = (n*p+m) - j # 소수부분
    Qs = ifelse((g==0 & j%%2==0), data[j], data[j+1] )
  }
  return(Qs)
}


################################################################################
### type4
type4 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p < 1/n) {
    Qs <- data[1]
  } else if (p == 1) { 
    Qs<-data[n]
  } else {
    m = 0 
    j = floor(n*p+m) # 정수부분
    g = (n*p+m) - j # 소수부분
    Qs = (1-g)*data[j] + g*data[j+1]
  }
  return(Qs)
}


################################################################################
### type5
type5 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p < (1/2)/n) {
    Qs <- data[1]
  } else if (p >= (n-1/2)/n){ 
    Qs <- data[n]
  } else {
    m = 0.5 
    j = floor(n*p+m) # 정수부분
    g = (n*p+m) - j # 소수부분
    Qs = (1-g)*data[j] + g*data[j+1]
  }
  return(Qs)
}

################################################################################
### type6
type6 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p < 1/(n+1)) {
    Qs <- data[1]
  } else if (p >= n/(n+1)) { 
    Qs <- data[n]
  } else {
    m = p 
    j = floor(n*p+m) # 정수부분
    g = (n*p+m) - j # 소수부분
    Qs <- (1-g)*data[j] + g*data[j+1]
  }
  return(Qs)
}


################################################################################
### type7
type7 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p == 1) {
    Qs <- data[n]
  } else {
    m = 1-p 
    j = floor(n*p+m) # 정수부분
    g = (n*p+m) - j # 소수부분
    Qs <- (1-g)*data[j] + g*data[j+1]
  }
  return(Qs)
}


################################################################################
### type8
type8 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p < (2/3)/(n+1/3)) {
    Qs <- data[1]
  } else if (p >= (n-1/3)/(n+1/3)){
    Qs <- data[n]
  } else {
    m = (p+1)/3
    j = floor(n*p+m) # 정수부분
    g = (n*p+m) - j # 소수부분
    Qs <- (1-g)*data[j] + g*data[j+1]
  }
  return(Qs)
}


################################################################################
### type9
type9 <- function(data, p) {
  data <- sort(data)
  n = length(data)
  if (p < (5/8)/(n+1/4)) {
    Qs <- data[1]
  } else if (p >= (n-3/8)/(n+1/4)){
    Qs <- data[n]
  } else {
    m = (p+(3/2))/4
    j = floor(n*p+m) # 정수부분
    g = (n*p+m) - j # 소수부분
    Qs <- (1-g)*data[j] + g*data[j+1]
  }
  return(Qs)
}


################################################################################
### simulation1: 9개 타입 별 비교
p = 0.9 # 구하고자 하는 분위수
iter = 1000 # 반복 횟수

out10_1=c(); out10_2=c(); out10_3=c()
out10_4=c(); out10_5=c(); out10_6=c()
out10_7=c(); out10_8=c(); out10_9=c()

for (i in 1:iter) {
  # dist = rnorm(n=30, mean=0, sd=1) # normal distribution
  dist = exp(rnorm(n=10, mean=2, sd=1)) # lognormal distribution
  out10_1 = c(out10_1, type1(dist, p))
  out10_2 = c(out10_2, type2(dist, p))
  out10_3 = c(out10_3, type3(dist, p))
  out10_4 = c(out10_4, type4(dist, p))
  out10_5 = c(out10_5, type5(dist, p))
  out10_6 = c(out10_6, type6(dist, p))
  out10_7 = c(out10_7, type7(dist, p))
  out10_8 = c(out10_8, type8(dist, p))
  out10_9 = c(out10_9, type9(dist, p))
}

# boxplot 그리기
boxplot(out10_1, out10_2, out10_3,
        out10_4, out10_5, out10_6,
        out10_7, out10_8, out10_9,
        main="p=0.9, type1~9",
        names=c("type1", "type2", "type3", "type4", "type5", "type6", "type7", "type8", "type9"))
# abline(h=qnorm(p=p, mean=0, sd=1), col="red", lwd=2) # 실제 90분위수 추가
abline(h=exp(qnorm(0.9, 2, 1)), col="red", lwd=2) # 실제 90분위수 추가



################################################################################
### simulation2: 동일 타입(type1)의 표본수에 따른 비교

n = c(10, 50, 100, 1000) # 표본수 변화 주기
p = 0.9 # 90분위수 구하기
iter = 1000 # 반복 횟수

out10 = c(); out50 = c()
out100 = c(); out1000 = c()

for (i in 1:iter) {
  norm10 = exp(rnorm(n=n[1], mean=2, sd=1))
  norm50 = exp(rnorm(n=n[2], mean=2, sd=1))
  norm100 = exp(rnorm(n=n[3], mean=2, sd=1))
  norm1000 = exp(rnorm(n=n[4], mean=2, sd=1))
  out10 = c(out10, type1(norm10, p))
  out50 = c(out50, type1(norm50, p))
  out100 = c(out100, type1(norm100, p))
  out1000 = c(out1000, type1(norm1000, p))
}

boxplot(out10, out50, out100, out1000, ylim=c(0, 100),
        main="type1, p=0.9",
        names=c("n=10", "n=50", "n=100", "n=1000"))
abline(h=exp(qnorm(0.9, mean=2, sd=1)), col="red", lwd=2) # 실제 90분위수 추가



################################################################################
### reference
# 허윤숙, (2017), 지수 분포를 따르는 자료의 분위수 계산 방법 비교, 동국대학교 석사학위논문
# Langford, E. (2006). Quartiles in Elementary Statistics, URL: http://www.amstat.org/publications/jse/v14n3/ langford.html.
# Hyndman. R. J., and Fan. Y, (1996), Sample quantiles in statistical packages, American Statistician, Vol.50 No.4 pp.361-365
