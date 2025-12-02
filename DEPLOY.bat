@echo off
echo ========================================
echo   MAHIR VIP AI - Vercel Deployment
echo ========================================
echo.

:: Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Node.js is not installed!
    echo Please install Node.js from: https://nodejs.org
    echo.
    pause
    exit /b 1
)

echo [OK] Node.js is installed
echo.

:: Check if Vercel CLI is installed
where vercel >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [INFO] Vercel CLI not found. Installing...
    echo.
    npm install -g vercel
    if %ERRORLEVEL% NEQ 0 (
        echo [ERROR] Failed to install Vercel CLI
        pause
        exit /b 1
    )
    echo [OK] Vercel CLI installed successfully
    echo.
)

echo [OK] Vercel CLI is ready
echo.

:: Login to Vercel
echo ========================================
echo   Step 1: Login to Vercel
echo ========================================
echo.
echo Please login to your Vercel account...
echo A browser window will open.
echo.
pause

vercel login
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Login failed
    pause
    exit /b 1
)

echo.
echo [OK] Login successful
echo.

:: Deploy to Vercel
echo ========================================
echo   Step 2: Deploy to Vercel
echo ========================================
echo.
echo Deploying MAHIR VIP AI to Vercel...
echo.

vercel --prod
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Deployment failed
    pause
    exit /b 1
)

echo.
echo ========================================
echo   DEPLOYMENT SUCCESSFUL!
echo ========================================
echo.
echo Your MAHIR VIP AI is now live!
echo.
echo Check the URL above to access your site.
echo.
echo ========================================
echo   Next Steps:
echo ========================================
echo.
echo 1. Visit your deployed URL
echo 2. Test the password: MAHIR
echo 3. Generate signals
echo 4. Share with your community!
echo.
echo ========================================
echo.

pause
