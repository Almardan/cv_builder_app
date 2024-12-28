class CVData {
  static final List<Map<String, String>> profiles = [
    {
      'name': 'John Smith',
      'position': 'Senior Software Engineer',
      'cvImage': 'assets/cv_templates/template1.png',
      'personImage': 'assets/profiles/person1.png',
      'location': 'San Francisco, CA',
      'company': 'Google',
      'summary': 'Experienced software engineer with 8+ years in full-stack development',
      'skills': 'Flutter, React, Node.js, AWS',
      'experience': '• Senior Developer at Google\n• Tech Lead at Amazon\n• Software Engineer at Microsoft',
      'education': 'MS Computer Science, Stanford University',
    },
    {
      'name': 'Emily Johnson',
      'position': 'UX Designer',
      'cvImage': 'assets/cv_templates/template2.png',
      'personImage': 'assets/profiles/person2.png',
      'location': 'Bucharest, Romania',
      'company': 'Google',
      'summary': 'Creative UX designer focused on user-centered design solutions',
      'skills': 'Figma, Adobe XD, Sketch, User Research',
      'experience': '• Lead Designer at Apple\n• UX Designer at Netflix\n• UI/UX at Spotify',
      'education': 'BFA Design, RISD',
    },
    {
      'name': 'Michael Chen',
      'position': 'Product Manager',
      'cvImage': 'assets/cv_templates/template3.png',
      'personImage': 'assets/profiles/person3.png',
      'location': 'Baku, Azerbaijan',
      'company': 'Google',
      'summary': 'Product manager with strong technical background',
      'skills': 'Product Strategy, Agile, Data Analysis',
      'experience': '• Product Manager at Meta\n• Product Owner at LinkedIn\n• Technical PM at Oracle',
      'education': 'MBA, Harvard Business School',
    },
    {
      'name': 'Sarah Williams',
      'position': 'Data Scientist',
      'cvImage': 'assets/cv_templates/template4.png',
      'personImage': 'assets/profiles/person4.png',
      'location': 'London, UK',
      'company': 'Google',
      'summary': 'Data scientist specializing in machine learning and AI',
      'skills': 'Python, TensorFlow, PyTorch, SQL',
      'experience': '• Data Scientist at Tesla\n• ML Engineer at IBM\n• Research Scientist at DeepMind',
      'education': 'PhD Machine Learning, MIT',
    },
  ];

  static List<Map<String, String>> favoritedProfiles = [];
  
  static void toggleFavorite(Map<String, String> profile) {
    if (favoritedProfiles.contains(profile)) {
      favoritedProfiles.remove(profile);
    } else {
      favoritedProfiles.add(profile);
    }
  }
}
