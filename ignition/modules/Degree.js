const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const DegreeModule = buildModule("DegreeModule", (m) => {
  const degree = m.contract("Degree");

  return { degree };
});

module.exports = DegreeModule;