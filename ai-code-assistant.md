# AI Code Assistants

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
    aider --model qwen3:30b-a3b


Create a file named .aider.model.settings.yml in your project root or home directory with:

    - name: ollama_chat/qwen3:30b-a3b

Now, running Aider without the --model flag will use Qwen3 by default.

ChatGPT with copy/paste
-----------------------------------------------
works but slow
