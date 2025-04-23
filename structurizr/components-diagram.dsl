workspace {

  model {
    // Actors
    studentPassenger = person "Student-Passenger" "Student who needs shared university rides."
    studentDriver    = person "Student-Driver"    "Student with a vehicle offering seats."
    familyDriver     = person "Family-Driver"     "Family member providing rides to students."

    // Main system
    nango = softwareSystem "Ñango" "Web and mobile platform for coordinating shared university rides." {

      // Containers
      webApp = container "Web Application" "Angular single-page app for students and drivers." "Angular" "WebApp"
      apiApp = container "API Backend" "Spring Boot service…" "Spring Boot" "API" {
        // Components go here, inside the apiApp container:
        userController       = component "UserController"       "Exposes /users, /login, /signup endpoints."        "Java" "Controller"
        userAppService       = component "UserAppService"       "Applies user business rules and workflows."       "Java" "Service"
        userRepository       = component "UserRepository"       "Persists User entities to PostgreSQL."           "Java" "Repository"

        paymentController    = component "PaymentController"    "Exposes /payments endpoints."                    "Java" "Controller"
        paymentAppService    = component "PaymentAppService"    "Handles payment and cost-sharing logic."         "Java" "Service"
        paymentRepository    = component "PaymentRepository"    "Stores Payment and Transaction records."         "Java" "Repository"

        reservationController = component "ReservationController" "Exposes /rides, /reserve endpoints."          "Java" "Controller"
        reservationAppService = component "ReservationAppService" "Manages ride booking, availability…"             "Java" "Service"
        reservationRepository = component "ReservationRepository" "Persists Reservation data."                   "Java" "Repository"

        ratingController     = component "RatingController"     "Exposes /ratings endpoints."                      "Java" "Controller"
        ratingAppService     = component "RatingAppService"     "Processes rating submissions and logic."           "Java" "Service"
        ratingRepository     = component "RatingRepository"     "Stores Ride and User ratings."                     "Java" "Repository"

        messagingController  = component "MessagingController"  "Exposes /messages endpoints."                     "Java" "Controller"
        messagingAppService  = component "MessagingAppService"  "Manages chat flow and notifications."             "Java" "Service"
        messagingRepository  = component "MessagingRepository"  "Persists chat messages."                          "Java" "Repository"
      }


      // Shared Database
      db = container "Database" "PostgreSQL instance storing users, payments, reservations, ratings and messages." "PostgreSQL" "Database"

      tags "MainSystem"
    }

    // External Systems
    paymentGateway     = softwareSystem "Payment Gateway" "External credit/debit card processing service." { 
        tags "ExternalSystem" 
    }
    pushNotifications  = softwareSystem "Push Notification Service" "Third-party push notification provider." { 
        tags "ExternalSystem" 
    }

    // Relationships
    studentPassenger -> webApp            "Uses web UI to interact with"
    studentDriver    -> webApp            "Uses web UI to manage rides in"
    familyDriver     -> webApp            "Uses web UI to coordinate rides in"

    webApp           -> apiApp            "Makes API calls to"
    
    // WebApp to Controllers
    webApp           -> userController      "Sends HTTP requests to"
    webApp           -> paymentController   "Sends HTTP requests to"
    webApp           -> reservationController "Sends HTTP requests to"
    webApp           -> ratingController    "Sends HTTP requests to"
    webApp           -> messagingController "Sends HTTP requests to"

    // Controllers to Services
    userController      -> userAppService      "Calls"
    paymentController   -> paymentAppService   "Calls"
    reservationController -> reservationAppService "Calls"
    ratingController    -> ratingAppService    "Calls"
    messagingController -> messagingAppService "Calls"

    // Services to Repositories
    userAppService      -> userRepository      "Uses"
    paymentAppService   -> paymentRepository   "Uses"
    reservationAppService -> reservationRepository "Uses"
    ratingAppService    -> ratingRepository    "Uses"
    messagingAppService -> messagingRepository "Uses"

    // Repositories to Database
    userRepository      -> db                  "Reads from and writes to"
    paymentRepository   -> db                  "Reads from and writes to"
    reservationRepository -> db                "Reads from and writes to"
    ratingRepository    -> db                  "Reads from and writes to"
    messagingRepository -> db                  "Reads from and writes to"

    // Services to External Systems
    paymentAppService   -> paymentGateway      "Processes payments via"
    messagingAppService -> pushNotifications   "Sends notifications via"
  }

  views {
    component apiApp {
      include *
      autolayout tb
      title "4.6.3 Component Diagram – API Backend (Ñango)"
    }
    styles {
      element "Controller" {
        background #FFE4B5
        shape Folder
      }
      element "Service" {
        background #98FB98
        shape Folder
      }
      element "Repository" {
        background #B0E0E6
        shape Folder
      }
      element "Database" {
        shape Cylinder
        background #a86868
      }
      element "WebApp" {
        background #1c8539
        shape WebBrowser
      }
      element "ExternalSystem" {
        background #999999
        color #efefef
      }
    }
  }
}
