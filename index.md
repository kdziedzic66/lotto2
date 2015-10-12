---
title       : Lotto 
subtitle    : You cannot get money without hard work
author      : Krzysztof Dziedzic
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides




--- .class #id 

## Introduction

Lotto is the Polish name for well known lottery game. The rules are really simple: six numbers from some set (depending from country or region, but most common is $\{1,\dots, 49\}$) are randomly picked. The task of the player is to guess those numbers and when he is correct, than he wins an award which is really attractive. Sounds easy, so why not to play and not to spend rest of our lives drinking Sex on The Beach on Bahama Islands instead of sitting in the office and cursing our boss? Well this presentation as well as the simulator which I have developed answers the question.

--- .class #id

## Elementary probability theory

As you probably know there are ${49}\choose{6}$ possibilities of choosing six numbers from $\{1,\dots,49\}$. So the question raises why not to try all the combinations in the single game? Well it is not difficult to find out, that ${49}\choose{6}$ is equal to  13983816, so assuming that the price of one bet is about 2 dollars we would have to spend about  27967632 dollars for that. Since our name is not Bill Gates and even if it was there are a lot of better ways of spending such amount of money! But wait! Here comes something called Borel-Cantelli lemma: let $(A_i)_{i=1}^{\infty}$ be the sequence of pairwise independent events than if $\Sigma_{i=1}^{\infty}\mathbb{P}(A_i)=\infty$ than the probability that infinite many events from the sequence will happen is equal to 1. We are saved!!! Since we can assume, that Lotto is fair and the results of single game does not depend on any other and  it is obvious that probability of single win is $\frac{1}{13983816}$, obviously $\Sigma \frac{1}{13983816}=\infty$ and We're there! Finally we will win, what's more not only one time, but infinite many times! So let' start looking for apartment on Bahamas! Well if we will do so, probably we would get another disappointment... Why? Maths says something clearly, and the maths doesn't make mistakes! That's what they teach us in school! That's true, we have not been cheated, but notice, that the mentioned result uses term "infinity" which is very unequivocal. In some terms of approximation which use convergence theorems we can easily assume, that $\infty = 30$, but not in this case..

--- .class #id

## Visualisation of the games results

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 

As you can see from the plot Borel-Cantelli lemma is not a lie! On x axis we've got a 10 logarithm of number of games in which we have bet the same combination (the following code has been used to generate the data for the plot: 

```r
  x<-c(10,100,1000,10000,100000,1000000,10000000,100000000,10^9)
  y<-sapply(x,function(v){sum(rbinom(v,1,1/13983816))})
  df<-data.frame(z=log10(x),y=y)
```
), so let us assume, that we keep beting $\{1,2,3,4,5,6\}$ all the time.  So yeah! Finally we would score! And as you can see not only once! But wait!!! Please read from y axis how many sixes have you hit and let as assume, that average award for six is 10 miillion dollars, and please assume, that you have paid 2 dollars for one bet. Yeah!! You're right, you have won,however had to spend a lot more money before! So what are your conclusions?  

--- .class #id

## Conclusions

As you have seen lotto is probably not the best way to become rich. Nothing in this world is easy, what makes us happy is the satisfaction from our effort which we have paid to achive our goals. If you still hope to win in Lotto and even if you would become the lucky one please google the stories of people who have won and their lives have collapsed in a moment. Money is not the goal, it is just award for our hard-work and can be appreciated and used well only when we know how difficult it was to get them. When you really need gambling experience, play poker! At least it is great fun!!! When you still don't belive that scoring six in Lotto is almost impossible feel free to play my simulator which is available here: https://kdziedzic66.shinyapps.io/lotto

<iframe src=http://cdn.meme.am/instances/500x/55146826.jpg width="200" height="100"></iframe>


