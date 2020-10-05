/* Rather than let users run amok in the tables, views can be used to provide access to specific information */

/*For example, the following view could be used to answer the question of which quests are offered
  by Nick Valentine, one of the major NPCs in the game */

CREATE VIEW nicks_quests AS
SELECT Quest.quest_name, QuestGiver.quest_giver_name
FROM Quest
INNER JOIN QuestQuestGiver ON Quest.quest_ID = QuestQuestGiver.quest_ID
INNER JOIN QuestGiver ON QuestQuestGiver.quest_giver_ID = QuestGiver.quest_giver_ID
WHERE QuestGiver.quest_giver_name = 'Nick Valentine'


/* Running the view nicks_quests will then generate the information we requested */

SELECT * FROM nicks_quests

/* Alternatively, perhaps we want to get a list of all quests and their reward and reward type */

CREATE VIEW quest_loot AS
SELECT
	Quest.quest_name,
	Quest.quest_type,
	QuestReward.quest_reward_name,
	QuestRewardType.quest_reward_type
FROM Quest
INNER JOIN QuestReward ON Quest.quest_reward_ID = QuestReward.quest_reward_ID
INNER JOIN QuestRewardType ON QuestReward.quest_reward_type_ID = QuestRewardType.quest_reward_type_ID

SELECT * FROM quest_loot


/*There will also be scenarios where a DBA will want to insert more entries into tables, but prevent users from having full access 
 or avoid having to repetitively enter the same SQL statements. Creating a stored procedure, in this case for 
 entering a new quest giver provided by a mod called Tales of the Commonwealth, would be an ideal solution */

GO
CREATE PROCEDURE UpdateQuestGiver @NPC_name varchar(20), @NPC_sex varchar(10), @NPC_race varchar(20), @NPC_faction varchar(40)
AS
BEGIN
INSERT INTO QuestGiver (quest_giver_name, sex, race, faction) VALUES
	(@NPC_name, @NPC_sex, @NPC_race, @NPC_faction)
END
GO

EXEC UpdateQuestGiver 'Paladin Brend', 'Female', 'Human', 'Brotherhood of Steel'

/*Running the procedure results in a new entry for Paladin Brend, who will automatically get a primary key.
  As an aside, Tales from the Commonwealth is a massive, fantastic mod that is very much professional grade in its 
  design and voice acting. These guys definitely need to start making RPGs of their own. */


/*After speaking with some stakeholders, we realize that a mistake has been made in the QuestGiver table. The quest giver Curie
is listed as a Human when her Race value should be set to Synth. Thankfully, it is easy enough to rectify this mistake.*/

UPDATE QuestGiver
	SET race = 'Synth'
	WHERE quest_giver_name = 'Curie'

/*Building on the above, a common subplot within the game involves characters that appear human but are secretly Synths, sometimes
without even the character realizing it. Since this revelation can be hidden well by the game, in some cases not visible unless one
inspects the character's body for loot, quest givers whose race is set to Human originally made need to be updated later to Synth. 
To avoid repetition, we can package the above statement as a stored procedure */

GO
CREATE PROCEDURE QuestGiverSynthStatus @NPC_name varchar(20)
AS
BEGIN
UPDATE QuestGiver
	SET race = 'Synth'
	WHERE quest_giver_name = @NPC_name 
END
GO


