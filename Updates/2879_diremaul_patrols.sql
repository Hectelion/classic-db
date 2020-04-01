DELETE FROM creature WHERE guid=134805;

DELETE FROM creature_movement WHERE id IN (134802, 134811, 134821, 134827, 134828, 134835);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(134802, 1, 310.8415, -13.01986, -3.887124, 3.473205, 30000, 0),
(134802, 2, 303.7117, -25.2759, -3.8869, 100, 0, 0),
(134802, 3, 301.4661, -86.08256, -3.888566, 100, 0, 0),
(134802, 4, 303.9529, -103.7906, -3.886538, 100, 0, 0),
(134802, 5, 328.6918, -108.4514, -3.886415, 100, 0, 0),
(134802, 6, 349.4499, -113.0719, -3.885886, 100, 0, 0),
(134802, 7, 466.92, -113.09, -3.8857, 100, 0, 0),
(134802, 8, 468.33, 3.67, -3.9162, 100, 0, 0),
(134802, 9, 440.9338, 3.172982, -13.66713, 100, 0, 0),
(134802, 10, 417.5935, 2.578588, -24.45984, 100, 0, 0),
(134802, 11, 390.2945, 2.087241, -25.32607, 100, 0, 0),
(134802, 12, 354.146, 1.931919, -24.60496, 100, 0, 0),
(134802, 13, 336.8683, 3.981493, -20.15593, 100, 0, 0),
(134802, 14, 309.03, 4.14, -3.8842, 100, 0, 0),
(134811, 1, 316.9453, 239.888, 11.20933, 6.2792, 30000, 0),
(134811, 2, 331.7433, 276.5974, 11.21585, 100, 0, 0),
(134811, 3, 342.327, 289.1291, 11.21128, 100, 0, 0),
(134811, 4, 350.7163, 306.4684, 11.20679, 100, 0, 0),
(134811, 5, 368.9945, 314.2592, 11.20922, 1.727876, 30000, 0),
(134811, 6, 350.7163, 306.4684, 11.20679, 100, 0, 0),
(134811, 7, 342.327, 289.1291, 11.21128, 100, 0, 0),
(134811, 8, 331.7433, 276.5974, 11.21585, 100, 0, 0),
(134821, 1, 420.708, 212.9344, 11.21478, 4.02882, 30000, 0),
(134821, 2, 387.1797, 212.2057, 11.21582, 100, 0, 0),
(134821, 3, 361.1935, 196.9998, 11.20878, 100, 0, 0),
(134821, 4, 320.3815, 206.4666, 11.19609, 100, 0, 0),
(134821, 5, 321.861, 254.983, 11.22053, 100, 0, 0),
(134821, 6, 333.524, 296.2137, 11.20589, 100, 0, 0),
(134821, 7, 381.2769, 298.196, 11.21323, 100, 0, 0),
(134821, 8, 421.0791, 298.05, 11.19867, 100, 0, 0),
(134821, 9, 436.7516, 277.5142, 11.20312, 100, 0, 0),
(134821, 10, 435.6283, 231.2509, 11.21427, 100, 0, 0),
(134827, 1, 290.0000, 43.9366, -3.8463, 4.8869, 30000, 0),
(134827, 2, 301.6180, 48.9438, -3.8854, 100, 0, 0),
(134827, 3, 310.5084, 66.3251, -3.95944, 100, 0, 0),
(134827, 4, 304.0981, 100.2223, -3.945702, 100, 0, 0),
(134827, 5, 337.1207, 114.6671, -3.887024, 100, 0, 0),
(134827, 6, 337.5071, 135.7398, -2.584142, 100, 0, 0),
(134827, 7, 336.8394, 162.3914, 2.854744, 100, 0, 0),
(134827, 8, 365.1085, 180.9932, 2.848987, 100, 0, 0),
(134827, 9, 367.9767, 181.0715, 2.849024, 5.009095, 30000, 0),
(134827, 10, 365.1085, 180.9932, 2.848987, 100, 0, 0),
(134827, 11, 336.8394, 162.3914, 2.854744, 100, 0, 0),
(134827, 12, 337.5071, 135.7398, -2.584142, 100, 0, 0),
(134827, 13, 337.1207, 114.6671, -3.887024, 100, 0, 0),
(134827, 14, 304.0981, 100.2223, -3.945702, 100, 0, 0),
(134827, 15, 310.5084, 66.3251, -3.95944, 100, 0, 0),
(134827, 16, 301.6180, 48.9438, -3.8854, 100, 0, 0),
(134828, 1, 386.0884, 170.6894, 2.853713, 100, 0, 0),
(134828, 2, 406.1252, 166.7013, 2.848627, 100, 0, 0),
(134828, 3, 437.4459, 166.537, 2.852234, 100, 0, 0),
(134828, 4, 448.6441, 144.6599, 0.574469, 100, 30000, 0),
(134828, 5, 437.4459, 166.537, 2.852234, 100, 0, 0),
(134828, 6, 406.1252, 166.7013, 2.848627, 100, 0, 0),
(134828, 7, 386.0884, 170.6894, 2.853713, 100, 0, 0),
(134828, 8, 387.2497, 210.4741, 11.21666, 100, 0, 0),
(134828, 9, 400.0955, 225.8664, 11.20891, 100, 0, 0),
(134828, 10, 416.4841, 235.2237, 11.20769, 100, 0, 0),
(134828, 11, 440.2, 245.2043, 11.21651, 100, 0, 0),
(134828, 12, 440.0931, 269.8977, 11.20802, 100, 0, 0),
(134828, 13, 429.3542, 293.1758, 11.19691, 100, 0, 0),
(134828, 14, 401.9168, 300.2656, 11.20139, 100, 0, 0),
(134828, 15, 387.4333, 312.5773, 11.21954, 100, 0, 0),
(134828, 16, 384.5705, 356.7738, 2.536385, 100, 0, 0),
(134828, 17, 387.4333, 312.5773, 11.21954, 100, 0, 0),
(134828, 18, 383.8174, 301.304, 11.20963, 100, 0, 0),
(134828, 19, 401.9168, 300.2656, 11.20139, 100, 0, 0),
(134828, 20, 429.3542, 293.1758, 11.19691, 100, 0, 0),
(134828, 21, 440.0931, 269.8977, 11.20802, 100, 0, 0),
(134828, 22, 440.2, 245.2043, 11.21651, 100, 0, 0),
(134828, 23, 416.4841, 235.2237, 11.20769, 100, 0, 0),
(134828, 24, 400.0955, 225.8664, 11.20891, 100, 0, 0),
(134828, 25, 387.2497, 210.4741, 11.21666, 100, 0, 0),
(134835, 1, 369.5867, 196.7594, 11.20979, 1.6375, 30000, 0),
(134835, 2, 371.5126, 203.8084, 11.20897, 100, 0, 0),
(134835, 3, 370.4687, 227.3513, 11.20539, 100, 0, 0),
(134835, 4, 357.2663, 241.5505, 11.19473, 100, 0, 0),
(134835, 5, 316.9453, 239.888, 11.20933, 6.2792, 30000, 0),
(134835, 6, 357.2663, 241.5505, 11.19473, 100, 0, 0),
(134835, 7, 370.4687, 227.3513, 11.20539, 100, 0, 0),
(134835, 8, 371.5126, 203.8084, 11.20897, 100, 0, 0);

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(134831, 134810, 3), -- Gordok Brute -> Gordok Brute
(134857, 134810, 3), -- Gordok Mage-Lord -> Gordok Brute
(134869, 134810, 3), -- Gordok Mage-Lord -> Gordok Brute
(134819, 134817, 3), -- Gordok Brute -> Gordok Brute
(134862, 134817, 3), -- Gordok Mage-Lord -> Gordok Brute
(134870, 134817, 3), -- Gordok Mage-Lord -> Gordok Brute
(134838, 134825, 3), -- Gordok Mage-Lord -> Gordok Brute
(134865, 134825, 3), -- Gordok Mage-Lord -> Gordok Brute
(138251, 134787, 3), -- Gordok Mastiff -> Gordok Brute
(138286, 134787, 3), -- Gordok Mastiff -> Gordok Brute
(138287, 134787, 3), -- Gordok Mastiff -> Gordok Brute
(138266, 134791, 3), -- Gordok Mastiff -> Gordok Brute
(138267, 134791, 3), -- Gordok Mastiff -> Gordok Brute
(138268, 134791, 3), -- Gordok Mastiff -> Gordok Brute
(134897, 138677, 3), -- Gordok Warlock -> Gordok Reaver
(134909, 138678, 3), -- Gordok Warlock -> Gordok Reaver
(134911, 134910, 3), -- Gordok Warlock -> Gordok Warlock
(134906, 134907, 3), -- Gordok Warlock -> Gordok Warlock
(134904, 134905, 3), -- Gordok Warlock -> Gordok Warlock
(134908, 138689, 3), -- Gordok Warlock -> Gordok Reaver
(134898, 134899, 3), -- Gordok Warlock -> Gordok Warlock
(134903, 138681, 3), -- Gordok Warlock -> Gordok Reaver
(134901, 138690, 3), -- Gordok Warlock -> Gordok Reaver
(138683, 138682, 3), -- Gordok Reaver -> Gordok Reaver
(138685, 138684, 3), -- Gordok Reaver -> Gordok Reaver
(134902, 138684, 3), -- Gordok Warlock -> Gordok Reaver
(138687, 138686, 3), -- Gordok Reaver -> Gordok Reaver
(134900, 138686, 3), -- Gordok Warlock -> Gordok Reaver
(134880, 134879, 3), -- Gordok Captain -> Gordok Captain
(134881, 134875, 3), -- Gordok Captain -> Gordok Captain
(138691, 134878, 3), -- Gordok Reaver -> Gordok Captain
(134863, 134878, 3), -- Gordok Mage-Lord -> Gordok Captain
(138277, 138275, 515), -- Gordok Mastiff -> Gordok Mastiff
(138276, 138275, 515), -- Gordok Mastiff -> Gordok Mastiff
(138283, 134828, 515), -- Gordok Mastiff -> Gordok Brute
(138284, 134828, 515); -- Gordok Mastiff -> Gordok Brute

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid IN (134802, 134811, 134821, 134827, 134828, 134835);
UPDATE creature SET position_x=387.2497, position_y=210.4741, position_z=11.21666 WHERE guid=134828;
UPDATE creature SET position_x=369.5867, position_y=196.7594, position_z=11.20979, orientation=1.6375 WHERE guid=134835;

UPDATE creature SET MovementType=0, spawndist=0 WHERE guid IN (138276, 138277, 138283, 138284);
UPDATE creature SET position_x=389.837, position_y=212.823, position_z=11.2058 WHERE guid=138283;
UPDATE creature SET position_x=389.994, position_y=207.727, position_z=11.2114 WHERE guid=138284;
