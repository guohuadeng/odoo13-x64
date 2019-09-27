title init db GreenOdoo13 x64 fast - www.sunpop.cn
rd /s/q .\odoofile
md odoofile
echo sunpop.cn > .\odoofile\sunpop.cn
cd runtime\pgsql\bin
rd /s/q ..\data
initdb.exe -D ..\data -E UTF8
pg_ctl -D ..\data -l logfile start
echo create user: all input 'odoo'
createuser --createdb --no-createrole --no-superuser --pwprompt odoo
cd ..\..\..