CREATE TABLE account(
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(20),
   balance DECIMAL(10,2)
);
INSERT INTO account (name,balance) VALUES
("Bob",500),
("Andrew",600),
("Charlie",1000);
SELECT*FROM account;

START TRANSACTION;
UPDATE acccount SET balance=balance-50 WHERE id=1;
UPDATE acccount SET balance=balance+50 WHERE id=2;
COMMIT;
START TRANSACTION;
UPDATE acccount SET balance=balance-100 WHERE id=1;
UPDATE acccount SET balance=balance+100 WHERE id=3;
ROLLBACK;
--savepoint
START TRANSACTION;
UPDATE acccount SET balance=balance+1000 WHERE id=1;
SAVEPOINT after_wallet_topup;
UPDATE acccount SET balance=balance+10 WHERE id=1;
ROLLBACK TO after_wallet_topup;
COMMIT;