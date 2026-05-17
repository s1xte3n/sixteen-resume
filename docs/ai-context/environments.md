# Environments

## dev
- local development only
- mock AWS allowed
- relaxed logging
- no real data

## staging
- production-like AWS setup
- real integrations allowed
- safe test data only
- CI auto deploy from develop

## prod
- locked deployment
- manual approval required
- strict IAM
- full observability enabled
