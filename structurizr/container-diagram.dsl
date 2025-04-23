workspace {

  model {
    // Persons
    studentPassenger = person "Student-Passenger" "Student who needs shared transportation to get to the university."
    studentDriver    = person "Student-Driver"    "Student with their own vehicle offering seats."
    familyDriver     = person "Family-Driver"     "Family member providing rides to students."

    // Main system and containers
    nango = softwareSystem "Ñango" "Web and mobile platform for coordinating shared university rides." {
      webApp               = container "Web Application" "Allows students and drivers to find, offer and manage rides." "Angular" "Web App"
      landingPage          = container "Landing Page" "Public‑facing marketing site for CreatiLink." "Angular" "Web App"
      apiGateway           = container "API REST"     "Routes requests from the UI to the backend microservices."      "Spring Boot" "API"
      userService          = container "User Service"     "Manages user profiles, authentication and verification."        "Spring Boot" "Microservice"
      paymentService       = container "Payment Service"  "Handles all payment transactions and cost-sharing logic."         "Spring Boot" "Microservice"
      reservationService   = container "Reservation Service" "Manages ride bookings, schedules and cancellations."          "Spring Boot" "Microservice"
      ratingService        = container "Rating Service"   "Handles ratings and feedback for rides, drivers and passengers." "Spring Boot" "Microservice"
      messagingService     = container "Messaging Service" "Enables in-app chat and real-time notifications."                "Spring Boot" "Microservice"
      db                   = container "Database"         "Stores users, payments, reservations, ratings and messages."    "PostgreSQL" "Database"

      tags "MainSystem"
    }

    
    
    // External systems
    uniAuth        = softwareSystem "University Authentication" "University SSO service for user authentication." { 
        tags "ExternalSystem" 
    }
    paymentGateway = softwareSystem "Payment Gateway"  "External service for credit/debit card processing." { 
        tags "ExternalSystem"
    }

    // Relationships: persons → web app
    studentPassenger -> webApp           "Searches for and books rides using"
    studentDriver    -> webApp           "Offers seats and manages rides using"
    familyDriver     -> webApp           "Provides rides and coordinates with students via"
    studentPassenger -> landingPage      "Discovers CreatiLink’s marketing site"
    studentDriver    -> landingPage      "Discovers CreatiLink’s marketing site"
    familyDriver     -> landingPage      "Discovers CreatiLink’s marketing site"
    landingPage -> webApp "Get Started or Sign Up / Log In buttons"

    // UI to backend
    webApp           -> apiGateway       "Makes API calls to"

    // API Gateway to microservices
    apiGateway       -> userService      "Orchestrates user workflows via"
    apiGateway       -> paymentService   "Orchestrates payment workflows via"
    apiGateway       -> reservationService "Orchestrates reservation workflows via"
    apiGateway       -> ratingService    "Orchestrates rating workflows via"
    apiGateway       -> messagingService "Orchestrates messaging workflows via"

    // Microservices to database
    userService      -> db               "Reads from & writes to"
    paymentService   -> db               "Reads from & writes to"
    reservationService -> db             "Reads from & writes to"
    ratingService    -> db               "Reads from & writes to"
    messagingService -> db               "Reads from & writes to"

    // Microservices to external systems
    apiGateway -> uniAuth          "Validates credentials with"
    paymentService   -> paymentGateway   "Processes payments via"
  }

  views {
    container nango {
      include *
      autolayout tb
      title "4.6.2 Container Diagram - Ñango"
    }

    styles {
      element Element {
          color #efefef
      }
      element "InternalSystem" {
        background #5580A8
        color #efefef
      }
      element "ExternalSystem" {
        background #999999
        color #efefef
      }
      element "Person" {
        background #0A417B
        color #efefef
        shape Person
      }
      
      element "Web App" {
        background #1c8539
        shape WebBrowser
      }
      element "API" {
        background #448dd5
      }
      element "Microservice" {
        shape Hexagon
        background #7f3667
      }
      element "Database" {
        shape Cylinder
        background #a86868
      }
      
      element "MainSystem" {
            stroke #ff0000
        }
    }
  }
}
