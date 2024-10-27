#!perl
#use warnings;
#use strict;
use utf8;
use Encode;

#todo check local config with functions
#todo прочитать конфиг, если он есть локально, и подгрузить необходимые функции
#набор первых функций - напоминалки из файла tasks - задачи

#$bytes = encode('cp866', $string); # перекодировали строку из внутреннего представления в cp1251
#$string = decode('cp1251', $bytes); # и обратно
print(encode('cp866', "Hi, Max! It's a СуперБот!\n\n"));

# echo local tasks or from Gmail, or something else
#codepages :)
$filename = 'tasks.txt';

if (-e $filename) {
    open (FILE, $filename);
        while (<FILE>) {
            chomp;
            ($id, $task, $data) = split(';');
            print "ID: $id\n";
            print "Task number: $task\n";
            print "Note: $data\n";
            print "---------\n";
            }
        close (FILE);
    
print("Today tasks:\n");
}

print("Today emails:\n");

print("\nWhat are you plan to do? ;)\n");
print("\ntest\n");

exit;