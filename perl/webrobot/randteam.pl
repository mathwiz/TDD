#!/usr/bin/perl -w

@teams = (
"NWE",
"MIA",
"BUF",
"NYJ",
"BAL",
"PIT",
"CLE",
"CIN",
"HOU",
"IND",
"TEN",
"JAX",
"KAN",
"LAC",
"DEN",
"OAK",
"DAL",
"PHI",
"WAS",
"NYG",
"CHI",
"MIN",
"GNB",
"DET",
"NOR",
"CAR",
"ATL",
"TAM",
"LAR",
"SEA",
"SFO",
"ARI"
    );

$t = int(rand(32));
print $teams[$t];
