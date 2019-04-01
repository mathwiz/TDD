#!/usr/bin/perl -w
 
use Tk;
use strict;
 
my $mw = MainWindow->new;
$mw->geometry("200x100");
$mw->title("Text Test");
 
$mw->Text(-background => 'purple', -foreground => 'yellow')->pack(-side => "top");
 
MainLoop;
