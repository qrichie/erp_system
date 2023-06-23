# README

Bitte setze ein einfaches ERP System mit folgenden Funktionen um:
Folgende Objecte sollen verwaltet werden können (mit Verwalten ist Anlegen, Löschen, Editieren, Anzeigen gemeint):
User:
Name, Vorname, Email, Geburtstag (Datetime), Ist Kunde (Bool)
Auftrag:
Kunde (per Relation auf user), Bearbeiter (Relation auf User), Auftragnummer, Starttermin, Endtermin, Preis, Währung Preis
Kunde:
Adresse, Kontakt (Link auf User)
Bearbeiter:
Abteilung, Kontakt (link auf User)
Authentication mit Pundit und Devise
Indexseite mit Tabelle von allen Einträgen
Pagination mit Pagy
Dynamik mit Hotwire (mit im fischcatch Beispiel)
Layout ala Bootstrap, Seitennavigation mit einfachen Links

Verbesserungen:
  ✔️ in routes -> nutzen von only: [show] 
	- customers controller -> selbe id für customer und user 
	✔️ in controllern mehr mit set_object arbeiten
	- translations erklären und einbauen
	- authorize vs. policy_scope in controller erklären
	✔️ orders controller -> in new order.processor_id vs. build erklären 
	✔️ processors controller -> selbe id für customer und user 
	✔️ order model -> add_order_to_user ?? wahrscheinlich besser build 
	✔️ processor model -> foreign_key wahrscheinlich überflüssig 
	x user model -> after create besser durch ein während create ersetzen (before_create funktioniert nicht)
	✔️ generell in views: keine datenbankqueries ! (zb in customers index) 
	? html/css ids -> nur wo sinnvoll (orderstable in customers index) 
	- Helper in models nutzen (customers show, first_name and last_name)
	✔️ form_with in views -> model angeben reicht wenn alles nach rails standard (orders _form)
	- nutzen von simple_form generell in views
	/ Turbo-Frames nutzen wie im Beispiel (-> bisher nicht geklappt)
	✔️ In views (orders show zB) nicht jedes mal Flash einbauen sondern ins Grundlayout
	x user registrations new -> validierung muss in ActiveRecord ! (von devise automatisch erstellt)
	- generell user zurückbauen (nur anlegen)
	
	- Große Aufgabe: Postgres nutzen statt sqlite3
		✔️ Installation 
		✔️ database.yml nutzen (-> wurde angepasst)




* Ruby version 3.1.3
  bootstrap, devise and pagy included
