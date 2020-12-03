# simple function to summarize the distribution of observations or MCMC draws

draw_summary_histogram <- function(data_in, label, n_breaks){
  hist(data_in, freq=F, main = paste("Mean =", round(mean(data_in, na.rm = T), 1),", SD =", 
      round(sd(data_in, na.rm = T),1)), xlab = label, col = c_dark, border = c_dark_highlight, 
      breaks = n_breaks, yaxt = 'n', ylab = "")
  abline(v = quantile(data_in, c(0.025,0.5, 0.975), na.rm = T), lty = 2, lwd = 1.25,
         xaxs = "i")
}

