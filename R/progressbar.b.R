
# This file is a generated template, your changes will not be overwritten

progressBarClass <- if (requireNamespace('jmvcore', quietly=TRUE)) R6::R6Class(
    "progressBarClass",
    inherit = progressBarBase,
    private = list(
        .run = function() {

          z<-c()
          
          self$results$progressBarHTML$setVisible(TRUE)
          for (i in 1:100) {
            # waste a bit of time
            for (j in 1:100) z<-c(z,rnorm(100))
            if (i<=10) message<-'Starting'
            if (i>10 && i<=90) message<-'Running'
            if (i>90) message<-'Finishing'
            html<-progressBarH(i,100)
            self$results$progressBarHTML$setContent(html)
            private$.checkpoint()
          }
          self$results$progressBarHTML$setVisible(FALSE)
          
            # `self$data` contains the data
            # `self$options` contains the options
            # `self$results` contains the results object (to populate)

        })
)
