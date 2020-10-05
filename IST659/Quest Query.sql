/* The heart of the database. This is a selection of quests from Fallout 4 and its DLCs 
   That is meant to provide a repsenstation of the scope of the game and what the database
   hopes to achieve fully.
*/

INSERT INTO Quest (quest_name, quest_type, quest_reward_ID) VALUES
('War Never Changes', 'Main Quest', 1109),
('Out of Time', 'Main Quest',1112),
('Jewel of the Commonwealth', 'Main Quest', 1110),
('Unlikely Valentine', 'Main Quest', 1113),
('Getting a Clue', 'Main Quest', 1116),
('Reunions', 'Main Quest', 1117),
('Dangerous Minds', 'Main Quest', 1110),
('The Glowing Sea', 'Main Quest', 1110),
('Hunter/Hunted', 'Main Quest', 1110),
('The Molecular Level', 'Main Quest', 1110),
('Institutionalized', 'Main Quest', 1110),
('When Freedom Calls', 'Minuteman Main Quest', 1120),
('Taking Independence', 'Minuteman Main Quest', 1123),
('Old Guns', 'Minuteman Main Quest', 1124),
('Returning the Favor', 'Minuteman Side Quest', 1126),
('Out of the Fire', 'Minuteman Side Quest', 1128),
('Call to Arms', 'Brotherhood of Steel Main Quest', 1134),
('Show no Mercy', 'Brotherhood of Steel Main Quest', 1139),
('Road to Freedom', 'Railroad Main Quest', 1110),
('Tradecraft', 'Railroad Main Quest', 1150),
('Synth Retention', 'Institute Main Quest', 1110),
('Mass Fusion', 'Institute Main Quest', 1110),
('Here Kitty, Kitty', 'Side Quest', 1110),
('Human Error', 'Side Quest', 1185),
('Last Voyage of the U.S.S. Constitution', 'Side Quest', 1186),
('Special Delivery', 'Side Quest', 1110),
/*Miscellaneous Quest per Bethesda is not the same as Side Quest.
  It appears Misc Quest is reserved for short quests that do not receive their own entry in the quest log */
('Atom Cats', 'Miscellaneous Quest', 1201),
('Giddyup n Go', 'Miscellaneous Quest', 1110),
/*The following are quests tied to specific Downloadable Content, hence the addtion of the DLC name to the 
  quest type value*/
('Mechanical Menance', 'Automatron Main Quest', 1214),
('Restoring Order', 'Automatron Main Quest', 1215),
('Far From Home', 'Far Harbor Main Quest', 1217),
('Walk in the Park', 'Far Harbor Main Quest', 1218),
('Where You Belong', 'Far Harbor Main Quest', 1110),
('Best Left Forgotten', 'Far Harbor Main Quest', 1110),
('Vault-Tec Calling', 'Vault-Tec Workshop Main Quest', 1222),
('All Aboard', 'Nuka-World Main Quest', 1224),
('Taken for a Ride', 'Nuka-World Main Quest', 1226),
('An Ambitious Plan', 'Nuka-World Main Quest', 1228),
('A World of Refreshment', 'Nuka-World Main Quest', 1229)