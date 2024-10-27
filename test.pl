#!perl
#use warnings;
#use strict;

#todo check local config with functions
#todo прочитать конфиг, если он есть локально, и подгрузить необходимые функции
#набор первых функций - напоминалки из файла tasks - задачи

print("Hi, Max! It's a SuperBot!\n\n");

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