 class Message {
   String userName;
   String snippet;
   String time;
   String avatar;

   Message({required this.userName, required this.snippet, required this.time, required this.avatar});

   static List<Message> messages = [
     Message(
       userName: "hilal",
       snippet: "hei hei hei hei hei hei",
       time: "10:30",
       avatar: "https://randomuser.me/api/portraits/men/67.jpg",
     ),
     Message(
       userName: "anwar",
       snippet: "hei hei hei hei hei hei",
       time: "10:30",
       avatar: "https://randomuser.me/api/portraits/men/78.jpg",
     ),
     Message(
       userName: "anony",
       snippet: "hei hei hei hei hei hei",
       time: "10:30",
       avatar: "https://randomuser.me/api/portraits/men/79.jpg",
     ),
     Message(
       userName: "made",
       snippet: "hei hei hei hei hei hei",
       time: "10:30",
       avatar: "https://randomuser.me/api/portraits/men/82.jpg",
     ),
     Message(
       userName: "ical",
       snippet: "hei hei hei hei hei hei",
       time: "10:30",
       avatar: "https://randomuser.me/api/portraits/men/83.jpg",
     ),
     Message(
       userName: "sigit",
       snippet: "hei hei hei hei hei hei",
       time: "10:30",
       avatar: "https://randomuser.me/api/portraits/men/84.jpg",
     ),
   ];
 }