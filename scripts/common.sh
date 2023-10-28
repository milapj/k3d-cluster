#!/bin/bash


function section() {
    echo "...$1....";
}

function section_exec() {
    section "$1"
    eval "$2"
}
