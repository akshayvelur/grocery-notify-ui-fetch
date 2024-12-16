# BW1_UI

A new Flutter project featuring a static home page and a notification page that fetches data from an API using Dart isolates for improved performance. This project demonstrates effective UI and backend data integration while maintaining smooth app performance.

---

## Project Overview

This project includes:
- A static **Home Page** showcasing organized widgets.
- A dynamic **Notification Page** that fetches and displays data from an API using isolates to ensure non-blocking UI updates.

---

## Features

1. **Home Page**:
   - Displays static content.
   - Widgets for the home page are modular and placed in a dedicated file.

2. **Notification Page**:
   - Fetches data from an API using `dart:isolate`.
   - Displays data in a list view with loading indicators and error messages.
   - Widgets specific to the notification page are organized in a dedicated file.

---

## Prerequisites

Before running the application, ensure the following:

1. **Flutter SDK**:
   - [Install Flutter](https://flutter.dev/docs/get-started/install) and set up your development environment.

2. **Dart SDK**:
   - Ensure Dart is included with your Flutter installation.

3. **Dependencies**:
   - Fetch all required project dependencies by running the following command:
     ```bash
     flutter pub get
     ```

---

## Getting Started

### Clone the Repository

1. Open a terminal and run the following command:
   ```bash
   git clone <repository-url>
