# MAIA Interactive Demo Website

An interactive demonstration website for the **MAIA (Music Adversarial Inpainting Attack)** paper presented at ISMIR 2025.

## 🎵 Overview

This website showcases our research on importance-driven adversarial attacks for Music Information Retrieval (MIR) systems using music inpainting techniques.

### Key Features

- **Interactive Audio Demo**: Listen to original and adversarial audio samples with synchronized playback
- **Real-time Waveform Visualization**: See audio waveforms using WaveSurfer.js
- **Importance Analysis Visualization**: View Grad-CAM heatmaps and segment selection
- **Performance Metrics**: Interactive D3.js charts showing attack success rates and perceptual quality
- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile devices

## 📁 Project Structure

```
docs/
├── index.html           # Main HTML file with 6 sections
├── css/
│   ├── main.css         # Global styles and layout
│   ├── animations.css   # Keyframe animations and transitions
│   ├── audio-player.css # Custom audio player styling
│   └── responsive.css   # Mobile and tablet responsive design
├── js/
│   ├── main.js          # Core functionality and data loading
│   ├── audio-player.js  # WaveSurfer.js audio player integration
│   ├── visualizations.js # D3.js charts and visualizations
│   ├── demo.js          # Interactive demo logic
│   └── scroll-effects.js # Scroll animations and parallax effects
├── data/
│   ├── audio/           # Original and adversarial audio files (16 files)
│   ├── samples.json     # Sample metadata (8 samples)
│   └── metrics.json     # Performance metrics for charts
└── README.md            # This file
```

## 🚀 Getting Started

### Local Development

1. **Simple HTTP Server** (Python 3):
   ```bash
   cd docs
   python -m http.server 8000
   ```
   Then open http://localhost:8000 in your browser.

2. **Node.js Server**:
   ```bash
   cd docs
   npx http-server -p 8000
   ```

3. **VS Code Live Server**:
   - Install "Live Server" extension
   - Right-click on `index.html` → "Open with Live Server"

### GitHub Pages Deployment

1. **Push to GitHub**:
   ```bash
   git add .
   git commit -m "Add MAIA demo website"
   git push origin main
   ```

2. **Enable GitHub Pages**:
   - Go to repository Settings → Pages
   - Source: Deploy from a branch
   - Branch: `main`
   - Folder: `/docs`
   - Click "Save"

3. **Access Your Site**:
   - Your site will be available at: `https://[username].github.io/[repository]/`
   - It may take 1-2 minutes to build

## 🎨 Customization

### Changing Colors

Edit CSS variables in `css/main.css`:

```css
:root {
    --color-primary: #0173B2;      /* Blue */
    --color-secondary: #DE8F05;    /* Orange */
    --color-accent: #029E73;       /* Green */
}
```

### Adding More Samples

1. Add audio files to `data/audio/`:
   - `{genre}_{id}_original.wav`
   - `{genre}_{id}_adversarial.wav`

2. Update `data/samples.json`:
   ```json
   {
     "id": "genre_id",
     "genre": "Genre Name",
     "original_audio": "data/audio/genre_id_original.wav",
     "adversarial_audio": "data/audio/genre_id_adversarial.wav",
     "original_prediction": "Original Genre",
     "adversarial_prediction": "Predicted Genre",
     "original_confidence": 0.89,
     "adversarial_confidence": 0.67,
     "inpainting_regions": [[5.0, 5.4], [12.0, 12.3]],
     "attack_success": true,
     "metrics": {
       "fad": 11.25,
       "lsd": 1.58,
       "mos": 4.0
     }
   }
   ```

### Updating Metrics

Edit `data/metrics.json` to update the performance comparison charts.

## 📊 Data Files

### samples.json

Contains metadata for all audio samples:
- Audio file paths
- Predictions and confidence scores
- Inpainting region locations
- Attack success status
- Perceptual quality metrics

### metrics.json

Contains performance metrics for charts:
- Attack Success Rate (ASR)
- Mean Average Precision (mAP) / Accuracy
- Fréchet Audio Distance (FAD)
- Log-Spectral Distance (LSD)
- Mean Opinion Score (MOS)

## 🔧 Technical Details

### Dependencies (via CDN)

- **WaveSurfer.js v7**: Audio waveform visualization
- **D3.js v7**: Data visualizations and charts
- **Inter Font**: Typography (Google Fonts)

### Browser Compatibility

- Chrome/Edge 90+
- Firefox 88+
- Safari 14+
- Mobile browsers (iOS Safari, Chrome Mobile)

### Performance

- Initial load: < 3 seconds
- Audio file size: ~1.3MB each (16 files total)
- Lazy loading: Audio files load on demand
- Optimized animations: 60 FPS on modern devices

## 🎯 Features

### Section 1: Hero Landing
- Animated particle background
- Responsive hero title and description
- Smooth scroll indicator

### Section 2: Problem & Motivation
- Problem statement with statistics
- Comparison: Noise-based vs. MAIA
- Key insights and achievements

### Section 3: Method Overview
- Three-step visualization
- Importance analysis (Grad-CAM, Coarse-to-Fine)
- Adversarial inpainting process

### Section 4: Interactive Audio Demo ⭐
- Sample selector (8 audio samples)
- Dual waveform players (original vs. adversarial)
- Synchronized A/B playback
- Attack info panel with predictions and confidence
- Inpainting regions timeline with clickable markers

### Section 5: Results Showcase
- Performance cards (White-box & Black-box)
- Interactive D3.js charts
- Detailed metrics table

### Section 6: Resources & Impact
- Applications and use cases
- GitHub repository link
- Citation with one-click copy
- Contact information

## 🌐 Accessibility

- Semantic HTML5 structure
- ARIA labels for controls
- Keyboard navigation support
- High contrast mode compatible
- Reduced motion support

## 📱 Responsive Breakpoints

- Desktop: 1024px+
- Tablet Landscape: 768px - 1023px
- Tablet Portrait: 481px - 767px
- Mobile: 320px - 480px

## 🐛 Troubleshooting

### Audio Not Playing

1. Check browser console for errors
2. Verify audio file paths in `samples.json`
3. Ensure audio files are in `data/audio/` directory
4. Try different browser (some browsers block autoplay)

### Charts Not Loading

1. Check if D3.js loaded correctly (check console)
2. Verify `data/metrics.json` is valid JSON
3. Clear browser cache and reload

### Styling Issues

1. Check if all CSS files are loaded
2. Verify file paths are correct
3. Clear browser cache
4. Try hard refresh (Ctrl+Shift+R)

## 📝 License

This demo website is part of the MAIA research project.  
© 2025 MAIA Project. All rights reserved.

## 👥 Authors

- Yuxuan Liu
- Peihong Zhang
- Rui Sang
- Zhixin Li
- Shengchen Li

**Institution**: Xi'an Jiaotong-Liverpool University

## 📧 Contact

For questions or issues, please contact:  
shengchen.li@xjtlu.edu.cn

## 🙏 Acknowledgments

- WaveSurfer.js for audio visualization
- D3.js for data visualizations
- ISMIR 2025 for hosting our research

---

**Built with ❤️ for the MIR community**

