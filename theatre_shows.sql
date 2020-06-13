-- Query 1: Visualizzare titolo dello spettacolo e la somma del prezzo del biglietto di tutti gli eventi(uguali tra loro per titolo) ordinati in ordine di prezzo totale.
SELECT s.ShowTitle, SUM(s.TicketPrice) AS TotalPrice
FROM Events e, Shows s
WHERE e.EventShow = s.ShowID
GROUP BY s.ShowTitle
ORDER BY TotalPrice DESC; 

-- Query 2: Visualizzare Titolo, descrizione, compagnia teatrale, teatro con indicazioni stradali, data, ora e prezzo biglietto riguardo gli eventi che si svolgeranno nel mese di luglio 2020 ordinati per data e orario.
SELECT 	s.ShowTitle, s.ShowDescription, tc.CompanyName,t.TheatreName, t.TheatreLocation, c.CityName, e.EventDateTime , s.TicketPrice
FROM Cities c, Theatres t, TheatreCompanies tc, Shows s, Events e
WHERE e.EventTheatre = t.TheatreID AND e.EventShow = s.ShowID  AND s.ShowCompany = tc.CompanyID AND t.City = c.CityID AND e.EventDateTime LIKE '2020-07-%'
ORDER BY e.EventDateTime;