@ECHO OFF
rm .tx/config
cp .tx/config.init .tx/config
sphinx-intl update-txconfig-resources --pot-dir _build/gettext --transifex-project-name wesion-docs
tx push --source
REM --parallel
