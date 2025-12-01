# PowerShell Script to Convert PRD to PowerPoint and PDF
# Author: Antigravity AI Agent
# Date: December 1, 2025

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  PRD Converter for Gym Management PRD  " -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Define file paths
$mdFile = "PRD_Gym_Management_System.md"
$pdfFile = "PRD_Gym_Management_System.pdf"
$pptxFile = "PRD_Gym_Management_System.pptx"
$htmlFile = "PRD_Gym_Management_System.html"

# Check if markdown file exists
if (-Not (Test-Path $mdFile)) {
    Write-Host "❌ Error: $mdFile not found in current directory!" -ForegroundColor Red
    Write-Host "Please make sure you're in the correct directory." -ForegroundColor Yellow
    exit 1
}

Write-Host "✓ Found: $mdFile" -ForegroundColor Green
Write-Host ""

# Check if Pandoc is installed
Write-Host "Checking for Pandoc..." -ForegroundColor Yellow
try {
    $pandocVersion = & pandoc --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ Pandoc is installed" -ForegroundColor Green
        $pandocInstalled = $true
    } else {
        $pandocInstalled = $false
    }
} catch {
    $pandocInstalled = $false
}

if (-Not $pandocInstalled) {
    Write-Host "❌ Pandoc is not installed" -ForegroundColor Red
    Write-Host ""
    Write-Host "To install Pandoc:" -ForegroundColor Yellow
    Write-Host "1. Download from: https://pandoc.org/installing.html" -ForegroundColor White
    Write-Host "2. Or use Chocolatey: choco install pandoc -y" -ForegroundColor White
    Write-Host ""
    Write-Host "Alternative: Use online conversion tools as described in CONVERSION_GUIDE.md" -ForegroundColor Cyan
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Starting Conversions..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Convert to HTML first (intermediate step for better formatting)
Write-Host "[1/3] Converting to HTML..." -ForegroundColor Yellow
try {
    & pandoc $mdFile -o $htmlFile --standalone --self-contained --toc --toc-depth=3 `
        --metadata title="Gym Management System - Product Requirements Document" `
        --css=https://cdn.jsdelivr.net/npm/github-markdown-css@5/github-markdown.min.css
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ HTML created: $htmlFile" -ForegroundColor Green
    } else {
        Write-Host "⚠ HTML conversion had warnings" -ForegroundColor Yellow
    }
} catch {
    Write-Host "❌ HTML conversion failed: $_" -ForegroundColor Red
}

Write-Host ""

# Convert to PDF
Write-Host "[2/3] Converting to PDF..." -ForegroundColor Yellow
try {
    # Try with wkhtmltopdf first
    & pandoc $mdFile -o $pdfFile --pdf-engine=wkhtmltopdf `
        --toc --toc-depth=3 `
        --metadata title="Gym Management System PRD" `
        --metadata author="Product Team" `
        --metadata date="December 1, 2025" `
        -V geometry:margin=1in `
        -V fontsize=11pt
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ PDF created: $pdfFile" -ForegroundColor Green
    } else {
        throw "wkhtmltopdf failed, trying alternative method"
    }
} catch {
    Write-Host "⚠ Trying alternative PDF engine..." -ForegroundColor Yellow
    try {
        & pandoc $mdFile -o $pdfFile `
            --toc --toc-depth=3 `
            --metadata title="Gym Management System PRD"
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host "✓ PDF created: $pdfFile" -ForegroundColor Green
        } else {
            Write-Host "❌ PDF conversion failed" -ForegroundColor Red
            Write-Host "   Please install wkhtmltopdf: https://wkhtmltopdf.org/downloads.html" -ForegroundColor Yellow
        }
    } catch {
        Write-Host "❌ PDF conversion failed: $_" -ForegroundColor Red
    }
}

Write-Host ""

# Convert to PowerPoint
Write-Host "[3/3] Converting to PowerPoint..." -ForegroundColor Yellow
try {
    & pandoc $mdFile -o $pptxFile `
        --slide-level=2 `
        --metadata title="Gym Management System" `
        --metadata subtitle="Product Requirements Document" `
        --metadata author="Product Team" `
        --metadata date="December 1, 2025"
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ PowerPoint created: $pptxFile" -ForegroundColor Green
    } else {
        Write-Host "❌ PowerPoint conversion failed" -ForegroundColor Red
    }
} catch {
    Write-Host "❌ PowerPoint conversion failed: $_" -ForegroundColor Red
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Conversion Complete!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Summary
Write-Host "Generated Files:" -ForegroundColor Green
if (Test-Path $htmlFile) {
    $htmlSize = (Get-Item $htmlFile).Length / 1KB
    Write-Host "  ✓ $htmlFile ($([math]::Round($htmlSize, 2)) KB)" -ForegroundColor White
}
if (Test-Path $pdfFile) {
    $pdfSize = (Get-Item $pdfFile).Length / 1KB
    Write-Host "  ✓ $pdfFile ($([math]::Round($pdfSize, 2)) KB)" -ForegroundColor White
}
if (Test-Path $pptxFile) {
    $pptxSize = (Get-Item $pptxFile).Length / 1KB
    Write-Host "  ✓ $pptxFile ($([math]::Round($pptxSize, 2)) KB)" -ForegroundColor White
}

Write-Host ""
Write-Host "⚠ IMPORTANT NOTE:" -ForegroundColor Yellow
Write-Host "Mermaid diagrams are NOT rendered in these conversions." -ForegroundColor Yellow
Write-Host "For proper diagram rendering:" -ForegroundColor Yellow
Write-Host "1. Visit https://mermaid.live/" -ForegroundColor White
Write-Host "2. Copy each mermaid code block from the PRD" -ForegroundColor White
Write-Host "3. Export as high-resolution PNG/SVG" -ForegroundColor White
Write-Host "4. Insert images manually into PowerPoint/PDF" -ForegroundColor White
Write-Host ""
Write-Host "See CONVERSION_GUIDE.md for detailed instructions." -ForegroundColor Cyan
Write-Host ""

# Open the files
Write-Host "Would you like to open the generated files? (Y/N): " -ForegroundColor Cyan -NoNewline
$response = Read-Host

if ($response -eq 'Y' -or $response -eq 'y') {
    if (Test-Path $pdfFile) { Start-Process $pdfFile }
    if (Test-Path $pptxFile) { Start-Process $pptxFile }
    if (Test-Path $htmlFile) { Start-Process $htmlFile }
}

Write-Host ""
Write-Host "Done! 🎉" -ForegroundColor Green
