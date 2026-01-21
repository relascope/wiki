# AI Code Assistants

JetBrains*
-----------------------------------------------
At the time of testing (January 2026), JetBrains IDEs offer a generous amount of free credit and can be used for open-source projects. 

Cursor
-----------------------------------------------
- very fast, gets the job done
- The free plan does not accomplish much

XCode with ChatGPT integration
-----------------------------------------------
- sometimes made changes, sometimes had to rely on copy/paste


Aider
-----------------------------------------------
- is working, editing, executing commands
- - in evaluation with Google Gemini 2.5 Flash, but limits exceeded fast

### Ollama

local models

    ollama serve
    ollama pull qwen3:30b-a3b

~/.aider.conf.yml 

    model: ollama/qwen3:30b-a3b
    openai-api-key: ollama

can and should be added to profile (e.g. ~/.zshrc or ~/.bashre)

    yexport OLLAMA_API_BASE="http://localhost:11434"

Qwen sends working and response streams, which confuses Ollama

    aider --no-stream

Now, running Aider without the --model flag will use Qwen3 by default.

ChatGPT with copy/paste
-----------------------------------------------
works but slow
