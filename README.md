# README

Bitte setze ein einfaches ERP System mit folgenden Funktionen um:
Folgende Objecte sollen verwaltet werden können (mit Verwalten ist Anlegen, Löschen, Editieren, Anzeigen gemeint):
User
Name
Vorname
Email
Abteilung
Geburtstag (Datetime)
Ist Kunde (Bool)
Auftrag
Kunde (per Relation auf user)
Bearbeiter (Relation auf User)
Auftragnummer
Starttermin
Endtermin
Preis
Währung Preis
Kunde
Adresse
Kontakt (Link auf User)
Authentication mit Pundit und Devise
Indexseite mit Tabelle von allen Einträgen
Pagination mit Pagy
Dynamik mit Hotwire (mit im fischcatch Beispiel)
Layout ala Bootstrap, Seitennavigation mit einfachen Links
Eine Auswertung als Chart:
Aufträge pro Zeit pro User (Balkenchart)

* Ruby version 3.1.3
  bootstrap, devise and pagy included
