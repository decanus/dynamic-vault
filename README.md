# Dynamic Vault

**THIS IS A PROOF OF CONCEPT AND NOT INTENDED FOR PRODUCTION USE**

This smart contract allows for a vault to support multiple token standards without requiring an update of the entire vault, this is done by enabling plugable connectors.

## Token Connectors

Allow for the implementation of multiple token standards, deposit logic is handled dynamically for these specified connectors. Where the withdraw logic conforms to an interface.
