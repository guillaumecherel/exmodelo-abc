library(tidyverse)
library(patchwork)
library(latex2exp)

x <- seq(0,1,0.01)

y_flat <- replicate(length(x), 1)
y_linear <- 2 * x 
y_with_0 <- 0 * (x < 0.5) + 2 * (x > 0.5)

ggplot(tibble(x=x, y=y_flat)) +
  geom_line(aes(x=x, y=y)) + 
  ylim(0,2) + 
  xlim(0,1) +
  xlab(TeX("$\\theta$")) +
  ylab(TeX("$f_\\theta$")) +
ggplot(tibble(x=x, y=y_linear)) +
  geom_line(aes(x=x, y=y)) + 
  ylim(0,2) + 
  xlim(0,1) +
  xlab(TeX("$\\theta")) +
  ylab(TeX("$f_\\theta")) +
ggplot(tibble(x=x, y=y_with_0)) +
  geom_line(aes(x=x, y=y)) + 
  ylim(0,2) + 
  xlim(0,1) +
  xlab(TeX("$\\theta")) +
  ylab(TeX("$f_\\theta"))

ggsave("fig/belief_as_density.png", width=150, height=50, units="mm")

x_norm <- seq(-2, 2, length.out=1000)
y_narrow <- dnorm(x_norm, sd=0.1)
y_wide <- dnorm(x_norm, sd=1)

ggplot(tibble(x=x_norm, y=y_narrow)) +
  geom_line(aes(x=x, y=y)) + 
  ylim(0,4) + 
  xlim(-2,2) +
  xlab(TeX("$\\theta$")) +
  ylab(TeX("$f_\\theta$")) +
ggplot(tibble(x=x_norm, y=y_wide)) +
  geom_line(aes(x=x, y=y)) + 
  ylim(0,4) + 
  xlim(-2,2) +
  xlab(TeX("$\\theta$")) +
  ylab(TeX("$f_\\theta$")) 

ggsave("fig/belief_wide_narrow.png", width=100, height=50, units="mm")
