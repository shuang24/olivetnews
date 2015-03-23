-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2015 at 07:20 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `olivetnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`, `is_admin`) VALUES
(1, 'admin', 'admin', 'zhaozhenqing@gmail.com', 'Y'),
(2, 'Lindsay', '2410144', 'zhaolindsay@gmail.com', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `imgurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `position`, `imgurl`) VALUES
(1, 'Theology', 1, NULL),
(2, 'Music', 2, NULL),
(3, 'Journalism', 3, NULL),
(4, 'Art&Design', 4, NULL),
(5, 'IT', 5, NULL),
(6, 'Business', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `imageurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `author`, `category_id`, `create_time`, `imageurl`) VALUES
(1, 'OIT Students Glimpse at Gaming Technology''s Future', 'Students from Olivet Institute of Technology (OIT) were some of the 26,000 attendees at the 20015 Game Developers Conference (GDC) held at the Moscone Center in San Francisco last week.  The annual event brings together the latest innovations and insights into the future of gaming. Sessions at the GDC are divided into seven tracks and eight summits, which includes: Advocacy track, Audio track, Business, Marketing & Management track, Design track, Monetization track (sponsored), Production track, Programming track, Visual Arts track. Speakers introduced the newest technologies and regarded them as the direction into an evolved future.  Last year’s buzz with virtual reality continues to make headlines as companies such as Sony, Valve, and HTC showcased its latest VR hardware.  Attendees may preview the products years before it is available in retail stores.\r\n\r\nAs new platforms emerge and existing ones evolve, many programmers face the challenge of producing better games, which can impress and capture the attention of their users. The Programming Track is focused on these factors and opportunities for programmers to stay tuned with the rapid technology growth.  Other technology highlights from the event included cross platform tools functioning with Google Cast and free use of Epic Games’ Unreal Engine 4 technology for app development.  Students from OIT plans to utilize the technology in their own future projects for educational purposes. \r\n\r\nThe Game Developers Conference is considered as one of the largest and longest running gaming related events in the world.  The conference features lectures, panels, tutorials and round-table discussions from top industry leaders.  The event brings together developers and professionals to exchange ideas and recognizing those who shapes the future of the gaming industry.\r\n\r\nFor more information on GDC, visit www.gdconf.com', 'OIT', 5, '2015-03-15 07:00:00', NULL),
(2, 'OCAD Offers Free Design Workshops', 'Olivet College of Art & Design (OCAD) plans to offer free basic design workshops for Olivet University students at its San Francisco campus starting this week. OCAD professor Jieun Lee will teach the workshop series.\r\n\r\nThe month long workshop offers an opportunity for non-art students to try their interest in design. New topics will be introduced each week with hopes to educate and assist students on improving their sense, appreciation, and application of design. The first series topic looks at foundational design principles using Photoshop basic tools.\r\n\r\nParticipants who find that they have talent for the field and want to pursue further may register for official OCAD courses. The college also benefits by recruiting new students through the workshop series.\r\n\r\n“This is very exciting,” said Professor Lee. "I want to give more opportunities for non-design majors to learn basic design and apply it into their daily lives. Even basic type or color can enhance a power point presentation for example. I hope this workshop can be an opportunity to find their talents in design.”\r\n\r\nThis workshop will be offered every week 5-6 p.m. on Wednesdays and Fridays. Students can find more information on the school bulletin in MyOlivet.', 'OCAD', 4, '2015-03-13 07:00:00', NULL),
(3, 'Olivet to Establish New College of Architecture, Engineering and Construction', 'The Association for Biblical Higher Education (ABHE) has decided to approve Olivet University’s plans to establish a new College of Architecture, Engineering and Construction, starting with a bachelor’s degree in civil engineering.\r\n\r\nSince architects, engineers, and construction leaders are typically educated in separate colleges, bringing together these disciplines into a single Olivet College of Architecture, Engineering, and Construction (OCAEC) to collaborate is a rare opportunity for Olivet, and for the higher education world.\r\n\r\nThe Bachelor of Science in Civil Engineering will be the first degree program offered by the new College.\r\n\r\n“Olivet University has a compelling vision for creating an engineering program that will support the school’s mission in powerful ways,” according to Professor of Civil Engineering Stephen Ressler, who help write the program proposal.\r\n\r\nThe program will open up new opportunities for service in the field of engineering supporting the global church’s efforts to win the world to Jesus Christ, especially in the developing world.\r\n\r\nDr. Stephen Ressler, P.E. joined the Olivet team as a consultant and professor in fall 2014, followed by Mrs. Sharon Carter Matthews, AIA in January 2015. Mrs. Matthews currently is serving as Inaugural Dean and Professor of Architecture of the new College of Engineering, Architecture.\r\n\r\nTheir teamwork has produced the framework for the College, which will be supported by a growing professional advisory board.\r\n\r\nOlivet plans to start the College by offering the Bachelor of Science in Civil Engineering emphasizing construction. Degrees in various architecture fields would follow.\r\n\r\nA search is underway for the director of the new Bachelor of Science in Civil Engineering to launch the program with its first cohort of students.', 'OCAEC', 1, '2015-03-12 07:00:00', NULL),
(4, 'Jubilee College of Music Plans to Launch Worship Institute', ' The Jubilee College of Music (JCM) announced today that it plans to establish and operate the Worship Institute ministry within the Jubilee organization.  By establishing the new program, JCM plans to research about the history and traditions of Christian worship.  In depth study of liturgy and initiative projects will provide data that can provide scholarly resources to churches and fellowships.  The goal is to expand knowledge of worship and music appreciation.\r\n\r\nThe institute will share academic journals of worship to theologians and pastors, including JCM faculty members online.  Symposiums and seminars will be offered to provide educational opportunities for worship leaders in small and medium sized pioneering churches.\r\n\r\n"I am very excited to see the launch of this idea,” noted Nathanael Lee, a JCM faculty. “The concept has been in development for awhile and it will be a great asset to the academic institution…I feel that it is important to dedicate places for scholastic activities and glad to see the school''s effort on making this a reality."\r\n\r\nThis will be JCM''s third subdivision launch project this year and plans to soft launch the project later this fall.', 'JCM', 3, '2015-03-02 08:00:00', NULL),
(5, 'OCJ Enhances Storytelling for Video Journalism', 'With online media’s rapidly changing and evolving field, practitioners are constantly learning the latest and greatest tools for video editing formats. Apps, software, and online tools are making video editing less cumbersome and more effective than it used to. Olivet College of Journalism, OCJ, looks beyond just teaching skills but also implementing the important element of storytelling into media communication.\r\n\r\nAn example includes OCJ’s JO660 Audio and Video Production course, which train students on technics and storytelling principles. Journalism students then practice fundamentals of digital video shooting then visually present footage through Adobe Premiere Pro and edit video files for online uploading.\r\n\r\nProjects and workshops supplement the program by giving students hands on experience ranging in multimedia storytelling, in-person interviewing, video shooting, and computer editing. Through sharpened visual storytelling skills, students have more success to engage their audience and present information in a more interesting and compelling way.', 'OCJ', 3, '2015-01-16 08:00:00', NULL),
(6, 'Zinzendorf Professor Writes Article on Lessons from Paris 2015', 'Dr. Thomas K. Johnson, Olivet University''s Zinzendorf Doctoral Program professor, was recently featured in the World Reformed Fellowship website with an essay titled "Lessons from Paris 2015: Clash of Civilizations or Battling Nihilisms?"\r\n\r\nBelow is the full excerpt from Dr. Johnson''s writing.  The essay below expresses the views of the individual author and does not necessarily reflect the position of the University as a whole.\r\n\r\nLessons from Paris 2015: Clash of Civilizations or Battling Nihilisms? by Dr. Thomas K. Johnson\r\n\r\nFor about twenty years, because of important publications with similar titles from the pen of Samuel Huntington, it has been common to interpret international and cross cultural events in light of “The Clash of Civilizations” theory. It was claimed that global and regional conflict would no longer be along ideological or economic lines, but rather between opposing civilizations. The several civilizations are distinguished from each other by language, history, culture, tradition, and, especially by different religions, with the role of religions in civilizations and inter-civilizational conflicts becoming increasingly large as a result of globalization. Some Christians liked the Huntington thesis because it recognized an important role of religions in society. But in recent times this theory has, in my opinion, been partly disproved because of the role that religious freedom can play in societies Nevertheless, the clash of civilizations continues to have plausibility sufficient to influence both the interpretation of current events and the decisions of governments. I think this theory played a tragic role in shaping the American “War on Terror.” And I heard this theory being used by some to interpret the tragic events in Paris over the last two weeks. As an alternative to the clash theory of civilizations, I would offer a different interpretation of what we saw in Paris. We should ask if we are seeing a cultural battle between different perceptions of nihilism, especially as different groups of people defend against the perceived nihilism of the other.\r\n\r\nThe word “nihilism” comes from the Latin word nihil, which means “nothing.” One of the ways the word came into our modern languages was through the Judeo-Christian claim that creation is or was ex nihilo, meaning “from nothing.” Those of us who studied western civilization in American universities commonly associate nihilism with the name of Friedrich Nietzsche (1844-1900) and his various intellectual heirs. Nietzsche and followers, or so we heard, believed in no objective truth, no objective right and wrong, no God’s eye view of the universe. All we have, they claim, are competing examples of the will to power, with the important proviso that the elegant way to exercise the will to power is not by means of brutality but by means of telling a controlling narrative. By means of telling a compelling story, we create new values, even though no values exist outside the stories we tell.\r\n\r\nPartly informed by such Nietzschean considerations, during the many years I taught university classes on the history of western ethics, I often suggested that the era we call “modernity” was characterized by a significant shift in the way people in the West considered right and wrong. \r\n\r\nPrior to modernity, our western cultural ancestors thought (at least those who were not nihilists) that right and wrong were somehow rooted in the nature of being or the nature of the universe. This was true whether we studied Plato, the Stoics, the ancient Jewish philosophers like Philo, or Christian thought from Augustine and Aquinas through Martin Luther and John Calvin. (It was even true of Aristotle and Old Testament books such as Genesis, Amos, and Proverbs.) A key phrase running through much of this moral/cultural heritage, especially during the fully developed stage of the biblical/classical synthesis, was “the natural law,” meaning a moral law that was somehow related to that which truly is, to being itself. “Ought” was always based on “is;” “should” arose from the nature of being.\r\n\r\nStarting with modernity, a huge change occurred across western civilization, including both secularism and the Christian tradition, so that right and wrong were seen as based in history, not in being. We can take Thomas Hobbes’s important book, Leviathan, 1651, as a signal of the transition to modernity. At least as popularly understood, Hobbes taught that right and wrong are entirely rooted in the social contract by which society is formed. Outside the social contract, in the state of nature, there is only the war of all against all; within the social contract imposed by a sovereign on the people, there is the rule of law on the basis of which we know the difference between right and wrong. To note with especial clarity: within the modern Hobbesian worldview, it is not only our knowledge of right and wrong that is dependent on history; the very existence of right and wrong is dependent on historical facts, particularly whether or not a particular social contract exists. “Ought” was no longer based on “is;” ought was now seen as historically dependent or historically accidental. And after a study of Hobbes ethics, my university students often seemed to feel threatened by nihilism, and during the classroom discussion they would begin grasping for some basis for morality or some explanation of right and wrong that was not entirely dependent on a particular political history which our neighbors might not share or accept.\r\n\r\nIt still surprises me (though I have known it for many years) that many religiously conservative Christians, many calling themselves pietistic, confessional, or evangelical, have been simultaneously partly modernist in their philosophy regarding the foundations of ethics. Even among Christians since Hobbes we find the new modernist idea that the existence of right and wrong, or our knowledge of right and wrong, is based entirely on particular historical facts. Specifically, many have thought, we would not know right and wrong if God had not given us the Bible or the Ten Commandments. Please do not misunderstand me: I believe God gave us the Bible and that God placed the Ten Commandments with a special status within the Bible as written in stone. (I also read from both the Old and New Testaments in my quiet time this morning.) But prior to modernity, both Protestant and Catholic Christians generally said that God wrote his moral law on the human mind, heart, and conscience, as the image of his eternal moral character, as part of creation, which was repeated in the Ten Commandments. The pre-modern Christian view, taught by both Catholics and Protestants, was that both the existence of right and wrong and our knowledge of right and wrong were largely based on creation, not entirely on salvation history. But after Hobbes, many Christians started to sound a lot like Hobbes, saying right and wrong are dependent on history and our knowledge of history, whether the history of a social contract (Hobbes) or the history of redemption recorded in the Bible (some Christians). Christians and secularists were too often united in separating ethics from being. This left western culture sometimes fluctuating between feeling threatened by moral nihilism and accepting a historical moral authority that others perceived to be arbitrary. \r\n\r\nI have been harsh in my description of my Christian community, so bear with my brief critique of Islam. It seems clear to me that Islam already had a weakness in the direction of the moral reasoning of modernity already before the onset of modernity. Based merely on reading a few textbooks on Islamic history, theology, and ethics, it seems to me that Muslim ethics usually has seen our knowledge of right and wrong as based entirely, or almost entirely, on history and our knowledge of that history. That is why the Koran plays a different role in the life of the Muslim than I think the Bible should play in the life of a Christian. Well before the onset of modernity, Muslim theologians generally thought the proper knowledge of right and wrong was based on the Koran, the tradition, and the multiple schools of Islamic law, all of which are historically contingent. So far there has been very little place for Muslim theologians to say that Allah wrote the demands of the Sharia onto the human heart, mind, and conscience in creation prior to giving the Koran, such that knowledge of the Sharia (and the difference between right and wrong) becomes partly independent from a particular historical community. Muslims may feel that any question about their prophet is blasphemous because it raises the specter of nihilism, the loss of all meaning and morals. At the same time, those of us who pointedly do not find our identity within Muslim history perceive the desired imposition of the Sharia on our societies as either a power grab or an assault on all our meanings and morals, another specter of nihilism.\r\n\r\nSeeing right and wrong, or our knowledge of right and wrong, as being entirely historically contingent truly does, I believe, leave us philosophically vulnerable to become nihilists. It is only a small step within the human mind from following modernity and saying my (or our) knowledge of right and wrong is entirely dependent on my history (whether as a Muslim, as a Christian, or as a follower of Hobbes) to feeling like a nihilist, that there are no universal moral rules that apply to all people everywhere. In my own study and university teaching, I always felt a steadily unfolding progression of ideas from Hobbes to Nietzsche. I am sure that basing ethics entirely on history (Hobbes) leads slowly but surely to nihilism, the loss of morals and meaning on the everyday level, as well as to the loss of ultimate truth claims. And we perceive this threatening nihilism more quickly among the people who do not share our own cultural or religious story. Muslims easily perceive both Christians and secularists as endangered by nihilism, and vice versa.\r\n\r\nWhat we have seen recently on the streets of Paris is, I believe, the result of two battling nihilisms, more precisely, two groups of people striving to defend themselves against the threat of nihilism they perceive in the historical relativism of their neighbors. They do not feel like they can trust their neighbors to act on the basis of a standard of behavior which is suitable for all of humanity. By this I do not in any way imply a moral equivalency between the good work of the French police, defending their city and their citizens, and the truly evil work of terrorists murdering ordinary people. Nor do I imply that a handful of terrorists really represent many millions of Muslims. But I would call our attention to a philosophical similarity between radical Islam, admittedly more extreme than older Islam because of doctrinal changes, and western democracy. Both separate knowledge of right and wrong from being; both say right and wrong are based on the way we tell the history of our community; both are left using force (one illegitimate, one legitimate) to enforce the values of their community without a satisfactory appeal to a non-historical basis for universal values or moral ideals; both feel like the other represents the threat of nihilism. The gun battles in the Paris streets portray the conflict of competing nihilisms, Mohammed (as interpreted by extremists) versus Thomas Hobbes (as followed across modernity), unified in separating morality from the nature of being, but in such a way that most people perceive the implied nihilism in the worldview of the other before they perceive the threat of nihilism in their own worldviews. And we Christians often do not know what to say because we have neglected important themes in the classical Christian tradition of moral thought which connected ethics with being.\r\n\r\nObviously I would like to see a renewed discussion of the relation between being and ethics, the natural moral law, in the spirit of the biblical/classical synthesis. This is essential to address the moral nihilism against which both radical Islam and the western democracies are fighting. As a small step in this direction, but with less metaphysics involved, I am sure there would be tremendous benefit in renewed global public discussion of the relation between universal human duties (with its own body of literature) and universal human rights (with a rich body of literature). Both of these discussions embody valuable ongoing echoes of the older tradition of discussing God’s natural moral law. Both of these ongoing discussions represent models of the relation between particular religions and public life that avoid or reduce the threat of nihilism. Both of these discussions can be open to people of a variety of religions or of no defined religion in a manner that may help us to trust others to follow some defined standard of behavior. In my own writing I have attempted to contribute to both of these global discussions in a manner that is clearly rooted in my evangelical Christian convictions but also open to discussion with people of other convictions.\r\n\r\nThe nihilism, more precisely the perceived threat of nihilism, embodied in the gunfire on the streets of Paris is, I think, more of a feeling than a reasoned package of convictions. Obviously it has to be addressed by preachers and philosophers of religion as a fundamental human need to be addressed by faith. But nihilism is not only a faith problem; good moral reason also has a role to play. We can have more public considerations of universal human rights and universal human duties, along with the religious and philosophical discussion of what those duties/rights are and where they originate, so the relation between ethics and being as least gets back on the table. The problem in Paris goes beyond gathering intelligence about future terrorists or better efforts to integrate religious minorities and immigrants into the western democracies, though those steps are essential. The problems illustrated on the streets of Paris are also problems of fundamental moral philosophy. Are there reasons not to be nihilists that are not only based in my telling of my community’s story, reasons that I can explain to people who follow another story or religion? That is part of the challenge for Christian moral philosophers today.\r\n\r\nDr. Thomas K. Johnson, Ph.D. is Professor of Ethics, Global Scholars; Vice President for Research, Martin Bucer European School of Theology; Senior Advisor to the Theological Commission, World Evangelical Alliance; and an ordained minister, Presbyterian Church in America. Many of the books and essays he has written or edited on ethics, human rights, and the role of religion in society are available as free downloads at http://www.bucer.org/resources.html. With his wife, Leslie P. Johnson, he has lived in post-communist Europe for more than twenty years.\r\n\r\nFor more information, visit: http://wrfnet.org/articles/2015/01/wrf-member-thomas-johnson-asks-about-lessons-paris-clash-civilizations-or-battling#.VMLnLWTSms6', 'Theology', 1, '2015-01-03 08:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
