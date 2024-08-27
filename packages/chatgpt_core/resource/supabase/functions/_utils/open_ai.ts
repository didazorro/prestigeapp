import {Configuration, OpenAIApi} from 'https://esm.sh/v106/openai-edge@0.3.0';

const configuration = new Configuration({
    apiKey: Deno.env.get("OPENAI_API_KEY") ?? "",
});

export const openai = new OpenAIApi(configuration)
export const openaiWithApiKey = (apiKey: string) => new OpenAIApi(new Configuration({apiKey: apiKey}))
