#!/usr/bin/perl

$to = 'rashimujumdar@gmail.com';
$from = 'pnkgharde@hotmail.com';
$subject = 'Test mail';
$massage = 'This is mail';

open(MAIL, "|/usr/sbin/sendmail -t");

#Email Header
print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n\n";

#Email Body
print MAIL $message;

close(MAIL);
print "Email sent Successfully\n";