{
	description = "Nixos from scratch";
	inputs = {
		nixpkgs.url = "nixpkgs/nixos-25.05";
		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};
	outputs = { self, nixpkgs, home-manager, ...}: {
		nixosConfigurations.thekorn-vm = nixpkgs.lib.nixosSystem {
			system = "aarch64-linux";
			modules = [
				./configuration.nix
				home-manager.nixosModules.home-manager
				{
					home-manager = {
						useGlobalPkgs = true;
						useUserPackages = true;
						users.thekorn = import ./home.nix;
						backupFileExtension = "backup";
					};
				}
			];
		};
	};
}
