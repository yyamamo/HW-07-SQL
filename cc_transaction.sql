-- View tables
SELECT * FROM card_holder;
SELECT * FROM credit_card;
SELECT * FROM transaction;

-- Join three tables above
SELECT card_holder.id, card_holder.name, cc.card, cc.cardholder_id, trans.id, trans.date, trans.amount, trans.id_merchant
FROM card_holder
JOIN credit_card AS CC
ON card_holder.id=cc.cardholder_id
JOIN transaction AS trans
  ON cc.card = trans.card;
 

