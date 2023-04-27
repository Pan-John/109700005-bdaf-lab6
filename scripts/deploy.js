async function main() {
    const C = await ethers.getContractFactory("FlashloanExecutor");
    const c = await C.deploy(
      "0x5e94B61BCa112683D18d5Ed27CebB16566E6d5ba",   // NFT address
      "0x7A81e50E0Ad45B31cC8E54A55095714F13a0c74e",   // Token address
      "0xbe02727047fADd7fe434E093e001745B42C5F49B" ); // Bank address
    console.log("contract address:", c.address);
  }
   
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
