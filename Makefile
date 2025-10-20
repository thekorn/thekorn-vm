pull:
	rsync -av -e 'ssh -o PubkeyAuthentication=no -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no' \
		--exclude='.git/' \
		thekorn@10.211.55.21:~/nixos-dotfiles/* .

push:
	rsync -av -e 'ssh -o PubkeyAuthentication=no -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no' \
		. thekorn@10.211.55.21:~/nixos-dotfiles
