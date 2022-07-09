USE constraintstuff;

DROP TABLE IF EXISTS Monster;
DROP TABLE IF EXISTS AttackType;

CREATE TABLE AttackType (
                     TypeID int PRIMARY KEY AUTO_INCREMENT,
                     TypeName varchar(30) NOT NULL UNIQUE
                 );

CREATE TABLE Monster (
                     MonsterID int PRIMARY KEY AUTO_INCREMENT,
                     MonsterName varchar(30) NOT NULL UNIQUE,
                     AttackType int,
                     HitPoints int DEFAULT 100,
                     isMagicResistant bit DEFAULT FALSE,
                     maxDamage float CHECK (maxDamage >=0 AND maxDamage <=50),
                     MonsterBirthDate date
                 );

ALTER TABLE Monster ADD CONSTRAINT FOREIGN KEY (AttackType) REFERENCES AttackType(TypeID);

INSERT INTO AttackType
                     VALUES (1, 'Bite');

INSERT INTO AttackType (TypeName)
                     VALUES ('Tailwhip'),
                            ('Bite'),
                            ('Claw'),
                            ('Firebreath');

INSERT INTO AttackType (TypeName)
                     VALUES ('Sword'),
                            ('Arrow'),
                            ('Claw'),
                            ('Cleaver');

INSERT INTO Monster VALUES (1, 'Goblin', null, null, True, 42, '2020-11-02');
INSERT INTO Monster VALUES (2, 'Dragon', null, null, True, 42, '11-10-2020');
INSERT INTO Monster VALUES (2, 'Dragon', null, null, True, 42, '2020-11-03');
INSERT INTO Monster (MonsterName, AttackType, maxDamage)
                     VALUES ('Flumph', 1, 25);
INSERT INTO Monster (MonsterName, AttackType, maxDamage)
                     VALUES ('Hobgoblin', 123, 25);

INSERT INTO Monster (MonsterName, AttackType, maxDamage)
                     VALUES ('Hobgoblin', 123, 25);