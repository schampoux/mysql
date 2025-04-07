select player_id, min(event_date) as first_login from activity_table group by player_id;

