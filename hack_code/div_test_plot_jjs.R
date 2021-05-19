div_test_plot_jjs <- function (divtest, chart, colour, posthoc, threshold) 
{
    if (missing(chart)) {
        chart = "box"
    }
    if (missing(posthoc)) {
        posthoc = FALSE
    }
    if ((names(divtest)[1] != "data") & (names(divtest)[2] != 
        "normality.pvalue")) 
        stop("The input object does not seem to be a div_test output.")
    divtestdata <- divtest$data
    divtestdata$Group <- as.factor(divtestdata$Group)
    divtestdata$Group <- factor(divtestdata$Group, levels = as.character(unique(divtestdata$Group)))
    if (missing(colour) || (length(colour) < divtest$groups)) {
        getPalette <- colorRampPalette(brewer.pal(divtest$groups, 
            "Paired"))
        colour <- getPalette(divtest$groups)
    }
    if (posthoc == TRUE) {
        if (is.na(names(divtest)[7])) 
            stop("The input div_test object does not seem to contain pairwise posthoc data. 
                 Re-run div_test() using 'posthoc=TRUE' argument.")
        if (divtest[7] == "Tukey post-hoc test") {
            combinations <- matrix(gsub(" $", "", gsub("^ ", 
                "", unlist(strsplit(as.character(rownames(divtest$posthoc)), 
                  "-", fixed = TRUE)))), ncol = 2, byrow = TRUE)
            pvalue <- round(divtest$posthoc[, 4], 3)
            pairwisetable <- as.data.frame(cbind(combinations, 
                pvalue))
            colnames(pairwisetable) <- c("group1", "group2", 
                "p")
        }
        if (divtest[7] == "Dunn test with Benjamini-Hochberg correction") {
            combinations <- matrix(gsub(" $", "", gsub("^ ", 
                "", unlist(strsplit(as.character(rownames(divtest$posthoc)), 
                  "-", fixed = TRUE)))), ncol = 2, byrow = TRUE)
            pvalue <- round(divtest$posthoc[, 3], 3)
            pairwisetable <- as.data.frame(cbind(combinations, 
                pvalue))
            colnames(pairwisetable) <- c("group1", "group2", 
                "p")
        }
        pairwisetable[, 1] <- as.character(pairwisetable[, 1])
        pairwisetable[, 2] <- as.character(pairwisetable[, 2])
        pairwisetable[, 3] <- as.numeric(as.character(pairwisetable[, 
            3]))
        if (!missing(threshold)) {
            pairwisetable <- pairwisetable[which(pairwisetable$p < 
                threshold), ]
        }
        sortedgroups <- unique(sort(c(pairwisetable$group1, pairwisetable$group2)))
        datamax <- round(max(divtest$data[which(divtest$data$Group %in% 
            sortedgroups), 3]))
        datamin <- round(min(divtest$data[which(divtest$data$Group %in% 
            sortedgroups), 3]))
        datarange <- datamax - datamin
        by <- datarange * 0.1
        min <- datamax
        max <- min + (by * nrow(pairwisetable))
        ypos <- seq(min, max, by)[-1]
        pairwisetable$ypos <- ypos
    }
    if (chart == "box") {
        plot <- ggboxplot(divtestdata, x = "Group", y = "Value", 
            color = "Group", fill = "Group", x.text.angle = 0) + 
            ylab("Effective no. of Taxon Units") + xlab("Treatment") + 
            scale_colour_manual(values = scales::alpha(colour, 
                1)) + scale_fill_manual(values = scales::alpha(colour, 
            0.5))
        if (posthoc == TRUE) {
            plot <- suppressWarnings(plot + stat_pvalue_manual(pairwisetable, 
                label = "p", y.position = "ypos"))
        }
        return(plot)
    }
    if (chart == "jitter") {
        plot <- ggboxplot(divtestdata, x = "Group", y = "Value", 
            color = "Group", add = "jitter", width = 0, x.text.angle = 45) + 
            ylab("Effective no. of Taxon Units") + xlab("Treatment") + 
            scale_colour_manual(values = scales::alpha(colour, 
                0))
        if (posthoc == TRUE) {
            plot <- suppressWarnings(plot + stat_pvalue_manual(pairwisetable, 
                label = "p", y.position = "ypos"))
        }
        print(plot)
    }
    if (chart == "violin") {
        plot <- ggviolin(divtestdata, x = "Group", y = "Value", 
            color = "Group", fill = "Group", x.text.angle = 45) + 
            ylab("Effective no. of Taxon Units") + xlab("Treatment") + 
            scale_fill_manual(values = scales::alpha(colour, 
                0.1)) + scale_colour_manual(values = scales::alpha(colour, 
            1))
        if (posthoc == TRUE) {
            plot <- suppressWarnings(plot + stat_pvalue_manual(pairwisetable, 
                label = "p", y.position = "ypos"))
        }
        print(plot)
    }
}