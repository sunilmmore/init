#!/usr/bin/env bash
nmap --script ssh2-enum-algos -sV -p $1 $2