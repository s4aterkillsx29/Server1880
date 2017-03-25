-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_04_11_00_auth.sql 
UPDATE `updates` SET `state`='ARCHIVED';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_04_17_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=21463 WHERE `gamebuild`=21355;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '21463';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_05_07_00_auth.sql 
UPDATE `rbac_permissions` SET `name`='Command: disable add criteria' WHERE `id`=350;
UPDATE `rbac_permissions` SET `name`='Command: disable remove criteria' WHERE `id`=359;
UPDATE `rbac_permissions` SET `name`='Command: reload criteria_data' WHERE `id`=609;
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_05_19_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=21742 WHERE `gamebuild`=21463;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '21742';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_07_19_00_auth.sql 
--
-- Table structure for table `battlenet_item_appearances`
--
DROP TABLE IF EXISTS `battlenet_item_appearances`;
CREATE TABLE `battlenet_item_appearances` (
  `battlenetAccountId` int(10) unsigned NOT NULL,
  `blobIndex` smallint(5) unsigned NOT NULL,
  `appearanceMask` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`battlenetAccountId`,`blobIndex`),
  CONSTRAINT `fk_battlenet_item_appearances` FOREIGN KEY (`battlenetAccountId`) REFERENCES `battlenet_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `battlenet_item_favorite_appearances`
--
DROP TABLE IF EXISTS `battlenet_item_favorite_appearances`;
CREATE TABLE `battlenet_item_favorite_appearances` (
  `battlenetAccountId` int(10) unsigned NOT NULL,
  `itemModifiedAppearanceId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`battlenetAccountId`,`itemModifiedAppearanceId`),
  CONSTRAINT `fk_battlenet_item_favorite_appearances` FOREIGN KEY (`battlenetAccountId`) REFERENCES `battlenet_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_07_19_01_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22248 WHERE `gamebuild`=21742;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22248';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_07_23_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22293 WHERE `gamebuild`=22248;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22293';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_07_23_01_auth.sql 
DELETE FROM `rbac_permissions` WHERE `id`= 12;
INSERT INTO `rbac_permissions` (`id`,`name`) VALUES
(12,'Skip character creation demon hunter min level check');

DELETE FROM `rbac_linked_permissions` WHERE `linkedId`= 12;
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES
(194, 12);
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_07_30_00_auth.sql 
DELETE FROM `rbac_permissions` WHERE `id` IN (662,664,692);
DELETE FROM `rbac_linked_permissions` WHERE `linkedId` IN (662,664,692);

DELETE FROM `rbac_permissions` WHERE `id` IN (837,838,839);
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES
(837, 'Command: reload character_template'),
(838, 'Command: reload quest_greeting'),
(839, 'Command: debug send playscene');

DELETE FROM `rbac_linked_permissions` WHERE `linkedId` IN (837,838,839);
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES
(196, 837),
(196, 838),
(192, 839);
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_08_07_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22345 WHERE `gamebuild`=22293;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22345';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_08_11_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22410 WHERE `gamebuild`=22345;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22410';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_08_13_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22423 WHERE `gamebuild`=22410;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22423';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_08_26_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22498 WHERE `gamebuild`=22423;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22498';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_08_27_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22522 WHERE `gamebuild`=22498;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22522';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_08_30_00_auth.sql 
ALTER TABLE `account` CHANGE `expansion` `expansion` tinyint(3) unsigned NOT NULL DEFAULT '6' AFTER `online`;

UPDATE `account` SET `expansion`=6;
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_09_02_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22566 WHERE `gamebuild`=22522;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22566';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_09_03_00_auth_2016_05_11_00_auth.sql 
--
DELETE FROM `rbac_permissions` WHERE `id` IN (837,838,839,840);
INSERT INTO `rbac_permissions` (`id`,`name`) VALUES (837,"Command: npc evade"), (838,"Command: pet level"), (839,"Command: server shutdown force"), (840,"Command: server restart force");

DELETE FROM `rbac_linked_permissions` WHERE `linkedId` IN (837,838,839,840);
INSERT INTO `rbac_linked_permissions` (`id`,`linkedId`) VALUES (196,837),(196,838),(196,839),(196,840);
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_09_03_01_auth.sql 
DELETE FROM `rbac_permissions` WHERE `id` IN (841,842,843);
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES
(841, 'Command: reload character_template'),
(842, 'Command: reload quest_greeting'),
(843, 'Command: debug send playscene');

DELETE FROM `rbac_linked_permissions` WHERE `linkedId` IN (841,842,843);
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES
(196, 841),
(196, 842),
(192, 843);
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_09_03_02_auth_2016_06_06_00_auth.sql 
DELETE FROM `rbac_permissions` WHERE `id` = 841;
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES (841, 'Command: .debug neargraveyard');

DELETE FROM `rbac_linked_permissions` WHERE `id` = 196 AND `linkedId` = 841;
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES (196, 841);
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_09_03_03_auth.sql 
DELETE FROM `rbac_permissions` WHERE `id` IN (842,843,844);
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES
(842, 'Command: reload character_template'),
(843, 'Command: reload quest_greeting'),
(844, 'Command: debug send playscene');

DELETE FROM `rbac_linked_permissions` WHERE `linkedId` IN (841,842,843);
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES
(196, 842),
(196, 843),
(192, 844);
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_09_15_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22594 WHERE `gamebuild`=22566;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22594';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_09_21_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22624 WHERE `gamebuild`=22594;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22624';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_09_25_00_auth.sql 
DELETE FROM `rbac_permissions` WHERE `id` IN (844, 845, 846, 847, 848, 849, 850);
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES
(844, 'Command: scene'),
(845, 'Command: scene debug'),
(846, 'Command: scene play'),
(847, 'Command: scene play package'),
(848, 'Command: scene cancel'),
(849, 'Command: list scenes'),
(850, 'Command: reload scenes');

DELETE FROM `rbac_linked_permissions` WHERE `linkedId` IN (844, 845, 846, 847, 848, 849, 850);
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES
(192, 844),
(192, 845),
(192, 846),
(192, 847),
(192, 848),
(192, 849),
(192, 850);
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_10_01_00_auth.sql 
--
-- Table structure for table `battlenet_account_mounts`
--
DROP TABLE IF EXISTS `battlenet_account_mounts`;
CREATE TABLE `battlenet_account_mounts` (
  `battlenetAccountId` int(10) unsigned NOT NULL,
  `mountSpellId` int(10) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`battlenetAccountId`,`mountSpellId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_10_06_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22747 WHERE `gamebuild`=22624;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22624';
 
-- C:\Users\duart\Repos\TrinityCore6x\sql\old\6.x\auth\04_2016_10_17\2016_10_12_00_auth.sql 
UPDATE `realmlist` SET `gamebuild`=22810 WHERE `gamebuild`=22747;

ALTER TABLE `realmlist` CHANGE `gamebuild` `gamebuild` int(10) unsigned NOT NULL DEFAULT '22810';
 
