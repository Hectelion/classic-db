-- q.8519 'A Pawn on the Eternal Board' - Reconstructed

-- Merithra of the Dream 15378
UPDATE creature_template SET Faction = 35, UnitFlags = 256 WHERE entry = 15378;
-- Caelestrasz 15379
UPDATE creature_template SET Faction = 35, UnitFlags = 256 WHERE entry = 15379;
-- Arygos 15380
UPDATE creature_template SET Faction = 35, UnitFlags = 256 WHERE entry = 15380;
-- Anachronos the Ancient 15381
UPDATE creature_template SET Faction = 35, UnitFlags = 256, SpeedWalk = (2.5 / 2.5), SpeedRun = (8 / 7) WHERE entry = 15381;
-- Fandral Staghelm 15382
UPDATE creature_template SET Faction = 35, UnitFlags = 210 WHERE entry = 15382;
-- Qiraji Wasp 15414
UPDATE creature_template SET Faction = 310, UnitFlags = 256, RegenerateStats = 0, DamageMultiplier = 3.5 WHERE entry = 15414;
-- Qiraji Drone 15421
UPDATE creature_template SET Faction = 310, UnitFlags = 256, RegenerateStats = 0, DamageMultiplier = 3.5 WHERE entry = 15421;
-- Qiraji Tank 15422
UPDATE creature_template SET Faction = 310, UnitFlags = 256, RegenerateStats = 0, DamageMultiplier = 3.5 WHERE entry = 15422;
-- Kaldorei Infantry 15423
UPDATE creature_template SET Faction = 250, UnitFlags = 256, EquipmentTemplateId = 2541 WHERE entry = 15423; -- UNIT_VIRTUAL_ITEM_SLOT_ID: 14881 + UNIT_VIRTUAL_ITEM_SLOT_ID + 2: 14881
DELETE FROM creature_equip_template WHERE entry = 2541;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2541, 14881, 0, 14881);
-- Anubisath Conqueror 15424
UPDATE creature_template SET Faction = 310, UnitFlags = 256, RegenerateStats = 0, DamageMultiplier = 3.5 WHERE entry = 15424;

-- Quest SCript
DELETE FROM dbscripts_on_quest_start WHERE id IN (8519);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8519,1,27,0x04,0,0,0,0,0x04|0x0400,0,0,0,0,0,0,0,0,'lock object - prevent multiple events'), -- 180633
-- The story must show gate open
(8519,2,11,111,0,0,0,0,0,0,0,0,0,0,0,0,0,'open door'),
(8519,3,11,115,0,0,0,0,0,0,0,0,0,0,0,0,0,'open door'),
(8519,4,11,113,0,0,0,0,0,0,0,0,0,0,0,0,0,'open door'),

-- attacking squad
(8519,10,10,15424,180000,0,0,0,0x08,0,0,0,0,-8084.521,1534.588,2.7344015,4.886443138122558593,'summon: Anubisath Conqueror 15424'),
(8519,11,10,15424,180000,0,0,0,0x08,0,0,0,0,-8093.5166,1518.3163,2.8594015,0.756263673305511474,'summon: Anubisath Conqueror 15424'),
(8519,12,10,15424,180000,0,0,0,0x08,0,0,0,0,-8095.279,1537.7485,2.9326189,4.624593257904052734,'summon: Anubisath Conqueror 15424'),
(8519,13,10,15414,180000,0,0,0,0x08,0,0,0,0,-8082.606,1530.9467,2.7344015,3.74396371841430664,'summon: Qiraji Wasp 15414'),
(8519,14,10,15414,180000,0,0,0,0x08,0,0,0,0,-8084.1543,1534.5504,2.7344015,4.789569854736328125,'summon: Qiraji Wasp 15414'),
(8519,15,10,15414,180000,0,0,0,0x08,0,0,0,0,-8088.1025,1518.3938,2.964626,4.268512725830078125,'summon: Qiraji Wasp 15414'),
(8519,16,10,15414,180000,0,0,0,0x08,0,0,0,0,-8091.9814,1511.5386,3.3312032,1.638396978378295898,'summon: Qiraji Wasp 15414'),
(8519,17,10,15414,180000,0,0,0,0x08,0,0,0,0,-8093.04,1521.0588,2.7055414,3.159045934677124023,'summon: Qiraji Wasp 15414'),
(8519,18,10,15414,180000,0,0,0,0x08,0,0,0,0,-8093.7124,1511.7349,3.021877,1.966364026069641113,'summon: Qiraji Wasp 15414'),
(8519,19,10,15414,180000,0,0,0,0x08,0,0,0,0,-8094.366,1520.0853,2.7344015,2.097927093505859375,'summon: Qiraji Wasp 15414'),
(8519,20,10,15414,180000,0,0,0,0x08,0,0,0,0,-8093.6265,1540.3372,2.7925682,0.64547586441040039,'summon: Qiraji Wasp 15414'),
(8519,21,10,15423,180000,0,0,0,0x08,0,0,0,0,-8096.85,1517.41,2.62497,0.2538,'summon: Kaldorei Infantry 15423'),
(8519,22,10,15423,180000,0,0,0,0x08,0,0,0,0,-8096.16,1520.41,2.61089,1.3023,'summon: Kaldorei Infantry 15423'),
(8519,23,10,15423,180000,0,0,0,0x08,0,0,0,0,-8093.92,1523.24,2.63438,0.7211,'summon: Kaldorei Infantry 15423'),
(8519,24,10,15423,180000,0,0,0,0x08,0,0,0,0,-8089.77,1523.89,2.61413,0.0378,'summon: Kaldorei Infantry 15423'),
(8519,25,10,15423,180000,0,0,0,0x08,0,0,0,0,-8086.45,1522.19,2.6211,5.7595,'summon: Kaldorei Infantry 15423'),
(8519,26,10,15423,180000,0,0,0,0x08,0,0,0,0,-8085,1518.58,2.69892,4.87201,'summon: Kaldorei Infantry 15423'),
(8519,27,10,15423,180000,0,0,0,0x08,0,0,0,0,-8085.81,1515.03,3.1137,4.49109,'summon: Kaldorei Infantry 15423'),
(8519,28,10,15423,180000,0,0,0,0x08,0,0,0,0,-8088.1,1512.14,3.44917,3.82743,'summon: Kaldorei Infantry 15423'),
(8519,29,10,15423,180000,0,0,0,0x08,0,0,0,0,-8092.39,1511.83,3.14766,3.2619,'summon: Kaldorei Infantry 15423'),
(8519,30,10,15423,180000,0,0,0,0x08,0,0,0,0,-8095.51,1513.85,2.67505,2.2880,'summon: Kaldorei Infantry 15423'),
(8519,31,10,15423,180000,0,0,0,0x08,0,0,0,0,-8095.81,1532.9,2.97344,1.45553,'summon: Kaldorei Infantry 15423'),
(8519,32,10,15423,180000,0,0,0,0x08,0,0,0,0,-8097.73,1536.73,3.01208,2.0445,'summon: Kaldorei Infantry 15423'),
(8519,33,10,15423,180000,0,0,0,0x08,0,0,0,0,-8098.41,1540.29,3.03665,1.2081,'summon: Kaldorei Infantry 15423'),
(8519,34,10,15423,180000,0,0,0,0x08,0,0,0,0,-8095.92,1543.42,2.73728,0.6112,'summon: Kaldorei Infantry 15423'),
(8519,35,10,15423,180000,0,0,0,0x08,0,0,0,0,-8092.01,1543.66,2.61425,0.0339,'summon: Kaldorei Infantry 15423'),
(8519,36,10,15423,180000,0,0,0,0x08,0,0,0,0,-8088.26,1542.46,2.61052,5.9323,'summon: Kaldorei Infantry 15423'),
(8519,37,10,15423,180000,0,0,0,0x08,0,0,0,0,-8085.55,1537.87,2.61052,4.8759,'summon: Kaldorei Infantry 15423'),
(8519,38,10,15423,180000,0,0,0,0x08,0,0,0,0,-8087.66,1533.79,2.61052,3.9923,'summon: Kaldorei Infantry 15423'),
(8519,39,10,15423,180000,0,0,0,0x08,0,0,0,0,-8090.71,1532.95,2.71019,3.4111,'summon: Kaldorei Infantry 15423'),
(8519,40,10,15423,180000,0,0,0,0x08,0,0,0,0,-8093.79,1532.91,2.86282,3.0734,'summon: Kaldorei Infantry 15423'),
(8519,41,10,15423,180000,0,0,0,0x08,0,0,0,0,-8089.39,1530.44,2.67252,0.5798,'summon: Kaldorei Infantry 15423'),
(8519,42,10,15423,180000,0,0,0,0x08,0,0,0,0,-8086.38,1527.78,2.60994,5.5160,'summon: Kaldorei Infantry 15423'),
(8519,43,10,15423,180000,0,0,0,0x08,0,0,0,0,-8081.67,1528.87,2.60994,0.3913,'summon: Kaldorei Infantry 15423'),
(8519,44,10,15423,180000,0,0,0,0x08,0,0,0,0,-8079.11,1532.48,2.60994,1.1610,'summon: Kaldorei Infantry 15423'),
(8519,45,10,15423,180000,0,0,0,0x08,0,0,0,0,-8079.61,1537.63,2.60994,1.9110,'summon: Kaldorei Infantry 15423'),
(8519,46,10,15423,180000,0,0,0,0x08,0,0,0,0,-8083.76,1540.84,2.60994,2.7475,'summon: Kaldorei Infantry 15423'),
(8519,47,10,15423,180000,0,0,0,0x08,0,0,0,0,-8088.28,1538.65,2.60994,3.4740,'summon: Kaldorei Infantry 15423'),
(8519,48,10,15423,180000,0,0,0,0x08,0,0,0,0,-8091.51,1535.63,2.67311,4.0826,'summon: Kaldorei Infantry 15423'),
(8519,49,10,15423,180000,0,0,0,0x08,0,0,0,0,-8092.32,1531.82,2.78504,4.5617,'summon: Kaldorei Infantry 15423'),
(8519,50,10,15423,180000,0,0,0,0x08,0,0,0,0,-8089.95,1528.06,2.65737,5.5710,'summon: Kaldorei Infantry 15423'),
(8519,51,10,15422,180000,0,0,0,0x08,0,0,0,0,-8082.1353,1529.8281,2.7344015,3.373809099197387695,'summon: Qiraji Tank 15422'),
(8519,52,10,15422,180000,0,0,0,0x08,0,0,0,0,-8082.596,1519.3921,2.873776,4.001942634582519531,'summon: Qiraji Tank 15422'),
(8519,53,10,15422,180000,0,0,0,0x08,0,0,0,0,-8087.275,1519.5825,2.8576925,2.785885334014892578,'summon: Qiraji Tank 15422'),
(8519,54,10,15422,180000,0,0,0,0x08,0,0,0,0,-8087.958,1518.5608,2.9446065,2.453642129898071289,'summon: Qiraji Tank 15422'),
(8519,55,10,15422,180000,0,0,0,0x08,0,0,0,0,-8089.2812,1534.7256,2.7344015,5.322139739990234375,'summon: Qiraji Tank 15422'),
(8519,56,10,15422,180000,0,0,0,0x08,0,0,0,0,-8091.786,1537.9224,2.7344015,5.328545570373535156,'summon: Qiraji Tank 15422'),
(8519,57,10,15422,180000,0,0,0,0x08,0,0,0,0,-8093.0737,1518.0198,2.8594015,0.898447096347808837,'summon: Qiraji Tank 15422'),
(8519,58,10,15422,180000,0,0,0,0x08,0,0,0,0,-8093.1265,1512.537,3.191799,4.358320236206054687,'summon: Qiraji Tank 15422'),
(8519,59,10,15422,180000,0,0,0,0x08,0,0,0,0,-8092.011,1541.1951,2.7344015,4.814171314239501953,'summon: Qiraji Tank 15422'),
(8519,60,10,15421,180000,0,0,0,0x08,0,0,0,0,-8083.5586,1513.2365,3.1731222,1.970927238464355468,'summon: Qiraji Drone 15421'),
(8519,61,10,15421,180000,0,0,0,0x08,0,0,0,0,-8085.1436,1512.9519,3.3675802,1.528013944625854492,'summon: Qiraji Drone 15421'),
(8519,62,10,15421,180000,0,0,0,0x08,0,0,0,0,-8086.7524,1528.6262,2.7344015,1.267617464065551757,'summon: Qiraji Drone 15421'),
(8519,63,10,15421,180000,0,0,0,0x08,0,0,0,0,-8088.752,1517.8536,2.9983563,2.162188529968261718,'summon: Qiraji Drone 15421'),
(8519,64,10,15421,180000,0,0,0,0x08,0,0,0,0,-8088.8975,1517.7604,2.9844015,0.283090144395828247,'summon: Qiraji Drone 15421'),
(8519,65,10,15421,180000,0,0,0,0x08,0,0,0,0,-8089.0596,1532.3508,2.7344015,5.283954620361328125,'summon: Qiraji Drone 15421'),
(8519,66,10,15421,180000,0,0,0,0x08,0,0,0,0,-8088.9673,1539.9233,2.7344015,5.818657875061035156,'summon: Qiraji Drone 15421'),
(8519,67,10,15421,180000,0,0,0,0x08,0,0,0,0,-8090.7905,1517.2306,2.9844015,3.400722980499267578,'summon: Qiraji Drone 15421'),
(8519,68,10,15421,180000,0,0,0,0x08,0,0,0,0,-8090.5513,1509.6268,3.2168355,5.228849411010742187,'summon: Qiraji Drone 15421'),
(8519,69,10,15421,180000,0,0,0,0x08,0,0,0,0,-8090.644,1509.9595,3.308448,5.330722332000732421,'summon: Qiraji Drone 15421'),
(8519,70,10,15421,180000,0,0,0,0x08,0,0,0,0,-8089.866,1540.7572,2.7344015,6.091379165649414062,'summon: Qiraji Drone 15421'),
-- quest Npcs
(8519,100,10,15378,300000,0,0,0,0x08,0,0,0,10,-8033.6787,1535.2667,2.6927352,0.418879032135009765,'summon 15378'), -- NPCFLags = 0
(8519,101,10,15379,300000,0,0,0,0x08,0,0,0,10,-8031.9116,1533.3744,2.6927342,0.907571196556091308,'summon 15379'), -- NPCFLags = 0
(8519,102,10,15380,300000,0,0,0,0x08,0,0,0,10,-8034.1147,1537.5312,2.6927361,5.829399585723876953,'summon 15380'), -- NPCFLags = 0
(8519,103,10,15381,500000,0,0,0,6|0x08,0,0,0,102,-8028.71,1538.7001,2.6927342,3.700098037719726562,'summon 15381'), -- path2+run
(8519,104,10,15382,300000,0,0,0,0x08,0,0,0,10,-8028.2134,1535.341,2.6927342,3.001966238021850585,'summon 15382'), -- NPCFLags = 0
(8519,105,16,8493,0,0,0,0,0,0,0,0,0,0,0,0,0,'Play Music');
UPDATE quest_template SET StartScript = 8519 WHERE entry = 8519;
-- Anachronos the Ancient 15381
DELETE FROM creature_movement_template WHERE entry = 15381;
INSERT INTO creature_movement_template (Entry, pathid, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- path 2
(15381,2,1,-8028.71,1538.7001,2.6927342,100,130000,1538101), -- 16:27:22.890
-- path 3
(15381,3,1,-8028.71,1538.7001,2.6927342,100,100,1538102), -- 16:29:34.828
(15381,3,2,-8070.9365,1527.0217,2.7344015,100,0,0),
(15381,3,3,-8108.29,1525.585,2.7234657,100,130000,1538103),
-- path 4
(15381,4,1,-8108.29,1525.585,2.7234657,3.106686,0,0),
(15381,4,2,-8114.678,1520.3663,3.1878211,100,4000,1538104), -- 16:31:51.109
(15381,4,3,-8117.0156,1525.2213,3.6859903,100,4000,1538105), -- 16:31:59.187
(15381,4,4,-8117.3735,1530.0682,4.0321817,100,10000,1538106), -- 16:32:05.687
(15381,4,5,-8099.367,1505.2837,2.7344015,100,0,0),
(15381,4,6,-8091.4673,1497.8005,2.734399,100,0,0),
(15381,4,7,-8075.8403,1490.5897,2.734399,100,0,0),
(15381,4,8,-8058.0435,1482.7767,2.6632175,100,10000,1538107),
-- path 5
(15381,5,1,-8038.619,1478.8711,15.513182,100,0,0),
(15381,5,2,-8022.0444,1470.9723,20.624294,100,0,0),
(15381,5,3,-8003.421,1455.6462,28.207626,100,0,0),
(15381,5,4,-7980.0894,1443.4863,37.34652,100,0,0),
(15381,5,5,-7954.9116,1428.7383,45.54096,100,0,0),
(15381,5,6,-7939.979,1413.7693,52.70762,100,0,0),
(15381,5,7,-7926.0156,1400.8499,57.67987,100,10,1538108);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1538101 AND 1538108;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 1538101
(1538101,1000,0,0,0,0,0,0,0x04,10909,0,0,0,0,0,0,0,''),
(1538101,1001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1538101,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1538101,5000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:27:30.203
(1538101,10000,3,0,0,0,15382,50,7,0,0,0,0,0,0,0,1.71756,''), -- 16:27:35.047
(1538101,11400,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:27:36.625
(1538101,11500,0,0,0,0,15382,50,3,10910,0,0,0,0,0,0,0,'buddy Say'), -- 16:27:36.765
(1538101,13000,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:27:38.203
(1538101,15000,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:27:39.906
(1538101,17000,1,25,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:27:41.500
(1538101,18500,3,0,0,0,15382,50,7,0,0,0,0,0,0,0,3.00196,''), -- 16:27:43.225
(1538101,20000,3,0,0,0,15378,50,7,0,0,0,0,0,0,0,0.01357,''), -- 16:27:44.734
(1538101,22000,0,0,0,0,15378,50,3,10912,0,0,0,0,0,0,0,'buddy Say'), -- 16:27:46.484
(1538101,23000,1,273,0,0,15378,50,1,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:27:47.922
(1538101,23300,0,0,0,0,15378,50,3,10911,0,0,0,0,0,0,0,'buddy Say'), -- 16:27:48.125 
(1538101,25001,10,15422,180000,0,0,0,0x08,0,0,0,0,-8096.1157,1516.818,2.7167563,1.134464025497436523,'summon: Qiraji Tank 15422'),
(1538101,25002,10,15422,180000,0,0,0,0x08,0,0,0,0,-8080.6895,1512.5712,2.9955852,5.044001579284667968,'summon: Qiraji Tank 15422'),
(1538101,25003,10,15422,180000,0,0,0,0x08,0,0,0,0,-8099.3203,1500.8727,2.6927383,3.019419670104980468,'summon: Qiraji Tank 15422'),
(1538101,25004,10,15422,180000,0,0,0,0x08,0,0,0,0,-8077.5063,1525.3082,2.6927383,3.298672199249267578,'summon: Qiraji Tank 15422'),
(1538101,25005,10,15422,180000,0,0,0,0x08,0,0,0,0,-8103.316,1554.271,4.1517234,1.151917338371276855,'summon: Qiraji Tank 15422'),
(1538101,25006,10,15422,180000,0,0,0,0x08,0,0,0,0,-8107.975,1551.8503,4.5801725,5.323254108428955078,'summon: Qiraji Tank 15422'),
(1538101,25007,10,15422,180000,0,0,0,0x08,0,0,0,0,-8091.7734,1547.8002,2.7820363,3.019419670104980468,'summon: Qiraji Tank 15422'),
(1538101,25008,10,15422,180000,0,0,0,0x08,0,0,0,0,-8091.2344,1537.9305,2.7091513,2.58308720588684082,'summon: Qiraji Tank 15422'),
(1538101,25009,10,15422,180000,0,0,0,0x08,0,0,0,0,-8106.6147,1501.0076,2.7671623,0.331612557172775268,'summon: Qiraji Tank 15422'),
(1538101,25010,10,15422,180000,0,0,0,0x08,0,0,0,0,-8108.7397,1510.966,2.7452133,0.209439516067504882,'summon: Qiraji Tank 15422'),
(1538101,25011,10,15422,180000,0,0,0,0x08,0,0,0,0,-8081.764,1529.9165,2.6927383,0.122173048555850982,'summon: Qiraji Tank 15422'),
(1538101,27000,0,0,0,0,15380,50,3,10913,0,0,0,0,0,0,0,'buddy Say'), -- 16:27:52.969
(1538101,30000,10,15421,180000,0,0,0,0x08,0,0,0,0,-8078.816,1538.9602,2.6927333,0.139626339077949523,'summon: Qiraji Drone 15421'),
(1538101,31000,3,0,0,0,15379,50,7,0,0,0,0,0,0,0,0.48872,''), -- 16:27:56.062
(1538101,31100,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:27:56.162
(1538101,31200,0,0,0,0,15379,50,3,10914,0,0,0,0,0,0,0,'buddy Say'), -- 16:27:56.203 
(1538101,32500,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:27:57.640
(1538101,34000,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:27:59.312
(1538101,35500,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:00.922
(1538101,37000,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:02.609
(1538101,38500,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:04.172
(1538101,38800,1,1,0,0,15378,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:04.469
(1538101,39100,0,0,0,0,15378,50,3,10908,0,0,0,0,0,0,0,'buddy Say'), -- 16:28:04.750
(1538101,38800,1,1,0,0,15378,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:05.828
(1538101,40000,1,1,0,0,15378,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:07.406
(1538101,42000,1,1,0,0,15378,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:09.015
(1538101,44000,1,1,0,0,15378,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:10.609
(1538101,44001,20,2,1,0,15378,50,7,0,0,0,0,0,0,0,0,'buddy set Path 1'), -- 16:28:10.610
(1538101,50500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8078.816,1538.9602,2.6927333,0.139626339077949523,'summon: Qiraji Drone 15421'),
(1538101,51500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8087.6978,1516.2865,3.1868932,6.056292533874511718,'summon: Qiraji Drone 15421'),
(1538101,52500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8090.362,1503.5001,2.7152743,3.298672199249267578,'summon: Qiraji Drone 15421'),
(1538101,53500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8085.387,1511.4579,3.4270213,2.58308720588684082,'summon: Qiraji Drone 15421'),
(1538101,54500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8085.819,1497.9415,2.6927474,1.326450228691101074,'summon: Qiraji Drone 15421'),
(1538101,55500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8080.5635,1506.1622,2.8614993,3.473205089569091796,'summon: Qiraji Drone 15421'),
(1538101,56500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8096.567,1542.1442,2.8728862,0.314159274101257324,'summon: Qiraji Drone 15421'),
(1538101,57500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8107.0103,1535.819,3.3525844,0.401425719261169433,'summon: Qiraji Drone 15421'),
(1538101,58500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8100.2603,1550.8744,3.5356762,2.932153224945068359,'summon: Qiraji Drone 15421'),
(1538101,59500,10,15414,180000,0,0,0,0x08,0,0,0,0,-8084.222,1519.9562,2.7359202,0.92502450942993164,'summon: Qiraji Wasp 15414'),
(1538101,60500,10,15414,180000,0,0,0,0x08,0,0,0,0,-8093.04,1521.0588,2.7055414,3.159045934677124023,'summon: Qiraji Wasp 15414'),
(1538101,61500,10,15414,180000,0,0,0,0x08,0,0,0,0,-8111.078,1498.4434,3.2436872,3.001966238021850585,'summon: Qiraji Wasp 15414'),
(1538101,62500,10,15414,180000,0,0,0,0x08,0,0,0,0,-8087.0923,1552.5841,3.4185972,5.462880611419677734,'summon: Qiraji Wasp 15414'),
(1538101,63500,10,15414,180000,0,0,0,0x08,0,0,0,0,-8093.4497,1511.104,3.0333064,4.136430263519287109,'summon: Qiraji Wasp 15414'),
(1538101,64500,10,15414,180000,0,0,0,0x08,0,0,0,0,-8076.758,1533.0376,2.6927383,4.345870018005371093,'summon: Qiraji Wasp 15414'),
(1538101,64501,10,15423,180000,0,0,0,0x08,0,0,0,0,-8095.92,1543.42,2.73728,0.6112,'summon: Kaldorei Infantry 15423'),
(1538101,64502,10,15423,180000,0,0,0,0x08,0,0,0,0,-8092.01,1543.66,2.61425,0.0339,'summon: Kaldorei Infantry 15423'),
(1538101,64503,10,15423,180000,0,0,0,0x08,0,0,0,0,-8088.26,1542.46,2.61052,5.9323,'summon: Kaldorei Infantry 15423'),
(1538101,64504,10,15423,180000,0,0,0,0x08,0,0,0,0,-8085.55,1537.87,2.61052,4.8759,'summon: Kaldorei Infantry 15423'),
(1538101,64505,10,15423,180000,0,0,0,0x08,0,0,0,0,-8087.66,1533.79,2.61052,3.9923,'summon: Kaldorei Infantry 15423'),
(1538101,64506,10,15423,180000,0,0,0,0x08,0,0,0,0,-8090.71,1532.95,2.71019,3.4111,'summon: Kaldorei Infantry 15423'),
(1538101,65500,1,1,0,0,15380,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:30.047 
(1538101,66000,0,0,0,0,15380,50,3,10904,0,0,0,0,0,0,0,'buddy Say'), -- 16:28:30.640 
(1538101,67000,1,1,0,0,15380,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:31.625 
(1538101,68500,1,1,0,0,15380,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:33.297
(1538101,68501,20,2,1,0,15380,50,7,0,0,0,0,0,0,0,0,'buddy set Path 1'), -- 16:28:33.297
(1538101,91000,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:56.109
(1538101,91200,0,0,0,0,15380,50,3,10907,0,0,0,0,0,0,0,'buddy Say'), -- 16:28:56.309 
(1538101,92500,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:57.562
(1538101,94000,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:28:59.203
(1538101,95500,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:29:00.781
(1538101,97000,1,1,0,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:29:02.359
(1538101,97001,20,2,1,0,15379,50,7,0,0,0,0,0,0,0,0,'buddy set Path 1'), -- 16:29:02.359
(1538101,115000,10,15414,180000,0,0,0,0x08,0,0,0,0,-8084.144,1531.8539,2.6927302,6.2657318115234375,'summon: Qiraji Wasp 15414'),
(1538101,115100,10,15414,180000,0,0,0,0x08,0,0,0,0,-8088.3696,1531.313,2.7210321,6.230825424194335937,'summon: Qiraji Wasp 15414'),
(1538101,115200,10,15414,180000,0,0,0,0x08,0,0,0,0,-8085.4287,1536.4481,2.6927342,3.420845270156860351,'summon: Qiraji Wasp 15414'),
(1538101,115300,10,15421,180000,0,0,0,0x08,0,0,0,0,-8091.2744,1558.0068,4.2844644,4.817108631134033203,'summon: Qiraji Drone 15421'),
(1538101,115400,10,15421,180000,0,0,0,0x08,0,0,0,0,-8103.6094,1541.0853,3.7910812,0.296705961227416992,'summon: Qiraji Drone 15421'),
(1538101,115500,10,15421,180000,0,0,0,0x08,0,0,0,0,-8082.349,1548.36,2.9380612,5.16617441177368164,'summon: Qiraji Drone 15421'),
(1538101,117000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.859156,'move'), -- 16:29:23.453
(1538101,117100,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:29:23.553
(1538101,117300,0,0,0,0,0,0,0x04,10915,0,0,0,0,0,0,0,'say'), -- 16:29:23.609
(1538101,123000,3,0,0,0,15382,50,7,0,0,0,0,0,0,0,1.71756,''), -- 16:29:29.906
(1538101,123000,1,25,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 16:29:29.906
(1538101,123200,0,0,0,0,15382,50,3,10916,0,0,0,0,0,0,0,'buddy Say'), -- 16:29:30.094
(1538101,128000,20,2,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'Path 3'), -- 16:29:34.828
(1538101,129600,20,2,1,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy set Path 1'), -- 16:29:36.406
-- 1538102
(1538102,1,0,0,0,0,0,0,0x04,10917,0,0,0,0,0,0,0,''), -- 16:29:34.937
-- 1538103
(1538103,1,15,25158,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 16:29:47.797         -- time stop
(1538103,200,0,0,0,0,0,0,0x04,10930,0,0,0,0,0,0,0,''), -- 16:29:47.937
(1538103,5000,15,25159,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 16:29:52.562     -- Call Prismatic Barrier SPELL_EFFECT_SEND_EVENT 9425
(1538103,21000,15,25166,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 16:30:08.844     -- Call Glyphs of Warding SPELL_EFFECT_SEND_EVENT 9427
(1538103,21001,1,193,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:08.844
(1538103,24000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:13.719
(1538103,24200,0,0,0,0,0,0,0x04,10920,0,0,0,0,0,0,0,''), -- 16:30:13.828
(1538103,27000,15,23017,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 16:30:16.890
(1538103,27100,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.181539,''), -- 16:30:16.890
(1538103,29000,15,25167,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy cast'), -- 16:30:18.562  -- (SPELL_EFFECT_SEND_EVENT) 9426
(1538103,29200,0,0,0,0,15382,50,3,10921,0,0,0,0,0,0,0,'buddy Say'), -- 16:30:18.719
(1538103,39000,28,8,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - stand state 8'), -- 16:30:28.265
(1538103,39200,0,0,0,0,15382,50,3,10922,0,0,0,0,0,0,0,'buddy - Say'), -- 16:30:28.422
(1538103,40000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.07879,''), -- 16:30:29.937
(1538103,41500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:31.562
(1538103,41700,0,0,0,0,0,0,0x04,10923,0,0,0,0,0,0,0,''), -- 16:30:31.672
(1538103,43000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:33.094
(1538103,44500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:34.719
(1538103,46000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:36.406
(1538103,47500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:38.047
(1538103,47800,0,0,0,0,0,0,0x04,10924,0,0,0,0,0,0,0,''), -- 16:30:38.172
(1538103,49500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:39.625
(1538103,51000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:41.250
(1538103,52500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:42.937
(1538103,52700,0,0,0,0,0,0,0x04,10925,0,0,0,0,0,0,0,''), -- 16:30:43.078
(1538103,54200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:44.547
(1538103,55700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:46.140
(1538103,57200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:47.812
(1538103,58700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:49.422
(1538103,60200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:51.062
(1538103,61700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:52.594
(1538103,63200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:54.297
(1538103,64700,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:55.937
(1538103,66200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:57.547
(1538103,66300,42,0,0,0,0,0,0x04,20738,0,0,0,0,0,0,0,''), -- 16:30:57.547
(1538103,66400,0,0,0,0,0,0,0x04,10926,0,0,0,0,0,0,0,''), -- 16:30:57.656
(1538103,68000,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:59.125
(1538103,68100,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:30:59.125
(1538103,69000,42,0,0,0,15382,50,7,20738,0,0,0,0,0,0,0,'buddy - eqip'), -- 16:31:00.765
(1538103,71000,3,0,0,0,15382,50,7,0,0,0,0,0,0,0,3.2203869,'buddy - move'), -- 16:31:02.406
(1538103,71010,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:02.416
(1538103,71100,28,0,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - stand state 0'), -- 16:31:02.416
(1538103,71200,0,0,0,0,15382,50,3,10927,0,0,0,0,0,0,0,'buddy - Say'), -- 16:31:02.515
(1538103,72700,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:04.031
(1538103,74200,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:05.656
(1538103,73700,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:07.297
(1538103,75200,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:08.922
(1538103,76700,1,25,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:08.922
(1538103,78200,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:12.156
(1538103,78300,0,0,0,0,15382,50,3,10928,0,0,0,0,0,0,0,'buddy - Say'), -- 16:31:12.297
(1538103,79800,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:13.781
(1538103,80300,1,1,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:15.406
(1538103,81800,1,5,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - emote'), -- 16:31:15.406
(1538103,91000,15,25182,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - cast'), -- 16:31:25.140
(1538103,91100,0,0,0,0,15382,50,3,10929,0,0,0,0,0,0,0,'buddy - Say'), -- 16:31:25.250
(1538103,92490,42,0,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - eqip'), -- 16:31:26.672
(1538103,92500,16,8392,0,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - Play Sound'), -- 16:31:26.672
(1538103,95500,20,2,2,0,15382,50,7,0,0,0,0,0,0,0,0,'buddy - Path 2'), -- 16:31:28.359
(1538103,99000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.003,''), -- 16:31:30.015
(1538103,99100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:31:30.015
(1538103,99200,0,0,0,0,0,0,0x04,10931,0,0,0,0,0,0,0,''), -- 16:31:30.125
(1538103,100000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:31:31.640
(1538103,102000,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:31:33.265
(1538103,128000,1,274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:31:49.484
(1538103,128100,0,0,0,0,0,0,0x04,10933,0,0,0,0,0,0,0,''), -- 16:31:49.625
(1538103,128100,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'walk'),
(1538103,129600,20,2,4,0,0,0,0x04,0,0,0,0,0,0,0,0,'Path 4'), -- 16:31:51.109
-- 1538104
(1538104,1000,1,16,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:31:55.984
(1538104,1100,0,0,0,0,0,0,0x04,10934,0,0,0,0,0,0,0,''), -- 16:31:56.094
-- 1538105
(1538105,1000,1,16,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:32:02.375
-- 1538106
(1538106,2000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state 8'), -- 16:32:08.875
(1538106,2200,0,0,0,0,0,0,0x04,10935,0,0,0,0,0,0,0,''), -- 16:32:09.031
(1538106,3000,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5 - Ref: quest credit'),
(1538106,6500,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,5.969026,''), -- 16:32:13.703
(1538106,6600,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state 0'), -- 16:32:13.703
 -- 1538107
(1538107,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run ON'),
(1538107,100,15,25108,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 16:32:28.312
(1538107,3000,39,1,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Fly'),
(1538107,3001,1,254,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1538107,5000,20,3,5,0,0,0,0,0,0,0,0,0,0,0,0,'set Path 5');
-- Gate return open if WarEffort event 123 or 124 is active (Gong quest is done)
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
-- 1538108
 (1538108,1,11,111,0,0,0,0,0,0,0,0,0,0,0,0,0,2101,'open door'),
 (1538108,2,11,115,0,0,0,0,0,0,0,0,0,0,0,0,0,2101,'open door'),
 (1538108,3,11,113,0,0,0,0,0,0,0,0,0,0,0,0,0,2101,'open door'),
 (1538108,4,27,0x08,0,0,180633,49389,7|0x10|0x0400,0,0,0,0,0,0,0,0,0,'unlock object'), -- 180633
 (1538108,5,18,100,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'desp'),
 (1538108,6,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'unactive');

-- Merithra of the Dream 15378
DELETE FROM creature_movement_template WHERE entry = 15378;
INSERT INTO creature_movement_template (Entry, pathid, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(15378,1,1,-8033.6787,1535.2667,2.6927352,100,1,5), -- RUN
(15378,1,2,-8056.882,1533.4479,2.7975118,3.26376,11000,1537801),
(15378,1,3,-8056.882,1533.4479,12,3.26376,15000,1537802),
(15378,2,1,-8075.507,1533.2616,21.276083,100,0,0),
(15378,2,2,-8086.231,1532.3145,24.16498,100,0,0),
(15378,2,3,-8097.454,1530.031,31.676483,100,0,0),
(15378,2,4,-8112.106,1527.9401,40.009773,100,0,0),
(15378,2,5,-8131.5034,1525.2672,43.959183,100,0,0),
(15378,2,6,-8163.2925,1525.3778,44.875862,100,0,0),
(15378,2,7,-8199.418,1508.3925,38.014748,100,10,1537803);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1537801 AND 1537803;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1537801,2000,1,22,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:28:20.390
(1537801,2200,0,0,0,0,0,0,0x04,10903,0,0,0,0,0,0,0,'Say'), -- 16:28:20.531
(1537801,5200,15,25105,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 25105'), -- 16:28:23.609
(1537801,9000,39,1,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Fly'),
(1537801,9001,1,254,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:28:26.859 -- Classic/TDB may have 254 HERE
(1537802,4000,15,25145,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 25145'), -- 16:28:30.047
(1537802,8000,53,0,0,0,0,0,0,19924,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(1537802,10000,20,3,2,0,0,0,0,0,0,0,0,0,0,0,0,'set Path 2'), -- 16:28:36.500
(1537803,1,18,100,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp'),
(1537803,2,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- Arygos 15380
DELETE FROM creature_movement_template WHERE entry = 15380;
INSERT INTO creature_movement_template (Entry, pathid, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(15380,1,1,-8034.1147,1537.5312,2.6927361,100,1,5), -- RUN
(15380,1,2,-8057.2734,1532.9266,2.720395,3.31612,11000,1538001),
(15380,1,3,-8057.2734,1532.9266,12,3.31612,15000,1538002),
(15380,2,1,-8077.632,1533.311,19.748293,100,0,0),
(15380,2,2,-8096.0835,1531.4745,30.169842,100,0,0),
(15380,2,3,-8114.5635,1529.298,47.003193,100,0,0),
(15380,2,4,-8124.553,1527.5331,51.598076,100,0,0),
(15380,2,5,-8141.8784,1527.2885,52.848095,100,0,0),
(15380,2,6,-8175.29,1530.6923,45.54255,100,0,0),
(15380,2,7,-8199.181,1533.6785,40.125874,100,10,1537803);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1538001 AND 1538002;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1538001,2000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:28:39.812
(1538001,2200,0,0,0,0,0,0,0x04,10901,0,0,0,0,0,0,0,'Say'), -- 16:28:39.937
(1538001,6000,15,25107,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 25107'), -- 16:28:43.047
(1538001,9000,39,1,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Fly'),
(1538001,9001,1,254,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:28:46.281 -- Classic/TDB may have 254 HERE
(1538002,4000,15,25149,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 25149'), -- 16:28:49.437
(1538002,10000,20,3,2,0,0,0,0,0,0,0,0,0,0,0,0,'set Path 2'); -- 16:28:55.969
-- Caelestrasz 15379
DELETE FROM creature_movement_template WHERE entry = 15379;
INSERT INTO creature_movement_template (Entry, pathid, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(15379,1,1,-8031.9116,1533.3744,2.6927342,100,1,5), -- RUN
(15379,1,2,-8055.9097,1528.791,2.6556978,3.124139,11000,1537901),
(15379,1,3,-8055.9097,1528.791,12,3.124139,15000,1537902),
(15379,2,1,-8076.1675,1528.4475,17.581625,100,0,0),
(15379,2,2,-8089.0938,1526.817,24.38719,100,0,0),
(15379,2,3,-8106.2266,1526.973,41.003292,100,0,0),
(15379,2,4,-8121.8394,1525.9769,47.34032,100,0,0),
(15379,2,5,-8138.363,1524.8496,46.54252,100,0,0),
(15379,2,6,-8180.7363,1522.2341,38.014748,100,0,0),
(15379,2,7,-8194.654,1522.9401,38.014748,100,0,0),
(15379,2,8,-8214.677,1526.4224,38.014748,100,10,1537803);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1537901 AND 1537902;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1537901,2000,1,22,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:29:08.922
(1537901,2200,0,0,0,0,0,0,0x04,10902,0,0,0,0,0,0,0,'Say'), -- 16:29:08.984
(1537901,6000,15,25106,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 25107'), -- 16:29:12.156
(1537901,9000,39,1,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Fly'),
(1537901,9001,1,254,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:29:15.312 -- Classic/TDB may have 254 HERE
(1537902,4000,15,25150,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 25149'), -- 16:29:18.562
(1537902,8000,53,0,0,0,0,0,0,19924,0,0,0,0,0,0,0,'Set worldstate variable to 0'), -- off
(1537902,10000,20,3,2,0,0,0,0,0,0,0,0,0,0,0,0,'set Path 2'); -- 16:29:23.453
-- Fandral Staghelm 15382
DELETE FROM creature_movement_template WHERE entry = 15382;
INSERT INTO creature_movement_template (Entry, pathid, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- Path 1
(15382,1,1,-8028.2134,1535.341,2.6927342,100,1,5), -- RUN
(15382,1,2,-8035.8994,1534.5963,2.7344015,100,0,0),
(15382,1,3,-8048.381,1531.8634,2.8907719,100,0,0),
(15382,1,4,-8073.5483,1526.4707,2.7419322,100,0,0),
(15382,1,5,-8086.552,1526.7135,2.7344015,100,0,0),
(15382,1,6,-8099.488,1526.0984,2.8479338,100,0,0),
(15382,1,7,-8103.3057,1525.9785,2.7207165,100,300000,6),
-- Path 2
(15382,2,1,-8094.724,1526.2478,2.8216817,100,0,0),
(15382,2,2,-8097.89,1525.6768,2.8780782,3.150419,8000,1538201), -- 16:31:34.890
(15382,2,3,-8070.3125,1529.3773,2.7344015,100,0,0),
(15382,2,4,-8043.6865,1535.3453,2.7344015,100,0,0),
(15382,2,5,-8016.1787,1546.8385,2.7344017,100,100,1537803);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1538201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1538201,2000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:31:36.515
(1538201,2200,0,0,0,0,0,0,0x04,10932,0,0,0,0,0,0,0,'Say'), -- 16:31:36.656
(1538201,3500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:31:38.094
(1538201,5000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:31:39.719 
(1538201,6500,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 16:31:41.328
(1538201,7000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'); -- 16:31:42.969

-- Qiraji Wasp 15414
-- Qiraji Drone 15421
-- Qiraji Tank 15422
-- Kaldorei Infantry 15423
-- Anubisath Conqueror 15424
DELETE FROM dbscripts_on_creature_death WHERE id IN (15414,15421,15422,15423,15424);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15414,1,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'delayed despawn'),
(15421,1,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'delayed despawn'),
(15422,1,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'delayed despawn'),
(15423,1,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'delayed despawn'),
(15424,1,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'delayed despawn');
-- texts
UPDATE broadcast_text SET ChatTypeId = 1 WHERE Id IN (10901,10902,10903);
UPDATE broadcast_text SET ChatTypeId = 2 WHERE Id IN (10912,10913,10926,10933,10934,10922,10929);
-- spell fixes
DELETE FROM spell_target_position WHERE Id IN(25182);
INSERT INTO spell_target_position VALUES
(25182,1,-8117.5,1526.19,17.2991,0);
-- events Related
DELETE FROM dbscripts_on_event WHERE id IN (
9425, -- comes from spell 25159
9427, -- comes from spell 25166
9426); -- comes from spell 25167
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9425,1,12,111,30000,0,0,0,0,0,0,0,0,0,0,0,0,'close door'),
(9426,1,12,115,30000,0,0,0,0,0,0,0,0,0,0,0,0,'close door'),
(9427,1,12,113,30000,0,0,0,0,0,0,0,0,0,0,0,0,'close door');
-- Objects
UPDATE gameobject_template SET faction = 114 WHERE entry IN (180606,180607,180608);
-- missing spawns added -- Free for all 3 DBS
DELETE FROM game_event_gameobject WHERE guid IN (111,113,115);
DELETE FROM gameobject_battleground WHERE guid IN (111,113,115);
DELETE FROM gameobject WHERE guid IN (111,113,115);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(111,180606,1,1,-8138.58,1525.42,17.2999,6.2308264,0,0,-0.0118117,0.99993,10,10),
(113,180608,1,1,-8138.68,1525.46,17.3969,6.2308264,0,0,-0.0118117,0.99993,10,10),
(115,180607,1,1,-8140.18,1525.19,17.4548,6.2308264,0,0,-0.0118117,0.99993,10,10);
-- spawn GROUPS
-- Merithra's Wake 180604
UPDATE gameobject SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 180604;
DELETE FROM `spawn_group` WHERE id = 19924;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19924, 'Silithus - o.180604 spawn with q.8519', 1, 0, 4003, 0x08);
/*
DELETE FROM `spawn_group_spawn` WHERE id = 19924;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19924, 115864, -1),
(19924, 115865, -1),
(19924, 115866, -1),
(19924, 115867, -1),
(19924, 115868, -1),
(19924, 115869, -1),
(19924, 115870, -1),
(19924, 115871, -1);
*/
DELETE FROM conditions WHERE condition_entry IN (4003); -- free for all 3 DBS
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(4003, 42, 19924, 1, 1, 0, 'Silithus - o.180604 spawn with q.8519');
DELETE FROM worldstate_name WHERE Id=19924;
INSERT INTO worldstate_name(Id, Name) VALUES
(19924,'Silithus - o.180604 spawn with q.8519');
-- Conditions for event "WarEffort - Phase 4 - 10 Hour War" and "WarEffort - Phase 5 - Done"
DELETE FROM conditions WHERE condition_entry IN (2100, 2101);
INSERT INTO conditions (condition_entry, type, VALUE1, VALUE2, VALUE3, VALUE4, flags, comments) VALUES (2100,12,124,0,0,0,0,"Game Event 124 Active");
INSERT INTO conditions (condition_entry, type, VALUE1, VALUE2, VALUE3, VALUE4, flags, comments) VALUES (2101,-2,2099,2100,0,0,0,"Game Event 123 or 124 Active");
