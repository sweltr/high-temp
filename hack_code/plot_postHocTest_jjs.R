plot_postHocTest_jjs <- function (pht, feature, step_increase = 0.12) 
{
    abd_long <- pht@abundance %>% tidyr::pivot_longer(-.data$group, 
        names_to = "feat")
    if (!is.null(feature)) {
        abd_long <- filter(abd_long, .data$feat %in% feature)
    }
    annotation <- get_sig_annotation(pht, step_increase = step_increase)
    p_box <- suppressWarnings(ggplot(abd_long, aes(x = .data$group, 
        y = .data$value)) + geom_boxplot() + ggsignif::geom_signif(data = annotation[annotation$feature %in% 
        feature, ], aes(xmin = .data$xmin, xmax = .data$xmax, 
        annotations = .data$annotation, y_position = .data$y_position), 
        manual = TRUE, textsize = 3, vjust = 0.2) + labs(x = NULL, 
        y = "Abundance"))
    test_res <- as.data.frame(pht@result[[feature]])
    p_test <- ggplot(test_res, aes(x = .data$comparions)) + geom_errorbar(aes(ymin = .data$ci_lower, 
        ymax = .data$ci_upper), width = 0.2) + geom_point(aes(y = .data$diff_mean)) + 
        labs(x = NULL, y = "95% confidence intervals")
    #patchwork::wrap_plots(p_box + p_test) #JJS removed p_test plot
    patchwork::wrap_plots(p_box)
}
