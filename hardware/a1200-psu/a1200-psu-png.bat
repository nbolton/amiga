@rem Converts a PDF to a PNG
@set file1=a1200-psu
@set file2=a1200-psu-pcb

@where pdftoppm >nul 2>nul
@if %ERRORLEVEL% neq 0 choco install poppler
pdftoppm -png %file1%.pdf > %file1%.png
pdftoppm -png %file2%.pdf > %file2%.png
