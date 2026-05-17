Trigger deployment flow:

- If branch = develop → staging deploy workflow
- If branch = main → require manual production workflow
- Ensure CI passed before deployment
- Validate CDK before deployment
- Confirm no secrets introduced
