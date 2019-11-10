begin;
	create table location_stats (
		site           integer        not null                 check(site > 0),

		day            date           not null,
		location       varchar        not null,
		count          int            not null,

		foreign key (site) references sites(id) on delete restrict on update restrict
	);
	create index "location_stats#site#day"          on location_stats(site, day);
	create index "location_stats#site#day#location" on location_stats(site, day, location);

	create table iso_3166_1 (
		name   varchar,
		alpha2 varchar
	);
	create index "iso_3166_1#alpha2" on iso_3166_1(alpha2);
	insert into iso_3166_1 (name, alpha2) values
		('Ascension Island', 'AC'),
		('Andorra', 'AD'),
		('United Arab Emirates', 'AE'),
		('Afghanistan', 'AF'),
		('Antigua and Barbuda', 'AG'),
		('Anguilla', 'AI'),
		('Albania', 'AL'),
		('Armenia', 'AM'),
		('Netherlands Antilles', 'AN'),
		('Angola', 'AO'),
		('Antarctica', 'AQ'),
		('Argentina', 'AR'),
		('American Samoa', 'AS'),
		('Austria', 'AT'),
		('Australia', 'AU'),
		('Aruba', 'AW'),
		('Åland Islands', 'AX'),
		('Azerbaijan', 'AZ'),
		('Bosnia and Herzegovina', 'BA'),
		('Barbados', 'BB'),
		('Bangladesh', 'BD'),
		('Belgium', 'BE'),
		('Burkina Faso', 'BF'),
		('Bulgaria', 'BG'),
		('Bahrain', 'BH'),
		('Burundi', 'BI'),
		('Benin', 'BJ'),
		('Saint Barthélemy', 'BL'),
		('Bermuda', 'BM'),
		('Brunei Darussalam', 'BN'),
		('Bolivia', 'BO'),
		('Bonaire, Sint Eustatius and Saba', 'BQ'),
		('Brazil', 'BR'),
		('Bahamas', 'BS'),
		('Bhutan', 'BT'),
		('Burma', 'BU'),
		('Bouvet Island', 'BV'),
		('Botswana', 'BW'),
		('Belarus', 'BY'),
		('Belize', 'BZ'),
		('Canada', 'CA'),
		('Cocos (Keeling) Islands', 'CC'),
		('Democratic Republic of thje Congo', 'CD'),
		('Central African Republic', 'CF'),
		('Congo', 'CG'),
		('Switzerland', 'CH'),
		('Côte d''Ivoire', 'CI'),
		('Cook Islands', 'CK'),
		('Chile', 'CL'),
		('Cameroon', 'CM'),
		('China', 'CN'),
		('Colombia', 'CO'),
		('Clipperton Island', 'CP'),
		('Costa Rica', 'CR'),
		('Serbia and Montenegro', 'CS'),
		('Cuba', 'CU'),
		('Cabo Verde', 'CV'),
		('Curaçao', 'CW'),
		('Christmas Island', 'CX'),
		('Cyprus', 'CY'),
		('Czechia', 'CZ'),
		('Germany', 'DE'),
		('Diego Garcia', 'DG'),
		('Djibouti', 'DJ'),
		('Denmark', 'DK'),
		('Dominica', 'DM'),
		('Dominican Republic', 'DO'),
		('Benin', 'DY'),
		('Algeria', 'DZ'),
		('Ceuta, Melilla', 'EA'),
		('Ecuador', 'EC'),
		('Estonia', 'EE'),
		('Egypt', 'EG'),
		('Western Sahara', 'EH'),
		('Eritrea', 'ER'),
		('Spain', 'ES'),
		('Ethiopia', 'ET'),
		('European Union', 'EU'),
		('Estonia', 'EW'),
		('Eurozone', 'EZ'),
		('Finland', 'FI'),
		('Fiji', 'FJ'),
		('Falkland Islands (Malvinas)', 'FK'),
		('Liechtenstein', 'FL'),
		('Micronesia', 'FM'),
		('Faroe Islands', 'FO'),
		('France', 'FR'),
		('France, Metropolitan', 'FX'),
		('Gabon', 'GA'),
		('United Kingdom', 'GB'),
		('Grenada', 'GD'),
		('Georgia', 'GE'),
		('French Guiana', 'GF'),
		('Guernsey', 'GG'),
		('Ghana', 'GH'),
		('Gibraltar', 'GI'),
		('Greenland', 'GL'),
		('Gambia', 'GM'),
		('Guinea', 'GN'),
		('Guadeloupe', 'GP'),
		('Equatorial Guinea', 'GQ'),
		('Greece', 'GR'),
		('South Georgia and the South Sandwich Islands', 'GS'),
		('Guatemala', 'GT'),
		('Guam', 'GU'),
		('Guinea-Bissau', 'GW'),
		('Guyana', 'GY'),
		('Hong Kong', 'HK'),
		('Heard Island and McDonald Islands', 'HM'),
		('Honduras', 'HN'),
		('Croatia', 'HR'),
		('Haiti', 'HT'),
		('Hungary', 'HU'),
		('Canary Islands', 'IC'),
		('Indonesia', 'ID'),
		('Ireland', 'IE'),
		('Israel', 'IL'),
		('Isle of Man', 'IM'),
		('India', 'IN'),
		('British Indian Ocean Territory', 'IO'),
		('Iraq', 'IQ'),
		('Iran', 'IR'),
		('Iceland', 'IS'),
		('Italy', 'IT'),
		('Jamaica', 'JA'),
		('Jersey', 'JE'),
		('Jamaica', 'JM'),
		('Jordan', 'JO'),
		('Japan', 'JP'),
		('Kenya', 'KE'),
		('Kyrgyzstan', 'KG'),
		('Cambodia', 'KH'),
		('Kiribati', 'KI'),
		('Comoros', 'KM'),
		('Saint Kitts and Nevis', 'KN'),
		('North Korea', 'KP'),
		('South Korea', 'KR'),
		('Kuwait', 'KW'),
		('Cayman Islands', 'KY'),
		('Kazakhstan', 'KZ'),
		('Lao People''s Democratic Republic', 'LA'),
		('Lebanon', 'LB'),
		('Saint Lucia', 'LC'),
		('Libya Fezzan', 'LF'),
		('Liechtenstein', 'LI'),
		('Sri Lanka', 'LK'),
		('Liberia', 'LR'),
		('Lesotho', 'LS'),
		('Lithuania', 'LT'),
		('Luxembourg', 'LU'),
		('Latvia', 'LV'),
		('Libya', 'LY'),
		('Morocco', 'MA'),
		('Monaco', 'MC'),
		('Moldova, Republic of', 'MD'),
		('Montenegro', 'ME'),
		('Saint Martin (French part)', 'MF'),
		('Madagascar', 'MG'),
		('Marshall Islands', 'MH'),
		('North Macedonia', 'MK'),
		('Mali', 'ML'),
		('Myanmar', 'MM'),
		('Mongolia', 'MN'),
		('Macao', 'MO'),
		('Northern Mariana Islands', 'MP'),
		('Martinique', 'MQ'),
		('Mauritania', 'MR'),
		('Montserrat', 'MS'),
		('Malta', 'MT'),
		('Mauritius', 'MU'),
		('Maldives', 'MV'),
		('Malawi', 'MW'),
		('Mexico', 'MX'),
		('Malaysia', 'MY'),
		('Mozambique', 'MZ'),
		('Namibia', 'NA'),
		('New Caledonia', 'NC'),
		('Niger', 'NE'),
		('Norfolk Island', 'NF'),
		('Nigeria', 'NG'),
		('Nicaragua', 'NI'),
		('Netherlands', 'NL'),
		('Norway', 'NO'),
		('Nepal', 'NP'),
		('Nauru', 'NR'),
		('Neutral Zone', 'NT'),
		('Niue', 'NU'),
		('New Zealand', 'NZ'),
		('Oman', 'OM'),
		('Escape code', 'OO'),
		('Panama', 'PA'),
		('Peru', 'PE'),
		('French Polynesia', 'PF'),
		('Papua New Guinea', 'PG'),
		('Philippines', 'PH'),
		('Philippines', 'PI'),
		('Pakistan', 'PK'),
		('Poland', 'PL'),
		('Saint Pierre and Miquelon', 'PM'),
		('Pitcairn', 'PN'),
		('Puerto Rico', 'PR'),
		('Palestine, State of', 'PS'),
		('Portugal', 'PT'),
		('Palau', 'PW'),
		('Paraguay', 'PY'),
		('Qatar', 'QA'),
		('Argentina', 'RA'),
		('Bolivia; Botswana', 'RB'),
		('China', 'RC'),
		('Réunion', 'RE'),
		('Haiti', 'RH'),
		('Indonesia', 'RI'),
		('Lebanon', 'RL'),
		('Madagascar', 'RM'),
		('Niger', 'RN'),
		('Romania', 'RO'),
		('Philippines', 'RP'),
		('Serbia', 'RS'),
		('Russian Federation', 'RU'),
		('Rwanda', 'RW'),
		('Saudi Arabia', 'SA'),
		('Solomon Islands', 'SB'),
		('Seychelles', 'SC'),
		('Sudan', 'SD'),
		('Sweden', 'SE'),
		('Finland', 'SF'),
		('Singapore', 'SG'),
		('Saint Helena, Ascension and Tristan da Cunha', 'SH'),
		('Slovenia', 'SI'),
		('Svalbard and Jan Mayen', 'SJ'),
		('Slovakia', 'SK'),
		('Sierra Leone', 'SL'),
		('San Marino', 'SM'),
		('Senegal', 'SN'),
		('Somalia', 'SO'),
		('Suriname', 'SR'),
		('South Sudan', 'SS'),
		('Sao Tome and Principe', 'ST'),
		('USSR', 'SU'),
		('El Salvador', 'SV'),
		('Sint Maarten (Dutch part)', 'SX'),
		('Syrian Arab Republic', 'SY'),
		('Eswatini', 'SZ'),
		('Tristan da Cunha', 'TA'),
		('Turks and Caicos Islands', 'TC'),
		('Chad', 'TD'),
		('French Southern Territories', 'TF'),
		('Togo', 'TG'),
		('Thailand', 'TH'),
		('Tajikistan', 'TJ'),
		('Tokelau', 'TK'),
		('Timor-Leste', 'TL'),
		('Turkmenistan', 'TM'),
		('Tunisia', 'TN'),
		('Tonga', 'TO'),
		('East Timor', 'TP'),
		('Turkey', 'TR'),
		('Trinidad and Tobago', 'TT'),
		('Tuvalu', 'TV'),
		('Taiwan', 'TW'),
		('Tanzania', 'TZ'),
		('Ukraine', 'UA'),
		('Uganda', 'UG'),
		('United Kingdom', 'UK'),
		('United States Minor Outlying Islands', 'UM'),
		('United Nations', 'UN'),
		('United States of America', 'US'),
		('Uruguay', 'UY'),
		('Uzbekistan', 'UZ'),
		('Holy See', 'VA'),
		('Saint Vincent and the Grenadines', 'VC'),
		('Venezuela', 'VE'),
		('Virgin Islands (British)', 'VG'),
		('Virgin Islands (U.S.)', 'VI'),
		('Viet Nam', 'VN'),
		('Vanuatu', 'VU'),
		('Wallis and Futuna', 'WF'),
		('Grenada', 'WG'),
		('Saint Lucia', 'WL'),
		('Samoa', 'WS'),
		('Saint Vincent', 'WV'),
		('Yemen', 'YE'),
		('Mayotte', 'YT'),
		('Yugoslavia', 'YU'),
		('Venezuela', 'YV'),
		('South Africa', 'ZA'),
		('Zambia', 'ZM'),
		('Zaire', 'ZR'),
		('Zimbabwe', 'ZW');

	insert into version values ('2019-11-08-2-location_stats');
commit;
