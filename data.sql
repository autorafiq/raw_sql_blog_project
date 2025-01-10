-- Active: 1736492567198@@127.0.0.1@3306@blogs
----demo data for  authors table
INSERT INTO authors (author_name) VALUES
('Ahmed Hossain'),
('Fatima Begum'),
('Mohammad Abdullah'),
('Ayesha Sultana'),
('Hassan Ali'),
('Maryam Akhtar'),
('Omar Farooq'),
('Zainab Rahman'),
('Khadija Karim'),
('Yusuf Khan');

--demo data for categories table
INSERT INTO categories (category_name) VALUES
('Islamic Studies'),
('History'),
('Education'),
('Science & Technology'),
('Health & Wellness'),
('Business & Economy'),
('Travel'),
('Food'),
('Environment'),
('Culture');
--demo data for  blogs table
INSERT INTO blogs (title, body, category_id, author_id) VALUES
('The Importance of Salah', 'Salah is the key to success in both worlds...', 1, 1),
('The Golden Age of Islam', 'A look at the contributions of Muslim scholars...', 2, 2),
('Quranic Education in Modern Times', 'How to integrate Quranic lessons into daily life...', 3, 3),
('Advances in Islamic Science', 'Exploring the achievements of Muslim scientists...', 4, 4),
('Healthy Living in Islam', 'Islamic guidelines for a balanced lifestyle...', 5, 5),
('Halal Business Ethics', 'Building a business on Islamic principles...', 6, 6),
('Exploring Islamic Heritage', 'Famous Islamic sites around the world...', 7, 7),
('Halal Cooking Made Easy', 'Delicious and authentic halal recipes...', 8, 8),
('Islam and Environmental Responsibility', 'How Islam encourages sustainable living...', 9, 9),
('The Role of Women in Islamic Society', 'Understanding women’s contributions in Islam...', 10, 10),
('Prophet Muhammad’s Leadership', 'Lessons in leadership from the Prophet...', 2, 1),
('The Future of Islamic Finance', 'How Islamic banking is shaping the economy...', 6, 2),
('Eco-Friendly Practices in Islam', 'Islamic guidance on protecting the planet...', 9, 3),
('Spiritual Benefits of Fasting', 'Fasting as a means of purifying the soul...', 5, 4),
('Traveling for Knowledge', 'Islamic teachings on seeking knowledge through travel...', 7, 5);