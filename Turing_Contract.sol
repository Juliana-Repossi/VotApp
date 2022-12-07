// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Turing is ERC20
{
    //mapeamento de codinomes -> endereços;
    mapping(string => address) public usuario;

    //Mapeamento de votação
    //True ->a votacao não pode acontecer
    //False -> a votacao NAO pode acontecer
    mapping(address => mapping(string => bool)) public votante;
 
    //Abertura da votacao
    bool val = true;
 
    constructor() ERC20("Turing", "Tur")
    {
      usuario["Andre"] = 0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6;
      usuario["Antonio"] = 0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6;
      usuario["Ratonilo"] = 0x5d84D451296908aFA110e6B37b64B1605658283f;
      usuario["eduardo"] = 0x500E357176eE9D56c336e0DC090717a5B1119cC2;
      usuario["Enzo"] = 0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8;
      usuario["Fernando"] = 0xFED450e1300CEe0f69b1F01FA85140646E596567;
      usuario["Juliana"] = 0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e;
      usuario["Altoe"] = 0x6701D0C23d51231E676698446E55F4936F5d99dF;
      usuario["Salgado"] = 0x8321730F4D59c01f5739f1684ABa85f8262f8980;
      usuario["Regata"] = 0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a;
      usuario["Luis"] = 0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33;
      usuario["Nicolas"] = 0x01fe9DdD4916019beC6268724189B2EED8C2D49a;
      usuario["Rauta"] = 0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1;
      usuario["Silva"] = 0xCAFE34A88dCac60a48e64107A44D3d8651448cd9;
      usuario["Sophie"] = 0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3;
      usuario["Thiago"] = 0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97;
      usuario["Brito"] = 0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f;
      usuario["ulopesu"] = 0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee;
      usuario["Vinicius"] = 0x48cd1D1478eBD643dba50FB3e99030BE4F84d468;
      usuario["Bonella"] = 0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c;

      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Andre"] = false;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Antonio"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Ratonilo"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["eduardo"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Enzo"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Fernando"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Juliana"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Altoe"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Salgado"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Regata"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Luis"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Nicolas"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Rauta"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Silva"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Sophie"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Thiago"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Brito"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["ulopesu"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Vinicius"] = true;
      votante[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]["Bonella"] = true;

      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Andre"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Antonio"] = false;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Ratonilo"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["eduardo"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Enzo"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Fernando"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Juliana"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Altoe"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Salgado"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Regata"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Luis"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Nicolas"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Rauta"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Silva"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Sophie"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Thiago"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Brito"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["ulopesu"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Vinicius"] = true;
      votante[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]["Bonella"] = true;

      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Andre"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Antonio"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Ratonilo"] = false;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["eduardo"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Enzo"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Fernando"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Juliana"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Altoe"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Salgado"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Regata"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Luis"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Nicolas"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Rauta"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Silva"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Sophie"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Thiago"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Brito"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["ulopesu"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Vinicius"] = true;
      votante[0x5d84D451296908aFA110e6B37b64B1605658283f]["Bonella"] = true;

      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Andre"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Antonio"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Ratonilo"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["eduardo"] = false;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Enzo"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Fernando"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Juliana"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Altoe"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Salgado"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Regata"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Luis"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Nicolas"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Rauta"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Silva"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Sophie"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Thiago"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Brito"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["ulopesu"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Vinicius"] = true;
      votante[0x500E357176eE9D56c336e0DC090717a5B1119cC2]["Bonella"] = true;

      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Andre"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Antonio"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Ratonilo"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["eduardo"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Enzo"] = false;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Fernando"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Juliana"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Altoe"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Salgado"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Regata"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Luis"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Nicolas"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Rauta"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Silva"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Sophie"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Thiago"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Brito"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["ulopesu"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Vinicius"] = true;
      votante[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]["Bonella"] = true;

      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Andre"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Antonio"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Ratonilo"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["eduardo"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Enzo"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Fernando"] = false;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Juliana"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Altoe"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Salgado"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Regata"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Luis"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Nicolas"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Rauta"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Silva"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Sophie"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Thiago"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Brito"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["ulopesu"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Vinicius"] = true;
      votante[0xFED450e1300CEe0f69b1F01FA85140646E596567]["Bonella"] = true;

      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Andre"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Antonio"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Ratonilo"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["eduardo"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Enzo"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Fernando"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Juliana"] = false;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Altoe"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Salgado"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Regata"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Luis"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Nicolas"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Rauta"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Silva"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Sophie"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Thiago"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Brito"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["ulopesu"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Vinicius"] = true;
      votante[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]["Bonella"] = true;

      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Andre"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Antonio"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Ratonilo"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["eduardo"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Enzo"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Fernando"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Juliana"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Altoe"] = false;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Salgado"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Regata"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Luis"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Nicolas"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Rauta"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Silva"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Sophie"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Thiago"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Brito"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["ulopesu"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Vinicius"] = true;
      votante[0x6701D0C23d51231E676698446E55F4936F5d99dF]["Bonella"] = true;

      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Andre"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Antonio"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Ratonilo"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["eduardo"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Enzo"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Fernando"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Juliana"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Altoe"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Salgado"] = false;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Regata"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Luis"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Nicolas"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Rauta"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Silva"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Sophie"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Thiago"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Brito"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["ulopesu"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Vinicius"] = true;
      votante[0x8321730F4D59c01f5739f1684ABa85f8262f8980]["Bonella"] = true;

      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Andre"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Antonio"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Ratonilo"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["eduardo"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Enzo"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Fernando"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Juliana"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Altoe"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Salgado"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Regata"] = false;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Luis"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Nicolas"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Rauta"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Silva"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Sophie"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Thiago"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Brito"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["ulopesu"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Vinicius"] = true;
      votante[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]["Bonella"] = true;

      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Andre"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Antonio"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Ratonilo"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["eduardo"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Enzo"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Fernando"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Juliana"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Altoe"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Salgado"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Regata"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Luis"] = false;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Nicolas"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Rauta"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Silva"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Sophie"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Thiago"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Brito"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["ulopesu"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Vinicius"] = true;
      votante[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]["Bonella"] = true;

      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Andre"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Antonio"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Ratonilo"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["eduardo"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Enzo"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Fernando"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Juliana"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Altoe"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Salgado"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Regata"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Luis"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Nicolas"] = false;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Rauta"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Silva"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Sophie"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Thiago"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Brito"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["ulopesu"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Vinicius"] = true;
      votante[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]["Bonella"] = true;

      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Andre"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Antonio"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Ratonilo"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["eduardo"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Enzo"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Fernando"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Juliana"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Altoe"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Salgado"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Regata"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Luis"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Nicolas"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Rauta"] = false;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Silva"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Sophie"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Thiago"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Brito"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["ulopesu"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Vinicius"] = true;
      votante[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]["Bonella"] = true;

      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Andre"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Antonio"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Ratonilo"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["eduardo"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Enzo"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Fernando"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Juliana"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Altoe"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Salgado"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Regata"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Luis"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Nicolas"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Rauta"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Silva"] = false;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Sophie"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Thiago"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Brito"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["ulopesu"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Vinicius"] = true;
      votante[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]["Bonella"] = true;

      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Andre"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Antonio"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Ratonilo"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["eduardo"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Enzo"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Fernando"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Juliana"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Altoe"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Salgado"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Regata"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Luis"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Nicolas"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Rauta"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Silva"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Sophie"] = false;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Thiago"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Brito"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["ulopesu"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Vinicius"] = true;
      votante[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]["Bonella"] = true;

      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Andre"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Antonio"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Ratonilo"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["eduardo"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Enzo"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Fernando"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Juliana"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Altoe"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Salgado"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Regata"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Luis"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Nicolas"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Rauta"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Silva"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Sophie"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Thiago"] = false;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Brito"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["ulopesu"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Vinicius"] = true;
      votante[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]["Bonella"] = true;

      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Andre"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Antonio"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Ratonilo"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["eduardo"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Enzo"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Fernando"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Juliana"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Altoe"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Salgado"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Regata"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Luis"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Nicolas"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Rauta"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Silva"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Sophie"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Thiago"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Brito"] = false;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["ulopesu"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Vinicius"] = true;
      votante[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]["Bonella"] = true;

      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Andre"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Antonio"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Ratonilo"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["eduardo"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Enzo"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Fernando"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Juliana"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Altoe"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Salgado"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Regata"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Luis"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Nicolas"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Rauta"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Silva"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Sophie"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Thiago"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Brito"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["ulopesu"] = false;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Vinicius"] = true;
      votante[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]["Bonella"] = true;

      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Andre"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Antonio"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Ratonilo"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["eduardo"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Enzo"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Fernando"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Juliana"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Altoe"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Salgado"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Regata"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Luis"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Nicolas"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Rauta"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Silva"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Sophie"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Thiago"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Brito"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["ulopesu"] = true;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Vinicius"] = false;
      votante[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]["Bonella"] = true;

      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Andre"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Antonio"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Ratonilo"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["eduardo"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Enzo"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Fernando"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Juliana"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Altoe"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Salgado"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Regata"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Luis"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Nicolas"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Rauta"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Silva"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Sophie"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Thiago"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Brito"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["ulopesu"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Vinicius"] = true;
      votante[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]["Bonella"] = false;
 }
    
    //amount em saTurings
    function issueToken ( address receiver , uint256 amount) public
    {
        if(msg.sender == 0xA5095296F7fF9Bdb01c22e3E0aC974C8963378ad)
        {
            //1 saTuring = 10^-18 Turings
            //decisão = carteira em saTurings
            _mint(receiver,amount);
        }
    }

    //amount em saTurings
    function vote ( string memory codinome, uint256 amount) public
    {
        //Verificar se o chamador do contrato pode votar no codinome
        if( votante[msg.sender][codinome] == true && val==true)
        {
            //pode votar uma so vez
            votante[msg.sender][codinome] = false;
            //verifica a qtd de saTurings - se for maior que 2 turings - so permite 2
            if(amount > 2*10**18)
            {
                amount = 2*10**18;
            }
            
            //registra voto
            _mint(usuario[codinome],amount);
            _mint(msg.sender,2*10**17);
        }
    }

    function endVoting() public
    {
        if(msg.sender == 0xA5095296F7fF9Bdb01c22e3E0aC974C8963378ad)
        {
            val=false;
        }
    }
}
 
 
 

