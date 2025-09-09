To try out the the MCP server, create `.vscode` folder in root project and add:

```json
"weather": {
            "command": "uv",
            "args": [
                "--directory",
                "<path where installed>\\weather",
                "run",
                "weather.py"
            ]
        }
```