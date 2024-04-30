use task_generator;

create table players (
	player_ID int AUTO_INCREMENT,
    player_name varchar,
    attack_lvl int DEFAULT 1,
 	strength_lvl int DEFAULT 1,
    defence_lvl int default 1,
    range_lvl int default 1,
    prayer_lvl int default 1,
    magic_lvl int default 1,
    runecrafting_lvl int default 1,
    woodcutting_lvl int default 1,
    hitpoints_lvl int default 1,
    agility_lvl int default 1,
    herblore_lvl int default 1,
    theiving_lvl int default 1,
    crafting_lvl int default 1,
    fletching_lvl int default 1,
    slayer_lvl int default 1,
    hunting_lvl int default 1,
    mining_lvl int default 1,
    smithing_lvl int default 1,
    fishing_lvl int default 1,
    cooking_lvl int default 1,
    firemaking_lvl int default 1,
    woodcutting_lvl int default 1,
    farming_lvl int default 1,
    PRIMARY KEY (player_ID)
);

create table tasks (
    task_id int AUTO_INCREMENT,
    attack_req int DEFAULT 1,
 	strength_req int DEFAULT 1,
    defence_req int default 1,
    range_req int default 1,
    prayer_req int default 1,
    magic_req int default 1,
    runecrafting_req int default 1,
    woodcutting_req int default 1,
    hitpoints_req int default 1,
    agility_req int default 1,
    herblore_req int default 1,
    theiving_req int default 1,
    crafting_req int default 1,
    fletching_req int default 1,
    slayer_req int default 1,
    hunting_req int default 1,
    mining_req int default 1,
    smithing_req int default 1,
    fishing_req int default 1,
    cooking_req int default 1,
    firemaking_req int default 1,
    woodcutting_req int default 1,
    farming_req int default 1
);

create table player_completed_tasks (
    player_ID int not null,
    PRIMARY KEY (player_ID),
    constraint player_ID Foreign key (player_ID) references players(player_ID),
    completed_task int not null,
    constraint completed_task foreign key(task_id) references tasks(task_id)
);
