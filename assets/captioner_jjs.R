captioner_jjs <- function (prefix = "Figure", suffix = ":", auto_space = TRUE, 
    style = NULL, style_prefix = FALSE, levels = 1, type = NULL, 
    infix = ".", before = FALSE, knitr_op = NULL, css_class = NULL) 
{
    check_class(prefix, "character")
    check_class(suffix, "character")
    check_class(style_prefix, "logical")
    check_class(levels, "numeric")
    check_class(infix, "character")
    check_class(before, "logical")
    if (is.null(type)) {
        type <- c(rep("n", times = levels))
    }
    else if (length(type) < levels) {
        type[(length(type) + 1):levels] <- "n"
    }
    else if (length(type) > levels) {
        type <- type[1:levels]
    }
    if (!all(type %in% c("n", "c", "C"))) {
        stop("Invalid 'type' value used.  Expecting 'n', 'c', or 'C'.")
    }
    if (!is.null(style)) {
        if (!style %in% c("b", "i", "bi")) 
            stop("Invalid 'style' value used.  Expecting 'b', 'i', or 'bi'.")
    }
    force(levels)
    force(prefix)
    force(infix)
    OBJECTS <- list(name = NULL, caption = NULL, number = list(list()))
    OBJECTS$number[[1]][which(type == "n")] <- 1
    OBJECTS$number[[1]][which(type == "c")] <- "a"
    OBJECTS$number[[1]][which(type == "C")] <- "A"
    if (auto_space) {
        prefix <- paste0(prefix, " ")
        suffix <- paste0(suffix, " ")
    }
    if (before) {
        cap_knitr(where = "before")
    }
    else {
        cap_knitr(where = "after")
    }
    KNITR <- knitr_op
    function(name, caption = "", display = "full", level = FALSE, 
        cite = FALSE, num = FALSE) {
        if (level > levels) {
            stop("Level too large.")
        }
        objects <- OBJECTS
        if (any(objects$name == name)) {
            obj_ind <- match(name, objects$name)
            if (objects$caption[obj_ind] == "") {
                objects$caption[obj_ind] <- caption
            }
            else {
                caption <- objects$caption[obj_ind]
            }
        }
        else {
            obj_ind <- length(objects$name) + 1
            if (length(objects$number) == length(objects$name)) {
                if (level) {
                  objects$number[[obj_ind]] <- increment(objects$number[[obj_ind - 
                    1]], level)
                }
                else {
                  objects$number[[obj_ind]] <- increment(objects$number[[obj_ind - 
                    1]], levels)
                }
            }
            if (caption == "") {
                warning("No caption supplied.")
            }
            objects$name[obj_ind] <- name
            objects$caption[obj_ind] <- caption
        }
        assign("OBJECTS", objects, envir = parent.env(environment()))
        if (cite) {
            .Deprecated(new = "display", old = "cite")
            return(paste0(prefix, obj_num))
        }
        if (num) {
            .Deprecated(new = "display", old = "num")
            return(obj_num)
        }
        obj_num <- paste(objects$number[[obj_ind]], collapse = infix)
        if (display == FALSE) {
            return(invisible())
        }
        else if (display == "full" || display == "f") {
            if (!is.null(style)) {
                if (style == "i") {
                  tag <- "*"
                }
                else if (style == "b") {
                  tag <- "**"
                }
                else if (style == "bi") {
                  tag <- "***"
                }
                if (style_prefix) {
                  cap_text <- paste0(tag, prefix, obj_num, suffix, 
                    tag, caption)
                }
                else {
                  cap_text <- paste0(tag, prefix, obj_num, suffix, 
                    caption)
                }
            }
            else {
                cap_text <- paste0(prefix, obj_num, suffix, caption)
            }
            if (!is.null(css_class)) {
                cap_text <- paste0("<span class=\"", css_class, 
                  "\">", cap_text, "</span>")
            }
            return(cap_text)
        }
        else if (display == "cite" || display == "c") {
            return(paste0(prefix, obj_num))
        }
        else if (display == "num" || display == "n") {
            return(obj_num)
        }
        else {
            warning("Invalid display mode used.  Caption was still saved.")
            return(invisible())
        }
    }
}