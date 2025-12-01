# Product Requirements Document (PRD)
## Gym Management System

---

## 📋 Document Information

| Field | Details |
|-------|---------|
| **Product Name** | Gym Management System |
| **Version** | 1.0 |
| **Date** | December 1, 2025 |
| **Status** | Draft |
| **Author** | Product Team |

---

## 1. Executive Summary

### 1.1 Product Vision
The Gym Management System is a comprehensive, end-to-end digital solution designed to streamline gym operations for three key stakeholders: **Owners**, **Staff**, and **Customers**. The system aims to automate membership management, class scheduling, payment processing, attendance tracking, and customer engagement, creating a seamless experience for all users.

### 1.2 Business Objectives
- **Increase operational efficiency** by 60% through automation
- **Improve customer retention** by 30% with better engagement tools
- **Reduce administrative overhead** by 50%
- **Enable data-driven decision making** for gym owners
- **Provide 24/7 self-service** capabilities for customers

### 1.3 Target Market
- Small to medium-sized gyms (50-500 members)
- Fitness centers and health clubs
- Personal training studios
- Yoga and specialized fitness centers

---

## 2. User Roles & Personas

### 2.1 Owner (Administrator)
**Primary Goals:**
- Monitor overall gym performance
- Manage staff and resources
- Track revenue and expenses
- Make strategic business decisions

**Key Responsibilities:**
- Full system access and control
- Staff management and permissions
- Financial oversight
- Business analytics and reporting

### 2.2 Staff (Front Desk/Trainer)
**Primary Goals:**
- Manage daily operations efficiently
- Assist members with their needs
- Track attendance and classes
- Handle customer inquiries

**Key Responsibilities:**
- Member check-ins
- Class scheduling
- Payment collection
- Customer support

### 2.3 Customer (Gym Member)
**Primary Goals:**
- Easy access to gym services
- Track personal fitness progress
- Manage memberships and payments
- Book classes and trainers

**Key Responsibilities:**
- Self-service profile management
- Class bookings
- Payment processing
- Attendance tracking

---

## 3. Functional Requirements

### 3.1 Owner Features

#### 3.1.1 Dashboard & Analytics
- **Real-time business metrics**
  - Active memberships count
  - Daily/weekly/monthly revenue
  - Class attendance rates
  - Member retention statistics
- **Financial reports**
  - Revenue by category (memberships, classes, personal training)
  - Expense tracking
  - Profit/loss statements
  - Payment status overview
- **Performance analytics**
  - Peak hours analysis
  - Popular classes and trainers
  - Member growth trends
  - Churn rate analysis

#### 3.1.2 Staff Management
- Add/edit/remove staff members
- Assign roles and permissions
- Track staff attendance and schedules
- Monitor staff performance metrics
- Manage payroll information

#### 3.1.3 Membership Plans Management
- Create custom membership tiers (Basic, Premium, VIP)
- Define pricing and billing cycles
- Set membership benefits and restrictions
- Configure trial periods and promotions
- Manage membership freezes and cancellations

#### 3.1.4 Facility & Equipment Management
- Equipment inventory tracking
- Maintenance scheduling
- Facility utilization reports
- Resource allocation

#### 3.1.5 Marketing & Communications
- Send bulk notifications (email/SMS)
- Create promotional campaigns
- Member engagement tracking
- Feedback collection and analysis

#### 3.1.6 Settings & Configuration
- Gym profile and branding
- Operating hours configuration
- Payment gateway integration
- System preferences
- Data backup and security settings

### 3.2 Staff Features

#### 3.2.1 Member Management
- Register new members
- Update member profiles
- View member history and status
- Process membership renewals
- Handle freeze/cancellation requests

#### 3.2.2 Check-in System
- Quick member check-in (QR code/ID scan)
- Verify membership status
- Track daily attendance
- Guest check-in management

#### 3.2.3 Class & Schedule Management
- View class schedules
- Add members to classes
- Mark attendance for classes
- Update class capacity
- Handle waitlists

#### 3.2.4 Payment Processing
- Collect membership fees
- Process one-time payments (day passes, merchandise)
- Handle refunds and adjustments
- Generate payment receipts
- Track pending payments

#### 3.2.5 Personal Training Management
- Schedule PT sessions
- Assign trainers to clients
- Track PT package usage
- Manage trainer availability

#### 3.2.6 Customer Support
- Handle member inquiries
- Log complaints and issues
- Process special requests
- Access member communication history

### 3.3 Customer Features

#### 3.3.1 Registration & Onboarding
- Online registration form
- Membership plan selection
- Payment processing
- Digital membership card
- Welcome kit and orientation materials

#### 3.3.2 Member Portal
- Personal dashboard with key metrics
- Membership status and expiry
- Payment history
- Visit history and statistics

#### 3.3.3 Class Booking System
- Browse available classes
- Real-time availability
- Book/cancel classes
- Waitlist management
- Class reminders and notifications

#### 3.3.4 Personal Training
- Browse trainer profiles
- Book PT sessions
- Track PT package balance
- Session history and progress

#### 3.3.5 Payment & Billing
- View invoices and receipts
- Make payments online
- Set up auto-payments
- Download payment history
- Update payment methods

#### 3.3.6 Profile Management
- Update personal information
- Upload profile photo
- Emergency contact details
- Health and fitness goals
- Dietary preferences

#### 3.3.7 Progress Tracking
- Log workouts
- Track weight and measurements
- View progress charts
- Set and monitor goals
- Achievement badges

#### 3.3.8 Notifications & Communications
- Class reminders
- Payment notifications
- Promotional offers
- Gym announcements
- Personal messages from trainers

---

## 4. User Workflows & Flowcharts

### 4.1 Owner Workflow

> [!NOTE]
> The Owner workflow has been split into multiple focused diagrams for better readability and detail.

#### 4.1.1 Owner Dashboard Overview

```mermaid
graph TD
    A[Owner Login] --> B{Authentication<br/>Successful?}
    B -->|Yes| C[Owner Dashboard<br/>Home Screen]
    B -->|No| A
    
    C --> D[View Business Analytics<br/>& Reports]
    C --> E[Manage Staff<br/>& Permissions]
    C --> F[System Configuration<br/>& Settings]
    C --> G[Financial Management<br/>& Tracking]
    C --> H[Marketing & Member<br/>Engagement]
    
    D --> D_END[Analytics Module]
    E --> E_END[Staff Module]
    F --> F_END[Settings Module]
    G --> G_END[Finance Module]
    H --> H_END[Marketing Module]
    
    D_END --> Z[Logout]
    E_END --> Z
    F_END --> Z
    G_END --> Z
    H_END --> Z
    
    style A fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
    style C fill:#27AE60,stroke:#1E8449,stroke-width:3px,color:#fff
    style D fill:#F39C12,stroke:#D68910,stroke-width:2px
    style E fill:#F39C12,stroke:#D68910,stroke-width:2px
    style F fill:#F39C12,stroke:#D68910,stroke-width:2px
    style G fill:#F39C12,stroke:#D68910,stroke-width:2px
    style H fill:#F39C12,stroke:#D68910,stroke-width:2px
    style Z fill:#E74C3C,stroke:#C0392B,stroke-width:2px,color:#fff
```

#### 4.1.2 Owner Analytics & Reports Workflow

```mermaid
graph TD
    START[Analytics Dashboard] --> A[Select Report Type]
    
    A --> B1[Revenue Metrics]
    A --> B2[Member Statistics]
    A --> B3[Class Performance]
    A --> B4[Attendance Analytics]
    
    B1 --> C1[Daily Revenue]
    B1 --> C2[Monthly Revenue]
    B1 --> C3[Revenue by Category]
    B1 --> C4[Payment Status]
    
    B2 --> D1[Active Members Count]
    B2 --> D2[New Registrations]
    B2 --> D3[Churn Rate Analysis]
    B2 --> D4[Retention Metrics]
    
    B3 --> E1[Popular Classes]
    B3 --> E2[Class Attendance Rates]
    B3 --> E3[Trainer Performance]
    B3 --> E4[Capacity Utilization]
    
    B4 --> F1[Peak Hours Analysis]
    B4 --> F2[Daily Check-ins]
    B4 --> F3[Weekly Trends]
    B4 --> F4[Monthly Comparison]
    
    C1 --> G[View Detailed Charts<br/>& Graphs]
    C2 --> G
    C3 --> G
    C4 --> G
    D1 --> G
    D2 --> G
    D3 --> G
    D4 --> G
    E1 --> G
    E2 --> G
    E3 --> G
    E4 --> G
    F1 --> G
    F2 --> G
    F3 --> G
    F4 --> G
    
    G --> H{Apply Filters?}
    H -->|Yes| I[Select Date Range<br/>& Filters]
    H -->|No| J[Export Options]
    I --> J
    
    J --> K1[Export PDF]
    J --> K2[Export Excel]
    J --> K3[Export CSV]
    J --> K4[Print Report]
    
    K1 --> END[Return to Dashboard]
    K2 --> END
    K3 --> END
    K4 --> END
    
    style START fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
    style G fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style END fill:#E74C3C,stroke:#C0392B,stroke-width:2px,color:#fff
```

#### 4.1.3 Owner Staff Management Workflow

```mermaid
graph TD
    START[Staff Management] --> A{Select Action}
    
    A --> B1[Add New Staff]
    A --> B2[Edit Staff Details]
    A --> B3[Assign Roles<br/>& Permissions]
    A --> B4[View Staff<br/>Performance]
    A --> B5[Manage Schedules]
    
    B1 --> C1[Enter Staff Info:<br/>Name, Email, Phone]
    C1 --> C2[Set Position:<br/>Trainer/Front Desk/<br/>Manager]
    C2 --> C3[Assign Permissions:<br/>Check-in, Payments,<br/>Reports Access]
    C3 --> C4[Set Salary &<br/>Employment Details]
    C4 --> C5[Generate Staff ID<br/>& Credentials]
    C5 --> SAVE1[Save & Send<br/>Welcome Email]
    
    B2 --> D1[Search Staff Member]
    D1 --> D2[View Current Details]
    D2 --> D3[Update Information]
    D3 --> SAVE2[Save Changes]
    
    B3 --> E1[Select Staff Member]
    E1 --> E2{Assign Role}
    E2 --> E3[Administrator]
    E2 --> E4[Trainer]
    E2 --> E5[Front Desk Staff]
    E2 --> E6[Custom Role]
    E3 --> E7[Set Permissions:<br/>Full Access]
    E4 --> E7
    E5 --> E7
    E6 --> E7
    E7 --> SAVE3[Apply Changes]
    
    B4 --> F1[View Check-ins<br/>Processed]
    B4 --> F2[View Payments<br/>Collected]
    B4 --> F3[View Classes<br/>Conducted]
    B4 --> F4[View Member<br/>Feedback Ratings]
    F1 --> F5[Generate Performance<br/>Report]
    F2 --> F5
    F3 --> F5
    F4 --> F5
    
    B5 --> G1[View Staff Calendar]
    G1 --> G2[Assign Shifts]
    G2 --> G3[Set Working Hours]
    G3 --> G4[Manage Time Off<br/>Requests]
    G4 --> SAVE4[Update Schedule]
    
    SAVE1 --> END[Return to Staff<br/>Management]
    SAVE2 --> END
    SAVE3 --> END
    F5 --> END
    SAVE4 --> END
    
    style START fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
    style END fill:#E74C3C,stroke:#C0392B,stroke-width:2px,color:#fff
    style SAVE1 fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style SAVE2 fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style SAVE3 fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style SAVE4 fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
```

#### 4.1.4 Owner Financial Management Workflow

```mermaid
graph TD
    START[Financial Dashboard] --> A{Select Category}
    
    A --> B1[Revenue Analysis]
    A --> B2[Expense Tracking]
    A --> B3[Profit & Loss<br/>Statement]
    A --> B4[Payment Overview]
    
    B1 --> C1[Membership Revenue]
    B1 --> C2[Class Booking Revenue]
    B1 --> C3[Personal Training<br/>Revenue]
    B1 --> C4[Other Income]
    
    C1 --> D1[View Trends:<br/>Daily/Weekly/<br/>Monthly/Yearly]
    C2 --> D1
    C3 --> D1
    C4 --> D1
    
    D1 --> D2[Compare Periods]
    D2 --> D3[Identify Top<br/>Revenue Sources]
    
    B2 --> E1[Staff Salaries]
    B2 --> E2[Equipment Costs]
    B2 --> E3[Facility Maintenance]
    B2 --> E4[Utilities & Rent]
    B2 --> E5[Marketing Expenses]
    
    E1 --> F1[Add New Expense]
    E2 --> F1
    E3 --> F1
    E4 --> F1
    E5 --> F1
    
    F1 --> F2[Enter Amount &<br/>Description]
    F2 --> F3[Attach Receipt/<br/>Invoice]
    F3 --> F4[Categorize Expense]
    F4 --> F5[Save Expense Record]
    
    B3 --> G1[Calculate Total<br/>Revenue]
    G1 --> G2[Calculate Total<br/>Expenses]
    G2 --> G3[Compute Net Profit/<br/>Loss]
    G3 --> G4[View P&L Statement]
    G4 --> G5[Compare with<br/>Previous Periods]
    
    B4 --> H1[Pending Payments]
    B4 --> H2[Completed Payments]
    B4 --> H3[Failed Transactions]
    B4 --> H4[Refund Requests]
    
    H1 --> I1[Send Payment<br/>Reminders]
    H3 --> I2[Retry Failed<br/>Payments]
    H4 --> I3[Process Refund]
    
    D3 --> END[Export Financial<br/>Reports]
    F5 --> END
    G5 --> END
    I1 --> END
    I2 --> END
    I3 --> END
    
    style START fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
    style END fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style G3 fill:#F39C12,stroke:#D68910,stroke-width:2px
```

#### 4.1.5 Owner System Configuration Workflow

```mermaid
graph TD
    START[System Settings] --> A{Configuration Area}
    
    A --> B1[Membership Plans<br/>Configuration]
    A --> B2[Gym Profile<br/>& Branding]
    A --> B3[Payment Gateway<br/>Setup]
    A --> B4[Notification<br/>Settings]
    A --> B5[Operating Hours<br/>& Holidays]
    
    B1 --> C1[Create New Plan]
    B1 --> C2[Edit Existing Plan]
    B1 --> C3[Deactivate Plan]
    
    C1 --> D1[Enter Plan Name:<br/>Basic/Premium/VIP]
    D1 --> D2[Set Pricing]
    D2 --> D3[Set Duration:<br/>Monthly/Quarterly/<br/>Annual]
    D3 --> D4[Define Benefits &<br/>Access Levels]
    D4 --> D5[Set Trial Period<br/>if applicable]
    D5 --> SAVE1[Activate Plan]
    
    C2 --> E1[Select Plan to Edit]
    E1 --> E2[Modify Details]
    E2 --> SAVE2[Update Plan]
    
    B2 --> F1[Upload Gym Logo]
    F1 --> F2[Set Brand Colors]
    F2 --> F3[Enter Gym Info:<br/>Name, Address,<br/>Contact]
    F3 --> F4[Add Social Media<br/>Links]
    F4 --> SAVE3[Save Profile]
    
    B3 --> G1[Select Gateway:<br/>Stripe/PayPal/<br/>Square]
    G1 --> G2[Enter API Keys]
    G2 --> G3[Configure Currency<br/>& Tax Settings]
    G3 --> G4[Test Connection]
    G4 --> G5{Test Successful?}
    G5 -->|Yes| SAVE4[Activate Gateway]
    G5 -->|No| G2
    
    B4 --> H1[Email Notifications]
    B4 --> H2[SMS Notifications]
    B4 --> H3[Push Notifications]
    
    H1 --> I1[Configure Email<br/>Templates]
    I1 --> I2[Set Triggers:<br/>Registration,<br/>Payment, Reminder]
    
    H2 --> J1[Configure SMS<br/>Provider]
    J1 --> J2[Set SMS Triggers]
    
    H3 --> K1[Enable/Disable<br/>Push Notifications]
    
    I2 --> SAVE5[Save Settings]
    J2 --> SAVE5
    K1 --> SAVE5
    
    B5 --> L1[Set Opening Hours:<br/>Mon-Sun]
    L1 --> L2[Add Holiday Dates]
    L2 --> L3[Set Special Hours<br/>for Events]
    L3 --> SAVE6[Update Schedule]
    
    SAVE1 --> END[Configuration<br/>Complete]
    SAVE2 --> END
    SAVE3 --> END
    SAVE4 --> END
    SAVE5 --> END
    SAVE6 --> END
    
    style START fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
    style END fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
```

### 4.2 Staff Workflow

> [!NOTE]
> The Staff workflow has been split into multiple focused diagrams for better readability and detail.

#### 4.2.1 Staff Dashboard Overview

```mermaid
graph TD
    A[Staff Login] --> B{Authentication<br/>Valid?}
    B -->|Yes| C[Staff Dashboard]
    B -->|No| A
    
    C --> D[Member Check-in<br/>System]
    C --> E[Member Management<br/>& Registration]
    C --> F[Class & Schedule<br/>Management]
    C --> G[Payment Processing<br/>& Billing]
    C --> H[Customer Support<br/>& Inquiries]
    
    D --> D_END[Check-in Module]
    E --> E_END[Member Module]
    F --> F_END[Class Module]
    G --> G_END[Payment Module]
    H --> H_END[Support Module]
    
    D_END --> Z[End Shift<br/>& Logout]
    E_END --> Z
    F_END --> Z
    G_END --> Z
    H_END --> Z
    
    style A fill:#17A2B8,stroke:#117A8B,stroke-width:3px,color:#fff
    style C fill:#28A745,stroke:#1E7E34,stroke-width:3px,color:#fff
    style D fill:#FFC107,stroke:#E0A800,stroke-width:2px
    style E fill:#FFC107,stroke:#E0A800,stroke-width:2px
    style F fill:#FFC107,stroke:#E0A800,stroke-width:2px
    style G fill:#FFC107,stroke:#E0A800,stroke-width:2px
    style H fill:#FFC107,stroke:#E0A800,stroke-width:2px
    style Z fill:#DC3545,stroke:#BD2130,stroke-width:2px,color:#fff
```

#### 4.2.2 Staff Member Check-in Workflow

```mermaid
graph TD
    START[Check-in Station] --> A{Member Arrives}
    
    A --> B[Scan QR Code/<br/>Member ID/<br/>Manual Entry]
    
    B --> C{Member Found<br/>in System?}
    
    C -->|No| D1[Show Error:<br/>Member Not Found]
    D1 --> D2[Staff Manual Search]
    D2 --> D3{Found?}
    D3 -->|No| D4[Register as<br/>New Member or Guest]
    D3 -->|Yes| E
    
    C -->|Yes| E[Retrieve Member<br/>Information]
    
    E --> F{Check Membership<br/>Status}
    
    F -->|Active &<br/>Valid| G[Display Member Info:<br/>Name, Photo,<br/>Membership Type]
    
    F -->|Expired| H1[Show Expiry Warning]
    H1 --> H2{Member Wants<br/>to Renew?}
    H2 -->|Yes| H3[Proceed to<br/>Payment Processing]
    H3 --> H4[Renew Membership]
    H4 --> G
    H2 -->|No| H5[Allow Guest Entry<br/>with Day Pass]
    H5 --> H6[Collect Day Pass<br/>Fee]
    H6 --> G
    
    F -->|Suspended/<br/>Frozen| I1[Show Suspension<br/>Notice]
    I1 --> I2[Contact Owner/<br/>Manager for<br/>Approval]
    I2 --> I3{Approved?}
    I3 -->|Yes| I4[Override &<br/>Grant Access]
    I3 -->|No| I5[Deny Entry]
    I4 --> G
    
    G --> J[Record Check-in:<br/>Date, Time,<br/>Location]
    
    J --> K[Update Member<br/>Visit Count]
    
    K --> L[Display Welcome<br/>Message]
    
    L --> M{Additional<br/>Services?}
    
    M -->|Book Class| N1[View Available<br/>Classes]
    M -->|Locker| N2[Assign Locker<br/>Number]
    M -->|PT Session| N3[Check PT<br/>Appointment]
    M -->|None| END
    
    N1 --> END[Access Granted<br/>Member Checked In]
    N2 --> END
    N3 --> END
    I5 --> END
    D4 --> END
    
    style START fill:#17A2B8,stroke:#117A8B,stroke-width:3px,color:#fff
    style G fill:#28A745,stroke:#1E7E34,stroke-width:2px,color:#fff
    style END fill:#6C757D,stroke:#545B62,stroke-width:2px,color:#fff
    style I5 fill:#DC3545,stroke:#BD2130,stroke-width:2px,color:#fff
```

#### 4.2.3 Staff New Member Registration Workflow

```mermaid
graph TD
    START[New Member<br/>Registration] --> A[Greet Customer &<br/>Explain Options]
    
    A --> B[Open Registration<br/>Form]
    
    B --> C1[Collect Personal Info]
    
    C1 --> C2[Enter First Name &<br/>Last Name]
    C2 --> C3[Enter Email Address]
    C3 --> C4[Enter Phone Number]
    C4 --> C5[Enter Date of Birth]
    C5 --> C6[Enter Address]
    C6 --> C7[Emergency Contact<br/>Information]
    
    C7 --> D[Take Member Photo<br/>or Upload]
    
    D --> E[Display Available<br/>Membership Plans]
    
    E --> E1{Customer Selects<br/>Plan}
    
    E1 --> F1[Basic Plan<br/>$29/month]
    E1 --> F2[Premium Plan<br/>$49/month]
    E1 --> F3[VIP Plan<br/>$79/month]
    E1 --> F4[Day Pass<br/>$15]
    
    F1 --> G[Review Plan Details<br/>& Benefits]
    F2 --> G
    F3 --> G
    F4 --> G
    
    G --> H{Customer<br/>Confirms?}
    
    H -->|No| E
    H -->|Yes| I[Calculate Total<br/>Amount Including<br/>Tax & Fees]
    
    I --> J[Proceed to<br/>Payment]
    
    J --> K{Select Payment<br/>Method}
    
    K --> L1[Cash]
    K --> L2[Credit/Debit Card]
    K --> L3[Digital Wallet]
    K --> L4[Bank Transfer]
    
    L1 --> M[Process Payment]
    L2 --> M
    L3 --> M
    L4 --> M
    
    M --> N{Payment<br/>Successful?}
    
    N -->|No| O[Show Error &<br/>Retry]
    O --> K
    
    N -->|Yes| P[Generate Member ID<br/>& QR Code]
    
    P --> Q[Create Digital<br/>Membership Card]
    
    Q --> R[Print Receipt &<br/>Membership Card]
    
    R --> S[Send Welcome Email<br/>with Login<br/>Credentials]
    
    S --> T[Add to CRM<br/>Database]
    
    T --> U[Set up Auto-renew<br/>if Requested]
    
    U --> V[Provide Welcome Kit:<br/>Gym Rules,<br/>Class Schedule,<br/>Facility Tour Info]
    
    V --> W[Log Activity in<br/>System]
    
    W --> END[Registration<br/>Complete]
    
    style START fill:#17A2B8,stroke:#117A8B,stroke-width:3px,color:#fff
    style M fill:#FFC107,stroke:#E0A800,stroke-width:2px
    style P fill:#28A745,stroke:#1E7E34,stroke-width:2px,color:#fff
    style END fill:#28A745,stroke:#1E7E34,stroke-width:3px,color:#fff
```

#### 4.2.4 Staff Payment Processing Workflow

```mermaid
graph TD
    START[Payment Processing] --> A{Payment Type}
    
    A --> B1[Membership Fee]
    A --> B2[Class Booking]
    A --> B3[Personal Training<br/>Package]
    A --> B4[Day Pass]
    A --> B5[Merchandise/<br/>Other]
    
    B1 --> C[Select Member]
    B2 --> C
    B3 --> C
    B4 --> D[Enter Customer<br/>Details]
    B5 --> D
    
    C --> E[Verify Member<br/>Information]
    D --> E
    
    E --> F[Calculate Amount<br/>Due]
    
    F --> G{Discount/<br/>Promotion<br/>Applicable?}
    
    G -->|Yes| H1[Apply Discount<br/>Code]
    H1 --> H2[Verify Discount<br/>Validity]
    H2 --> H3{Valid?}
    H3 -->|Yes| H4[Recalculate<br/>Total Amount]
    H3 -->|No| I
    H4 --> I
    
    G -->|No| I[Display Final<br/>Amount]
    
    I --> J{Select Payment<br/>Method}
    
    J --> K1[Cash Payment]
    J --> K2[Card Payment]
    J --> K3[Digital Wallet]
    J --> K4[Bank Transfer]
    
    K1 --> L1[Accept Cash]
    L1 --> L2[Enter Amount<br/>Received]
    L2 --> L3[Calculate Change]
    L3 --> L4[Provide Change]
    L4 --> M
    
    K2 --> N1[Swipe/Insert/<br/>Tap Card]
    N1 --> N2[Enter PIN if<br/>Required]
    N2 --> N3[Process with<br/>Payment Gateway]
    N3 --> N4{Transaction<br/>Approved?}
    N4 -->|Yes| M
    N4 -->|No| N5[Show Error<br/>Message]
    N5 --> N6{Retry?}
    N6 -->|Yes| K2
    N6 -->|No| CANCEL
    
    K3 --> P1[Display QR Code/<br/>Payment Link]
    P1 --> P2[Customer Scans<br/>& Pays]
    P2 --> P3{Confirmation<br/>Received?}
    P3 -->|Yes| M
    P3 -->|No| CANCEL
    
    K4 --> Q1[Provide Bank<br/>Details]
    Q1 --> Q2[Mark as Pending]
    Q2 --> END2[Follow Up Later]
    
    M[Payment Successful] --> R[Generate Invoice<br/>Number]
    
    R --> S[Record Transaction<br/>in Database]
    
    S --> T[Update Member<br/>Account/Balance]
    
    T --> U[Print Receipt]
    
    U --> V{Email Receipt?}
    
    V -->|Yes| W1[Send Email<br/>Receipt]
    V -->|No| W2
    
    W1 --> W2[Provide Printed<br/>Receipt]
    
    W2 --> X[Update Payment<br/>Dashboard]
    
    X --> END[Payment Processing<br/>Complete]
    
    CANCEL[Transaction<br/>Cancelled] --> END
    
    style START fill:#17A2B8,stroke:#117A8B,stroke-width:3px,color:#fff
    style M fill:#28A745,stroke:#1E7E34,stroke-width:2px,color:#fff
    style END fill:#28A745,stroke:#1E7E34,stroke-width:3px,color:#fff
    style CANCEL fill:#DC3545,stroke:#BD2130,stroke-width:2px,color:#fff
```

### 4.3 Customer Workflow

> [!NOTE]
> The Customer workflow has been split into multiple focused diagrams for better readability and detail.

#### 4.3.1 Customer Onboarding & Portal Access

```mermaid
graph TD
    A[Customer Visits<br/>Website/App] --> B{First Time<br/>User?}
    
    B -->|Yes| C[Click Sign Up/<br/>Register]
    B -->|No| D[Click Login]
    
    C --> E1[Fill Registration<br/>Form]
    E1 --> E2[Enter Email]
    E2 --> E3[Create Password]
    E3 --> E4[Enter Personal Info]
    E4 --> E5[Accept Terms &<br/>Conditions]
    E5 --> E6[Submit Form]
    E6 --> E7[Email Verification]
    E7 --> E8{Click Verification<br/>Link}
    E8 -->|Yes| E9[Account Activated]
    E8 -->|No| E10[Resend Email]
    E10 --> E7
    
    E9 --> F[Browse Membership<br/>Plans]
    F --> G{Select Plan}
    G --> G1[Basic Plan]
    G --> G2[Premium Plan]
    G --> G3[VIP Plan]
    G --> G4[Skip for Now]
    
    G1 --> H[Proceed to Payment]
    G2 --> H
    G3 --> H
    G4 --> PORTAL
    
    H --> I[Enter Payment<br/>Details]
    I --> J{Process Payment}
    J -->|Success| K[Membership<br/>Activated]
    J -->|Failed| L[Show Error &<br/>Retry]
    L --> I
    
    K --> M[Generate Digital<br/>Member Card]
    M --> N[Send Welcome Email<br/>with Details]
    N --> PORTAL
    
    D --> O{Enter Credentials}
    O --> P{Valid Login?}
    P -->|Yes| PORTAL[Member Portal<br/>Dashboard]
    P -->|No| Q[Show Error]
    Q --> R{Forgot Password?}
    R -->|Yes| S[Password Reset<br/>Flow]
    R -->|No| D
    S --> D
    
    PORTAL --> T1[View Dashboard]
    PORTAL --> T2[Book Classes]
    PORTAL --> T3[Manage Profile]
    PORTAL --> T4[Track Progress]
    PORTAL --> T5[Payments]
    
    style A fill:#9B59B6,stroke:#7D3C98,stroke-width:3px,color:#fff
    style PORTAL fill:#27AE60,stroke:#1E8449,stroke-width:3px,color:#fff
    style K fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
```

#### 4.3.2 Customer Dashboard & Information View

```mermaid
graph TD
    START[Member Portal<br/>Dashboard] --> A[Display Key<br/>Information]
    
    A --> B1[Membership Status<br/>Widget]
    A --> B2[Upcoming Classes<br/>Widget]
    A --> B3[Recent Activity<br/>Widget]
    A --> B4[Notifications<br/>Widget]
    A --> B5[Quick Actions<br/>Widget]
    
    B1 --> C1[Show Plan Name:<br/>Basic/Premium/VIP]
    C1 --> C2[Display Expiry Date]
    C2 --> C3[Days Remaining]
    C3 --> C4{Expiring Soon?}
    C4 -->|Yes| C5[Show Renewal<br/>Banner]
    C4 -->|No| C6
    C5 --> C6[Display Digital<br/>Member Card]
    C6 --> C7[Show QR Code]
    
    B2 --> D1[List Next 5<br/>Booked Classes]
    D1 --> D2[Show Date & Time]
    D2 --> D3[Show Instructor]
    D3 --> D4[Show Location]
    D4 --> D5[Countdown Timer]
    D5 --> D6{Action Options}
    D6 --> D7[View Details]
    D6 --> D8[Cancel Booking]
    D6 --> D9[Add to Calendar]
    
    B3 --> E1[Last Check-in<br/>Date & Time]
    E1 --> E2[Total Visits<br/>This Month]
    E2 --> E3[Classes Attended]
    E3 --> E4[Achievement Badges]
    E4 --> E5[Workout Streak]
    E5 --> E6[Personal Records]
    
    B4 --> F1[Payment Reminders]
    B4 --> F2[Class Reminders]
    B4 --> F3[Promotional Offers]
    B4 --> F4[Gym Announcements]
    B4 --> F5[Trainer Messages]
    
    F1 --> G{Click<br/>Notification}
    F2 --> G
    F3 --> G
    F4 --> G
    F5 --> G
    
    G --> H[View Full<br/>Notification]
    H --> I{Take Action?}
    I -->|Yes| J[Navigate to<br/>Relevant Section]
    I -->|No| K[Mark as Read]
    
    B5 --> L1[Book Class<br/>Button]
    B5 --> L2[Make Payment<br/>Button]
    B5 --> L3[View Schedule<br/>Button]
    B5 --> L4[Contact Support<br/>Button]
    
    L1 --> NAV1[Class Booking]
    L2 --> NAV2[Payment Portal]
    L3 --> NAV3[Class Schedule]
    L4 --> NAV4[Support Chat]
    
    style START fill:#9B59B6,stroke:#7D3C98,stroke-width:3px,color:#fff
    style C6 fill:#3498DB,stroke:#2874A6,stroke-width:2px
```

#### 4.3.3 Customer Class Booking Workflow

```mermaid
graph TD
    START[Navigate to<br/>Class Booking] --> A[View Class<br/>Schedule]
    
    A --> B{Filter Options}
    
    B --> C1[Filter by Date]
    B --> C2[Filter by Class<br/>Type:<br/>Yoga/Cardio/etc]
    B --> C3[Filter by<br/>Instructor]
    B --> C4[Filter by Time<br/>Slot]
    B --> C5[Show All Classes]
    
    C1 --> D[Apply Filters]
    C2 --> D
    C3 --> D
    C4 --> D
    C5 --> D
    
    D --> E[Display Filtered<br/>Class List]
    
    E --> F[Browse Available<br/>Classes]
    
    F --> G{Select a Class}
    
    G --> H[View Class Details]
    
    H --> H1[Class Name &<br/>Description]
    H1 --> H2[Instructor Profile<br/>& Rating]
    H2 --> H3[Date & Time]
    H3 --> H4[Duration]
    H4 --> H5[Difficulty Level]
    H5 --> H6[Available Spots]
    H6 --> H7[Equipment Needed]
    
    H7 --> I{Check Availability}
    
    I -->|Spots Available| J[Click Book Now<br/>Button]
    I -->|Class Full| K[Join Waitlist<br/>Option]
    
    K --> K1{Want to Join<br/>Waitlist?}
    K1 -->|Yes| K2[Add to Waitlist]
    K2 --> K3[Waitlist Position:<br/>#X]
    K3 --> K4[Notification if<br/>Spot Opens]
    K4 --> END1
    K1 -->|No| F
    
    J --> L{Confirm Booking?}
    
    L -->|No| F
    L -->|Yes| M[Process Booking]
    
    M --> N{Check Membership<br/>Plan}
    
    N -->|Included in<br/>Membership| O[Book for Free]
    N -->|Additional Fee| P[Show Class Fee]
    
    P --> Q{Proceed to<br/>Payment?}
    Q -->|No| CANCEL
    Q -->|Yes| R[Process Payment]
    
    R --> S{Payment<br/>Success?}
    S -->|No| T[Payment Failed]
    T --> U{Retry?}
    U -->|Yes| R
    U -->|No| CANCEL
    
    S -->|Yes| O
    
    O --> V[Booking Confirmed]
    
    V --> W[Generate Booking<br/>ID]
    
    W --> X[Send Confirmation<br/>Email/SMS]
    
    X --> Y[Add to Personal<br/>Calendar]
    
    Y --> Z[Set Reminder<br/>1 Hour Before]
    
    Z --> AA[Update Dashboard<br/>Upcoming Classes]
    
    AA --> AB{Add Another<br/>Class?}
    
    AB -->|Yes| A
    AB -->|No| END1[Return to<br/>Dashboard]
    
    CANCEL[Booking<br/>Cancelled] --> END1
    
    style START fill:#9B59B6,stroke:#7D3C98,stroke-width:3px,color:#fff
    style V fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style END1 fill:#3498DB,stroke:#2874A6,stroke-width:2px
    style CANCEL fill:#E74C3C,stroke:#C0392B,stroke-width:2px,color:#fff
```

#### 4.3.4 Customer Profile Management Workflow

```mermaid
graph TD
    START[Navigate to<br/>Profile Settings] --> A[View Current<br/>Profile]
    
    A --> B{Select Section<br/>to Update}
    
    B --> C1[Personal Information]
    B --> C2[Account Security]
    B --> C3[Profile Photo]
    B --> C4[Emergency Contacts]
    B --> C5[Preferences]
    
    C1 --> D1[Edit First Name]
    C1 --> D2[Edit Last Name]
    C1 --> D3[Edit Phone Number]
    C1 --> D4[Edit Address]
    C1 --> D5[Edit Date of Birth]
    
    D1 --> E1[Make Changes]
    D2 --> E1
    D3 --> E1
    D4 --> E1
    D5 --> E1
    
    E1 --> E2{Verify Changes}
    E2 -->|Confirm| E3[Save Changes]
    E2 -->|Cancel| A
    E3 --> E4[Update Database]
    E4 --> SUCCESS1
    
    C2 --> F1{Security Action}
    F1 --> F2[Change Password]
    F1 --> F3[Change Email]
    F1 --> F4[Enable 2FA]
    F1 --> F5[View Login History]
    
    F2 --> G1[Enter Current<br/>Password]
    G1 --> G2[Enter New<br/>Password]
    G2 --> G3[Confirm New<br/>Password]
    G3 --> G4{Passwords<br/>Match?}
    G4 -->|Yes| G5[Update Password]
    G4 -->|No| G6[Show Error]
    G6 --> G2
    G5 --> SUCCESS1
    
    F3 --> H1[Enter New Email]
    H1 --> H2[Verify Current<br/>Password]
    H2 --> H3[Send Verification<br/>to New Email]
    H3 --> H4[Click Verification<br/>Link]
    H4 --> SUCCESS1
    
    F4 --> I1[Choose 2FA<br/>Method]
    I1 --> I2[SMS]
    I1 --> I3[Authenticator App]
    I2 --> I4[Send Verification<br/>Code]
    I3 --> I4
    I4 --> I5[Enter Code]
    I5 --> I6{Code Valid?}
    I6 -->|Yes| I7[Enable 2FA]
    I6 -->|No| I4
    I7 --> SUCCESS1
    
    C3 --> J1[Upload New Photo]
    J1 --> J2{Select Source}
    J2 --> J3[Take Photo]
    J2 --> J4[Choose from<br/>Gallery]
    J3 --> J5[Crop & Adjust]
    J4 --> J5
    J5 --> J6[Preview]
    J6 --> J7{Confirm?}
    J7 -->|Yes| J8[Upload to Server]
    J7 -->|No| J1
    J8 --> SUCCESS1
    
    C4 --> K1[Add/Edit Emergency<br/>Contact]
    K1 --> K2[Enter Name]
    K2 --> K3[Enter Phone]
    K3 --> K4[Enter Relationship]
    K4 --> K5[Save Contact]
    K5 --> SUCCESS1
    
    C5 --> L1[Notification<br/>Preferences]
    C5 --> L2[Privacy Settings]
    C5 --> L3[Fitness Goals]
    C5 --> L4[Dietary Info]
    
    L1 --> M1[Email Notifications:<br/>On/Off]
    M1 --> M2[SMS Notifications:<br/>On/Off]
    M2 --> M3[Push Notifications:<br/>On/Off]
    M3 --> M4[Save Preferences]
    M4 --> SUCCESS1
    
    L3 --> N1[Set Weight Goal]
    L3 --> N2[Set Muscle Gain<br/>Goal]
    L3 --> N3[Set Cardio Goal]
    N1 --> N4[Save Goals]
    N2 --> N4
    N3 --> N4
    N4 --> SUCCESS1
    
    SUCCESS1[Changes Saved<br/>Successfully] --> END[Return to<br/>Dashboard]
    
    style START fill:#9B59B6,stroke:#7D3C98,stroke-width:3px,color:#fff
    style SUCCESS1 fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style END fill:#3498DB,stroke:#2874A6,stroke-width:2px
```

#### 4.3.5 Customer Payment & Billing Workflow

```mermaid
graph TD
    START[Navigate to<br/>Payments Section] --> A[Payment Dashboard]
    
    A --> B{Select Action}
    
    B --> C1[View Invoices]
    B --> C2[Make Payment]
    B --> C3[Setup Auto-pay]
    B --> C4[View Payment<br/>History]
    B --> C5[Update Payment<br/>Method]
    
    C1 --> D1[Display Invoice<br/>List]
    D1 --> D2{Filter Invoices}
    D2 --> D3[All Invoices]
    D2 --> D4[Paid]
    D2 --> D5[Unpaid]
    D2 --> D6[Overdue]
    
    D3 --> E[Show Filtered<br/>Invoices]
    D4 --> E
    D5 --> E
    D6 --> E
    
    E --> F{Select Invoice}
    F --> G[View Invoice<br/>Details]
    G --> G1[Invoice Number]
    G1 --> G2[Amount]
    G2 --> G3[Due Date]
    G3 --> G4[Description]
    G4 --> G5[Download PDF]
    G5 --> H{Pay This<br/>Invoice?}
    H -->|Yes| C2
    H -->|No| A
    
    C2 --> I[Select Amount<br/>to Pay]
    I --> J{Payment Type}
    J --> J1[Full Amount]
    J --> J2[Partial Payment]
    J --> <br/>Day Pass]
    J --> J4[Class Booking]
    
    J1 --> K[Display Total<br/>Amount]
    J2 --> K
    J3 --> K
    J4 --> K
    
    K --> L{Apply Promo<br/>Code?}
    L -->|Yes| M1[Enter Code]
    M1 --> M2{Valid?}
    M2 -->|Yes| M3[Apply Discount]
    M2 -->|No| M4[Show Error]
    M4 --> L
    M3 --> N
    L -->|No| N
    
    N[Proceed to<br/>Checkout] --> O{Select Payment<br/>Method}
    
    O --> P1[Credit Card<br/>Saved]
    O --> P2[Debit Card<br/>Saved]
    O --> P3[Add New Card]
    O --> P4[Digital Wallet]
    O --> P5[Bank Transfer]
    
    P1 --> Q[Review Order]
    P2 --> Q
    
    P3 --> R1[Enter Card<br/>Number]
    R1 --> R2[Enter Expiry &<br/>CVV]
    R2 --> R3[Enter Billing<br/>Address]
    R3 --> R4{Save for<br/>Future?}
    R4 -->|Yes| R5[Save Card<br/>Details]
    R4 -->|No| Q
    R5 --> Q
    
    P4 --> S1[Select Wallet:<br/>PayPal/Apple/<br/>Google Pay]
    S1 --> S2[Redirect to<br/>Wallet]
    S2 --> Q
    
    P5 --> T1[Display Bank<br/>Account Info]
    T1 --> T2[Generate Payment<br/>Reference]
    T2 --> T3[Mark Pending<br/>Verification]
    
    Q --> U{Confirm<br/>Payment?}
    U -->|No| CANCEL
    U -->|Yes| V[Process<br/>Transaction]
    
    V --> W{Transaction<br/>Successful?}
    
    W -->|No| X[Payment Failed]
    X --> Y[Show Error<br/>Reason]
    Y --> Z{Retry?}
    Z -->|Yes| O
    Z -->|No| CANCEL
    
    W -->|Yes| AA[Payment<br/>Successful]
    
    AA --> AB[Generate Receipt]
    AB --> AC[Send Email<br/>Confirmation]
    AC --> AD[Update Account<br/>Balance]
    AD --> AE[Update Invoice<br/>Status to Paid]
    AE --> AF{Download<br/>Receipt?}
    AF -->|Yes| AG[Download PDF]
    AF -->|No| AH
    AG --> AH[Display Success<br/>Message]
    
    C3 --> AI[Setup Auto-pay]
    AI --> AJ[Select Payment<br/>Method]
    AJ --> AK[Choose Billing<br/>Cycle]
    AK --> AL[Set Payment Date]
    AL --> AM{Enable<br/>Auto-pay?}
    AM -->|Yes| AN[Save Settings]
    AM -->|No| CANCEL
    AN --> SUCCESS
    
    C4 --> AO[Display Payment<br/>History]
    AO --> AP[Show Transaction<br/>List]
    AP --> AQ{Export Data?}
    AQ -->|Yes| AR[Download Excel/<br/>PDF]
    AQ -->|No| A
    AR --> A
    
    C5 --> AS[Manage Payment<br/>Methods]
    AS --> AT{Action}
    AT --> AU[Add New Method]
    AT --> AV[Edit Existing]
    AT --> AW[Delete Method]
    AT --> AX[Set Default]
    
    AU --> AY[Enter Payment<br/>Details]
    AY --> AZ[Save Method]
    AZ --> SUCCESS
    
    AV --> BA[Update Details]
    BA --> SUCCESS
    
    AW --> BB{Confirm<br/>Deletion?}
    BB -->|Yes| BC[Remove Method]
    BB -->|No| AS
    BC --> SUCCESS
    
    AX --> BD[Set as Default<br/>Payment]
    BD --> SUCCESS
    
    T3 --> SUCCESS
    AH --> SUCCESS
    
    SUCCESS[Action<br/>Completed] --> END[Return to<br/>Dashboard]
    CANCEL[Action<br/>Cancelled] --> END
    
    style START fill:#9B59B6,stroke:#7D3C98,stroke-width:3px,color:#fff
    style AA fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style SUCCESS fill:#27AE60,stroke:#1E8449,stroke-width:2px,color:#fff
    style END fill:#3498DB,stroke:#2874A6,stroke-width:2px
    style CANCEL fill:#E74C3C,stroke:#C0392B,stroke-width:2px,color:#fff
    style X fill:#E74C3C,stroke:#C0392B,stroke-width:2px,color:#fff
```

---

## 5. Detailed Feature Interactions

### 5.1 Member Registration Flow (Customer → Staff)

```mermaid
sequenceDiagram
    participant C as Customer
    participant S as Staff
    participant SYS as System
    participant PAY as Payment Gateway
    participant DB as Database
    
    C->>S: Request Membership
    S->>SYS: Access Registration Form
    S->>C: Collect Personal Info
    C->>S: Provide Details
    S->>SYS: Enter Member Data
    SYS->>SYS: Validate Information
    S->>C: Show Membership Plans
    C->>S: Select Plan
    S->>SYS: Select Plan
    SYS->>SYS: Calculate Fee
    SYS->>S: Display Amount
    S->>C: Collect Payment
    C->>S: Provide Payment
    S->>PAY: Process Payment
    PAY->>SYS: Payment Confirmed
    SYS->>DB: Create Member Record
    DB->>SYS: Record Saved
    SYS->>SYS: Generate Member ID
    SYS->>SYS: Generate QR Code
    SYS->>S: Display Membership Card
    S->>C: Provide Digital Card
    SYS->>C: Send Welcome Email
    C->>S: Thank You
```

### 5.2 Class Booking Flow (Customer Self-Service)

```mermaid
sequenceDiagram
    participant C as Customer
    participant APP as Mobile/Web App
    participant SYS as System
    participant DB as Database
    participant NOTIFY as Notification Service
    
    C->>APP: Login to Portal
    APP->>SYS: Authenticate
    SYS->>APP: Auth Success
    C->>APP: Navigate to Classes
    APP->>SYS: Request Class Schedule
    SYS->>DB: Fetch Classes
    DB->>SYS: Return Classes
    SYS->>APP: Display Schedule
    APP->>C: Show Available Classes
    C->>APP: Select Class
    APP->>SYS: Check Availability
    SYS->>DB: Check Capacity
    DB->>SYS: Slots Available
    SYS->>APP: Confirm Availability
    C->>APP: Confirm Booking
    APP->>SYS: Process Booking
    SYS->>DB: Reserve Spot
    DB->>SYS: Booking Confirmed
    SYS->>NOTIFY: Send Confirmation
    NOTIFY->>C: Email/SMS Confirmation
    SYS->>APP: Display Success
    APP->>C: Show Booking Details
    
    Note over NOTIFY,C: 1 hour before class
    NOTIFY->>C: Class Reminder
```

### 5.3 Daily Check-in Flow (Customer → Staff)

```mermaid
sequenceDiagram
    participant C as Customer
    participant SCAN as Scanner/Kiosk
    participant STAFF as Staff
    participant SYS as System
    participant DB as Database
    
    C->>SCAN: Scan QR Code/ID
    SCAN->>SYS: Send Member ID
    SYS->>DB: Query Member
    DB->>SYS: Member Record
    SYS->>SYS: Check Membership Status
    
    alt Membership Active
        SYS->>DB: Log Check-in
        DB->>SYS: Check-in Recorded
        SYS->>SCAN: Display Welcome
        SCAN->>C: "Welcome, [Name]!"
        SYS->>SYS: Update Visit Count
    else Membership Expired
        SYS->>SCAN: Display Expired
        SCAN->>C: "Membership Expired"
        C->>STAFF: Request Assistance
        STAFF->>SYS: View Member Details
        SYS->>STAFF: Show Expiry
        STAFF->>C: Offer Renewal
        C->>STAFF: Agree to Renew
        STAFF->>SYS: Process Renewal
        SYS->>DB: Update Membership
        DB->>SYS: Updated
        SYS->>STAFF: Renewal Success
        STAFF->>C: Confirm Renewal
        C->>SCAN: Rescan QR Code
        SCAN->>SYS: Verify
        SYS->>SCAN: Access Granted
    else Member Not Found
        SYS->>SCAN: Invalid ID
        SCAN->>C: "ID Not Found"
        C->>STAFF: Request Help
        STAFF->>SYS: Manual Search
        SYS->>STAFF: Show Options
    end
```

### 5.4 Owner Analytics Review Flow

```mermaid
sequenceDiagram
    participant O as Owner
    participant DASH as Dashboard
    participant SYS as System
    participant DB as Database
    participant REPORT as Report Engine
    
    O->>DASH: Login
    DASH->>SYS: Authenticate
    SYS->>DASH: Load Dashboard
    DASH->>DB: Fetch Metrics
    DB->>DASH: Return Data
    DASH->>O: Display KPIs
    
    O->>DASH: Select "Revenue Report"
    DASH->>SYS: Request Report
    SYS->>DB: Query Financial Data
    DB->>SYS: Return Transactions
    SYS->>REPORT: Generate Report
    REPORT->>REPORT: Calculate Metrics
    REPORT->>SYS: Report Ready
    SYS->>DASH: Display Charts
    DASH->>O: Show Revenue Analysis
    
    O->>DASH: Filter by Date Range
    DASH->>SYS: Update Filters
    SYS->>DB: Query Filtered Data
    DB->>SYS: Return Results
    SYS->>DASH: Update View
    DASH->>O: Show Filtered Report
    
    O->>DASH: Export to PDF
    DASH->>REPORT: Generate PDF
    REPORT->>O: Download Report
```

---

## 6. Non-Functional Requirements

### 6.1 Performance
- **Response Time**: Page loads within 2 seconds
- **Concurrent Users**: Support 500+ simultaneous users
- **Database**: Handle 100,000+ member records
- **Uptime**: 99.9% availability

### 6.2 Security
- **Authentication**: Multi-factor authentication for owners
- **Data Encryption**: SSL/TLS for data in transit, AES-256 for data at rest
- **Role-Based Access Control (RBAC)**: Strict permission management
- **Payment Security**: PCI DSS compliance
- **Data Backup**: Daily automated backups with 30-day retention
- **Session Management**: Auto-logout after 30 minutes of inactivity

### 6.3 Usability
- **Intuitive UI**: Minimal training required (< 1 hour)
- **Mobile Responsive**: Work on all devices (desktop, tablet, mobile)
- **Accessibility**: WCAG 2.1 Level AA compliance
- **Multi-language Support**: English (initial), expandable

### 6.4 Scalability
- **Horizontal Scaling**: Cloud-based infrastructure
- **Database**: Optimized queries and indexing
- **Caching**: Redis for frequently accessed data
- **Load Balancing**: Distribute traffic efficiently

### 6.5 Reliability
- **Error Handling**: Graceful error messages
- **Data Integrity**: Transaction management and validation
  - Oracle ACID compliance for all transactions
  - Referential integrity constraints
  - Triggers for business rule enforcement
- **Disaster Recovery**: Backup and restore procedures
  - Oracle RMAN (Recovery Manager) for automated backups
  - Point-in-time recovery capabilities
  - Oracle Data Guard for standby database
- **Monitoring**: Real-time system health monitoring
  - Oracle Enterprise Manager Cloud Control
  - Automated alerts for performance degradation

### 6.6 Compatibility
- **Browsers**: Chrome, Firefox, Safari, Edge (latest 2 versions)
- **Operating Systems**: Windows, macOS, Linux, iOS, Android
- **Payment Gateways**: Stripe, PayPal, Square
- **Third-party Integrations**: Email (SendGrid), SMS (Twilio)

---

## 7. Technical Architecture

### 7.1 System Architecture

```mermaid
graph TB
    subgraph "Client Layer"
        A[Web Application]
        B[Mobile App - iOS]
        C[Mobile App - Android]
        D[Kiosk/Tablet]
    end
    
    subgraph "API Gateway"
        E[Load Balancer]
        E --> F[API Server 1]
        E --> G[API Server 2]
        E --> H[API Server N]
    end
    
    subgraph "Application Layer"
        F --> I[Authentication Service]
        F --> J[Member Service]
        F --> K[Payment Service]
        F --> L[Class Service]
        F --> M[Notification Service]
        F --> N[Analytics Service]
    end
    
    subgraph "Data Layer"
        O[(Primary Database)]
        P[(Replica Database)]
        Q[Cache - Redis]
        R[File Storage - S3]
    end
    
    subgraph "External Services"
        S[Payment Gateway]
        T[Email Service]
        U[SMS Service]
        V[Analytics Tools]
    end
    
    A --> E
    B --> E
    C --> E
    D --> E
    
    I --> O
    J --> O
    K --> O
    L --> O
    
    O --> P
    
    J --> Q
    L --> Q
    
    M --> T
    M --> U
    K --> S
    N --> V
    
    style A fill:#4A90E2
    style B fill:#4A90E2
    style C fill:#4A90E2
    style D fill:#4A90E2
    style O fill:#E74C3C
    style S fill:#F39C12
    style T fill:#F39C12
    style U fill:#F39C12
```

### 7.2 Technology Stack Recommendations

#### Frontend
- **Web**: React.js / Vue.js / Angular
- **Mobile**: React Native / Flutter
- **State Management**: Redux / Vuex / MobX
- **UI Framework**: Material-UI / Ant Design / Tailwind CSS

#### Backend
- **API**: Node.js (Express) / Python (Django/Flask) / Java (Spring Boot)
- **Authentication**: JWT / OAuth 2.0
- **API Documentation**: Swagger / OpenAPI

#### Database
- **Primary**: Oracle Database
- **Cache**: Redis
- **Search**: Elasticsearch (optional)

> [!IMPORTANT]
> **Oracle Database Configuration**
> - Utilize Oracle's built-in features for high availability (RAC - Real Application Clusters)
> - Leverage Oracle Advanced Security for encryption and data masking
> - Use Oracle Partitioning for efficient data management as the database grows
> - Implement Oracle Data Guard for disaster recovery and standby databases

#### DevOps
- **Hosting**: AWS / Google Cloud / Azure
- **CI/CD**: GitHub Actions / GitLab CI / Jenkins
- **Monitoring**: Prometheus + Grafana / New Relic / Datadog
- **Logging**: ELK Stack (Elasticsearch, Logstash, Kibana)

#### Third-party Services
- **Payment**: Stripe / PayPal / Square
- **Email**: SendGrid / AWS SES
- **SMS**: Twilio / AWS SNS
- **Storage**: AWS S3 / Google Cloud Storage

---

## 8. Data Model Overview

### 8.1 Core Entities

```mermaid
erDiagram
    USER ||--o{ MEMBER : "can be"
    USER ||--o{ STAFF : "can be"
    USER ||--|| OWNER : "can be"
    
    MEMBER ||--|| MEMBERSHIP : "has"
    MEMBER ||--o{ CHECKIN : "makes"
    MEMBER ||--o{ BOOKING : "creates"
    MEMBER ||--o{ PAYMENT : "makes"
    MEMBER ||--o{ PROGRESS : "tracks"
    
    MEMBERSHIP ||--|| PLAN : "based on"
    
    STAFF ||--o{ CHECKIN : "processes"
    STAFF ||--o{ PAYMENT : "receives"
    STAFF ||--|| CLASS : "instructs"
    
    CLASS ||--o{ BOOKING : "has"
    CLASS ||--|| SCHEDULE : "follows"
    
    OWNER ||--o{ REPORT : "views"
    OWNER ||--o{ STAFF : "manages"
    OWNER ||--o{ PLAN : "configures"
    
    USER {
        int user_id
        string email
        string password_hash
        string role
        timestamp created_at
    }
    
    MEMBER {
        int member_id
        int user_id
        string first_name
        string last_name
        string phone
        date date_of_birth
        string photo_url
        string qr_code
        string status
    }
    
    MEMBERSHIP {
        int membership_id
        int member_id
        int plan_id
        date start_date
        date end_date
        string status
        boolean auto_renew
    }
    
    PLAN {
        int plan_id
        string name
        decimal price
        int duration_months
        string benefits
        boolean active
    }
    
    CHECKIN {
        int checkin_id
        int member_id
        int staff_id
        timestamp checkin_time
        string location
    }
    
    CLASS {
        int class_id
        string name
        string description
        int instructor_id
        int capacity
        int duration_minutes
    }
    
    SCHEDULE {
        int schedule_id
        int class_id
        timestamp start_time
        timestamp end_time
        string day_of_week
    }
    
    BOOKING {
        int booking_id
        int member_id
        int schedule_id
        string status
        timestamp booked_at
    }
    
    PAYMENT {
        int payment_id
        int member_id
        int staff_id
        decimal amount
        string payment_method
        string status
        timestamp payment_date
        string invoice_number
    }
```

---

## 9. User Interface Guidelines

### 9.1 Design Principles
- **Simplicity**: Clean, uncluttered interface
- **Consistency**: Uniform design language across all modules
- **Responsiveness**: Mobile-first approach
- **Accessibility**: High contrast, large touch targets, screen reader support
- **Feedback**: Clear success/error messages

### 9.2 Color Scheme (Suggested)
- **Primary**: Blue (#4A90E2) - Trust, professionalism
- **Secondary**: Green (#27AE60) - Success, growth
- **Accent**: Orange (#F39C12) - Energy, action
- **Error**: Red (#E74C3C) - Warnings, alerts
- **Neutral**: Gray (#95A5A6) - Text, backgrounds

### 9.3 Key Screen Templates

#### Owner Dashboard
- Top: KPI cards (Revenue, Active Members, Classes Today, Attendance Rate)
- Left: Navigation menu
- Center: Charts and graphs (revenue trends, member growth)
- Right: Recent activities, alerts

#### Staff Dashboard
- Quick actions: Check-in, New Member, Process Payment
- Today's schedule
- Pending tasks
- Recent check-ins

#### Customer Portal
- Membership card (prominent display)
- Upcoming classes
- Quick book button
- Progress summary
- Notifications

---

## 10. Success Metrics

### 10.1 Business Metrics
- **Adoption Rate**: 80% of members use the system within 3 months
- **Customer Satisfaction**: NPS score > 50
- **Operational Efficiency**: 60% reduction in administrative time
- **Revenue Growth**: 20% increase in membership sales
- **Retention Rate**: 85% annual member retention

### 10.2 Technical Metrics
- **System Uptime**: 99.9%
- **Average Response Time**: < 2 seconds
- **Bug Resolution Time**: Critical bugs < 4 hours, others < 48 hours
- **User Adoption**: 75% monthly active users

---

## 11. Implementation Phases

### Phase 1: MVP (Months 1-3)
**Owner:**
- Basic dashboard with key metrics
- Staff management
- Membership plan configuration

**Staff:**
- Member registration
- Check-in system
- Basic payment processing

**Customer:**
- Registration
- Member portal
- View membership status

### Phase 2: Core Features (Months 4-6)
**Owner:**
- Advanced analytics
- Financial reporting
- Marketing tools

**Staff:**
- Class management
- Advanced payment features
- Customer support tools

**Customer:**
- Class booking
- Payment management
- Profile management

### Phase 3: Advanced Features (Months 7-9)
**Owner:**
- Predictive analytics
- Custom reports
- Multi-location support

**Staff:**
- Personal training management
- Inventory management

**Customer:**
- Progress tracking
- Goal setting
- Social features

### Phase 4: Optimization (Months 10-12)
- Mobile apps (iOS/Android)
- Integration with wearables
- AI-powered recommendations
- Advanced automation

---

## 12. Risk Assessment

| Risk | Impact | Likelihood | Mitigation Strategy |
|------|--------|------------|---------------------|
| Payment gateway failures | High | Medium | Multiple payment options, fallback mechanisms |
| Data breach | Critical | Low | Strong encryption, regular security audits, compliance |
| Poor user adoption | High | Medium | Intuitive UI, comprehensive training, support |
| System downtime | High | Low | Redundant infrastructure, monitoring, quick recovery |
| Scope creep | Medium | High | Clear requirements, phased approach, change management |
| Integration issues | Medium | Medium | API-first design, thorough testing |

---

## 13. Compliance & Legal

### 13.1 Data Protection
- **GDPR Compliance**: For European customers
- **Data Privacy**: Clear privacy policy and terms of service
- **User Consent**: Explicit consent for data collection
- **Right to Delete**: Allow users to request data deletion

### 13.2 Payment Compliance
- **PCI DSS**: For handling credit card information
- **Financial Reporting**: Accurate and auditable transactions

### 13.3 Health & Safety
- **Medical Waivers**: Digital consent forms
- **Emergency Contacts**: Required field for all members
- **Liability Waivers**: Digital signatures

---

## 14. Support & Maintenance

### 14.1 Customer Support
- **Help Center**: Comprehensive documentation and FAQs
- **Live Chat**: During business hours
- **Email Support**: 24-hour response time
- **Phone Support**: For critical issues

### 14.2 System Maintenance
- **Regular Updates**: Monthly feature updates
- **Security Patches**: Immediate deployment
- **Database Optimization**: Quarterly
  - Oracle AWR (Automatic Workload Repository) analysis
  - Index optimization and rebuilding
  - Table space management
  - Execution plan reviews
- **Performance Monitoring**: Continuous
  - Oracle Enterprise Manager for database monitoring
  - Real-time performance dashboards

---

## 15. Appendix

### 15.1 Glossary
- **Check-in**: Process of recording member entry to the gym
- **Membership Freeze**: Temporary suspension of membership
- **Waitlist**: Queue for fully booked classes
- **QR Code**: Quick Response code for member identification
- **KPI**: Key Performance Indicator

### 15.2 References
- Industry best practices for gym management
- UX/UI design guidelines
- Security compliance standards
- Payment processing regulations

---

## 16. Approval & Sign-off

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Product Owner | | | |
| Technical Lead | | | |
| UX Designer | | | |
| Stakeholder | | | |

---

**Document End**

> [!NOTE]
> This PRD is a living document and will be updated as requirements evolve and new insights are gained during development.
