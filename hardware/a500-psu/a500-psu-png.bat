@rem Converts a PDF to a PNG
@set file=a500-psu

@where pdftoppm >nul 2>nul
@if %ERRORLEVEL% neq 0 choco install poppler
pdftoppm -png %file%.pdf > %file%.png
