echo Hardhat fork $FORK_URL $FORK_CHAIN_ID
cat << EOF > /usr/src/app/hardhat.config.js
module.exports = {
	solidity: '0.8.11',
	networks: {
		hardhat: {
			chainId: $FORK_CHAIN_ID,
			forking: {
				url: '$FORK_URL',
			},
		},
	},
}
EOF
npx hardhat node --hostname 0.0.0.0
