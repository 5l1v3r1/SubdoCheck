#!/usr/bin/perl

# Subdomain Checker tool by N1ght.Hax0r
# Gausah pake recode recode segala ya kontol

use HTTP::Request;
use LWP::UserAgent;


system("clear");

print q{
[*]=============================[*]
[*]==//  Subdomain Checker  //==[*]
[*]==//       Ver.2.0       //==[*]
[*]=============================[*]
[*]==//  By >> N1ght.Hax0r  //==[*]
[*]==//  FB >> Putra AR     //==[*]
[*]=============================[*]
};
sleep(1);

print "\n[?]==// Input your Target >> ";
$host = <>;
chomp($host);
print "[*]==// Listing...\n";
$a = "http://www.ewhois.com/".$host."\/";
$b = LWP::UserAgent->new();
$c = $b->request(HTTP::Request->new(GET=>$a));
$d = $c->content;
if($d =~ m/<span id=\"ip_display\">(.*?)<\/span>/) {

  print "[+]==// Host IP : $1 \n";
}

$e = LWP::UserAgent->new();
    $e->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; de-LI; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 (.NET CLR 3.5.30729)');
    $f = "http://www.pagesinventory.com/search/?s=".$host."";
    $g = $e->request(HTTP::Request->new(GET=>$f));
    $h = $g->content;

while($h =~ m/<td><a href=\"\/domain\/(.*?).html\">/g ) {

  print "[+]==// Sub Domain: $1\n";
  sleep(1);
  open(a, ">>SubDo.txt");
print a "http://$1\n";
close(a);

}
print "\n\n[!]==// Result in SubDo.txt\n";
sleep(1);
