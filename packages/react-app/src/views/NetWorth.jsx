import React from "react";

/**
 * web3 props can be passed from '../App.jsx' into your local view component for use
 * @param {*} yourLocalBalance balance on current network
 * @param {*} readContracts contracts from current chain already pre-loaded using ethers contract module. More here https://docs.ethers.io/v5/api/contract/contract/
 * @returns react component
 */
function NetWorth({}) {
  return (
    <div>
      NetWorth

      - Add graph Here?
      - Add database to capture assets
    </div>
  );
}

export default NetWorth;
