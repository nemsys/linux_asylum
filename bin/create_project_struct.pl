#!/usr/bin/perl

use 5.010;
use Cwd;

create_project_paths();


#////////////////// create_project_paths() //////////////////
=head2 create_project_paths()
    DESCRIPTION:
        Creates (if not present) a project folder structure in the directory from where is called.
    CALL    :
        create_project_paths()
    ARGS    :

    RESULT  :
        Folders being created are:
            |code
            |  lib
            |data
            |  row
            |log
            |index

=cut
sub create_project_paths{
    # the $config hashref, thought redundant, is used  the code to be compatible
    # with the sublime text snippet perl_start.sublime-snippet
    my $config = {};

    # set and auto create project BASE_PATH, if it is not present:
    $config->{BASE_PATH} = getcwd;

    # code folder - stores scripts and other files used by scripts
    $config->{CODE_PATH} = $config->{BASE_PATH}.'/code/';
    mkdir $config->{CODE_PATH} unless -d $config->{CODE_PATH};

    # custom lib folder - stores custom modules used in project
    $config->{LIB_PATH} = $config->{CODE_PATH}.'/lib/';
    mkdir $config->{LIB_PATH} unless -d $config->{LIB_PATH};

    # main data folder
    $config->{DATA_PATH} = $config->{BASE_PATH}.'/data/';
    mkdir $config->{DATA_PATH} unless -d $config->{DATA_PATH};

    # data folder for row files
    $config->{DATA_ROW_PATH} = $config->{DATA_PATH}.'/row/';
    mkdir $config->{DATA_ROW_PATH} unless -d $config->{DATA_ROW_PATH};

    # log folder
    $config->{LOG_PATH} = $config->{BASE_PATH}.'/log/';
    mkdir $config->{LOG_PATH} unless -d $config->{LOG_PATH};

    # index folder
    $config->{INDEX_PATH} = $config->{BASE_PATH}.'/index/';
    mkdir $config->{INDEX_PATH} unless -d $config->{INDEX_PATH};
};
#\\\\\\\\\\\\\\\\\\ create_project_paths() \\\\\\\\\\\\\\\\\\


