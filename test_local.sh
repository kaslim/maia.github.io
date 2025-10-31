#!/bin/bash

# MAIA Demo - Local Testing Script

echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║         MAIA Interactive Demo - Local Test Server           ║"
echo "╚═══════════════════════════════════════════════════════════════╝"
echo ""
echo "Starting local HTTP server..."
echo ""
echo "📁 Directory: $(pwd)/docs"
echo "🌐 URL: http://localhost:8000"
echo ""
echo "Press Ctrl+C to stop the server"
echo "───────────────────────────────────────────────────────────────"
echo ""

cd docs && python -m http.server 8000

