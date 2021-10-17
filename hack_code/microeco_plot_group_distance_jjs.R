plot_group_distance_jjs <- function (plot_group_order = NULL, color_values = RColorBrewer::brewer.pal(8, 
    "Dark2"), distance_pair_stat = FALSE, pair_compare_filter_match = NULL, 
    pair_compare_filter_select = NULL, pair_compare_method = "wilcox.test", 
    plot_distance_xtype = NULL) 
{
    group_distance <- self$res_group_distance
    group <- self$group
    if (self$measure %in% c("wei_unifrac", "unwei_unifrac", "bray", 
        "jaccard", "jsd", "gower")) {
        titlename <- switch(self$measure, wei_unifrac = "Weighted Unifrac", 
            unwei_unifrac = "Unweighted Unifrac", bray = "Bray-Curtis", 
            jaccard = "Jaccard", jsd = "Jensen-Shannon", gower = "Gower")
        ylabname <- paste0(titlename, " distance")
    }
    else {
        ylabname <- self$measure
    }
    if (!is.null(plot_group_order)) {
        group_distance[, group] %<>% factor(., levels = plot_group_order)
    }
    else {
        group_distance[, group] %<>% as.factor
    }
    message("The ordered groups are ", paste0(levels(group_distance[, 
        group]), collapse = " "), " ...")
    p <- ggplot(group_distance, aes_string(x = group, y = "value", 
        color = group)) + theme_bw() + theme(panel.grid = element_blank()) + 
        geom_boxplot(outlier.size = 1, width = 0.6, linetype = 1) + 
        stat_summary(fun = "mean", geom = "point", shape = 20, 
            size = 3, fill = "white") + xlab("") + ylab(ylabname) + 
        theme(axis.text = element_text(size = 12)) + theme(axis.title = element_text(size = 17), 
        legend.position = "none") + scale_color_manual(values = color_values)
    if (!is.null(plot_distance_xtype)) {
        p <- p + theme(axis.text.x = element_text(angle = plot_distance_xtype, 
            colour = "black", vjust = 1, hjust = 1, size = 10))
    }
    if (distance_pair_stat == T) {
        comparisons_list <- levels(group_distance[, group]) %>% 
            combn(., 2)
        if (!is.null(pair_compare_filter_match) & !is.null(pair_compare_filter_select)) {
            stop("The parameter pair_compare_filter_select and pair_compare_filter_match can not be both used together!")
        }
        if (!is.null(pair_compare_filter_match)) {
            comparisons_list %<>% {
                .[, unlist(lapply(as.data.frame(.), function(x) any(grepl(pair_compare_filter_match, 
                  x)))), drop = FALSE]
            }
        }
        if (!is.null(pair_compare_filter_select)) {
            if (!is.numeric(pair_compare_filter_select)) {
                stop("The parameter pair_compare_filter_select must be numeric !")
            }
            messages_use <- unlist(lapply(as.data.frame(comparisons_list[, 
                pair_compare_filter_select, drop = FALSE]), function(x) {
                paste0(x, collapse = "-")
            }))
            message("Selected groups are ", paste0(messages_use, 
                collapse = " "), " ...")
            comparisons_list %<>% .[, pair_compare_filter_select, 
                drop = FALSE]
        }
        comparisons_list %<>% {
            lapply(seq_len(ncol(.)), function(x) .[, x])
        }
        p <- p + ggpubr::stat_compare_means(comparisons = comparisons_list, 
            method = pair_compare_method, tip.length = 0.01, 
            label = "p.signif", symnum.args = list(cutpoints = c(0, 
                0.0001, 0.001, 0.01, 0.05, 1), symbols = c("****", 
                "***", "**", "*", "ns")))
    }
    p
}
