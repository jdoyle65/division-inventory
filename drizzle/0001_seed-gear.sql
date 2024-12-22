INSERT INTO gearset (id, name, is_classified)
VALUES (1, 'Striker''s Battlegear', FALSE),
  (2, 'Striker''s Battlegear', TRUE),
  (3, 'Sentry''s Call', FALSE),
  (4, 'Sentry''s Call', TRUE),
  (5, 'Tactician''s Authority', FALSE),
  (6, 'Tactician''s Authority', TRUE),
  (7, 'Path of the Nomad', FALSE),
  (8, 'Path of the Nomad', TRUE),
  (9, 'Predator''s Mark', FALSE),
  (10, 'Predator''s Mark', TRUE),
  (11, 'Hunter''s Faith', FALSE),
  (12, 'Hunter''s Faith', TRUE),
  (13, 'Lone Star', FALSE),
  (14, 'Lone Star', TRUE),
  (15, 'Final Measure', FALSE),
  (16, 'Final Measure', TRUE),
  (17, 'Deadeye', FALSE),
  (18, 'Deadeye', TRUE),
  (19, 'FireCrest', FALSE),
  (20, 'FireCrest', TRUE),
  (21, 'Banshee''s Shadow', FALSE),
  (22, 'Banshee''s Shadow', TRUE),
  (23, 'AlphaBridge', FALSE),
  (24, 'AlphaBridge', TRUE),
  (25, 'Reclaimer', FALSE),
  (26, 'Reclaimer', TRUE),
  (27, 'DeadEYE', FALSE),
  (28, 'DeadEYE', TRUE),
  (29, 'D3-FNC', FALSE),
  (30, 'D3-FNC', TRUE);
--> statement-breakpoint
INSERT INTO gear (id, name, type, is_exotic, gearset_id)
VALUES (1, 'Striker''s Mask', 'mask', FALSE, 1),
  (2, 'Striker''s Body Armor', 'chest', FALSE, 1),
  (3, 'Striker''s Backpack', 'backpack', FALSE, 1),
  (4, 'Striker''s Gloves', 'gloves', FALSE, 1),
  (5, 'Striker''s Holster', 'holster', FALSE, 1),
  (6, 'Striker''s Knee Pads', 'kneepads', FALSE, 1),
  (13, 'Striker''s Mask', 'mask', FALSE, 2),
  (14, 'Striker''s Body Armor', 'chest', FALSE, 2),
  (15, 'Striker''s Backpack', 'backpack', FALSE, 2),
  (16, 'Striker''s Gloves', 'gloves', FALSE, 2),
  (17, 'Striker''s Holster', 'holster', FALSE, 2),
  (18, 'Striker''s Knee Pads', 'kneepads', FALSE, 2),
  (19, 'Sentry''s Call Mask', 'mask', FALSE, 3),
  (
    20,
    'Sentry''s Call Body Armor',
    'chest',
    FALSE,
    3
  ),
  (
    21,
    'Sentry''s Call Backpack',
    'backpack',
    FALSE,
    3
  ),
  (22, 'Sentry''s Call Gloves', 'gloves', FALSE, 3),
  (
    23,
    'Sentry''s Call Holster',
    'holster',
    FALSE,
    3
  ),
  (
    24,
    'Sentry''s Call Knee Pads',
    'kneepads',
    FALSE,
    3
  ),
  (25, 'Sentry''s Call Mask', 'mask', FALSE, 4),
  (
    26,
    'Sentry''s Call Body Armor',
    'chest',
    FALSE,
    4
  ),
  (
    27,
    'Sentry''s Call Backpack',
    'backpack',
    FALSE,
    4
  ),
  (28, 'Sentry''s Call Gloves', 'gloves', FALSE, 4),
  (
    29,
    'Sentry''s Call Holster',
    'holster',
    FALSE,
    4
  ),
  (
    30,
    'Sentry''s Call Knee Pads',
    'kneepads',
    FALSE,
    4
  ),
  (
    7,
    'NinjaBike Messenger Bag',
    'backpack',
    TRUE,
    NULL
  ),
  (8, 'Fero''s Mask', 'mask', TRUE, NULL),
  (
    9,
    'Barrett''s Bulletproof Vest',
    'chest',
    TRUE,
    NULL
  ),
  (
    10,
    'Shortbow Championship Pads',
    'kneepads',
    TRUE,
    NULL
  ),
  (
    11,
    'Colonel Bliss''s Holster',
    'holster',
    TRUE,
    NULL
  ),
  (12, 'Skulls MC Gloves', 'gloves', TRUE, NULL);
