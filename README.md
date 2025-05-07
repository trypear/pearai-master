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

- Pan and Nang conduct "Quests", which are 1-3 weeks sprints. We will pick out the current highest priority issues for these quests, ping everyone in our [Discord](<[url](https://discord.gg/7QMraJUsQt)>), and ask for applications to participate in them. The chosen people will help finish the tasks alongside us, participating in calls and working together. If help is needed, we may add more people to the quest. You can see the current open quests [here](https://github.com/orgs/trypear/projects?query=is%3Aopen).
- Outside of dedicated Quests, we also have a bunch of issues which are free to tackle (see the issues tab on individual repos). Make sure to leave a comment indicating you're working on it (check for existing comments also). You can raise a PR anytime and we usually review them pretty quickly.
- We have a lot on our plate so it's easy for us to miss something. The best way to get our attention is to ping us directly in our Discord server.

## How to run

- Start by running `./setup-app-dev.sh`
- Once everything has installed, in vscode, go to Run and Debug -> 🚀 Start All Dev Processes
- Wait for everything to build/dev (pearai-app yarn watch takes the longest)
- Run `./pearai-app/scripts/code.sh` to start the app

**Please review the `CONTRIBUTING.md`/`README.md` in the repositories you'd like to participate in.**

Curious about our stack?

- PearAI is in TypeScript/Electron.js
- PearAI landing page is Next.js/React with Supabase auth (TailwindCSS + Shadcn)
- PearAI backend is a Python FastAPI server with Supabase database
- Logging/Telemetry is done with Axiom

## Contact

For any questions or issues, feel free to open an issue, or you can also reach out to us directly in the [PearAI Discord](https://discord.gg/7QMraJUsQt), or email us at [pearai@trypear.ai](mailto:pearai@trypear.ai).

## FAQ

Checkout our [FAQ](https://trypear.ai/faq) on the website.
