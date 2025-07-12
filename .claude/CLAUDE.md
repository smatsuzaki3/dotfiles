## AWS Development

- When building an AWS SAM managed Lambda Function, run `sam build --use-container`
- When validating AWS SAM managed Lambda Function Code , run `sam validate --lint` to ensure the coding style is accurate
- When change AWS SAM files , run validate and build to ensure change works properly

## Development Practices

- Follow Kent Beck's Test Driven Development style
- When you've modified a file based on an assumption like "this should fix the issue",run a CLI command to confirm that assumption
