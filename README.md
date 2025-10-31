# MAIA: Music Adversarial Inpainting Attack - Demo Website

This repository contains the interactive demonstration website for the paper:

**"MAIA: An Inpainting-Based Approach for Music Adversarial Attacks"**  
Accepted at ISMIR 2025

## 🎵 Project Overview

MAIA (Music Adversarial Inpainting Attack) is a novel adversarial attack framework for Music Information Retrieval (MIR) systems that uses importance-driven segment selection and music inpainting to generate effective yet perceptually natural adversarial examples.

### Key Contributions

1. **Importance-Driven Targeting**: Uses Grad-CAM (white-box) or coarse-to-fine analysis (black-box) to identify critical music segments
2. **Inpainting-Based Perturbations**: Reconstructs selected segments using GACELA inpainting model with adversarial guidance
3. **Superior Performance**: Achieves 92.8% white-box and 80.1% black-box attack success rates while maintaining high perceptual quality (MOS: 4.0/5)

## 📁 Repository Structure

```
maia-demo/
├── generate_adversarial_samples.py   # Script to generate adversarial audio samples
├── docs/                             # GitHub Pages website
│   ├── index.html                    # Main website file
│   ├── css/                          # Stylesheets (4 files)
│   ├── js/                           # JavaScript files (5 files)
│   ├── data/                         # Audio files and metadata
│   │   ├── audio/                    # 16 audio files (8 original + 8 adversarial)
│   │   ├── samples.json             # Sample metadata
│   │   └── metrics.json             # Performance metrics
│   └── README.md                     # Website documentation
└── README.md                         # This file
```

## 🚀 Quick Start

### 1. Generate Adversarial Samples

```bash
cd maia-demo
python generate_adversarial_samples.py
```

This will:
- Load 8 original audio samples from IDS-NMR dataset
- Generate adversarial versions with 2-3 short inpainting regions (<0.5s each)
- Save outputs to `docs/data/audio/`
- Create `samples.json` and `metrics.json` metadata files

### 2. View Website Locally

```bash
cd docs
python -m http.server 8000
```

Then open http://localhost:8000 in your browser.

### 3. Deploy to GitHub Pages

```bash
git add .
git commit -m "Add MAIA demo website"
git push origin main
```

Enable GitHub Pages in repository settings:
- Settings → Pages
- Source: Deploy from branch → `main` → `/docs` → Save

Your site will be available at: `https://[username].github.io/[repo-name]/`

## 🎯 Website Features

The interactive demo website includes:

- **🎵 Audio Playback**: Listen to original vs. adversarial samples with synchronized playback
- **📊 Visualizations**: D3.js charts showing attack success rates and perceptual quality
- **🎨 Waveforms**: Real-time audio waveform display using WaveSurfer.js
- **📍 Region Markers**: Click on inpainting regions to jump to that time in audio
- **📈 Performance Metrics**: Detailed comparison with baseline methods
- **📱 Responsive Design**: Works on desktop, tablet, and mobile devices

## 📊 Results Summary

### White-Box Attacks (Cover Song Identification)

| Method | ASR ↑ | mAP ↓ | FAD ↓ | LSD ↓ | MOS ↑ |
|--------|-------|-------|-------|-------|-------|
| PGD    | 82.1% | 0.619 | 12.64 | 2.10  | 3.1   |
| C&W    | 88.5% | 0.560 | 12.11 | 1.94  | 3.4   |
| **MAIA-WB** | **92.8%** | **0.488** | **11.25** | **1.58** | **4.0** |

### Black-Box Attacks (Cover Song Identification)

| Method | ASR ↑ | mAP ↓ | FAD ↓ | LSD ↓ | MOS ↑ |
|--------|-------|-------|-------|-------|-------|
| NES    | 70.2% | 0.682 | 13.93 | 2.27  | 2.8   |
| ZOO    | 74.9% | 0.639 | 13.51 | 2.12  | 3.0   |
| **MAIA-BB** | **80.1%** | **0.594** | **12.56** | **1.90** | **3.6** |

## 🔧 Technical Requirements

### For Sample Generation

```bash
pip install numpy soundfile scipy
```

### For Website

- Modern web browser (Chrome 90+, Firefox 88+, Safari 14+)
- No installation required (uses CDN for dependencies)

## 📄 Paper Citation

If you use this code or our method, please cite:

```bibtex
@inproceedings{maia2025,
  title={MAIA: Music Adversarial Inpainting Attack},
  author={Liu, Yuxuan and Zhang, Peihong and Sang, Rui and Li, Zhixin and Li, Shengchen},
  booktitle={Proceedings of the International Society for Music Information Retrieval Conference},
  year={2025}
}
```

## 🔗 Links

- **Paper**: [ISMIR 2025 Proceedings] (Coming soon)
- **Demo Website**: [GitHub Pages] (After deployment)
- **Anonymous Submission**: https://anonymous.4open.science/

## 👥 Authors

- **Yuxuan Liu** - Xi'an Jiaotong-Liverpool University
- **Peihong Zhang** - Xi'an Jiaotong-Liverpool University
- **Rui Sang** - Xi'an Jiaotong-Liverpool University
- **Zhixin Li** - Xi'an Jiaotong-Liverpool University
- **Shengchen Li** - Xi'an Jiaotong-Liverpool University

## 📧 Contact

For questions or collaborations:
- Email: shengchen.li@xjtlu.edu.cn
- Issues: Please open an issue on GitHub

## 🙏 Acknowledgments

This work was supported by:
- Jiangsu Science and Technology Programme (Grant No. BG2024027)
- Suzhou Science and Technology Development Planning Programme (Grant No. ZXL2022472)
- XJTLU Research Development Fund (Grant No. RDF-22-02-046)

We thank the developers of:
- **GACELA**: Music inpainting model
- **WaveSurfer.js**: Audio waveform visualization
- **D3.js**: Data visualization library
- **DiffMusic**: Music diffusion model framework

## 📝 License

This project is for research and educational purposes.  
© 2025 MAIA Project. All rights reserved.

---

**Built for the Music Information Retrieval (MIR) community 🎵**

