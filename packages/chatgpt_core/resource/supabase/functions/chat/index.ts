import {serve} from "https://deno.land/std@0.132.0/http/server.ts";
import {openai, openaiWithApiKey} from "../_utils/open_ai.ts";

console.log("OpenAI handler up and running!");

const model = "gpt-3.5-turbo"
const maxTokens = 500
const temperature = 0.9
const topP = 1
const frequencyPenalty = 0.0
const presencePenalty = 0.6

serve(async (req) => {
    try {
        // Get prompt from body
        const body = await req.json();
        const messages = body.messages;
        const stop = body.stop
        const apiKey = body.apiKey

        // if apiKey is present, use it, otherwise use the default one
        const effectiveOpenAi = apiKey ? openaiWithApiKey(apiKey) : openai

        // Call open ai to get the response
        const response = await effectiveOpenAi.createChatCompletion({
            messages: messages,
            model: model,
            max_tokens: maxTokens,
            temperature: temperature,
            top_p: topP,
            frequency_penalty: frequencyPenalty,
            presence_penalty: presencePenalty,
            stop: stop
        })


        const json = await response.json();

        if (json.error !== undefined) {
            return new Response(JSON.stringify(json), {
                headers: {"Content-Type": "application/json"},
                status: 200,
            });
        }

        const content = json.choices[0].message.content.trim()


        const responseForClient = {
            data: {
                content: content
            }
        }

        return new Response(JSON.stringify(responseForClient), {
            headers: {"Content-Type": "application/json"},
            status: 200,
        });
    } catch (error) {
        return new Response(JSON.stringify(error), {
            headers: {"Content-Type": "application/json"},
            status: 400,
        });
    }
});
