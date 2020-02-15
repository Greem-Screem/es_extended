ALTER TABLE `users`
	ADD COLUMN `skin` LONGTEXT NULL,
	ADD COLUMN `job` varchar(50) NULL DEFAULT 'unemployed' AFTER `skin`,
	ADD COLUMN `job_grade` INT NULL DEFAULT 0 AFTER `job`,
	ADD COLUMN `job2` varchar(255) NULL DEFAULT 'unemployed2',
    ADD COLUMN `job2_grade` INT NULL DEFAULT 0 AFTER `job2`,
	ADD COLUMN `loadout` LONGTEXT NULL AFTER `job2_grade`,
	ADD COLUMN `inventory` LONGTEXT NULL AFTER `loadout`,
	ADD COLUMN `position` VARCHAR(53) NULL DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}' AFTER `inventory`
;

CREATE TABLE `items` (
	`name` varchar(50) NOT NULL,
	`label` varchar(50) NOT NULL,
	`weight` int(11) NOT NULL DEFAULT '-1',
	`rare` int(11) NOT NULL DEFAULT '0',
	`can_remove` int(11) NOT NULL DEFAULT '1',

	PRIMARY KEY (`name`)
);

CREATE TABLE `job_grades` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`job_name` varchar(50) DEFAULT NULL,
	`grade` int(11) NOT NULL,
	`name` varchar(50) NOT NULL,
	`label` varchar(50) NOT NULL,
	`salary` int(11) NOT NULL,
	`skin_male` longtext NOT NULL,
	`skin_female` longtext NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `job_grades` VALUES
 (1,'unemployed',0,'unemployed','Unemployed',200,'{}','{}')
 (2,'unemployed2',0,'unemployed2','Unemployed',200,'{}','{}');

CREATE TABLE `jobs` (
	`name` varchar(50) NOT NULL,
	`label` varchar(50) DEFAULT NULL,

	PRIMARY KEY (`name`)
);

 INSERT INTO `jobs` VALUES
  (1, 'unemployed', 'Unemployed')
  (2, 'unemployed2', 'unemployed');

CREATE TABLE `user_accounts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`identifier` varchar(22) NOT NULL,
	`name` varchar(50) NOT NULL,
	`money` double NOT NULL DEFAULT '0',

	PRIMARY KEY (`id`)
);
