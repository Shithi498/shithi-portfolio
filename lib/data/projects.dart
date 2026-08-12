//
// import '../model/project.dart';
//
// final List<Project> projects = [
// Project(
// title: "Travela",
// subtitle: "Hotel Booking Application",
// description:
// "A modern hotel booking application with hotel search, property details, and responsive UI.",
//
// technologies: const [
// "Flutter",
// "Provider",
// "REST API",
// "MVC",
// ],
//
// features: const [
// "Hotel Search",
// "Popular Locations",
// "Property Details",
// "Responsive Design",
// ],
//
// image: "assets/images/travela.png",
// githubUrl: "https://github.com/yourusername/travela",
// liveUrl: null,
// ),
//
// Project(
// title: "Hospital Management",
// subtitle: "Healthcare Application",
// description:
// "Hospital management application with appointment scheduling, prescriptions, invoice generation, and patient records.",
//
// technologies: const [
// "Flutter",
// "Firebase",
// "Provider",
// "PDF",
// ],
//
// features: const [
// "Appointments",
// "Prescriptions",
// "Invoice PDF",
// "Patient Records",
// ],
//
// image: "assets/images/hospital.png",
// githubUrl: "",
// liveUrl: null,
// isPrivate: true,
// ),
//
// Project(
// title: "Discuss",
// subtitle: "Enterprise Chat Application",
// description:
// "Real-time messaging application integrated with Odoo JSON-RPC and Agora for voice and video communication.",
//
// technologies: const [
// "Flutter",
// "JSON-RPC",
// "Odoo",
// "Agora",
// "Provider",
// ],
//
// features: const [
// "Real-time Chat",
// "Voice Calls",
// "Video Calls",
// "Group Messaging",
// "File Sharing",
// ],
//
// image: "assets/images/discuss.png",
// githubUrl: "",
// liveUrl: null,
// isPrivate: true,
// ),
// ];
//
import '../model/project.dart';

final List<Project> projects = [
  Project(
    title: "Field Force App",
    subtitle: "Workforce Management Application",
    description:
    "Developed a cross-platform workforce management tool featuring a geofenced 'Swipe to Check-in/out' system and automated history logging. Implemented real-time background location services to track distance traveled and work hours, ensuring high data accuracy for timesheet generation.",

    technologies: const [
      "Flutter",
      "Dart",
      "Provider",
      "MVC Architecture",
      "Foreground Service",
      "Flutter Map",
      "Permission Handler",
      "JSON-RPC",
      "REST API",
    ],

    features: const [
      "Geofence Check-in/Check-out",
      "Background Location Tracking",
      "Timesheet Generation",
      "History Logging",
      "Automatic Location Updates to Backend",
      "Background Location Sync",
      "Attendance",
      "Leave Apply",
      "Task Assign"

    ],

    image: "assets/sdi.jpg",
    githubUrl: "",
    liveUrl: "https://drive.google.com/file/d/1anwHq7ECwOIYk50zjcbMzIIQZVr-KhJs/view?usp=drive_link",
    isPrivate: true,
  ),

  Project(
    title: "Sales Purchase App",
    subtitle: "Retail Management Application",
    description:
    "This Flutter-based shop management application streamlines retail operations. It features a comprehensive suite of tools for inventory tracking, sales logging, and automated onboarding.",

    technologies: const [
      "Flutter",
      "Dart",
      "MVC Architecture",
      "REST API",
      "Backend Integration",
      "Barcode / QR Scanner",
      "PDF Generation",
      "Printing",
    ],

    features: const [
      "Sales & Invoice Management",
      "Purchase Management",
      "Inventory & Stock Management",
      "Customer & Due Management",
      "Cash In / Cash Out Tracking",
      "Sales & Business Reports",
      "Barcode / QR Code Scanning",
      "Receipt PDF Generation & Printing",
      "Payment & Due Tracking",
      "Product & Category Management",
    ],

    image: "assets/sales.png",
    githubUrl: "",
    liveUrl: "https://drive.google.com/file/d/1Sa1rpg0cduCa2qcbrM5pEkr-e_UyT6uo/view?usp=drive_link",
    isPrivate: true,
  ),

  Project(
    title: "Hospital Management App",
    subtitle: "Healthcare Management System",
    description:
    "Developed a comprehensive patient-care application featuring real-time appointment scheduling, digital prescription management, and automated invoice generation. Integrated a PDF generation and viewing system to allow users to download and share medical records seamlessly across mobile devices.",

    technologies: const [
      "Flutter",
      "Provider",

      "MVC",

      "JSON-RPC",
    ],

    features: const [
      "Appointment Scheduling",
      "Digital Prescriptions",
      "Medical Records",
      "Invoice PDF Generation",
      "PDF Viewing & Sharing",
      "Patient Management",
    ],

    image: "assets/hospital.png",
    githubUrl: "",
    liveUrl: null,
    isPrivate: true,
  ),

  Project(
    title: "Discuss App",
    subtitle: "Enterprise Messaging Platform",
    description:
    "Built a cross-platform messaging app integrated with Odoo's Discuss module using JSON-RPC.Developed features including real-time chat, group/channel creation, file sharing, messagereactions, read receipts, edit message and message unsend. Added one-to-one and group audio/video calling. (",

    technologies: const [
      "Flutter",
      "Provider",
      "MVC",
      "JSON-RPC",
    ],

    features: const [
      "Real-time Chat",
      "Channels & Groups",
      "Voice Calling",
      "Video Calling",
      "File Sharing",
      "Image Sharing",
      "Message Reactions",
      "Read Receipts",
    ],

    image: "assets/discuss.png",
    githubUrl: "",
    liveUrl: "https://drive.google.com/file/d/1N8iSYyL8Z6EXMJjd3s89KIHh-X0cRMzB/view?usp=drive_link",
    isPrivate: true,
  ),

  Project(
    title: "Fish Marketplace App",
    subtitle: "E-commerce Application",
    description:
    "Developed a mobile e-commerce application for purchasing fish products. The app includes user authentication, category-based product browsing, shopping cart management, and a complete checkout process with delivery address, shipping method, and payment options. It also supports location-based delivery services.",

    technologies: const [
      "Flutter",
      "MVC",
      "REST API",
    ],

    features: const [
      "Authentication",
      "Product Categories",
      "Shopping Cart",
      "Checkout",
      "Delivery Address",
      "Shipping Method",
      "Payment Options",
      "Location-based Delivery",
    ],

    image: "assets/fish.png",
    githubUrl: "",
    liveUrl: "https://drive.google.com/file/d/1EFko1uNB-0ezKaB2pd8cwPCatSHOziD_/view?usp=drive_link",
    isPrivate: true,
  ),
];