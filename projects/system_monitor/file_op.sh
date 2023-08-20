#!/bin/bash

: '
    Title: FILE operations
    AUTHOR: Pranjal Patil
    DATE: 20TH AUGUST, 2023
'


function create_file {
    echo $1
    echo $2
    touch $1
}


function list_files_directories {
    echo "..........................."
    echo "LIST OF FILES AND DIRECTORIES"

    ls -al
}

function check_file_present {
    ls -al "$1"
}

function remove_file {
    rm -rf "$1"
}