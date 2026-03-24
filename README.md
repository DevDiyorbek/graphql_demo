Navlin Team – Asset Management System Project

Overview
The asset management system designed for organizations with multiple branches, departments and staffs.  
The platform separates responsibilities:

- 🌐 Web app → for admins.
Access: https://navlin.vercel.app/
**Admin Credentials**
- Email: dadmin@bank.com  
- Password: 123456  

- 📱 Mobile app → for staff, departments, and branches.
Download APK:  
https://drive.google.com/file/d/1eHKGJkp-WG8_xAINKIIcjVQtEsOYVnvf/view?usp=sharing

Admins manage users and assets, while staff can discover, request, and manage assigned assets.
⚠️ Note: Enable *"Install from unknown sources"* to install the app.

-------------

🔐 Authentication Flow
We implemented a controlled and secure onboarding process:

1. Admin creates a user with user's email in the web system  
2. User signs up using the same email and a new password  
3. OTP is sent to the user’s email  
4. User verifies OTP  
5. Account is activated  
6. User can now log in with email and password  

-------------

📦 Asset Assignment System
Assets can be assigned or requested in multiple ways:

1. Admin Assignment
    - Admin directly assigns assets to users from the web panel  

2. In-App Request
    - Users see their owned assets on the home screen  
    - At the bottom, there is a “+” button shows all assignable assets in their branch  
    - Users can request any available asset  
    - Admin will approve the request, then the asset will be assigned to the requested user

3. QR Code Scanning
    - Each asset has a QR code (physical or shown in web panel)  
    - User scans the QR code  
    - Asset details open instantly  
    - User can request the asset  
    - Admin will approve the request, then the asset will be assigned to the requested user

4. AI-Based Recommendation
    - Users interact with an AI chat  
    - Example: “I want a red laptop”, “newest printer”  
    - AI suggests the most suitable asset  
    - User can open asset details and request it  
    - Admin will approve the request, then the asset will be assigned to the requested user

-------------

Navlin Team
- Diyorbek Usmanov
- Jafarbek Yusupov
- Kamron Safarov
