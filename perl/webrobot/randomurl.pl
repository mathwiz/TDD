#!/usr/bin/perl -w

@teams = (
"NWE",
"MIA",
"BUF",
"NYJ",
"rav",
"PIT",
"CLE",
"CIN",
"htx",
"clt",
"oti",
"JAX",
"KAN",
"sdg",
"DEN",
"rai",
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
"ram",
"SEA",
"SFO",
"crd"
    );

$t = int(rand(32));
$s = int(rand(16)) + 2002;
$domain = "www.pro-football-reference.com";

$url  = "https://" . $domain . "/teams/" . lc($teams[$t]) . "/" . $s . ".htm";
print $url;
