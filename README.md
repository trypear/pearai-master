# PearAI Master Repository

PearAI aims to be an inventory that curates the leading, cutting-edge AI tools in one place. Our unified interface seamlessly integrates these solutions, allowing users to effortlessly switch between tools without needing to waste effort hunting for alternatives.

What you're seeing here is the conglomeration of all the repositories that make up the entire PearAI project. This is only the beginning, and the list shall keep expanding. For details, visit each repository individually:

- [pearai-app](https://github.com/trypear/pearai-app): this is the VSCode fork part of PearAI and the outer directory of the project. It contains the bulk of the editor functionalities.
- [pearai-submodule](https://github.com/trypear/pearai-submodule): this is the Continue fork part of PearAI and is a submodule of `pearai-app`. It contains the bulk of the AI chat functionalities.
- [pear-landing-page](https://github.com/trypear/pear-landing-page): this is the landing page of PearAI.
- [pearai-documentation](https://github.com/trypear/pearai-documentation): this is the [documentation page](https://trypear.ai/docs) of PearAI and is linked to from the landing page.
- [pearai-server](https://github.com/trypear/pearai-server): this is the server of PearAI which is semi-private to maintain security. The use of PearAI server is optional, and serves as a way to provide convenience for users who do not wish to use their own API keys.
- [pearai-server-issues-public](https://github.com/trypear/pearai-server-issues-public): this is where all the issues are listed for the PearAI server.

## Contributing

We welcome contributions from the community! Whether you're fixing a bug, improving the documentation, or adding a new feature, we appreciate your help in making PearAI better. There is a lot of context involved and we understand it can be overwhelming when first trying to join the project. Here is a quick summary of key information and how we currently work together:

- We have a bunch of issues which are free to tackle (see the issues tab on individual repos). Make sure to leave a comment indicating you're working on it (check for existing comments also). You can raise a PR anytime and we usually review them pretty quickly.
- If you notice anything about Pear that you think you could improve, then let us know!
- We have a lot on our plate so it's easy for us to miss something. The best way to get our attention is to ping us directly in our Discord server.

> [!IMPORTANT]
> Whenever making changes to our updated forks (pearai-app and pearai-roo-code) be mindful of any potential issues your changes could introduce when we have to pull upstream


## 🛠 Prerequisites

Ensure you have the following tools installed:

- 🦀 [Rust/Cargo](https://www.rust-lang.org/tools/install)
- 🐙 [Git](https://git-scm.com)
- 🌐 [Node.JS](https://nodejs.org/en/), **x64**, version `=20.18.0` (other versions have not been tested) - we recommend using Node Version Manager (nvm)
- 📦 [Npm](https://www.npmjs.com/), version `=10.8.2` (other versions have not been tested)
- 📦 [Yarn 1](https://classic.yarnpkg.com/en/), version `>=1.10.1 and <2`
- 🐍 [Python](https://www.python.org/downloads/), version `=3.11.X` (required for node-gyp) - we recommend using pyvenv
- ⚙️ A C/C++ compiler toolchain for your platform:
  - **Windows**: Install the Windows Build Tools (through Visual Studio Installer) with the following components
    - Desktop development with C++ (Workload)
    - C++ MFC for v143 build tools with Spectre Mitigations (Individual Component)
    - MSVC v143 - VS 2022 C++ x64/x86 Spectre-mitigated libs (Individual Component)
  - **macOS**: Install Xcode and Command Line Tools with `xcode-select --install`
  - **Linux**: Install the necessary development tools as described in the instructions

## Installation

To get started with PearAI development, you'll need to clone this repo (pearai-master) and install the dependencies for each component:

1. PearAI App:
```bash
./pearai-app/scripts/pearai/install-dependencies.sh  # For Unix/Mac
./pearai-app/scripts/pearai/install-dependencies.ps1 # For Windows
```

2. PearAI Roo Code:
```bash
cd ./pearai-roo-code && npm run install:all
```

3. PearAI Submodule:
```bash
./pearai-submodule/install-and-build.sh  # For Unix/Mac
./pearai-submodule/install-and-build.ps1 # For Windows
```

## Development

To start development:

1. Launch the development servers:
   - In VSCode, go to Run and Debug
   - Select and run the "🚀 Start All Dev Servers" task

2. Start the VSCode instance:
```bash
./pearai-app/scripts/code.sh  # For Unix/Mac
./pearai-app/scripts/code.ps1 # For Windows
```

> [!NOTE]
> Hot Module Reload (HMR) is enabled for React frontends (Roo Code frontend, creator overlay, and chat pane).
> For changes outside these components, you'll need to restart the VSCode instance using the code script.

## Technology Stack

- PearAI is in TypeScript/Electron.js
- PearAI landing page is Next.js/React with Supabase auth (TailwindCSS + Shadcn)
- PearAI backend is a Python FastAPI server with Supabase database
- Logging/Telemetry is done with Axiom and PostHog

## Contact

For any questions or issues, feel free to open an issue, or you can also reach out to us directly in the [PearAI Discord](https://discord.gg/7QMraJUsQt), or email us at [team@trypear.ai](mailto:team@trypear.ai).

## FAQ

Checkout our [FAQ](https://trypear.ai/faq) on the website.
