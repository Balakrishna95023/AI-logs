*** Settings ***
Library    RequestsLibrary
*** Variables ***
${key}    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
${URL}    https://api-inference.huggingface.co/models/gpt2

*** Test Cases ***
Test Hugging face AI
    ${headers}=    Create Dictionary    Authorization=Bearer ${key}    Content-Type=application/json
    ${data}=    Create Dictionary    inputs="Generate a python testcase."
    ${response}=    POST    ${URL}    json=${data}    headers=${headers}
    Log    ${response.json()}
