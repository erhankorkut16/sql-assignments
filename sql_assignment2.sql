--- 1.How many tracks does each album have? Your solution should include Album id and its number of tracks sorted from highest to lowest
select * from tracks;
select AlbumId,count(*) as number_of_tracks 
from tracks group by AlbumId order by number_of_tracks DESC; 

-- 2.Find the album title of the tracks. Your solution should include track name and its album title.

select t.name,a.Title from tracks as t INNER join albums as a
on t.AlbumId=a.AlbumId; 

-- 3. Find the minimum duration of the track in each album. Your solution should include album id, album title and duration of the track sorted from highest to lowest.

SELECT a.AlbumId, a.Title,min(t.Milliseconds) as album_duration from tracks as t LEFT JOIN albums as a
on t.AlbumId=a.AlbumId GROUP by a.AlbumId ORDER by album_duration DESC;

-- 4. Find the total duration of each album. Your solution should include album id, album title and its total duration sorted from highest to lowest.

SELECT a.Title,a.AlbumId,sum(t.Milliseconds) as total_duration 
from tracks as t left JOIN albums as a
on t.AlbumId=a.AlbumId GROUP by t.AlbumId order by total_duration DESC;

-- 5. Based on the previous question, find the albums whose total duration is higher than 70 minutes. Your solution should include album title and total duration
select a.Title,sum(t.Milliseconds) as total_duration 
from albums as a left join tracks as t 
on a.AlbumId=t.AlbumId GROUP by a.AlbumId 
having total_duration > 4200000 
ORDER by total_duration DESC;