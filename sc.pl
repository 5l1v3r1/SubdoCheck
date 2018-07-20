#!/usr/bin/perl

# Subdomain Checker tool by N1ght.Hax0r
use HTTP::Request;
use LWP::UserAgent;


system("clear");

print q{
SubdoCheck ver 1.0

...................--------------| Github :
................../´¯/)----------| https://github.com/N1ght420
................,/¯../-----------| --------------------------
................/.../------------| Contact :
............/´¯/'.'/´¯`·¸--------| N1ghtpe0ple@protonmail.com
........./'/../.-./..../¨¯\------| ---------------------------
........('(...´...´. ¯~/'..')----| Facebook :
.........\...........'...../-----| Putra AR (id = N1ghtpe0ple)
..........\...\........_.·´------| ---------------------------
...........\...........(---------|||||||||||||||||||||||||||||
............\...........\--------|
..........................-------|
--| Author : N1ght.Hax0r   |-----|   GOOD LUCK :)  <----------
--| LETS DO IT!!           |-----|
};
sleep(1);

print "[?]==// Input your Target >> ";
$host = <>;
chomp($host);
print "[*]==// Listing...";
$a = "http://www.ewhois.com/".$host."\/";
$b = LWP::UserAgent->new();
$c = $b->request(HTTP::Request->new(GET=>$a));
$d = $c->content;
if($d =~ m/<span id=\"ip_display\">(.*?)<\/span>/) {

  print "\n [+]==// Host IP : $1 \n";
}

$e = LWP::UserAgent->new();
    $e->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; de-LI; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 (.NET CLR 3.5.30729)');
    $f = "http://www.pagesinventory.com/search/?s=".$host."";
    $g = $e->request(HTTP::Request->new(GET=>$f));
    $h = $g->content;

while($h =~ m/<td><a href=\"\/domain\/(.*?).html\">/g ) {

  print "\n     [+]==// Sub Domain: $1\n";
  sleep(1);
  open(a, ">>SubDo.txt");
print a "http://$1\n";
close(a);

}
print "\n\n[!]==// Result in SubDo.txt\n";
sleep(1);
