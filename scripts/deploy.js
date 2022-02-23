const main = async () => {
  const Products = await hre.ethers.getContractFactory("Products");
  const products = await Products.deploy();

  await products.deployed();

  console.log("Products deployed to:", products.address);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
};

runMain();
