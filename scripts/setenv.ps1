$env:AWS_PROFILE = "code"
$api_key = (aws secretsmanager get-secret-value --secret-id GrokOpenAIKey --query SecretString --output text)
$env:OPENAI_API_KEY = $api_key
