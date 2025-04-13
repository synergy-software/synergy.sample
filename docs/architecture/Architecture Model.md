# Architecture C4 Model

This architecture model is based on the [C4 model](https://c4model.com/) for visualizing the architecture of software systems.

## System Context Diagram

<!--
```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml
' uncomment the following line and comment the first to use locally
' !include C4_Context.puml

LAYOUT_WITH_LEGEND()

title System Context diagram for Synergy Banking System

Person(customer, "Personal Banking Customer", "A customer of the bank, with personal bank accounts.")
System(banking_system, "Internet Banking System", "Allows customers to view information about their bank accounts, and make payments.")

System_Ext(mail_system, "E-mail system", "The internal Microsoft Exchange e-mail system.")
System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Rel(customer, banking_system, "Uses")
Rel_Back(customer, mail_system, "Sends e-mails to")
Rel_Neighbor(banking_system, mail_system, "Sends e-mails", "SMTP")
Rel(banking_system, mainframe, "Uses")
@enduml
```
-->
![diagram](https://www.plantuml.com/plantuml/png/V5FBZjf04BoljF_GuH8Y0RxabDFk4YjP2JOeWAAShF6uiKVC0ysq0tnR3lca_49w_0g4LMwUdghggXhvzyzV3u64fzhe-xitoafT5mWLqI5yI18lZhDIKLNdTK0ldIMqD9FE90SjR2HD0nLQvSdy_NGLHzlb8Z4Y47eUPVF8ED7iqCY_XTeorx06K8MmSrgxex8bQ6KHX2tWwbhvm5yEU3Te9uNMvoWokBnPS7-tUFp-PRl9lZrlFcUBz5Fwyd7yBiv9aKPOdzcOWOu4XHAb5uPzUBwowCipF0cxZuvQQAIkq0Tdnx8Ev0pw2OpQYT03UDxTZVZo4Neak5sJ8sVK18vS8nnwPfo1aDBLbi9in1xRXUEybSn2SsIzP_RgBT8_pffLiRumx0kngnyAZw0iHpA2bBCWSbStVIf_lNNI56x47k4Wph7rraXl9KjFD3P2wRzUqcayGnWSR3YUQWnofgMItWMt8qXFiXAsHC1BmaNCNjlkk7zaeMN__KhCDJcF0VZv-qOb3vem4NWRTYY48mvXoGiRX8mmFY79BknNr1TlUrF_Dc28G8PbJqBkBx3NtQpH5g4B75-Y9xsWAglS-PkN_G-zIRtSh3gDrwX3Sxt11nPeVe8_0000__y30000) <!-- ← Generated image link. Do NOT modify it manually. -->

## Container Diagram

<!--
```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml

' LAYOUT_TOP_DOWN()
' LAYOUT_AS_SKETCH()
LAYOUT_WITH_LEGEND()

title Container diagram for Internet Banking System

Person(customer, Customer, "A customer of the bank, with personal bank accounts")

System_Boundary(c1, "Internet Banking") {
    Container(web_app, "Web Application", "Java, Spring MVC", "Delivers the static content and the Internet banking SPA")
    Container(spa, "Single-Page App", "JavaScript, Angular", "Provides all the Internet banking functionality to customers via their web browser")
    Container(mobile_app, "Mobile App", "C#, Xamarin", "Provides a limited subset of the Internet banking functionality to customers via their mobile device")
    ContainerDb(database, "Database", "SQL Database", "Stores user registration information, hashed auth credentials, access logs, etc.")
    Container(backend_api, "Web API Application", ".NET, Docker Container", "Provides Internet banking functionality via REST Web API")
}

System_Ext(email_system, "E-Mail System", "The internal Microsoft Exchange system")
System_Ext(banking_system, "Mainframe Banking System", "Stores all the core banking information about customers, accounts, transactions, etc.")

Rel(customer, web_app, "Uses", "HTTPS")
Rel(customer, spa, "Uses", "HTTPS")
Rel(customer, mobile_app, "Uses")

Rel_Neighbor(web_app, spa, "Delivers")
Rel(spa, backend_api, "Uses", "async, JSON/HTTPS")
Rel(mobile_app, backend_api, "Uses", "async, JSON/HTTPS")
Rel_Back_Neighbor(database, backend_api, "Reads from and writes to", "sync, Entity Framework")

Rel_Back(customer, email_system, "Sends e-mails to")
Rel_Back(email_system, backend_api, "Sends e-mails using", "sync, SMTP")
Rel_Neighbor(backend_api, banking_system, "Uses", "sync/async, XML/HTTPS")
@enduml
```
-->
![diagram](https://www.plantuml.com/plantuml/png/d5N1RkCs4BqRy3zCtKEzW6oZG4yzhMEhJRQneqPAipq98ugsYL2aG5Bs1ej-MG_xIViB7SgIB3a55crEuWldpPkPD_JNlx-yjmwDgmev7dqd59DLpk7WN6b_NYmCdkPxuGvLLbbkc5QEApTdkbYK4fKFcbcNIv4jLZ_D8WyzRUuN1Lh73K7fYY9GA6xcPPrWFFe1xfT_FZmbQV8GfUk7v-tqNGzSncdyMvYiRZtQOCztoMrw7_uQRjSU7O-SS993HmsvmBt10dRQm1qfD8exk47r8jGUubVIKlYmY1khrPHLrkc2cm1MtTTa2IqCUWVkm26Z-01EL3kKTI3A6WDaJ5VAsKcjvKoVtX2KetcTiX-9xLh4v1ry7e-0_ZhHqnFFKYnBkltCCrYMfHGCdT1gGj07F680SMby1Pi_LXvRSocEfAHMHoDpWa4p442Lrt2NE6khZvPUvp2rBOby4jF_9Pz5kES-VPisPaQKBe2bsbSIZOSZeuyYvnPGodzFiwiKyzfH2lSAJdVTj70Kw6E40QeOCgDFPAItcWgT2ScRZcpgGwjgzNq07x50QiPG3KXH2CTpi5LcIKqpkV-dxYm0SduKZB_HjywcEJhCq78_YkRJoub_luV1sMb3ulowWE5xOPsfnmf2aJ-B-Zk00ze32SUAxCKCpsc80gKDlBkujI3rdWxSiVdRLcN8NhZAgLUYTKzqT-sW-JPC0bXhkcekiOF-VQDFlZMFOPn0ay4B-Qjd-V2Jc_82XKnj3H1rEDlGkLavdokXSOWw3MtFHZ2ZhTuv23-n0ohotJdIC_T86paNMY9LErfmVhNKlNQtpcHqwkhfTHmmqvMx33xerZW06f2oM5VUw_buzCXbxx6uxEkJvTQdlasIAFPNXnVFs_MDImExrtVRbEcMY_qXqxqNuipOxdzBLgD3BxH9qRug5i27-66x60Zef_rleUaDNRzekop3aEQHOsvXPtHHlqadG_j9BvRsr6Vca9nExlh5p_EapSkbS9-Xrw8hRyMKn0AVURHcxEcwyk5GqZ2miluzxjJ4coHgcRhY1l5ltDXsoXCicdPzf1-zhbllARR-iVi7003__mC0) <!-- ← Generated image link. Do NOT modify it manually. -->

## Component Diagram
<!--
```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Component.puml
' uncomment the following line and comment the first to use locally
' !include C4_Component.puml

LAYOUT_WITH_LEGEND()

title Component diagram for Internet Banking System - API Application

Container(spa, "Single Page Application", "javascript and angular", "Provides all the internet banking functionality to customers via their web browser.")
Container(ma, "Mobile App", "Xamarin", "Provides a limited subset ot the internet banking functionality to customers via their mobile mobile device.")
ContainerDb(db, "Database", "Relational Database Schema", "Stores user registration information, hashed authentication credentials, access logs, etc.")
System_Ext(mbs, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Container_Boundary(api, "API Application") {
    Component(sign, "Sign In Controller", "MVC Rest Controller", "Allows users to sign in to the internet banking system")
    Component(accounts, "Accounts Summary Controller", "MVC Rest Controller", "Provides customers with a summary of their bank accounts")
    Component(security, "Security Component", "???", "Provides functionality related to singing in, changing passwords, etc.")
    Component(mbsfacade, "Mainframe Banking System Facade", "???", "A facade onto the mainframe banking system.")

    Rel(sign, security, "Uses")
    Rel(accounts, mbsfacade, "Uses")
    Rel(security, db, "Read & write to", "Entity Framework")
    Rel(mbsfacade, mbs, "Uses", "XML/HTTPS")
}

Rel(spa, sign, "Uses", "JSON/HTTPS")
Rel(spa, accounts, "Uses", "JSON/HTTPS")

Rel(ma, sign, "Uses", "JSON/HTTPS")
Rel(ma, accounts, "Uses", "JSON/HTTPS")
@enduml
```
-->
![diagram](https://www.plantuml.com/plantuml/png/f5NDJXin4BuZyGxJ7DeW0Rdqr0i428MAq8Y4_foYMQ-pSV7FolOcZQe-MGzzfBv2PxoRP4DHgTHSOe_dvvjlFdj__VXv6YBwM1czl_T2MQ6hNC8ynZAywVKyBeyB5UTLLWNfXRDHsdWidEcL6Yq77OMOQvNrpbyVZTXqFxpf6GnHUZ9DpvqfdUMOCXLu1PMbQ4CMY7C9CwUrMofRW5PM0jeSTewL3xHoGDL1Eu5QhpZ91kSJ9VRtRlgVtzzFfX-l9rVJcy7RmUr5zu3jKKLD8Mj_o1KM7Ws1y71DdNah8voXVM0yunNrOE08-gDhw9UbLWAZSfOJdHCFI7XzDvHu29qn1L3c4HQoxTgXeo-um22yAcDg3crHQVHyCl9keN8PW9fApQerXAo1C2EkE0zg5LVCWgX2T4Rw00k57ACyB6K6cNTB6iznvw2DpJ2qeSkKJgYuvYSqw9NTBK_K6nLb3g7A0fLtyJ_WcBfUyvVBXH9o5zT5riqp0d214JCCai7SIPqOGmrhCup5N1haqt5qde2o0i7BGeNeapT1fD6Pj3w4EOOvDO4L0R6n6G48BtFUeWw7W4B844X81Mra50bOFUZfu6licepidI71d94kv2CjjA3moDmiqIJ8iA6e1GWmSrNSSfIgkyf6MX5-6p2HsGBIucXwHfuv-bKNIqLb7scmSm3VzlU0VXinTuCgR99YOKdCT62ZfyibazQ67yxXJj9LsZNt-VBLn0OUAEUW7dZvf092pSF1uzhRpZhzPWdZof3MLly6P2F6hQIMzEgGDaEJfcQR1CPODbJ-2IL8KNdI9rFHBBUdNEhav6IdugwgFGkHL9J8i4KzqqCGSwmt9OQmT3vlZMstFabeXW9p-HSXmMNoQA7fGnq4n4hDlTd4xfBVA8MBqgLffjvg-Zx83Ilii1rD6zbZhss2T3Nl9ERm4fPaaaG58npG7I9-BXaI4V3GZcvbhczGIi_F3NqBhYQJqPYzlpFkL8pVp4QkQyztu_UtMzUDLqjOJtlMllpIFPkGdPxDTofjdhuYlm400F__0m00) <!-- ← Generated image link. Do NOT modify it manually. -->

## System Landsscape Diagram

<!--
```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml
' uncomment the following line and comment the first to use locally
' !include C4_Context.puml

'LAYOUT_TOP_DOWN()
'LAYOUT_AS_SKETCH()
LAYOUT_WITH_LEGEND()

title System Landscape diagram for Synergy Bank Sample (SBS)

Person(customer, "Personal Banking Customer", "A customer of the bank, with personal bank accounts.")

Enterprise_Boundary(c0, "Big Bank plc") {
    System(banking_system, "Internet Banking System", "Allows customers to view information about their bank accounts, and make payments.")

    System_Ext(atm, "ATM", "Allows customers to withdraw cash.")
    System_Ext(mail_system, "E-mail system", "The internal Microsoft Exchange e-mail system.")

    System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

    Person_Ext(customer_service, "Customer Service Staff", "Customer service staff within the bank.")
    Person_Ext(back_office, "Back Office Staff", "Administration and support staff within the bank.")
}

Rel_Neighbor(customer, banking_system, "Uses")
Rel_R(customer, atm, "Withdraws cash using")
Rel_Back(customer, mail_system, "Sends e-mails to")

Rel_R(customer, customer_service, "Asks questions to", "Telephone")

Rel_D(banking_system, mail_system, "Sends e-mail using")
Rel_R(atm, mainframe, "Uses")
Rel_R(banking_system, mainframe, "Uses")
Rel_D(customer_service, mainframe, "Uses")
Rel_U(back_office, mainframe, "Uses")

Lay_D(atm, banking_system)

Lay_D(atm, customer)
Lay_U(mail_system, customer)
@enduml
```
-->
![diagram](https://www.plantuml.com/plantuml/png/V5JDRjim3BuNw3jmkIm5qcI7dNPgVeorMD8KTO9W9qDMP5k8B7cIt3GOzcGxx97s2gFaEB4RTpvPv4VouqTAVt__kJEMQ5lculhg0vTKb5i6cRM5-J8QQR8VfjncPLmQfgcIbaaxf2eV5O985tHhx5RmU3JzVFlaJEl5V9GJOvb6KpHr4QzsMFZq7w6K69jZ3h0PWqG9eVPSfY2uP43a5bfkhWt-AS3Q81GbGXnSaXFBYmBedO-_BzUhQBLyYcRBpMF_vcmRXr7uBLXDxvtnQDiyhEwZUV0rU9mvw_MLvLOm20_OGGvpf6GeAHXiEKaroP6oHgTaEZt0XCWTX2GlCA0VJa8V_yIqKR9FIsDLplG0UfM528ztpKwFlXuwnr0ZGIM-wnXH0zYZw53KaSu6X59LIck6FLyemCPreRbXqGJjMw8FVVe9KqvuMb4h1EtTmC_hAy2lwgWVLnmYuu-8Vd1f9BCdTXNGStFJCIU2netYXRCzS8aovCHo9O74glJZuhfDS-3dcPCTWu8St51hvcSwKV1g-yGw7kFLuhsQJeijRY9GOZAVuqs6d71nxYYuTMUepYxd2bNblasKSi6fLaOb5e9NcX6PCc3DW6wE2909pfzXkaNzto5PQ9Lc1d1Jwt5ID7XX7F1Ik5EZWuPmLXDf27KmF35B6wIgRVAawjW8h-OBfuvRlLeGLYO8BKcINjDp10FU-YJnsd9vMhoJkeqoCQ6xI2L9LM629rZwqpdvU9jpoGtohbh3mPkoA9Is_odpoxNqp4Jqo7YQnKetBit5cguDCox8uPyRm6fvDiSDCNv5yBt0s1hj23S2shiIChpWnmLmkrRf_BP8Xz1ZipFmesJ63yb5kaLZWXMPakoSPdPnuzudqERzN5sCvkQrHUX8t8cSTIpAUzXrUzfTC7mwoG6JUdPj3c-zTLtttA9rtRwe3UyTgk0Vy7y0003__mC0) <!-- ← Generated image link. Do NOT modify it manually. -->