CREATE TABLE test_dev_users (
  `user_id`                         int(11) unsigned NOT NULL,
  `uuid`                            varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_sk`                         int(8) unsigned NOT NULL DEFAULT '0',
  `country_code3`                   varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '---',
PRIMARY KEY (user_id),
  UNIQUE KEY `idx_uuid` (`uuid`),
  KEY `idx_date` (`date_sk`),
  KEY `idx_country` (`country_code3`),
  KEY `idx_date_country` (`date_sk`,`country_code3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO test_dev_users VALUES (1,'aaaaaa', 20170103, 'ITA');
INSERT INTO test_dev_users VALUES (2,'abaaaa', 20170104, 'DEU');
INSERT INTO test_dev_users VALUES (3,'abcaaa', 20170104, 'POR');
