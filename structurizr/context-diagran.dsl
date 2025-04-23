workspace {

  model {
    // Actors (Persons)
    studentPassenger = person "Student-Passenger" "Student who needs shared transportation to get to the university."
    studentDriver    = person "Student-Driver"    "Student with their own vehicle who offers available seats."
    familyDriver     = person "Family-Driver"     "Family member who provides transportation for students."

    // Main system
    nango = softwareSystem "Ñango" "Web and mobile platform for coordinating shared university rides." {
      tags "InternalSystem"
    }

    // External systems
    uniAuth        = softwareSystem "University Authentication" "University SSO service for user authentication." {
      tags "ExternalSystem"
    }
    paymentGateway = softwareSystem "Payment Gateway" "External service for credit/debit card processing." {
      tags "ExternalSystem"
    }

    // Relationships
    studentPassenger -> nango         "Requests and books rides using"
    studentDriver    -> nango         "Offers seats and manages rides on"
    familyDriver     -> nango         "Provides transportation and coordinates rides on"
    nango            -> uniAuth       "Validates user credentials with"
    nango            -> paymentGateway "Processes payments and charges through"
  }

  views {
    systemContext nango {
      include *
      autolayout tb
      title "4.6.1 System Context Diagram - Ñango"
    }
    styles {
      element "InternalSystem" {
        background #5580A8
        color #efefef
        shape RoundedBox
      }
      element "ExternalSystem" {
        background #999999
        color #efefef
        shape RoundedBox
      }
      element "Person" {
        background #0A417B
        color #efefef
        shape Person
      }
    }
  }
}

