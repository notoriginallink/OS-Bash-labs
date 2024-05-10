@echo off
systeminfo | find "Total Physical Memory" > memory_info.txt
systeminfo | find "Available Physical Memory" >> memory_info.txt