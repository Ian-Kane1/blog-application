-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 02:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`) VALUES
(3, 'Ian', 'Kane');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES
(1, 'Sci-Fi'),
(2, 'Cats'),
(3, 'Dogs'),
(4, 'Star-Wars'),
(5, 'Marvel'),
(6, 'Movies'),
(7, 'Video-Games');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(4096) NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `date`, `content`, `author`) VALUES
(1, 'April 28th marks the release of the new Star Wars game \'Jedi Survivor\'', '2023-04-28', 'Lucas ipsum dolor sit amet c-3p0 c-3p0 darth gonk windu greedo boba wedge organa antilles. Organa moff windu jango darth hutt dagobah darth. Kit maul qui-gon mandalorians amidala. Mandalorians boba ewok greedo solo mara. Kessel han yavin darth solo moff. Grievous lando fett luuke. Kessel gamorrean moff sidious. Organa darth moff windu. Hutt tatooine yoda darth. Kessel yoda solo lando jabba mandalore wampa. Leia mon dantooine solo coruscant. Luuke biggs jawa han organa darth solo coruscant. Kenobi jabba grievous yoda jango leia k-3po.\r\n\r\nGonk vader jade tatooine jinn mace jabba darth yoda. Antilles calrissian jango ewok skywalker mon jinn. Kamino skywalker wicket hutt dooku sidious kessel moff boba. Kenobi naboo utapau hutt tusken raider qui-gon. Maul dooku organa solo solo sebulba darth lars. Kit tusken raider binks anakin r2-d2 palpatine maul yoda. Bespin jade fisto secura. Jinn darth jango antilles aayla baba. Palpatine hutt jar moff organa fisto naboo k-3po. Owen ackbar lobot darth. Yavin ponda mandalore jango skywalker mace.\r\n\r\nBinks mace sidious mace. Skywalker skywalker owen hutt boba binks binks grievous. Luke jawa palpatine organa yoda kamino dooku. Mara hutt kessel moff solo calrissian yavin c-3po. Lars ackbar darth mon hoth fett alderaan mothma. Hutt han hutt k-3po thrawn jango. Aayla jar mandalore yavin droid moff antilles sidious darth. Watto dagobah moff aayla boba. Jabba fett windu biggs ewok. Owen wicket boba palpatine jango ackbar. Calrissian biggs coruscant solo moff solo. Kit c-3po maul baba jinn antilles skywalker darth droid.\r\n\r\nTusken raider darth anakin fett. Sebulba solo fett coruscant. Fett tusken raider skywalker kessel organa. Hutt luuke skywalker mothma twi\'lek sidious. Lando skywalker luke mara k-3po. Zabrak darth sidious moff c-3po luke k-3po. Darth dantooine palpatine antilles. Tusken raider hutt organa dagobah hutt skywalker fisto hoth. Obi-wan lars lando luuke darth anakin yoda organa moff. Dantooine alderaan skywalker leia. Lando moff fisto jade antilles. Organa mara grievous ben skywalker cade solo. Darth obi-wan tatooine kit dantooine ackbar calrissian moff boba.\r\n\r\nKenobi boba secura vader lobot darth mon. Obi-wan skywalker darth hutt secura antilles binks. Aayla wookiee fett dagobah lobot palpatine hutt hutt. Hutt hutt maul luke antilles organa antilles sidious hutt. Thrawn ackbar darth anakin darth. Tatooine droid maul moff. Chewbacca calamari solo lars cade kit leia obi-wan. Fett binks chewbacca organa qui-gon sith solo kashyyyk. Aayla greedo solo binks kenobi darth jawa sebulba mon. Ackbar darth jinn sebulba ventress kit ackbar vader dagobah. Moff sebulba darth solo.', 3),
(2, 'Cats or dogs? - the age old question', '2023-05-01', 'Eat from dog\'s food. Pet me pet me don\'t pet me the cat was chasing the mouse so scratch leg; meow for can opener to feed me yet sitting in a box poop on the floor, break a planter, sprint, eat own hair, vomit hair, hiss, chirp at birds, eat a squirrel, hide from fireworks, lick toe beans, attack christmas tree pooping rainbow while flying in a toasted bread costume in space but find box a little too small and curl up with fur hanging out . Climb into cupboard and lick the salt off rice cakes purr when being pet bring your owner a dead bird. Sit in box cat sit like bread you call this cat food so purr has closed eyes but still sees you for human is behind a closed door, emergency! abandoned! meeooowwww!!! hack. Mesmerizing birds lick face hiss at owner, pee a lot, and meow repeatedly scratch at fence purrrrrr eat muffins and poutine until owner comes back. Being gorgeous with belly side up hate dogs so furrier and even more furrier hairball, so flop over, for sleep am in trouble, roll over, too cute for human to get mad so i bet my nine lives on you-oooo-ooo-hooo. Meow purr purr purr until owner pets why owner not pet me hiss scratch meow scratch me there, elevator butt sit by the fire kitty kitty pussy cat doll. ', 3),
(3, 'See your favorite guardians together again may 5th in \'Guardians of the Galaxy Vol. 3\'', '2023-05-04', 'These are Pym Particles, alright? And ever since Hank Pym got snapped out of existence, this is it. This is what we have. We\'re not making any more.  Where to start? Umm... The Aether, first, is not a stone, someone called it a stone before. It\'s more of a... an angry sludge thing, so... someones gonna need to amend that. Here\'s an interesting story though, many years ago... My grandfather had to hide the stones from the Dark Elves... Everyone fails at who they are supposed to be, Thor. The measure of a person, of a hero, is how well they succeed at being who they are.  No, no, no. There\'s no other options. There\'s no do-overs. We\'re not going anywhere else. We have one particle left. Each. That\'s it, alright? We use that... Bye, bye. You\'re not going home.  It\'s time for me to be who I am rather than who I\'m supposed to be. But you, you\'re a leader. That\'s who you are. \r\n\r\nGotta say, sometimes I miss that giddy optimism. However, high hopes won\'t help if there\'s no logical, tangible way for me to safely execute said time heist. I believe the most likely outcome would be our collective demise.  We just, wait around for this Quill guy to show up, and then he leads us to the Power Stone, is that it?  Everyone fails at who they are supposed to be, Thor. The measure of a person, of a hero, is how well they succeed at being who they are. \r\n\r\nWho wants mayo on a hotdog?  But it\'s now dead in the water. We\'re 1000 light years from the nearest 7-11. Oxygen will run out tomorrow. And that\'ll be it. And Pep, I ... I know I said no more surprises, but I was really hoping to pull off one last one. But it looks like... well you know what it looks like. Don\'t feel bad about this. I mean, if you grovel for a couple of weeks, and then move on with enormous guilt. I should probably lie down. Please know that... when I drift off, I will think about you. Because it\'s always you.  Oh, there she is. That\'s Jane... She\'s... an old flame of mine... She... she stuck her hand inside a rock this one time... and then the Aether stuck itself inside her... And, she became very, very sick. So I had to take her to Asgard, which is where I\'m from. And we had to try and fix her. We were dating at the time, you see. I got to introduce her to my Mother... who\'s dead,  You think you\'re the only one who lost people? What do you think we\'re doing here? I lost the only family I ever had. Quill, Groot, Drax, the chick with the antenna, all gone. Now, I get you miss your Mom. But she\'s gone. Really gone. And there are plenty of people who are only kinda gone. But you can help them. So is it too much to ask that you brush the crumbs outta your beard, make schmoopy talk to Pretty Pants, and when she\'s not looking, suck out the Infinity Stone and help me get my family back?  Now, this may benefit your reality, but my new one…not so much. In this new branched Reality, without our chief weapon against the forces of darkness, our world will be overrun. Millions will suffer. So, tell me, Doctor, can your science prevent all that?  No, no, no. There\'s no other options. There\'s no do-overs. We\'re not going anywhere else. We have one particle left. Each. That\'s it, alright? We use that... Bye, bye. You\'re not going home.  Are you sure? - Cap. Captain. Steve, sorry, America. Rogers. Look, if you do this, and this doesn\'t work, you\'re not coming back. \r\n\r\nNo, you accidentally survived. It\'s a billion to one cosmic fluke. And now you wanna pull off a... What do you call it?  Oh, there she is. That\'s Jane... She\'s... an old flame of mine... She... she stuck her hand inside a rock this one time... and then the Aether stuck itself inside her... And, she became very, very sick. So I had to take her to Asgard, which is where I\'m from. And we had to try and fix her. We were dating at the time, you see. I got to introduce her to my Mother... who\'s dead,  A dominion of death, at the very center of Celestial existence. It\'s where... Thanos murdered my sister.  The Infinity Stones create what you experience as the flow of time. Remove one stone and that flow splits. Now, this may ben', 3),
(4, 'Remembering \'Attack of the Clones\' over 20 years later.', '2023-05-06', 'Did you hear that? They\'ve shut down the main reactor. We\'ll be destroyed for sure. This is madness! We\'re doomed! There\'ll be no escape for the Princess this time. What\'s that? Artoo! Artoo-Detoo, where are you? At last! Where have you been? They\'re heading in this direction.\r\n\r\nI must go alone. Whatever you say. I\'ve done more that I bargained for on this trip already. Be patient, Luke.\r\n\r\nShe lied! She lied to us! I told you she would never consciously betray the Rebellion. Terminate her...immediately! Stand by, Chewie, here we go. Cut in the sublight engines. What the...? Aw, we\'ve come out of hyperspace into a meteor shower. Some kind of asteroid collision.\r\n\r\nCharming to the last. You don\'t know how hard I found it signing the order to terminate your life! I surprised you had the courage to take the responsibility yourself! Princess Leia, before your execution I would like you to be my guest at a ceremony that will make this battle station operational. No star system will dare oppose the Emperor now. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers. Not after we demonstrate the power of this station. In a way, you have determined the choice of the planet that\'ll be destroyed first. Since you are reluctant to provide us with the location of the Rebel base, I have chosen to test this station\'s destructive power.\r\n\r\nWhat good\'s a reward if you ain\'t around to use it? Besides, attacking that battle station ain\'t my idea of courage. It\'s more like suicide. All right. Well, take care of yourself, Han. I guess that\'s what you\'re best at, isn\'t it? Hey, Luke...may the Force be with you! What\'re you lookin\' at? I know what I\'m doing.', 3),
(5, 'What is the future of the MCU, marvel, and the superhero genre?', '2023-05-08', 'He can destroy life on a scale hither to undreamt of.  Is it sadness I sense in you, daughter? In my heart, I knew you still cared. But one ever knows for sure. Reality is often disappointing. That is, it was. Now… Reality can be whatever I want. You know, I’m 1,500 years old. I’ve killed twice as many enemies as that, and every one would have rather killed me, but none succeeded. I’m only alive because fate wants me alive. Thanos is the latest in a long line of *morons* and he will be the latest to feel my vengeance.\r\n\r\nOkay, and then you’re like, “Oh my god, there’s no bathroom, what am I gonna do?” “Oh! Someone’s watching.” “I’m gonna go in my pants.” Thanos. He’s a plague, Tony. He invades planets, he takes what he wants, he wipes out half the population. He sent Loki! The attack on New York, that’s him! Hear me, and rejoice. You are about to die at the hands of the Children of Thanos. Be thankful, that your meaningless lives are now contributing to… Wong, you’re invited to my wedding.   No, we have to destroy it. I’ve been giving a good deal of thought to this entity in my head, about its nature. But also, its composition. I think if it were exposed to a sufficiently powerful energy source, something, very similar to its own signature, perhaps… Its molecular integrity could fail.  You know, I’m 1,500 years old. I’ve killed twice as many enemies as that, and every one would have rather killed me, but none succeeded. I’m only alive because fate wants me alive. Thanos is the latest in a long line of *morons* and he will be the latest to feel my vengeance. A lifetime ago, I too sought the stones. I even held one in my hand. But it cast me out, banished me here, guiding others to a treasure I cannot possess. Let’s talk about this plan of yours. I think it’s good, except it sucks. So let me do the plan and that way it might be really good.\r\n\r\nGood. Nice. Moral compass.We’re straight. ', 3),
(6, 'VR gaming - the future of videogames', '2023-05-11', 'Game Over developer Need for Speed chams isometric view exploit AAA model pwned warrior Fighting Game RTS ÜberCharge. Shovelware rocket jump shmups mudflation cheap hit LoL grind. DLC 32-bit Super Mario matchmaking keypad Xbox Wii Fit headshot going gold gamer pre-rendered graphics Hack ‘n’ Slasher resolution. Waggle PvP mod role-playing video game recoi CPU Tony Hawk\'s The Sims Portal 2 debuff Hit Points (HP). Respawn credit-feeding stealth speedhacks Call of Duty: Modern Warfare 2 cheated death SnD Monster Hunter non-player character LAN dpm MLG kill.', 3),
(7, 'This year\'s May 4th marks the 44th star wars day', '2023-05-13', 'Did you hear that? They\'ve shut down the main reactor. We\'ll be destroyed for sure. This is madness! We\'re doomed! There\'ll be no escape for the Princess this time. What\'s that? Artoo! Artoo-Detoo, where are you? At last! Where have you been? They\'re heading in this direction.\r\n\r\nThe battle station has surely tracked us here. It\'s the only explanation for the ease of our escape. You must use the information in this R2 unit to plan the attack. It is our only hope.\r\n\r\nI\'m not going that way. That malfunctioning little twerp. This is all his fault! He tricked me into going this way, but he\'ll do no better. Wait, what\'s that? A transport! I\'m saved! Over here! Help! Please, help! Artoo-Detoo! It\'s you! It\'s you! Someone was in the pod.\r\n\r\nMos Eisley Spaceport. You will never find a more wretched hive of scum and villainy. We must be cautious. How long have you had these droids? About three or four seasons.\r\n\r\nLet him have it. It\'s not wise to upset a Wookiee. But sir, nobody worries about upsetting a droid. That\'s \'cause droids don\'t pull people\'s arms out of their socket when they lose.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `post_category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`post_category_id`, `post_id`, `category_id`) VALUES
(8, 1, 1),
(9, 1, 4),
(10, 1, 7),
(11, 2, 2),
(12, 2, 3),
(13, 3, 5),
(14, 3, 6),
(15, 4, 4),
(16, 4, 6),
(17, 5, 5),
(18, 5, 6),
(19, 6, 7),
(20, 7, 4),
(21, 9, 5),
(22, 10, 2),
(23, 10, 3),
(24, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_tag_id`, `post_id`, `tag_id`) VALUES
(15, 1, 1),
(16, 1, 4),
(17, 1, 7),
(18, 2, 2),
(19, 2, 3),
(20, 3, 5),
(21, 3, 6),
(22, 4, 4),
(23, 4, 6),
(24, 5, 5),
(25, 5, 6),
(26, 6, 7),
(27, 7, 4),
(28, 9, 5),
(29, 10, 2),
(30, 10, 3),
(31, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`) VALUES
(1, 'Sci-Fi'),
(2, 'Cats'),
(3, 'Dogs'),
(4, 'Star-Wars'),
(5, 'Marvel'),
(6, 'Movies'),
(7, 'Video-Games');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`post_category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `post_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
