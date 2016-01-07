# ui.R

# January 2016 Johns Hopkins Data Science Capstone Project
# Joe Fuqua

library(shiny)
shinyUI(fluidPage(width=24,
  theme="bootstrap.css",
  titlePanel("Predict Next Word"),
 
    mainPanel(
      
       wellPanel(
        helpText(HTML("<b>About this App</b>")),
        helpText(HTML("This app analyzes a user supplied phrase to predict the next likely word based on a corpus
                      of english-language blog posts, news feeds, and twitter posts.
                      <br><br>
                      Input can include any number of words, but a maximum of the last four words are used for 
                      the predictive model.  The output is displayed on the left hand side of the screen.
                      <br><br>
                      
                      To use, enter text in the textbox below and hit Submit."))
        ),
 
           h3('Next Word Prediction'),
      
      wellPanel(
        textInput("txt",HTML("<b>Enter a phrase to compare to the corpus</b>"),"Your text here"),
        submitButton("Submit"),
        h5('Likely candidate:'),
        verbatimTextOutput("prediction")
        
      ),
      
     

      h3('Data and Code Source:'),
      
      wellPanel(
        helpText(HTML("<b>Data Source:</b>")),
        helpText(HTML("<a href='https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip'>Capstone Dataset</a>"))
      )
      
      #      wellPanel(
      #        helpText(HTML("<a href='https://...</a>"))
      #      )
      
      
    )
  )
    )