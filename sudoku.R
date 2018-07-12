# make a sudoku plot

pnts <- seq(0, 1, length.out = 10)
ltys <- ifelse(seq_along(pnts) %% 3 == 1, 1, 3)
plot(0, type = 'n', xlim = c(0,1), ylim = c(0,1), axes = FALSE, xlab = '', ylab = '')
for(i in seq_along(pnts)) {
    lines(rep(pnts[i], 2), c(0,1), lty = ltys[i])
    lines(c(0,1), rep(pnts[i], 2), lty = ltys[i])
}
xs <- pnts[-1] - (diff(pnts) / 2)
ys <- rev(xs)
text(xs[2], ys, 1:9, cex = 3)
text(xs[3], ys, c(7,8,9,1,2,3,4,6,5), cex = 3)
text(xs[4], ys[c(1,2,3,5,6)], c(3,1,8,9,5), cex = 3)
text(xs[5], ys[c(1,2,5,6)], c(5,7,4,2), cex = 3)
text(xs[6], ys[c(1,2,5,6,7)], c(9,4,8,1,5), cex = 3)
text(xs[7], ys[1:8], c(2,3,1,5,6,4,8,9), cex = 3)
text(xs[8], ys[c(2,3,4,5,8,9)], c(9,7,2,3,5,4), cex = 3)
text(xs[9], ys[9], 2, cex = 3)
