
/*
01 08 14 20 24 31
04 07 14 20 25 31
03 08 13 21 26 27
01 08 15 19 25 27
04 07 17 21 25 31
06 08 13 19 25 30
01 10 13 22 26 31
06 11 15 22 25 27
03 11 17 21 26 30
02 07 17 19 24 27
03 07 16 19 24 27
02 09 16 21 24 27
04 07 18 20 25 28
05 09 18 21 28 29
04 12 18 20 23 31
-- --------------
01 02 03 04 05 06
07 08 09 10 11 12
13 14 15 16 17 18
23 24 25 26 29
19 20 21 22
27 28 30 31
*/

-- 6 in 31 (prev 14 in 79)

SET @OGUID := 141610;
SET @SGUID := 385;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DELETE FROM `gameobject` WHERE (`guid` IN (74901, 74905, 74909, 74992, 74996, 75528, 77759, 77763, 77767, 77771, 77775, 77779, 77783, 77787, 77791, 77795, 77799, 77803, 77807, 77815, 77819, 77823, 77827,
77831, 77835, 77839, 77843, 77847, 77851, 77855, 77859, 77863, 77867, 77871, 77875, 77879, 77883, 77887, 77891, 77895, 77899, 77903, 77907, 77911, 77915, 77919, 77923, 77924, 77927, 77931, 77935, 77939,
77943, 77947, 77951, 77955, 77959, 77963, 77967, 77971, 77975, 77979, 77983, 77987, 77991, 77995, 77999, 78003, 78007, 78011, 78015, 78019, 78023, 78027, 78031, 105242, 105246));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (74901, 74905, 74909, 74992, 74996, 75528, 77759, 77763, 77767, 77771, 77775, 77779, 77783, 77787, 77791, 77795, 77799, 77803, 77807, 77815, 77819, 77823, 77827,
77831, 77835, 77839, 77843, 77847, 77851, 77855, 77859, 77863, 77867, 77871, 77875, 77879, 77883, 77887, 77891, 77895, 77899, 77903, 77907, 77911, 77915, 77919, 77923, 77924, 77927, 77931, 77935, 77939,
77943, 77947, 77951, 77955, 77959, 77963, 77967, 77971, 77975, 77979, 77983, 77987, 77991, 77995, 77999, 78003, 78007, 78011, 78015, 78019, 78023, 78027, 78031, 105242, 105246));

DELETE FROM `gameobject` WHERE (`guid` IN (71855, 71859, 71923, 74904, 74908, 74912, 74995, 74999, 77762, 77766, 77770, 77774, 77778, 77782, 77786, 77790, 77794, 77798, 77802, 77806, 77810, 77818, 77822,
77826, 77830, 77834, 77838, 77842, 77846, 77850, 77854, 77858, 77862, 77866, 77870, 77874, 77878, 77882, 77886, 77890, 77894, 77898, 77902, 77906, 77910, 77914, 77918, 77922, 77926, 77930, 77934, 77938,
77942, 77946, 77950, 77954, 77958, 77962, 77966, 77970, 77974, 77978, 77982, 77986, 77990, 77994, 77998, 78002, 78006, 78010, 78014, 78018, 78022, 78026, 78030, 78034, 105000, 105245, 105249));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (71855, 71859, 71923, 74904, 74908, 74912, 74995, 74999, 77762, 77766, 77770, 77774, 77778, 77782, 77786, 77790, 77794, 77798, 77802, 77806, 77810, 77818, 77822,
77826, 77830, 77834, 77838, 77842, 77846, 77850, 77854, 77858, 77862, 77866, 77870, 77874, 77878, 77882, 77886, 77890, 77894, 77898, 77902, 77906, 77910, 77914, 77918, 77922, 77926, 77930, 77934, 77938,
77942, 77946, 77950, 77954, 77958, 77962, 77966, 77970, 77974, 77978, 77982, 77986, 77990, 77994, 77998, 78002, 78006, 78010, 78014, 78018, 78022, 78026, 78030, 78034, 105000, 105245, 105249));

DELETE FROM `gameobject` WHERE (`guid` IN (74994, 74998, 77761, 77765, 77773, 77789, 77821, 77833, 77853, 77857, 77861, 77865, 77869, 77873, 77877, 77881, 77885, 77917, 77937, 77941, 78001));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (74994, 74998, 77761, 77765, 77773, 77789, 77821, 77833, 77853, 77857, 77861, 77865, 77869, 77873, 77877, 77881, 77885, 77917, 77937, 77941, 78001));

DELETE FROM `gameobject` WHERE (`guid` IN (74993, 74997, 77760, 77764, 77772, 77788, 77820, 77832, 77852, 77856, 77860, 77864, 77868, 77872, 77876, 77880, 77884, 77916, 77936, 77940, 78000));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (74993, 74997, 77760, 77764, 77772, 77788, 77820, 77832, 77852, 77856, 77860, 77864, 77868, 77872, 77876, 77880, 77884, 77916, 77936, 77940, 78000));

DELETE FROM `pool_template` WHERE (`entry` IN (3338, 3359, 3360, 3373, 3375, 3382, 3385, 3386, 3392, 3395, 3403, 3404, 3406, 3409, 3411, 3414, 3422, 6507));

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 00, 0, 0, 1, -9725.8623046875, -3878.197021484375, 27.43507194519042968, 1.308995485305786132, 0, 0, 0.608760833740234375, 0.793353796005249023, 300, 600),
(@OGUID + 01, 0, 0, 1, -9915.0390625, -3621.53564453125, 36.3628692626953125, 1.780233979225158691, 0, 0, 0.7771453857421875, 0.629321098327636718, 300, 600),
(@OGUID + 02, 0, 0, 1, -10038.4970703125, -3414.23046875, 28.16066741943359375, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976, 300, 600),
(@OGUID + 03, 0, 0, 1, -10055.205078125, -3113.762939453125, 32.04394912719726562, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796, 300, 600),
(@OGUID + 04, 0, 0, 1, -10285.2158203125, -2883.335205078125, 27.72505760192871093, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.60181504487991333, 300, 600),
(@OGUID + 05, 0, 0, 1, -10158.9091796875, -2762.3125, 28.91076278686523437, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 300, 600);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 00, @OGUID + 00, -1),
(@SGUID + 00, @OGUID + 01, -1),
(@SGUID + 00, @OGUID + 02, -1),
(@SGUID + 00, @OGUID + 03, -1),
(@SGUID + 00, @OGUID + 04, -1),
(@SGUID + 00, @OGUID + 05, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 00, 'Swamp of Sorrows - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000', 1, 1, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, 1735, 0, 0, 0),
(@SGUID + 00, 1733, 0, 0, 5),
(@SGUID + 00, 1734, 0, 0, 5);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 10, 0, 0, 1, -10178.5830078125, -2644.383056640625, 37.9922637939453125, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468, 300, 600),
(@OGUID + 11, 0, 0, 1, -10146.1943359375, -2564.3134765625, 29.12084007263183593, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111, 300, 600),
(@OGUID + 12, 0, 0, 1, -10065.392578125, -2527.960693359375, 35.8057098388671875, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715, 300, 600),
(@OGUID + 13, 0, 0, 1, -10091.544921875, -2350.078369140625, 27.35803413391113281, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267, 300, 600),
(@OGUID + 14, 0, 0, 1, -10153.69140625, -2383.90087890625, 43.28723907470703125, 1.274088263511657714, 0, 0, 0.594821929931640625, 0.80385744571685791, 300, 600),
(@OGUID + 15, 0, 0, 1, -10271.95703125, -2583.956298828125, 39.42266082763671875, 1.780233979225158691, 0, 0, 0.7771453857421875, 0.629321098327636718, 300, 600);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 01, @OGUID + 10, -1),
(@SGUID + 01, @OGUID + 11, -1),
(@SGUID + 01, @OGUID + 12, -1),
(@SGUID + 01, @OGUID + 13, -1),
(@SGUID + 01, @OGUID + 14, -1),
(@SGUID + 01, @OGUID + 15, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 01, 'Swamp of Sorrows - Iron Deposit | Silver Vein | Gold Vein (1) Ore 001', 1, 1, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 01, 1735, 0, 0, 0),
(@SGUID + 01, 1733, 0, 0, 5),
(@SGUID + 01, 1734, 0, 0, 5);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 20, 0, 0, 1, -10403.7744140625, -2357.672119140625, 86.75843048095703125, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291, 300, 600),
(@OGUID + 21, 0, 0, 1, -10514.759765625, -2467.0361328125, 40.94747543334960937, 4.206246376037597656, 0, 0, -0.86162853240966796, 0.50753939151763916, 300, 600),
(@OGUID + 22, 0, 0, 1, -10629.4853515625, -2461.66015625, 38.1450042724609375, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291, 300, 600),
(@OGUID + 23, 0, 0, 1, -10679.8349609375, -2521.833984375, 30.69331550598144531, 0.925023794174194335, 0, 0, 0.446197509765625, 0.894934535026550292, 300, 600),
(@OGUID + 24, 0, 0, 1, -10618.8779296875, -2629.921875, 52.73366546630859375, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562, 300, 600),
(@OGUID + 25, 0, 0, 1, -10505.2001953125, -2628.193603515625, 26.37614822387695312, 1.274088263511657714, 0, 0, 0.594821929931640625, 0.80385744571685791, 300, 600);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 02, @OGUID + 20, -1),
(@SGUID + 02, @OGUID + 21, -1),
(@SGUID + 02, @OGUID + 22, -1),
(@SGUID + 02, @OGUID + 23, -1),
(@SGUID + 02, @OGUID + 24, -1),
(@SGUID + 02, @OGUID + 25, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 02, 'Swamp of Sorrows - Iron Deposit | Silver Vein | Gold Vein (1) Ore 002', 1, 1, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 02, 1735, 0, 0, 0),
(@SGUID + 02, 1733, 0, 0, 5),
(@SGUID + 02, 1734, 0, 0, 5);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 30, 0, 0, 1, -10620.5302734375, -3549.613037109375, 36.431610107421875, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505, 300, 600),
(@OGUID + 31, 0, 0, 1, -10741.7109375, -3701.575439453125, 31.75513648986816406, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 300, 600),
(@OGUID + 32, 0, 0, 1, -10971.82421875, -3868.806396484375, 45.37935256958007812, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419, 300, 600),
(@OGUID + 33, 0, 0, 1, -10986.044921875, -3968.313720703125, 34.55416488647460937, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046, 300, 600),
(@OGUID + 34, 0, 0, 1, -10870.5009765625, -3803.84326171875, 33.22667694091796875, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.60181504487991333, 600, 1200);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 03, @OGUID + 30, -1),
(@SGUID + 03, @OGUID + 31, -1),
(@SGUID + 03, @OGUID + 32, -1),
(@SGUID + 03, @OGUID + 33, -1),
(@SGUID + 03, @OGUID + 34, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 03, 'Swamp of Sorrows - Iron Deposit | Silver Vein | Gold Vein (1) Ore 003', 1, 1, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 03, 1735, 0, 0, 0),
(@SGUID + 03, 1733, 0, 0, 5),
(@SGUID + 03, 1734, 0, 0, 5);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 40, 0, 0, 1, -10500.4140625, -2716.169677734375, 31.96417236328125, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958, 600, 1200),
(@OGUID + 41, 0, 0, 1, -10628.5185546875, -2767.3671875, 50.19372940063476562, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 300, 600),
(@OGUID + 42, 0, 0, 1, -10617.7509765625, -2858.78076171875, 43.96173095703125, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 300, 600),
(@OGUID + 43, 0, 0, 1, -10586.07421875, -2915.2890625, 36.38297653198242187, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722, 300, 600);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 04, @OGUID + 40, -1),
(@SGUID + 04, @OGUID + 41, -1),
(@SGUID + 04, @OGUID + 42, -1),
(@SGUID + 04, @OGUID + 43, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 04, 'Swamp of Sorrows - Iron Deposit | Silver Vein | Gold Vein (1) Ore 004', 1, 1, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 04, 1735, 0, 0, 0),
(@SGUID + 04, 1733, 0, 0, 5),
(@SGUID + 04, 1734, 0, 0, 5);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 50, 0, 0, 1, -10850.240234375, -3632.540771484375, 14.71962642669677734, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708, 600, 1200),
(@OGUID + 51, 0, 0, 1, -10826.6904296875, -3748.712646484375, 24.27994728088378906, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881, 600, 1200),
(@OGUID + 52, 0, 0, 1, -10941.2041015625, -3749.182373046875, 23.90737724304199218, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016, 600, 1200),
(@OGUID + 53, 0, 0, 1, -10964.4248046875, -3679.77294921875, 8.759305953979492187, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808, 600, 1200);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 05, @OGUID + 50, -1),
(@SGUID + 05, @OGUID + 51, -1),
(@SGUID + 05, @OGUID + 52, -1),
(@SGUID + 05, @OGUID + 53, -1);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 05, 'Swamp of Sorrows - Iron Deposit | Silver Vein | Gold Vein (1) Ore 005', 1, 1, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 05, 1735, 0, 0, 0),
(@SGUID + 05, 1733, 0, 0, 5),
(@SGUID + 05, 1734, 0, 0, 5);
