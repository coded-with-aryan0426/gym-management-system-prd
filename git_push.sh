# Quick Git Setup and Push Script
# Run this after creating the GitHub repository

# Configure Git (first time only)
git config user.name "coded-with-aryan0426"
git config user.email "your-email@example.com"  # Replace with your actual email

# Add all files
git add .

# Commit
git commit -m "Initial commit: Add comprehensive PRD for Gym Management System"

# Add remote (replace REPO-NAME with your actual repository name)
git remote add origin https://github.com/coded-with-aryan0426/gym-management-system-prd.git

# Push to GitHub
git branch -M main
git push -u origin main
