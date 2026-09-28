select actor_id, director_id
from ActorDirector
group by actor_id, director_id
having count(timestamp) >=3;




SQL creates a separate group for every unique combination of actor + director.
