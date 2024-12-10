---

# 🌱 Plant Care App Jungles

A Swift-based application to help users manage and track the care of their plants. Users can log in, register, and manage their plants, keeping track of watering and fertilization schedules.

---

## 🚀 Features

- **User Authentication**: Secure login and registration with JWT-based authentication.
- **Plant Management**: Add, update, and view plants with custom names and care schedules.
- **Care Logs**: Track plant care actions such as watering and fertilizing.
- **Intuitive UI**: Clean, user-friendly interface with smooth navigation.
- **Token Persistence**: Sessions are remembered until the user logs out.

---

## 🛠️ Technology Stack

### **Frontend**
- Swift
- SwiftUI for UI design
- `@AppStorage` for token persistence
- Navigation with `NavigationStack` and `NavigationLink`

### **Backend**
- **Node.js & Express**: Handles REST API requests.
- **PostgreSQL**: Database for storing user and plant data.
- **Sequelize**: ORM for database interactions.
- **Authentication**: JWT-based authentication.

---

## 📱 Getting Started with the App

### **Prerequisites**
1. Xcode installed on macOS.
2. Backend service running locally or deployed.

### **Run the App**
1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/plant-care-app.git
   ```
2. Open the `.xcodeproj` or `.xcworkspace` file in Xcode.
3. Run the app on a simulator or a connected device.

---

## 🖥️ Setting Up the Backend

### **Prerequisites**
- Node.js installed
- PostgreSQL installed and running

### **Steps**
1. Clone the backend repository:
   ```bash
   git clone https://github.com/your-username/plant-care-backend.git
   ```
2. Navigate to the backend directory and install dependencies:
   ```bash
   cd plant-care-backend
   npm install
   ```
3. Create a `.env` file with the following variables:
   ```
   DB_HOST=localhost
   DB_PORT=5432
   DB_NAME=plant_care
   DB_USER=your_user
   DB_PASSWORD=your_password
   JWT_SECRET=your_secret_key
   ```
4. Run the backend:
   ```bash
   npm start
   ```

---

## 🛠️ API Endpoints

### **Authentication**
- **POST** `/api/users/register`: Register a new user.
- **POST** `/api/users/login`: Log in and receive a JWT token.

### **Plants**
- **POST** `/api/plants`: Add a new plant.
- **GET** `/api/plants`: Get all plants of the logged-in user.

### **Logs**
- **POST** `/api/logs`: Add a care log for a plant.

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add a new feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

---
