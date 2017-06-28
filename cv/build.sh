#!/bin/bash

pandoc --email-obfuscation=references --write=html5 -o AvrahamBernstein-CV.html AvrahamBernstein-CV.md
pandoc --email-obfuscation=references --write=docx -o AvrahamBernstein-CV.docx AvrahamBernstein-CV.md

