*** Settings ***
Library    RequestsLibrary
*** Variables ***
${key}    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
${URL}    https://api-inference.huggingface.co/models/facebook/opt-1.3b

*** Test Cases ***
Test Hugging face AI
    ${headers}=    Create Dictionary    Authorization=Bearer ${key}    Content-Type=application/json
    ${data}=    Create Dictionary    inputs="Generate a python testcase."
    ${response}=    POST    ${URL}    json=${data}    headers=${headers}
    Log    ${response.json()}