# =============================================================================
#
# A script to illustrate a gradient word cloud by Tyler Rinker.
# ref : http://trinker.github.io/blah/2012/11/17/Gradient-Word-Clouds/
#
# =============================================================================


# 
library("qdap"); library(wordcloud); library(qdap); library(plotrix)

# download transcript of the debate to working directory
# url_dl(pres.deb1.docx)
# load multiple files with read transcript and assign to working directory
#dat1 <- read.transcript("pres.deb1.docx", c("person", "dialogue"))

data("pres_debate_raw2012")
dat1 <- pres_debate_raw2012

# qprep for quick cleaning
dat1$dialogue <- qprep(dat1$dialogue)
# view a truncated version of the data (see also htruncdf)
left_just(htruncdf(dat1, 10, 45))

word.freq <- with(dat1, wfdf(dialogue, person))[, -2]
csums <- colSums(word.freq[, -1])
conv.fact <- csums[2]/csums[1]
word.freq$ROMNEY2 <- word.freq[, "ROMNEY"] * conv.fact
# colSums(word.freq[, -1])
word.freq[, "total"] <- rowSums(word.freq[, -1])
word.freq$continum <- with(word.freq, ROMNEY2 - OBAMA)
word.freq <- word.freq[word.freq$total != 0, ]  #remove Leher only words
MAX <- max(word.freq$continum[!is.infinite(word.freq$continum)])
word.freq$continum <- ifelse(is.infinite(word.freq$continum), MAX, word.freq$continum)
conv.fact2 <- abs(range(word.freq$continum))
conv.fact2 <- max(conv.fact2)/min(conv.fact2)
word.freq$continum <- ifelse(word.freq$continum > 0, word.freq$continum * conv.fact2, 
                             word.freq$continum)
cuts <- c(-50, -25, -15, -10, -5, -2.5, -1.5, -1, -0.5, -0.25)
cuts <- sort(c(cuts, 0, abs(cuts)))
word.freq$fill.var <- cut(word.freq$continum, breaks = cuts)
head(word.freq, 10)

colfunc <- colorRampPalette(c("red", "blue"))
word.freq$colors <- lookup(word.freq$fill.var, 
                           levels(word.freq$fill.var), rev(colfunc(length(levels(word.freq$fill.var)))))
head(word.freq, 10)


par(mar=c(7,1,1,1))
wordcloud(word.freq$Words, word.freq$total, colors = word.freq$colors, 
          min.freq = 1, ordered.colors = TRUE, random.order = FALSE, rot.per=0, 
          scale = c(5, .7))
# Add legend
COLS <- colfunc(length(levels(word.freq$fill.var)))
color.legend(.025, .025, .25, .04, qcv(Romney,Obama), COLS)

