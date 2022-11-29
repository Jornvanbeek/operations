\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  4 alpha_[0] + 4 beta_[0] + 0 delta_[0,0] + 4 alpha_[1] + 4 beta_[1]
   + 0 delta_[1,1] + 4 alpha_[2] + 4 beta_[2] + 0 delta_[2,2] + 3 alpha_[3]
   + 3 beta_[3] + 0 delta_[3,3] + 4 alpha_[4] + 4 beta_[4] + 0 delta_[4,4]
   + 4 alpha_[5] + 4 beta_[5] + 0 delta_[5,5] + 3 alpha_[6] + 3 beta_[6]
   + 0 delta_[6,6] + 4 alpha_[7] + 4 beta_[7] + 0 delta_[7,7] + 3 alpha_[8]
   + 3 beta_[8] + 0 delta_[8,8] + 3 alpha_[9] + 3 beta_[9] + 0 delta_[9,9]
   + 4 alpha_[10] + 4 beta_[10] + 0 delta_[10,10] + 4 alpha_[11]
   + 4 beta_[11] + 0 delta_[11,11] + 2 alpha_[12] + 2 beta_[12]
   + 0 delta_[12,12] + alpha_[13] + beta_[13] + 0 delta_[13,13]
   + 3 alpha_[14] + 3 beta_[14] + 0 delta_[14,14] + 3 alpha_[15]
   + 3 beta_[15] + 0 delta_[15,15] + 3 alpha_[16] + 3 beta_[16]
   + 0 delta_[16,16] + 4 alpha_[17] + 4 beta_[17] + 0 delta_[17,17]
   + 4 alpha_[18] + 4 beta_[18] + 0 delta_[18,18] + 2 alpha_[19]
   + 2 beta_[19] + 0 delta_[19,19] + 4 alpha_[20] + 4 beta_[20]
   + 0 delta_[20,20] + 4 alpha_[21] + 4 beta_[21] + 0 delta_[21,21]
   + alpha_[22] + beta_[22] + 0 delta_[22,22] + 3 alpha_[23] + 3 beta_[23]
   + 0 delta_[23,23] + 4 alpha_[24] + 4 beta_[24] + 0 delta_[24,24]
   + 3 alpha_[25] + 3 beta_[25] + 0 delta_[25,25] + 2 alpha_[26]
   + 2 beta_[26] + 0 delta_[26,26] + 3 alpha_[27] + 3 beta_[27]
   + 0 delta_[27,27] + 4 alpha_[28] + 4 beta_[28] + 0 delta_[28,28]
   + 4 alpha_[29] + 4 beta_[29] + 0 delta_[29,29]
Subject To
 Alpha[0]: alpha_[0] + x_[0] >= 0
 Beta[0]: beta_[0] - x_[0] >= 0
 x[0]: alpha_[0] - beta_[0] + x_[0] = 0
 delta[0,1]: delta_[0,1] + delta_[1,0] = 1
 delta_set_V[0,1]: delta_[0,1] = 1
 x_set_V[1]: - x_[0] + x_[1] >= 96
 delta[0,2]: delta_[0,2] + delta_[2,0] = 1
 delta_set_W[0,2]: delta_[0,2] = 1
 delta[0,3]: delta_[0,3] + delta_[3,0] = 1
 delta_set_W[0,3]: delta_[0,3] = 1
 delta[0,4]: delta_[0,4] + delta_[4,0] = 1
 delta_set_W[0,4]: delta_[0,4] = 1
 delta[0,5]: delta_[0,5] + delta_[5,0] = 1
 delta_set_W[0,5]: delta_[0,5] = 1
 delta[0,6]: delta_[0,6] + delta_[6,0] = 1
 delta_set_W[0,6]: delta_[0,6] = 1
 delta[0,7]: delta_[0,7] + delta_[7,0] = 1
 delta_set_W[0,7]: delta_[0,7] = 1
 delta[0,8]: delta_[0,8] + delta_[8,0] = 1
 delta_set_W[0,8]: delta_[0,8] = 1
 delta[0,9]: delta_[0,9] + delta_[9,0] = 1
 delta_set_W[0,9]: delta_[0,9] = 1
 delta[0,10]: delta_[0,10] + delta_[10,0] = 1
 delta_set_W[0,10]: delta_[0,10] = 1
 delta[0,11]: delta_[0,11] + delta_[11,0] = 1
 delta_set_W[0,11]: delta_[0,11] = 1
 delta[0,12]: delta_[0,12] + delta_[12,0] = 1
 delta_set_W[0,12]: delta_[0,12] = 1
 delta[0,13]: delta_[0,13] + delta_[13,0] = 1
 delta_set_W[0,13]: delta_[0,13] = 1
 delta[0,14]: delta_[0,14] + delta_[14,0] = 1
 delta_set_W[0,14]: delta_[0,14] = 1
 delta[0,15]: delta_[0,15] + delta_[15,0] = 1
 delta_set_W[0,15]: delta_[0,15] = 1
 delta[0,16]: delta_[0,16] + delta_[16,0] = 1
 delta_set_W[0,16]: delta_[0,16] = 1
 delta[0,17]: delta_[0,17] + delta_[17,0] = 1
 delta_set_W[0,17]: delta_[0,17] = 1
 delta[0,18]: delta_[0,18] + delta_[18,0] = 1
 delta_set_W[0,18]: delta_[0,18] = 1
 delta[0,19]: delta_[0,19] + delta_[19,0] = 1
 delta_set_W[0,19]: delta_[0,19] = 1
 delta[0,20]: delta_[0,20] + delta_[20,0] = 1
 delta_set_W[0,20]: delta_[0,20] = 1
 delta[0,21]: delta_[0,21] + delta_[21,0] = 1
 delta_set_W[0,21]: delta_[0,21] = 1
 delta[0,22]: delta_[0,22] + delta_[22,0] = 1
 delta_set_W[0,22]: delta_[0,22] = 1
 delta[0,23]: delta_[0,23] + delta_[23,0] = 1
 delta_set_W[0,23]: delta_[0,23] = 1
 delta[0,24]: delta_[0,24] + delta_[24,0] = 1
 delta_set_W[0,24]: delta_[0,24] = 1
 delta[0,25]: delta_[0,25] + delta_[25,0] = 1
 delta_set_W[0,25]: delta_[0,25] = 1
 delta[0,26]: delta_[0,26] + delta_[26,0] = 1
 delta_set_W[0,26]: delta_[0,26] = 1
 delta[0,27]: delta_[0,27] + delta_[27,0] = 1
 delta_set_W[0,27]: delta_[0,27] = 1
 delta[0,28]: delta_[0,28] + delta_[28,0] = 1
 delta_set_W[0,28]: delta_[0,28] = 1
 delta[0,29]: delta_[0,29] + delta_[29,0] = 1
 delta_set_W[0,29]: delta_[0,29] = 1
 Alpha[1]: alpha_[1] + x_[1] >= 79
 Beta[1]: beta_[1] - x_[1] >= -79
 x[1]: alpha_[1] - beta_[1] + x_[1] = 79
 delta[1,0]: delta_[0,1] + delta_[1,0] = 1
 x_set_U[0]: x_[0] + 192 delta_[0,1] - x_[1] >= 96
 delta[1,2]: delta_[1,2] + delta_[2,1] = 1
 delta_set_V[1,2]: delta_[1,2] = 1
 x_set_V[2]: - x_[1] + x_[2] >= 96
 delta[1,3]: delta_[1,3] + delta_[3,1] = 1
 delta_set_V[1,3]: delta_[1,3] = 1
 x_set_V[3]: - x_[1] + x_[3] >= 200
 delta[1,4]: delta_[1,4] + delta_[4,1] = 1
 delta_set_W[1,4]: delta_[1,4] = 1
 delta[1,5]: delta_[1,5] + delta_[5,1] = 1
 delta_set_W[1,5]: delta_[1,5] = 1
 delta[1,6]: delta_[1,6] + delta_[6,1] = 1
 delta_set_W[1,6]: delta_[1,6] = 1
 delta[1,7]: delta_[1,7] + delta_[7,1] = 1
 delta_set_W[1,7]: delta_[1,7] = 1
 delta[1,8]: delta_[1,8] + delta_[8,1] = 1
 delta_set_W[1,8]: delta_[1,8] = 1
 delta[1,9]: delta_[1,9] + delta_[9,1] = 1
 delta_set_W[1,9]: delta_[1,9] = 1
 delta[1,10]: delta_[1,10] + delta_[10,1] = 1
 delta_set_W[1,10]: delta_[1,10] = 1
 delta[1,11]: delta_[1,11] + delta_[11,1] = 1
 delta_set_W[1,11]: delta_[1,11] = 1
 delta[1,12]: delta_[1,12] + delta_[12,1] = 1
 delta_set_W[1,12]: delta_[1,12] = 1
 delta[1,13]: delta_[1,13] + delta_[13,1] = 1
 delta_set_W[1,13]: delta_[1,13] = 1
 delta[1,14]: delta_[1,14] + delta_[14,1] = 1
 delta_set_W[1,14]: delta_[1,14] = 1
 delta[1,15]: delta_[1,15] + delta_[15,1] = 1
 delta_set_W[1,15]: delta_[1,15] = 1
 delta[1,16]: delta_[1,16] + delta_[16,1] = 1
 delta_set_W[1,16]: delta_[1,16] = 1
 delta[1,17]: delta_[1,17] + delta_[17,1] = 1
 delta_set_W[1,17]: delta_[1,17] = 1
 delta[1,18]: delta_[1,18] + delta_[18,1] = 1
 delta_set_W[1,18]: delta_[1,18] = 1
 delta[1,19]: delta_[1,19] + delta_[19,1] = 1
 delta_set_W[1,19]: delta_[1,19] = 1
 delta[1,20]: delta_[1,20] + delta_[20,1] = 1
 delta_set_W[1,20]: delta_[1,20] = 1
 delta[1,21]: delta_[1,21] + delta_[21,1] = 1
 delta_set_W[1,21]: delta_[1,21] = 1
 delta[1,22]: delta_[1,22] + delta_[22,1] = 1
 delta_set_W[1,22]: delta_[1,22] = 1
 delta[1,23]: delta_[1,23] + delta_[23,1] = 1
 delta_set_W[1,23]: delta_[1,23] = 1
 delta[1,24]: delta_[1,24] + delta_[24,1] = 1
 delta_set_W[1,24]: delta_[1,24] = 1
 delta[1,25]: delta_[1,25] + delta_[25,1] = 1
 delta_set_W[1,25]: delta_[1,25] = 1
 delta[1,26]: delta_[1,26] + delta_[26,1] = 1
 delta_set_W[1,26]: delta_[1,26] = 1
 delta[1,27]: delta_[1,27] + delta_[27,1] = 1
 delta_set_W[1,27]: delta_[1,27] = 1
 delta[1,28]: delta_[1,28] + delta_[28,1] = 1
 delta_set_W[1,28]: delta_[1,28] = 1
 delta[1,29]: delta_[1,29] + delta_[29,1] = 1
 delta_set_W[1,29]: delta_[1,29] = 1
 Alpha[2]: alpha_[2] + x_[2] >= 144
 Beta[2]: beta_[2] - x_[2] >= -144
 x[2]: alpha_[2] - beta_[2] + x_[2] = 144
 delta[2,0]: delta_[0,2] + delta_[2,0] = 1
 x_set_U[0]: x_[0] + 288 delta_[0,2] - x_[2] >= 96
 delta[2,1]: delta_[1,2] + delta_[2,1] = 1
 x_set_U[1]: x_[1] + 209 delta_[1,2] - x_[2] >= 96
 delta[2,3]: delta_[2,3] + delta_[3,2] = 1
 delta_set_V[2,3]: delta_[2,3] = 1
 x_set_V[3]: - x_[2] + x_[3] >= 200
 delta[2,4]: delta_[2,4] + delta_[4,2] = 1
 delta_set_V[2,4]: delta_[2,4] = 1
 x_set_V[4]: - x_[2] + x_[4] >= 96
 delta[2,5]: delta_[2,5] + delta_[5,2] = 1
 delta_set_W[2,5]: delta_[2,5] = 1
 delta[2,6]: delta_[2,6] + delta_[6,2] = 1
 delta_set_W[2,6]: delta_[2,6] = 1
 delta[2,7]: delta_[2,7] + delta_[7,2] = 1
 delta_set_W[2,7]: delta_[2,7] = 1
 delta[2,8]: delta_[2,8] + delta_[8,2] = 1
 delta_set_W[2,8]: delta_[2,8] = 1
 delta[2,9]: delta_[2,9] + delta_[9,2] = 1
 delta_set_W[2,9]: delta_[2,9] = 1
 delta[2,10]: delta_[2,10] + delta_[10,2] = 1
 delta_set_W[2,10]: delta_[2,10] = 1
 delta[2,11]: delta_[2,11] + delta_[11,2] = 1
 delta_set_W[2,11]: delta_[2,11] = 1
 delta[2,12]: delta_[2,12] + delta_[12,2] = 1
 delta_set_W[2,12]: delta_[2,12] = 1
 delta[2,13]: delta_[2,13] + delta_[13,2] = 1
 delta_set_W[2,13]: delta_[2,13] = 1
 delta[2,14]: delta_[2,14] + delta_[14,2] = 1
 delta_set_W[2,14]: delta_[2,14] = 1
 delta[2,15]: delta_[2,15] + delta_[15,2] = 1
 delta_set_W[2,15]: delta_[2,15] = 1
 delta[2,16]: delta_[2,16] + delta_[16,2] = 1
 delta_set_W[2,16]: delta_[2,16] = 1
 delta[2,17]: delta_[2,17] + delta_[17,2] = 1
 delta_set_W[2,17]: delta_[2,17] = 1
 delta[2,18]: delta_[2,18] + delta_[18,2] = 1
 delta_set_W[2,18]: delta_[2,18] = 1
 delta[2,19]: delta_[2,19] + delta_[19,2] = 1
 delta_set_W[2,19]: delta_[2,19] = 1
 delta[2,20]: delta_[2,20] + delta_[20,2] = 1
 delta_set_W[2,20]: delta_[2,20] = 1
 delta[2,21]: delta_[2,21] + delta_[21,2] = 1
 delta_set_W[2,21]: delta_[2,21] = 1
 delta[2,22]: delta_[2,22] + delta_[22,2] = 1
 delta_set_W[2,22]: delta_[2,22] = 1
 delta[2,23]: delta_[2,23] + delta_[23,2] = 1
 delta_set_W[2,23]: delta_[2,23] = 1
 delta[2,24]: delta_[2,24] + delta_[24,2] = 1
 delta_set_W[2,24]: delta_[2,24] = 1
 delta[2,25]: delta_[2,25] + delta_[25,2] = 1
 delta_set_W[2,25]: delta_[2,25] = 1
 delta[2,26]: delta_[2,26] + delta_[26,2] = 1
 delta_set_W[2,26]: delta_[2,26] = 1
 delta[2,27]: delta_[2,27] + delta_[27,2] = 1
 delta_set_W[2,27]: delta_[2,27] = 1
 delta[2,28]: delta_[2,28] + delta_[28,2] = 1
 delta_set_W[2,28]: delta_[2,28] = 1
 delta[2,29]: delta_[2,29] + delta_[29,2] = 1
 delta_set_W[2,29]: delta_[2,29] = 1
 Alpha[3]: alpha_[3] + x_[3] >= 204
 Beta[3]: beta_[3] - x_[3] >= -204
 x[3]: alpha_[3] - beta_[3] + x_[3] = 204
 delta[3,0]: delta_[0,3] + delta_[3,0] = 1
 x_set_U[0]: x_[0] + 464 delta_[0,3] - x_[3] >= 72
 delta[3,1]: delta_[1,3] + delta_[3,1] = 1
 x_set_U[1]: x_[1] + 385 delta_[1,3] - x_[3] >= 72
 delta[3,2]: delta_[2,3] + delta_[3,2] = 1
 x_set_U[2]: x_[2] + 320 delta_[2,3] - x_[3] >= 72
 delta[3,4]: delta_[3,4] + delta_[4,3] = 1
 x_set_U[4]: - x_[3] + x_[4] + 200 delta_[4,3] >= 72
 delta[3,5]: delta_[3,5] + delta_[5,3] = 1
 x_set_U[5]: - x_[3] + x_[5] + 144 delta_[5,3] >= 72
 delta[3,6]: delta_[3,6] + delta_[6,3] = 1
 delta_set_W[3,6]: delta_[3,6] = 1
 delta[3,7]: delta_[3,7] + delta_[7,3] = 1
 delta_set_W[3,7]: delta_[3,7] = 1
 delta[3,8]: delta_[3,8] + delta_[8,3] = 1
 delta_set_W[3,8]: delta_[3,8] = 1
 delta[3,9]: delta_[3,9] + delta_[9,3] = 1
 delta_set_W[3,9]: delta_[3,9] = 1
 delta[3,10]: delta_[3,10] + delta_[10,3] = 1
 delta_set_W[3,10]: delta_[3,10] = 1
 delta[3,11]: delta_[3,11] + delta_[11,3] = 1
 delta_set_W[3,11]: delta_[3,11] = 1
 delta[3,12]: delta_[3,12] + delta_[12,3] = 1
 delta_set_W[3,12]: delta_[3,12] = 1
 delta[3,13]: delta_[3,13] + delta_[13,3] = 1
 delta_set_W[3,13]: delta_[3,13] = 1
 delta[3,14]: delta_[3,14] + delta_[14,3] = 1
 delta_set_W[3,14]: delta_[3,14] = 1
 delta[3,15]: delta_[3,15] + delta_[15,3] = 1
 delta_set_W[3,15]: delta_[3,15] = 1
 delta[3,16]: delta_[3,16] + delta_[16,3] = 1
 delta_set_W[3,16]: delta_[3,16] = 1
 delta[3,17]: delta_[3,17] + delta_[17,3] = 1
 delta_set_W[3,17]: delta_[3,17] = 1
 delta[3,18]: delta_[3,18] + delta_[18,3] = 1
 delta_set_W[3,18]: delta_[3,18] = 1
 delta[3,19]: delta_[3,19] + delta_[19,3] = 1
 delta_set_W[3,19]: delta_[3,19] = 1
 delta[3,20]: delta_[3,20] + delta_[20,3] = 1
 delta_set_W[3,20]: delta_[3,20] = 1
 delta[3,21]: delta_[3,21] + delta_[21,3] = 1
 delta_set_W[3,21]: delta_[3,21] = 1
 delta[3,22]: delta_[3,22] + delta_[22,3] = 1
 delta_set_W[3,22]: delta_[3,22] = 1
 delta[3,23]: delta_[3,23] + delta_[23,3] = 1
 delta_set_W[3,23]: delta_[3,23] = 1
 delta[3,24]: delta_[3,24] + delta_[24,3] = 1
 delta_set_W[3,24]: delta_[3,24] = 1
 delta[3,25]: delta_[3,25] + delta_[25,3] = 1
 delta_set_W[3,25]: delta_[3,25] = 1
 delta[3,26]: delta_[3,26] + delta_[26,3] = 1
 delta_set_W[3,26]: delta_[3,26] = 1
 delta[3,27]: delta_[3,27] + delta_[27,3] = 1
 delta_set_W[3,27]: delta_[3,27] = 1
 delta[3,28]: delta_[3,28] + delta_[28,3] = 1
 delta_set_W[3,28]: delta_[3,28] = 1
 delta[3,29]: delta_[3,29] + delta_[29,3] = 1
 delta_set_W[3,29]: delta_[3,29] = 1
 Alpha[4]: alpha_[4] + x_[4] >= 264
 Beta[4]: beta_[4] - x_[4] >= -264
 x[4]: alpha_[4] - beta_[4] + x_[4] = 264
 delta[4,0]: delta_[0,4] + delta_[4,0] = 1
 x_set_U[0]: x_[0] + 560 delta_[0,4] - x_[4] >= 96
 delta[4,1]: delta_[1,4] + delta_[4,1] = 1
 x_set_U[1]: x_[1] + 481 delta_[1,4] - x_[4] >= 96
 delta[4,2]: delta_[2,4] + delta_[4,2] = 1
 x_set_U[2]: x_[2] + 416 delta_[2,4] - x_[4] >= 96
 delta[4,3]: delta_[3,4] + delta_[4,3] = 1
 x_set_U[3]: x_[3] + 460 delta_[3,4] - x_[4] >= 200
 delta[4,5]: delta_[4,5] + delta_[5,4] = 1
 x_set_U[5]: - x_[4] + x_[5] + 240 delta_[5,4] >= 96
 delta[4,6]: delta_[4,6] + delta_[6,4] = 1
 delta_set_V[4,6]: delta_[4,6] = 1
 x_set_V[6]: - x_[4] + x_[6] >= 200
 delta[4,7]: delta_[4,7] + delta_[7,4] = 1
 delta_set_W[4,7]: delta_[4,7] = 1
 delta[4,8]: delta_[4,8] + delta_[8,4] = 1
 delta_set_W[4,8]: delta_[4,8] = 1
 delta[4,9]: delta_[4,9] + delta_[9,4] = 1
 delta_set_W[4,9]: delta_[4,9] = 1
 delta[4,10]: delta_[4,10] + delta_[10,4] = 1
 delta_set_W[4,10]: delta_[4,10] = 1
 delta[4,11]: delta_[4,11] + delta_[11,4] = 1
 delta_set_W[4,11]: delta_[4,11] = 1
 delta[4,12]: delta_[4,12] + delta_[12,4] = 1
 delta_set_W[4,12]: delta_[4,12] = 1
 delta[4,13]: delta_[4,13] + delta_[13,4] = 1
 delta_set_W[4,13]: delta_[4,13] = 1
 delta[4,14]: delta_[4,14] + delta_[14,4] = 1
 delta_set_W[4,14]: delta_[4,14] = 1
 delta[4,15]: delta_[4,15] + delta_[15,4] = 1
 delta_set_W[4,15]: delta_[4,15] = 1
 delta[4,16]: delta_[4,16] + delta_[16,4] = 1
 delta_set_W[4,16]: delta_[4,16] = 1
 delta[4,17]: delta_[4,17] + delta_[17,4] = 1
 delta_set_W[4,17]: delta_[4,17] = 1
 delta[4,18]: delta_[4,18] + delta_[18,4] = 1
 delta_set_W[4,18]: delta_[4,18] = 1
 delta[4,19]: delta_[4,19] + delta_[19,4] = 1
 delta_set_W[4,19]: delta_[4,19] = 1
 delta[4,20]: delta_[4,20] + delta_[20,4] = 1
 delta_set_W[4,20]: delta_[4,20] = 1
 delta[4,21]: delta_[4,21] + delta_[21,4] = 1
 delta_set_W[4,21]: delta_[4,21] = 1
 delta[4,22]: delta_[4,22] + delta_[22,4] = 1
 delta_set_W[4,22]: delta_[4,22] = 1
 delta[4,23]: delta_[4,23] + delta_[23,4] = 1
 delta_set_W[4,23]: delta_[4,23] = 1
 delta[4,24]: delta_[4,24] + delta_[24,4] = 1
 delta_set_W[4,24]: delta_[4,24] = 1
 delta[4,25]: delta_[4,25] + delta_[25,4] = 1
 delta_set_W[4,25]: delta_[4,25] = 1
 delta[4,26]: delta_[4,26] + delta_[26,4] = 1
 delta_set_W[4,26]: delta_[4,26] = 1
 delta[4,27]: delta_[4,27] + delta_[27,4] = 1
 delta_set_W[4,27]: delta_[4,27] = 1
 delta[4,28]: delta_[4,28] + delta_[28,4] = 1
 delta_set_W[4,28]: delta_[4,28] = 1
 delta[4,29]: delta_[4,29] + delta_[29,4] = 1
 delta_set_W[4,29]: delta_[4,29] = 1
 Alpha[5]: alpha_[5] + x_[5] >= 320
 Beta[5]: beta_[5] - x_[5] >= -320
 x[5]: alpha_[5] - beta_[5] + x_[5] = 320
 delta[5,0]: delta_[0,5] + delta_[5,0] = 1
 x_set_U[0]: x_[0] + 656 delta_[0,5] - x_[5] >= 96
 delta[5,1]: delta_[1,5] + delta_[5,1] = 1
 x_set_U[1]: x_[1] + 577 delta_[1,5] - x_[5] >= 96
 delta[5,2]: delta_[2,5] + delta_[5,2] = 1
 x_set_U[2]: x_[2] + 512 delta_[2,5] - x_[5] >= 96
 delta[5,3]: delta_[3,5] + delta_[5,3] = 1
 x_set_U[3]: x_[3] + 556 delta_[3,5] - x_[5] >= 200
 delta[5,4]: delta_[4,5] + delta_[5,4] = 1
 x_set_U[4]: x_[4] + 392 delta_[4,5] - x_[5] >= 96
 delta[5,6]: delta_[5,6] + delta_[6,5] = 1
 x_set_U[6]: - x_[5] + x_[6] + 232 delta_[6,5] >= 200
 delta[5,7]: delta_[5,7] + delta_[7,5] = 1
 delta_set_V[5,7]: delta_[5,7] = 1
 x_set_V[7]: - x_[5] + x_[7] >= 96
 delta[5,8]: delta_[5,8] + delta_[8,5] = 1
 delta_set_V[5,8]: delta_[5,8] = 1
 x_set_V[8]: - x_[5] + x_[8] >= 200
 delta[5,9]: delta_[5,9] + delta_[9,5] = 1
 delta_set_W[5,9]: delta_[5,9] = 1
 delta[5,10]: delta_[5,10] + delta_[10,5] = 1
 delta_set_W[5,10]: delta_[5,10] = 1
 delta[5,11]: delta_[5,11] + delta_[11,5] = 1
 delta_set_W[5,11]: delta_[5,11] = 1
 delta[5,12]: delta_[5,12] + delta_[12,5] = 1
 delta_set_W[5,12]: delta_[5,12] = 1
 delta[5,13]: delta_[5,13] + delta_[13,5] = 1
 delta_set_W[5,13]: delta_[5,13] = 1
 delta[5,14]: delta_[5,14] + delta_[14,5] = 1
 delta_set_W[5,14]: delta_[5,14] = 1
 delta[5,15]: delta_[5,15] + delta_[15,5] = 1
 delta_set_W[5,15]: delta_[5,15] = 1
 delta[5,16]: delta_[5,16] + delta_[16,5] = 1
 delta_set_W[5,16]: delta_[5,16] = 1
 delta[5,17]: delta_[5,17] + delta_[17,5] = 1
 delta_set_W[5,17]: delta_[5,17] = 1
 delta[5,18]: delta_[5,18] + delta_[18,5] = 1
 delta_set_W[5,18]: delta_[5,18] = 1
 delta[5,19]: delta_[5,19] + delta_[19,5] = 1
 delta_set_W[5,19]: delta_[5,19] = 1
 delta[5,20]: delta_[5,20] + delta_[20,5] = 1
 delta_set_W[5,20]: delta_[5,20] = 1
 delta[5,21]: delta_[5,21] + delta_[21,5] = 1
 delta_set_W[5,21]: delta_[5,21] = 1
 delta[5,22]: delta_[5,22] + delta_[22,5] = 1
 delta_set_W[5,22]: delta_[5,22] = 1
 delta[5,23]: delta_[5,23] + delta_[23,5] = 1
 delta_set_W[5,23]: delta_[5,23] = 1
 delta[5,24]: delta_[5,24] + delta_[24,5] = 1
 delta_set_W[5,24]: delta_[5,24] = 1
 delta[5,25]: delta_[5,25] + delta_[25,5] = 1
 delta_set_W[5,25]: delta_[5,25] = 1
 delta[5,26]: delta_[5,26] + delta_[26,5] = 1
 delta_set_W[5,26]: delta_[5,26] = 1
 delta[5,27]: delta_[5,27] + delta_[27,5] = 1
 delta_set_W[5,27]: delta_[5,27] = 1
 delta[5,28]: delta_[5,28] + delta_[28,5] = 1
 delta_set_W[5,28]: delta_[5,28] = 1
 delta[5,29]: delta_[5,29] + delta_[29,5] = 1
 delta_set_W[5,29]: delta_[5,29] = 1
 Alpha[6]: alpha_[6] + x_[6] >= 528
 Beta[6]: beta_[6] - x_[6] >= -528
 x[6]: alpha_[6] - beta_[6] + x_[6] = 528
 delta[6,0]: delta_[0,6] + delta_[6,0] = 1
 x_set_U[0]: x_[0] + 832 delta_[0,6] - x_[6] >= 72
 delta[6,1]: delta_[1,6] + delta_[6,1] = 1
 x_set_U[1]: x_[1] + 753 delta_[1,6] - x_[6] >= 72
 delta[6,2]: delta_[2,6] + delta_[6,2] = 1
 x_set_U[2]: x_[2] + 688 delta_[2,6] - x_[6] >= 72
 delta[6,3]: delta_[3,6] + delta_[6,3] = 1
 x_set_U[3]: x_[3] + 636 delta_[3,6] - x_[6] >= 80
 delta[6,4]: delta_[4,6] + delta_[6,4] = 1
 x_set_U[4]: x_[4] + 568 delta_[4,6] - x_[6] >= 72
 delta[6,5]: delta_[5,6] + delta_[6,5] = 1
 x_set_U[5]: x_[5] + 512 delta_[5,6] - x_[6] >= 72
 delta[6,7]: delta_[6,7] + delta_[7,6] = 1
 x_set_U[7]: - x_[6] + x_[7] + 197 delta_[7,6] >= 72
 delta[6,8]: delta_[6,8] + delta_[8,6] = 1
 x_set_U[8]: - x_[6] + x_[8] + 110 delta_[8,6] >= 80
 delta[6,9]: delta_[6,9] + delta_[9,6] = 1
 delta_set_V[6,9]: delta_[6,9] = 1
 x_set_V[9]: - x_[6] + x_[9] >= 80
 delta[6,10]: delta_[6,10] + delta_[10,6] = 1
 delta_set_V[6,10]: delta_[6,10] = 1
 x_set_V[10]: - x_[6] + x_[10] >= 72
 delta[6,11]: delta_[6,11] + delta_[11,6] = 1
 delta_set_W[6,11]: delta_[6,11] = 1
 delta[6,12]: delta_[6,12] + delta_[12,6] = 1
 delta_set_W[6,12]: delta_[6,12] = 1
 delta[6,13]: delta_[6,13] + delta_[13,6] = 1
 delta_set_W[6,13]: delta_[6,13] = 1
 delta[6,14]: delta_[6,14] + delta_[14,6] = 1
 delta_set_W[6,14]: delta_[6,14] = 1
 delta[6,15]: delta_[6,15] + delta_[15,6] = 1
 delta_set_W[6,15]: delta_[6,15] = 1
 delta[6,16]: delta_[6,16] + delta_[16,6] = 1
 delta_set_W[6,16]: delta_[6,16] = 1
 delta[6,17]: delta_[6,17] + delta_[17,6] = 1
 delta_set_W[6,17]: delta_[6,17] = 1
 delta[6,18]: delta_[6,18] + delta_[18,6] = 1
 delta_set_W[6,18]: delta_[6,18] = 1
 delta[6,19]: delta_[6,19] + delta_[19,6] = 1
 delta_set_W[6,19]: delta_[6,19] = 1
 delta[6,20]: delta_[6,20] + delta_[20,6] = 1
 delta_set_W[6,20]: delta_[6,20] = 1
 delta[6,21]: delta_[6,21] + delta_[21,6] = 1
 delta_set_W[6,21]: delta_[6,21] = 1
 delta[6,22]: delta_[6,22] + delta_[22,6] = 1
 delta_set_W[6,22]: delta_[6,22] = 1
 delta[6,23]: delta_[6,23] + delta_[23,6] = 1
 delta_set_W[6,23]: delta_[6,23] = 1
 delta[6,24]: delta_[6,24] + delta_[24,6] = 1
 delta_set_W[6,24]: delta_[6,24] = 1
 delta[6,25]: delta_[6,25] + delta_[25,6] = 1
 delta_set_W[6,25]: delta_[6,25] = 1
 delta[6,26]: delta_[6,26] + delta_[26,6] = 1
 delta_set_W[6,26]: delta_[6,26] = 1
 delta[6,27]: delta_[6,27] + delta_[27,6] = 1
 delta_set_W[6,27]: delta_[6,27] = 1
 delta[6,28]: delta_[6,28] + delta_[28,6] = 1
 delta_set_W[6,28]: delta_[6,28] = 1
 delta[6,29]: delta_[6,29] + delta_[29,6] = 1
 delta_set_W[6,29]: delta_[6,29] = 1
 Alpha[7]: alpha_[7] + x_[7] >= 635
 Beta[7]: beta_[7] - x_[7] >= -635
 x[7]: alpha_[7] - beta_[7] + x_[7] = 635
 delta[7,0]: delta_[0,7] + delta_[7,0] = 1
 x_set_U[0]: x_[0] + 928 delta_[0,7] - x_[7] >= 96
 delta[7,1]: delta_[1,7] + delta_[7,1] = 1
 x_set_U[1]: x_[1] + 849 delta_[1,7] - x_[7] >= 96
 delta[7,2]: delta_[2,7] + delta_[7,2] = 1
 x_set_U[2]: x_[2] + 784 delta_[2,7] - x_[7] >= 96
 delta[7,3]: delta_[3,7] + delta_[7,3] = 1
 x_set_U[3]: x_[3] + 828 delta_[3,7] - x_[7] >= 200
 delta[7,4]: delta_[4,7] + delta_[7,4] = 1
 x_set_U[4]: x_[4] + 664 delta_[4,7] - x_[7] >= 96
 delta[7,5]: delta_[5,7] + delta_[7,5] = 1
 x_set_U[5]: x_[5] + 608 delta_[5,7] - x_[7] >= 96
 delta[7,6]: delta_[6,7] + delta_[7,6] = 1
 x_set_U[6]: x_[6] + 504 delta_[6,7] - x_[7] >= 200
 delta[7,8]: delta_[7,8] + delta_[8,7] = 1
 x_set_U[8]: - x_[7] + x_[8] + 302 delta_[8,7] >= 200
 delta[7,9]: delta_[7,9] + delta_[9,7] = 1
 x_set_U[9]: - x_[7] + x_[9] + 266 delta_[9,7] >= 200
 delta[7,10]: delta_[7,10] + delta_[10,7] = 1
 x_set_U[10]: - x_[7] + x_[10] + 138 delta_[10,7] >= 96
 delta[7,11]: delta_[7,11] + delta_[11,7] = 1
 delta_set_V[7,11]: delta_[7,11] = 1
 x_set_V[11]: - x_[7] + x_[11] >= 96
 delta[7,12]: delta_[7,12] + delta_[12,7] = 1
 delta_set_W[7,12]: delta_[7,12] = 1
 delta[7,13]: delta_[7,13] + delta_[13,7] = 1
 delta_set_W[7,13]: delta_[7,13] = 1
 delta[7,14]: delta_[7,14] + delta_[14,7] = 1
 delta_set_W[7,14]: delta_[7,14] = 1
 delta[7,15]: delta_[7,15] + delta_[15,7] = 1
 delta_set_W[7,15]: delta_[7,15] = 1
 delta[7,16]: delta_[7,16] + delta_[16,7] = 1
 delta_set_W[7,16]: delta_[7,16] = 1
 delta[7,17]: delta_[7,17] + delta_[17,7] = 1
 delta_set_W[7,17]: delta_[7,17] = 1
 delta[7,18]: delta_[7,18] + delta_[18,7] = 1
 delta_set_W[7,18]: delta_[7,18] = 1
 delta[7,19]: delta_[7,19] + delta_[19,7] = 1
 delta_set_W[7,19]: delta_[7,19] = 1
 delta[7,20]: delta_[7,20] + delta_[20,7] = 1
 delta_set_W[7,20]: delta_[7,20] = 1
 delta[7,21]: delta_[7,21] + delta_[21,7] = 1
 delta_set_W[7,21]: delta_[7,21] = 1
 delta[7,22]: delta_[7,22] + delta_[22,7] = 1
 delta_set_W[7,22]: delta_[7,22] = 1
 delta[7,23]: delta_[7,23] + delta_[23,7] = 1
 delta_set_W[7,23]: delta_[7,23] = 1
 delta[7,24]: delta_[7,24] + delta_[24,7] = 1
 delta_set_W[7,24]: delta_[7,24] = 1
 delta[7,25]: delta_[7,25] + delta_[25,7] = 1
 delta_set_W[7,25]: delta_[7,25] = 1
 delta[7,26]: delta_[7,26] + delta_[26,7] = 1
 delta_set_W[7,26]: delta_[7,26] = 1
 delta[7,27]: delta_[7,27] + delta_[27,7] = 1
 delta_set_W[7,27]: delta_[7,27] = 1
 delta[7,28]: delta_[7,28] + delta_[28,7] = 1
 delta_set_W[7,28]: delta_[7,28] = 1
 delta[7,29]: delta_[7,29] + delta_[29,7] = 1
 delta_set_W[7,29]: delta_[7,29] = 1
 Alpha[8]: alpha_[8] + x_[8] >= 730
 Beta[8]: beta_[8] - x_[8] >= -730
 x[8]: alpha_[8] - beta_[8] + x_[8] = 730
 delta[8,0]: delta_[0,8] + delta_[8,0] = 1
 x_set_U[0]: x_[0] + 1104 delta_[0,8] - x_[8] >= 72
 delta[8,1]: delta_[1,8] + delta_[8,1] = 1
 x_set_U[1]: x_[1] + 1025 delta_[1,8] - x_[8] >= 72
 delta[8,2]: delta_[2,8] + delta_[8,2] = 1
 x_set_U[2]: x_[2] + 960 delta_[2,8] - x_[8] >= 72
 delta[8,3]: delta_[3,8] + delta_[8,3] = 1
 x_set_U[3]: x_[3] + 908 delta_[3,8] - x_[8] >= 80
 delta[8,4]: delta_[4,8] + delta_[8,4] = 1
 x_set_U[4]: x_[4] + 840 delta_[4,8] - x_[8] >= 72
 delta[8,5]: delta_[5,8] + delta_[8,5] = 1
 x_set_U[5]: x_[5] + 784 delta_[5,8] - x_[8] >= 72
 delta[8,6]: delta_[6,8] + delta_[8,6] = 1
 x_set_U[6]: x_[6] + 584 delta_[6,8] - x_[8] >= 80
 delta[8,7]: delta_[7,8] + delta_[8,7] = 1
 x_set_U[7]: x_[7] + 469 delta_[7,8] - x_[8] >= 72
 delta[8,9]: delta_[8,9] + delta_[9,8] = 1
 x_set_U[9]: - x_[8] + x_[9] + 346 delta_[9,8] >= 80
 delta[8,10]: delta_[8,10] + delta_[10,8] = 1
 x_set_U[10]: - x_[8] + x_[10] + 314 delta_[10,8] >= 72
 delta[8,11]: delta_[8,11] + delta_[11,8] = 1
 x_set_U[11]: - x_[8] + x_[11] + 184 delta_[11,8] >= 72
 delta[8,12]: delta_[8,12] + delta_[12,8] = 1
 delta_set_V[8,12]: delta_[8,12] = 1
 x_set_V[12]: - x_[8] + x_[12] >= 70
 delta[8,13]: delta_[8,13] + delta_[13,8] = 1
 delta_set_V[8,13]: delta_[8,13] = 1
 x_set_V[13]: - x_[8] + x_[13] >= 110
 delta[8,14]: delta_[8,14] + delta_[14,8] = 1
 delta_set_W[8,14]: delta_[8,14] = 1
 delta[8,15]: delta_[8,15] + delta_[15,8] = 1
 delta_set_W[8,15]: delta_[8,15] = 1
 delta[8,16]: delta_[8,16] + delta_[16,8] = 1
 delta_set_W[8,16]: delta_[8,16] = 1
 delta[8,17]: delta_[8,17] + delta_[17,8] = 1
 delta_set_W[8,17]: delta_[8,17] = 1
 delta[8,18]: delta_[8,18] + delta_[18,8] = 1
 delta_set_W[8,18]: delta_[8,18] = 1
 delta[8,19]: delta_[8,19] + delta_[19,8] = 1
 delta_set_W[8,19]: delta_[8,19] = 1
 delta[8,20]: delta_[8,20] + delta_[20,8] = 1
 delta_set_W[8,20]: delta_[8,20] = 1
 delta[8,21]: delta_[8,21] + delta_[21,8] = 1
 delta_set_W[8,21]: delta_[8,21] = 1
 delta[8,22]: delta_[8,22] + delta_[22,8] = 1
 delta_set_W[8,22]: delta_[8,22] = 1
 delta[8,23]: delta_[8,23] + delta_[23,8] = 1
 delta_set_W[8,23]: delta_[8,23] = 1
 delta[8,24]: delta_[8,24] + delta_[24,8] = 1
 delta_set_W[8,24]: delta_[8,24] = 1
 delta[8,25]: delta_[8,25] + delta_[25,8] = 1
 delta_set_W[8,25]: delta_[8,25] = 1
 delta[8,26]: delta_[8,26] + delta_[26,8] = 1
 delta_set_W[8,26]: delta_[8,26] = 1
 delta[8,27]: delta_[8,27] + delta_[27,8] = 1
 delta_set_W[8,27]: delta_[8,27] = 1
 delta[8,28]: delta_[8,28] + delta_[28,8] = 1
 delta_set_W[8,28]: delta_[8,28] = 1
 delta[8,29]: delta_[8,29] + delta_[29,8] = 1
 delta_set_W[8,29]: delta_[8,29] = 1
 Alpha[9]: alpha_[9] + x_[9] >= 766
 Beta[9]: beta_[9] - x_[9] >= -766
 x[9]: alpha_[9] - beta_[9] + x_[9] = 766
 delta[9,0]: delta_[0,9] + delta_[9,0] = 1
 x_set_U[0]: x_[0] + 1184 delta_[0,9] - x_[9] >= 72
 delta[9,1]: delta_[1,9] + delta_[9,1] = 1
 x_set_U[1]: x_[1] + 1105 delta_[1,9] - x_[9] >= 72
 delta[9,2]: delta_[2,9] + delta_[9,2] = 1
 x_set_U[2]: x_[2] + 1040 delta_[2,9] - x_[9] >= 72
 delta[9,3]: delta_[3,9] + delta_[9,3] = 1
 x_set_U[3]: x_[3] + 988 delta_[3,9] - x_[9] >= 80
 delta[9,4]: delta_[4,9] + delta_[9,4] = 1
 x_set_U[4]: x_[4] + 920 delta_[4,9] - x_[9] >= 72
 delta[9,5]: delta_[5,9] + delta_[9,5] = 1
 x_set_U[5]: x_[5] + 864 delta_[5,9] - x_[9] >= 72
 delta[9,6]: delta_[6,9] + delta_[9,6] = 1
 x_set_U[6]: x_[6] + 664 delta_[6,9] - x_[9] >= 80
 delta[9,7]: delta_[7,9] + delta_[9,7] = 1
 x_set_U[7]: x_[7] + 549 delta_[7,9] - x_[9] >= 72
 delta[9,8]: delta_[8,9] + delta_[9,8] = 1
 x_set_U[8]: x_[8] + 462 delta_[8,9] - x_[9] >= 80
 delta[9,10]: delta_[9,10] + delta_[10,9] = 1
 x_set_U[10]: - x_[9] + x_[10] + 394 delta_[10,9] >= 72
 delta[9,11]: delta_[9,11] + delta_[11,9] = 1
 x_set_U[11]: - x_[9] + x_[11] + 264 delta_[11,9] >= 72
 delta[9,12]: delta_[9,12] + delta_[12,9] = 1
 x_set_U[12]: - x_[9] + x_[12] + 136 delta_[12,9] >= 70
 delta[9,13]: delta_[9,13] + delta_[13,9] = 1
 x_set_U[13]: - x_[9] + x_[13] + 116 delta_[13,9] >= 110
 delta[9,14]: delta_[9,14] + delta_[14,9] = 1
 delta_set_V[9,14]: delta_[9,14] = 1
 x_set_V[14]: - x_[9] + x_[14] >= 80
 delta[9,15]: delta_[9,15] + delta_[15,9] = 1
 delta_set_V[9,15]: delta_[9,15] = 1
 x_set_V[15]: - x_[9] + x_[15] >= 80
 delta[9,16]: delta_[9,16] + delta_[16,9] = 1
 delta_set_W[9,16]: delta_[9,16] = 1
 delta[9,17]: delta_[9,17] + delta_[17,9] = 1
 delta_set_W[9,17]: delta_[9,17] = 1
 delta[9,18]: delta_[9,18] + delta_[18,9] = 1
 delta_set_W[9,18]: delta_[9,18] = 1
 delta[9,19]: delta_[9,19] + delta_[19,9] = 1
 delta_set_W[9,19]: delta_[9,19] = 1
 delta[9,20]: delta_[9,20] + delta_[20,9] = 1
 delta_set_W[9,20]: delta_[9,20] = 1
 delta[9,21]: delta_[9,21] + delta_[21,9] = 1
 delta_set_W[9,21]: delta_[9,21] = 1
 delta[9,22]: delta_[9,22] + delta_[22,9] = 1
 delta_set_W[9,22]: delta_[9,22] = 1
 delta[9,23]: delta_[9,23] + delta_[23,9] = 1
 delta_set_W[9,23]: delta_[9,23] = 1
 delta[9,24]: delta_[9,24] + delta_[24,9] = 1
 delta_set_W[9,24]: delta_[9,24] = 1
 delta[9,25]: delta_[9,25] + delta_[25,9] = 1
 delta_set_W[9,25]: delta_[9,25] = 1
 delta[9,26]: delta_[9,26] + delta_[26,9] = 1
 delta_set_W[9,26]: delta_[9,26] = 1
 delta[9,27]: delta_[9,27] + delta_[27,9] = 1
 delta_set_W[9,27]: delta_[9,27] = 1
 delta[9,28]: delta_[9,28] + delta_[28,9] = 1
 delta_set_W[9,28]: delta_[9,28] = 1
 delta[9,29]: delta_[9,29] + delta_[29,9] = 1
 delta_set_W[9,29]: delta_[9,29] = 1
 Alpha[10]: alpha_[10] + x_[10] >= 790
 Beta[10]: beta_[10] - x_[10] >= -790
 x[10]: alpha_[10] - beta_[10] + x_[10] = 790
 delta[10,0]: delta_[0,10] + delta_[10,0] = 1
 x_set_U[0]: x_[0] + 1280 delta_[0,10] - x_[10] >= 96
 delta[10,1]: delta_[1,10] + delta_[10,1] = 1
 x_set_U[1]: x_[1] + 1201 delta_[1,10] - x_[10] >= 96
 delta[10,2]: delta_[2,10] + delta_[10,2] = 1
 x_set_U[2]: x_[2] + 1136 delta_[2,10] - x_[10] >= 96
 delta[10,3]: delta_[3,10] + delta_[10,3] = 1
 x_set_U[3]: x_[3] + 1180 delta_[3,10] - x_[10] >= 200
 delta[10,4]: delta_[4,10] + delta_[10,4] = 1
 x_set_U[4]: x_[4] + 1016 delta_[4,10] - x_[10] >= 96
 delta[10,5]: delta_[5,10] + delta_[10,5] = 1
 x_set_U[5]: x_[5] + 960 delta_[5,10] - x_[10] >= 96
 delta[10,6]: delta_[6,10] + delta_[10,6] = 1
 x_set_U[6]: x_[6] + 856 delta_[6,10] - x_[10] >= 200
 delta[10,7]: delta_[7,10] + delta_[10,7] = 1
 x_set_U[7]: x_[7] + 645 delta_[7,10] - x_[10] >= 96
 delta[10,8]: delta_[8,10] + delta_[10,8] = 1
 x_set_U[8]: x_[8] + 654 delta_[8,10] - x_[10] >= 200
 delta[10,9]: delta_[9,10] + delta_[10,9] = 1
 x_set_U[9]: x_[9] + 618 delta_[9,10] - x_[10] >= 200
 delta[10,11]: delta_[10,11] + delta_[11,10] = 1
 x_set_U[11]: - x_[10] + x_[11] + 360 delta_[11,10] >= 96
 delta[10,12]: delta_[10,12] + delta_[12,10] = 1
 x_set_U[12]: - x_[10] + x_[12] + 319 delta_[12,10] >= 181
 delta[10,13]: delta_[10,13] + delta_[13,10] = 1
 x_set_U[13]: - x_[10] + x_[13] + 306 delta_[13,10] >= 228
 delta[10,14]: delta_[10,14] + delta_[14,10] = 1
 x_set_U[14]: - x_[10] + x_[14] + 248 delta_[14,10] >= 200
 delta[10,15]: delta_[10,15] + delta_[15,10] = 1
 x_set_U[15]: - x_[10] + x_[15] + 218 delta_[15,10] >= 200
 delta[10,16]: delta_[10,16] + delta_[16,10] = 1
 delta_set_V[10,16]: delta_[10,16] = 1
 x_set_V[16]: - x_[10] + x_[16] >= 200
 delta[10,17]: delta_[10,17] + delta_[17,10] = 1
 delta_set_W[10,17]: delta_[10,17] = 1
 delta[10,18]: delta_[10,18] + delta_[18,10] = 1
 delta_set_W[10,18]: delta_[10,18] = 1
 delta[10,19]: delta_[10,19] + delta_[19,10] = 1
 delta_set_W[10,19]: delta_[10,19] = 1
 delta[10,20]: delta_[10,20] + delta_[20,10] = 1
 delta_set_W[10,20]: delta_[10,20] = 1
 delta[10,21]: delta_[10,21] + delta_[21,10] = 1
 delta_set_W[10,21]: delta_[10,21] = 1
 delta[10,22]: delta_[10,22] + delta_[22,10] = 1
 delta_set_W[10,22]: delta_[10,22] = 1
 delta[10,23]: delta_[10,23] + delta_[23,10] = 1
 delta_set_W[10,23]: delta_[10,23] = 1
 delta[10,24]: delta_[10,24] + delta_[24,10] = 1
 delta_set_W[10,24]: delta_[10,24] = 1
 delta[10,25]: delta_[10,25] + delta_[25,10] = 1
 delta_set_W[10,25]: delta_[10,25] = 1
 delta[10,26]: delta_[10,26] + delta_[26,10] = 1
 delta_set_W[10,26]: delta_[10,26] = 1
 delta[10,27]: delta_[10,27] + delta_[27,10] = 1
 delta_set_W[10,27]: delta_[10,27] = 1
 delta[10,28]: delta_[10,28] + delta_[28,10] = 1
 delta_set_W[10,28]: delta_[10,28] = 1
 delta[10,29]: delta_[10,29] + delta_[29,10] = 1
 delta_set_W[10,29]: delta_[10,29] = 1
 Alpha[11]: alpha_[11] + x_[11] >= 920
 Beta[11]: beta_[11] - x_[11] >= -920
 x[11]: alpha_[11] - beta_[11] + x_[11] = 920
 delta[11,0]: delta_[0,11] + delta_[11,0] = 1
 x_set_U[0]: x_[0] + 1376 delta_[0,11] - x_[11] >= 96
 delta[11,1]: delta_[1,11] + delta_[11,1] = 1
 x_set_U[1]: x_[1] + 1297 delta_[1,11] - x_[11] >= 96
 delta[11,2]: delta_[2,11] + delta_[11,2] = 1
 x_set_U[2]: x_[2] + 1232 delta_[2,11] - x_[11] >= 96
 delta[11,3]: delta_[3,11] + delta_[11,3] = 1
 x_set_U[3]: x_[3] + 1276 delta_[3,11] - x_[11] >= 200
 delta[11,4]: delta_[4,11] + delta_[11,4] = 1
 x_set_U[4]: x_[4] + 1112 delta_[4,11] - x_[11] >= 96
 delta[11,5]: delta_[5,11] + delta_[11,5] = 1
 x_set_U[5]: x_[5] + 1056 delta_[5,11] - x_[11] >= 96
 delta[11,6]: delta_[6,11] + delta_[11,6] = 1
 x_set_U[6]: x_[6] + 952 delta_[6,11] - x_[11] >= 200
 delta[11,7]: delta_[7,11] + delta_[11,7] = 1
 x_set_U[7]: x_[7] + 741 delta_[7,11] - x_[11] >= 96
 delta[11,8]: delta_[8,11] + delta_[11,8] = 1
 x_set_U[8]: x_[8] + 750 delta_[8,11] - x_[11] >= 200
 delta[11,9]: delta_[9,11] + delta_[11,9] = 1
 x_set_U[9]: x_[9] + 714 delta_[9,11] - x_[11] >= 200
 delta[11,10]: delta_[10,11] + delta_[11,10] = 1
 x_set_U[10]: x_[10] + 586 delta_[10,11] - x_[11] >= 96
 delta[11,12]: delta_[11,12] + delta_[12,11] = 1
 x_set_U[12]: - x_[11] + x_[12] + 415 delta_[12,11] >= 181
 delta[11,13]: delta_[11,13] + delta_[13,11] = 1
 x_set_U[13]: - x_[11] + x_[13] + 402 delta_[13,11] >= 228
 delta[11,14]: delta_[11,14] + delta_[14,11] = 1
 x_set_U[14]: - x_[11] + x_[14] + 344 delta_[14,11] >= 200
 delta[11,15]: delta_[11,15] + delta_[15,11] = 1
 x_set_U[15]: - x_[11] + x_[15] + 314 delta_[15,11] >= 200
 delta[11,16]: delta_[11,16] + delta_[16,11] = 1
 x_set_U[16]: - x_[11] + x_[16] + 247 delta_[16,11] >= 200
 delta[11,17]: delta_[11,17] + delta_[17,11] = 1
 delta_set_W[11,17]: delta_[11,17] = 1
 delta[11,18]: delta_[11,18] + delta_[18,11] = 1
 delta_set_W[11,18]: delta_[11,18] = 1
 delta[11,19]: delta_[11,19] + delta_[19,11] = 1
 delta_set_W[11,19]: delta_[11,19] = 1
 delta[11,20]: delta_[11,20] + delta_[20,11] = 1
 delta_set_W[11,20]: delta_[11,20] = 1
 delta[11,21]: delta_[11,21] + delta_[21,11] = 1
 delta_set_W[11,21]: delta_[11,21] = 1
 delta[11,22]: delta_[11,22] + delta_[22,11] = 1
 delta_set_W[11,22]: delta_[11,22] = 1
 delta[11,23]: delta_[11,23] + delta_[23,11] = 1
 delta_set_W[11,23]: delta_[11,23] = 1
 delta[11,24]: delta_[11,24] + delta_[24,11] = 1
 delta_set_W[11,24]: delta_[11,24] = 1
 delta[11,25]: delta_[11,25] + delta_[25,11] = 1
 delta_set_W[11,25]: delta_[11,25] = 1
 delta[11,26]: delta_[11,26] + delta_[26,11] = 1
 delta_set_W[11,26]: delta_[11,26] = 1
 delta[11,27]: delta_[11,27] + delta_[27,11] = 1
 delta_set_W[11,27]: delta_[11,27] = 1
 delta[11,28]: delta_[11,28] + delta_[28,11] = 1
 delta_set_W[11,28]: delta_[11,28] = 1
 delta[11,29]: delta_[11,29] + delta_[29,11] = 1
 delta_set_W[11,29]: delta_[11,29] = 1
 Alpha[12]: alpha_[12] + x_[12] >= 1046
 Beta[12]: beta_[12] - x_[12] >= -1046
 x[12]: alpha_[12] - beta_[12] + x_[12] = 1046
 delta[12,0]: delta_[0,12] + delta_[12,0] = 1
 x_set_U[0]: x_[0] + 1533 delta_[0,12] - x_[12] >= 72
 delta[12,1]: delta_[1,12] + delta_[12,1] = 1
 x_set_U[1]: x_[1] + 1454 delta_[1,12] - x_[12] >= 72
 delta[12,2]: delta_[2,12] + delta_[12,2] = 1
 x_set_U[2]: x_[2] + 1389 delta_[2,12] - x_[12] >= 72
 delta[12,3]: delta_[3,12] + delta_[12,3] = 1
 x_set_U[3]: x_[3] + 1357 delta_[3,12] - x_[12] >= 100
 delta[12,4]: delta_[4,12] + delta_[12,4] = 1
 x_set_U[4]: x_[4] + 1269 delta_[4,12] - x_[12] >= 72
 delta[12,5]: delta_[5,12] + delta_[12,5] = 1
 x_set_U[5]: x_[5] + 1213 delta_[5,12] - x_[12] >= 72
 delta[12,6]: delta_[6,12] + delta_[12,6] = 1
 x_set_U[6]: x_[6] + 1033 delta_[6,12] - x_[12] >= 100
 delta[12,7]: delta_[7,12] + delta_[12,7] = 1
 x_set_U[7]: x_[7] + 898 delta_[7,12] - x_[12] >= 72
 delta[12,8]: delta_[8,12] + delta_[12,8] = 1
 x_set_U[8]: x_[8] + 831 delta_[8,12] - x_[12] >= 100
 delta[12,9]: delta_[9,12] + delta_[12,9] = 1
 x_set_U[9]: x_[9] + 795 delta_[9,12] - x_[12] >= 100
 delta[12,10]: delta_[10,12] + delta_[12,10] = 1
 x_set_U[10]: x_[10] + 743 delta_[10,12] - x_[12] >= 72
 delta[12,11]: delta_[11,12] + delta_[12,11] = 1
 x_set_U[11]: x_[11] + 613 delta_[11,12] - x_[12] >= 72
 delta[12,13]: delta_[12,13] + delta_[13,12] = 1
 x_set_U[13]: - x_[12] + x_[13] + 485 delta_[13,12] >= 130
 delta[12,14]: delta_[12,14] + delta_[14,12] = 1
 x_set_U[14]: - x_[12] + x_[14] + 425 delta_[14,12] >= 100
 delta[12,15]: delta_[12,15] + delta_[15,12] = 1
 x_set_U[15]: - x_[12] + x_[15] + 395 delta_[15,12] >= 100
 delta[12,16]: delta_[12,16] + delta_[16,12] = 1
 x_set_U[16]: - x_[12] + x_[16] + 328 delta_[16,12] >= 100
 delta[12,17]: delta_[12,17] + delta_[17,12] = 1
 delta_set_W[12,17]: delta_[12,17] = 1
 delta[12,18]: delta_[12,18] + delta_[18,12] = 1
 delta_set_W[12,18]: delta_[12,18] = 1
 delta[12,19]: delta_[12,19] + delta_[19,12] = 1
 delta_set_W[12,19]: delta_[12,19] = 1
 delta[12,20]: delta_[12,20] + delta_[20,12] = 1
 delta_set_W[12,20]: delta_[12,20] = 1
 delta[12,21]: delta_[12,21] + delta_[21,12] = 1
 delta_set_W[12,21]: delta_[12,21] = 1
 delta[12,22]: delta_[12,22] + delta_[22,12] = 1
 delta_set_W[12,22]: delta_[12,22] = 1
 delta[12,23]: delta_[12,23] + delta_[23,12] = 1
 delta_set_W[12,23]: delta_[12,23] = 1
 delta[12,24]: delta_[12,24] + delta_[24,12] = 1
 delta_set_W[12,24]: delta_[12,24] = 1
 delta[12,25]: delta_[12,25] + delta_[25,12] = 1
 delta_set_W[12,25]: delta_[12,25] = 1
 delta[12,26]: delta_[12,26] + delta_[26,12] = 1
 delta_set_W[12,26]: delta_[12,26] = 1
 delta[12,27]: delta_[12,27] + delta_[27,12] = 1
 delta_set_W[12,27]: delta_[12,27] = 1
 delta[12,28]: delta_[12,28] + delta_[28,12] = 1
 delta_set_W[12,28]: delta_[12,28] = 1
 delta[12,29]: delta_[12,29] + delta_[29,12] = 1
 delta_set_W[12,29]: delta_[12,29] = 1
 Alpha[13]: alpha_[13] + x_[13] >= 1106
 Beta[13]: beta_[13] - x_[13] >= -1106
 x[13]: alpha_[13] - beta_[13] + x_[13] = 1106
 delta[13,0]: delta_[0,13] + delta_[13,0] = 1
 x_set_U[0]: x_[0] + 1663 delta_[0,13] - x_[13] >= 72
 delta[13,1]: delta_[1,13] + delta_[13,1] = 1
 x_set_U[1]: x_[1] + 1584 delta_[1,13] - x_[13] >= 72
 delta[13,2]: delta_[2,13] + delta_[13,2] = 1
 x_set_U[2]: x_[2] + 1519 delta_[2,13] - x_[13] >= 72
 delta[13,3]: delta_[3,13] + delta_[13,3] = 1
 x_set_U[3]: x_[3] + 1467 delta_[3,13] - x_[13] >= 80
 delta[13,4]: delta_[4,13] + delta_[13,4] = 1
 x_set_U[4]: x_[4] + 1399 delta_[4,13] - x_[13] >= 72
 delta[13,5]: delta_[5,13] + delta_[13,5] = 1
 x_set_U[5]: x_[5] + 1343 delta_[5,13] - x_[13] >= 72
 delta[13,6]: delta_[6,13] + delta_[13,6] = 1
 x_set_U[6]: x_[6] + 1143 delta_[6,13] - x_[13] >= 80
 delta[13,7]: delta_[7,13] + delta_[13,7] = 1
 x_set_U[7]: x_[7] + 1028 delta_[7,13] - x_[13] >= 72
 delta[13,8]: delta_[8,13] + delta_[13,8] = 1
 x_set_U[8]: x_[8] + 941 delta_[8,13] - x_[13] >= 80
 delta[13,9]: delta_[9,13] + delta_[13,9] = 1
 x_set_U[9]: x_[9] + 905 delta_[9,13] - x_[13] >= 80
 delta[13,10]: delta_[10,13] + delta_[13,10] = 1
 x_set_U[10]: x_[10] + 873 delta_[10,13] - x_[13] >= 72
 delta[13,11]: delta_[11,13] + delta_[13,11] = 1
 x_set_U[11]: x_[11] + 743 delta_[11,13] - x_[13] >= 72
 delta[13,12]: delta_[12,13] + delta_[13,12] = 1
 x_set_U[12]: x_[12] + 615 delta_[12,13] - x_[13] >= 70
 delta[13,14]: delta_[13,14] + delta_[14,13] = 1
 x_set_U[14]: - x_[13] + x_[14] + 535 delta_[14,13] >= 80
 delta[13,15]: delta_[13,15] + delta_[15,13] = 1
 x_set_U[15]: - x_[13] + x_[15] + 505 delta_[15,13] >= 80
 delta[13,16]: delta_[13,16] + delta_[16,13] = 1
 x_set_U[16]: - x_[13] + x_[16] + 438 delta_[16,13] >= 80
 delta[13,17]: delta_[13,17] + delta_[17,13] = 1
 delta_set_V[13,17]: delta_[13,17] = 1
 x_set_V[17]: - x_[13] + x_[17] >= 72
 delta[13,18]: delta_[13,18] + delta_[18,13] = 1
 delta_set_W[13,18]: delta_[13,18] = 1
 delta[13,19]: delta_[13,19] + delta_[19,13] = 1
 delta_set_W[13,19]: delta_[13,19] = 1
 delta[13,20]: delta_[13,20] + delta_[20,13] = 1
 delta_set_W[13,20]: delta_[13,20] = 1
 delta[13,21]: delta_[13,21] + delta_[21,13] = 1
 delta_set_W[13,21]: delta_[13,21] = 1
 delta[13,22]: delta_[13,22] + delta_[22,13] = 1
 delta_set_W[13,22]: delta_[13,22] = 1
 delta[13,23]: delta_[13,23] + delta_[23,13] = 1
 delta_set_W[13,23]: delta_[13,23] = 1
 delta[13,24]: delta_[13,24] + delta_[24,13] = 1
 delta_set_W[13,24]: delta_[13,24] = 1
 delta[13,25]: delta_[13,25] + delta_[25,13] = 1
 delta_set_W[13,25]: delta_[13,25] = 1
 delta[13,26]: delta_[13,26] + delta_[26,13] = 1
 delta_set_W[13,26]: delta_[13,26] = 1
 delta[13,27]: delta_[13,27] + delta_[27,13] = 1
 delta_set_W[13,27]: delta_[13,27] = 1
 delta[13,28]: delta_[13,28] + delta_[28,13] = 1
 delta_set_W[13,28]: delta_[13,28] = 1
 delta[13,29]: delta_[13,29] + delta_[29,13] = 1
 delta_set_W[13,29]: delta_[13,29] = 1
 Alpha[14]: alpha_[14] + x_[14] >= 1136
 Beta[14]: beta_[14] - x_[14] >= -1136
 x[14]: alpha_[14] - beta_[14] + x_[14] = 1136
 delta[14,0]: delta_[0,14] + delta_[14,0] = 1
 x_set_U[0]: x_[0] + 1743 delta_[0,14] - x_[14] >= 72
 delta[14,1]: delta_[1,14] + delta_[14,1] = 1
 x_set_U[1]: x_[1] + 1664 delta_[1,14] - x_[14] >= 72
 delta[14,2]: delta_[2,14] + delta_[14,2] = 1
 x_set_U[2]: x_[2] + 1599 delta_[2,14] - x_[14] >= 72
 delta[14,3]: delta_[3,14] + delta_[14,3] = 1
 x_set_U[3]: x_[3] + 1547 delta_[3,14] - x_[14] >= 80
 delta[14,4]: delta_[4,14] + delta_[14,4] = 1
 x_set_U[4]: x_[4] + 1479 delta_[4,14] - x_[14] >= 72
 delta[14,5]: delta_[5,14] + delta_[14,5] = 1
 x_set_U[5]: x_[5] + 1423 delta_[5,14] - x_[14] >= 72
 delta[14,6]: delta_[6,14] + delta_[14,6] = 1
 x_set_U[6]: x_[6] + 1223 delta_[6,14] - x_[14] >= 80
 delta[14,7]: delta_[7,14] + delta_[14,7] = 1
 x_set_U[7]: x_[7] + 1108 delta_[7,14] - x_[14] >= 72
 delta[14,8]: delta_[8,14] + delta_[14,8] = 1
 x_set_U[8]: x_[8] + 1021 delta_[8,14] - x_[14] >= 80
 delta[14,9]: delta_[9,14] + delta_[14,9] = 1
 x_set_U[9]: x_[9] + 985 delta_[9,14] - x_[14] >= 80
 delta[14,10]: delta_[10,14] + delta_[14,10] = 1
 x_set_U[10]: x_[10] + 953 delta_[10,14] - x_[14] >= 72
 delta[14,11]: delta_[11,14] + delta_[14,11] = 1
 x_set_U[11]: x_[11] + 823 delta_[11,14] - x_[14] >= 72
 delta[14,12]: delta_[12,14] + delta_[14,12] = 1
 x_set_U[12]: x_[12] + 695 delta_[12,14] - x_[14] >= 70
 delta[14,13]: delta_[13,14] + delta_[14,13] = 1
 x_set_U[13]: x_[13] + 675 delta_[13,14] - x_[14] >= 110
 delta[14,15]: delta_[14,15] + delta_[15,14] = 1
 x_set_U[15]: - x_[14] + x_[15] + 585 delta_[15,14] >= 80
 delta[14,16]: delta_[14,16] + delta_[16,14] = 1
 x_set_U[16]: - x_[14] + x_[16] + 518 delta_[16,14] >= 80
 delta[14,17]: delta_[14,17] + delta_[17,14] = 1
 x_set_U[17]: - x_[14] + x_[17] + 101 delta_[17,14] >= 72
 delta[14,18]: delta_[14,18] + delta_[18,14] = 1
 delta_set_V[14,18]: delta_[14,18] = 1
 x_set_V[18]: - x_[14] + x_[18] >= 72
 delta[14,19]: delta_[14,19] + delta_[19,14] = 1
 delta_set_W[14,19]: delta_[14,19] = 1
 delta[14,20]: delta_[14,20] + delta_[20,14] = 1
 delta_set_W[14,20]: delta_[14,20] = 1
 delta[14,21]: delta_[14,21] + delta_[21,14] = 1
 delta_set_W[14,21]: delta_[14,21] = 1
 delta[14,22]: delta_[14,22] + delta_[22,14] = 1
 delta_set_W[14,22]: delta_[14,22] = 1
 delta[14,23]: delta_[14,23] + delta_[23,14] = 1
 delta_set_W[14,23]: delta_[14,23] = 1
 delta[14,24]: delta_[14,24] + delta_[24,14] = 1
 delta_set_W[14,24]: delta_[14,24] = 1
 delta[14,25]: delta_[14,25] + delta_[25,14] = 1
 delta_set_W[14,25]: delta_[14,25] = 1
 delta[14,26]: delta_[14,26] + delta_[26,14] = 1
 delta_set_W[14,26]: delta_[14,26] = 1
 delta[14,27]: delta_[14,27] + delta_[27,14] = 1
 delta_set_W[14,27]: delta_[14,27] = 1
 delta[14,28]: delta_[14,28] + delta_[28,14] = 1
 delta_set_W[14,28]: delta_[14,28] = 1
 delta[14,29]: delta_[14,29] + delta_[29,14] = 1
 delta_set_W[14,29]: delta_[14,29] = 1
 Alpha[15]: alpha_[15] + x_[15] >= 1166
 Beta[15]: beta_[15] - x_[15] >= -1166
 x[15]: alpha_[15] - beta_[15] + x_[15] = 1166
 delta[15,0]: delta_[0,15] + delta_[15,0] = 1
 x_set_U[0]: x_[0] + 1823 delta_[0,15] - x_[15] >= 72
 delta[15,1]: delta_[1,15] + delta_[15,1] = 1
 x_set_U[1]: x_[1] + 1744 delta_[1,15] - x_[15] >= 72
 delta[15,2]: delta_[2,15] + delta_[15,2] = 1
 x_set_U[2]: x_[2] + 1679 delta_[2,15] - x_[15] >= 72
 delta[15,3]: delta_[3,15] + delta_[15,3] = 1
 x_set_U[3]: x_[3] + 1627 delta_[3,15] - x_[15] >= 80
 delta[15,4]: delta_[4,15] + delta_[15,4] = 1
 x_set_U[4]: x_[4] + 1559 delta_[4,15] - x_[15] >= 72
 delta[15,5]: delta_[5,15] + delta_[15,5] = 1
 x_set_U[5]: x_[5] + 1503 delta_[5,15] - x_[15] >= 72
 delta[15,6]: delta_[6,15] + delta_[15,6] = 1
 x_set_U[6]: x_[6] + 1303 delta_[6,15] - x_[15] >= 80
 delta[15,7]: delta_[7,15] + delta_[15,7] = 1
 x_set_U[7]: x_[7] + 1188 delta_[7,15] - x_[15] >= 72
 delta[15,8]: delta_[8,15] + delta_[15,8] = 1
 x_set_U[8]: x_[8] + 1101 delta_[8,15] - x_[15] >= 80
 delta[15,9]: delta_[9,15] + delta_[15,9] = 1
 x_set_U[9]: x_[9] + 1065 delta_[9,15] - x_[15] >= 80
 delta[15,10]: delta_[10,15] + delta_[15,10] = 1
 x_set_U[10]: x_[10] + 1033 delta_[10,15] - x_[15] >= 72
 delta[15,11]: delta_[11,15] + delta_[15,11] = 1
 x_set_U[11]: x_[11] + 903 delta_[11,15] - x_[15] >= 72
 delta[15,12]: delta_[12,15] + delta_[15,12] = 1
 x_set_U[12]: x_[12] + 775 delta_[12,15] - x_[15] >= 70
 delta[15,13]: delta_[13,15] + delta_[15,13] = 1
 x_set_U[13]: x_[13] + 755 delta_[13,15] - x_[15] >= 110
 delta[15,14]: delta_[14,15] + delta_[15,14] = 1
 x_set_U[14]: x_[14] + 695 delta_[14,15] - x_[15] >= 80
 delta[15,16]: delta_[15,16] + delta_[16,15] = 1
 x_set_U[16]: - x_[15] + x_[16] + 598 delta_[16,15] >= 80
 delta[15,17]: delta_[15,17] + delta_[17,15] = 1
 x_set_U[17]: - x_[15] + x_[17] + 181 delta_[17,15] >= 72
 delta[15,18]: delta_[15,18] + delta_[18,15] = 1
 x_set_U[18]: - x_[15] + x_[18] + 108 delta_[18,15] >= 72
 delta[15,19]: delta_[15,19] + delta_[19,15] = 1
 delta_set_V[15,19]: delta_[15,19] = 1
 x_set_V[19]: - x_[15] + x_[19] >= 70
 delta[15,20]: delta_[15,20] + delta_[20,15] = 1
 delta_set_W[15,20]: delta_[15,20] = 1
 delta[15,21]: delta_[15,21] + delta_[21,15] = 1
 delta_set_W[15,21]: delta_[15,21] = 1
 delta[15,22]: delta_[15,22] + delta_[22,15] = 1
 delta_set_W[15,22]: delta_[15,22] = 1
 delta[15,23]: delta_[15,23] + delta_[23,15] = 1
 delta_set_W[15,23]: delta_[15,23] = 1
 delta[15,24]: delta_[15,24] + delta_[24,15] = 1
 delta_set_W[15,24]: delta_[15,24] = 1
 delta[15,25]: delta_[15,25] + delta_[25,15] = 1
 delta_set_W[15,25]: delta_[15,25] = 1
 delta[15,26]: delta_[15,26] + delta_[26,15] = 1
 delta_set_W[15,26]: delta_[15,26] = 1
 delta[15,27]: delta_[15,27] + delta_[27,15] = 1
 delta_set_W[15,27]: delta_[15,27] = 1
 delta[15,28]: delta_[15,28] + delta_[28,15] = 1
 delta_set_W[15,28]: delta_[15,28] = 1
 delta[15,29]: delta_[15,29] + delta_[29,15] = 1
 delta_set_W[15,29]: delta_[15,29] = 1
 Alpha[16]: alpha_[16] + x_[16] >= 1233
 Beta[16]: beta_[16] - x_[16] >= -1233
 x[16]: alpha_[16] - beta_[16] + x_[16] = 1233
 delta[16,0]: delta_[0,16] + delta_[16,0] = 1
 x_set_U[0]: x_[0] + 1903 delta_[0,16] - x_[16] >= 72
 delta[16,1]: delta_[1,16] + delta_[16,1] = 1
 x_set_U[1]: x_[1] + 1824 delta_[1,16] - x_[16] >= 72
 delta[16,2]: delta_[2,16] + delta_[16,2] = 1
 x_set_U[2]: x_[2] + 1759 delta_[2,16] - x_[16] >= 72
 delta[16,3]: delta_[3,16] + delta_[16,3] = 1
 x_set_U[3]: x_[3] + 1707 delta_[3,16] - x_[16] >= 80
 delta[16,4]: delta_[4,16] + delta_[16,4] = 1
 x_set_U[4]: x_[4] + 1639 delta_[4,16] - x_[16] >= 72
 delta[16,5]: delta_[5,16] + delta_[16,5] = 1
 x_set_U[5]: x_[5] + 1583 delta_[5,16] - x_[16] >= 72
 delta[16,6]: delta_[6,16] + delta_[16,6] = 1
 x_set_U[6]: x_[6] + 1383 delta_[6,16] - x_[16] >= 80
 delta[16,7]: delta_[7,16] + delta_[16,7] = 1
 x_set_U[7]: x_[7] + 1268 delta_[7,16] - x_[16] >= 72
 delta[16,8]: delta_[8,16] + delta_[16,8] = 1
 x_set_U[8]: x_[8] + 1181 delta_[8,16] - x_[16] >= 80
 delta[16,9]: delta_[9,16] + delta_[16,9] = 1
 x_set_U[9]: x_[9] + 1145 delta_[9,16] - x_[16] >= 80
 delta[16,10]: delta_[10,16] + delta_[16,10] = 1
 x_set_U[10]: x_[10] + 1113 delta_[10,16] - x_[16] >= 72
 delta[16,11]: delta_[11,16] + delta_[16,11] = 1
 x_set_U[11]: x_[11] + 983 delta_[11,16] - x_[16] >= 72
 delta[16,12]: delta_[12,16] + delta_[16,12] = 1
 x_set_U[12]: x_[12] + 855 delta_[12,16] - x_[16] >= 70
 delta[16,13]: delta_[13,16] + delta_[16,13] = 1
 x_set_U[13]: x_[13] + 835 delta_[13,16] - x_[16] >= 110
 delta[16,14]: delta_[14,16] + delta_[16,14] = 1
 x_set_U[14]: x_[14] + 775 delta_[14,16] - x_[16] >= 80
 delta[16,15]: delta_[15,16] + delta_[16,15] = 1
 x_set_U[15]: x_[15] + 745 delta_[15,16] - x_[16] >= 80
 delta[16,17]: delta_[16,17] + delta_[17,16] = 1
 x_set_U[17]: - x_[16] + x_[17] + 261 delta_[17,16] >= 72
 delta[16,18]: delta_[16,18] + delta_[18,16] = 1
 x_set_U[18]: - x_[16] + x_[18] + 188 delta_[18,16] >= 72
 delta[16,19]: delta_[16,19] + delta_[19,16] = 1
 x_set_U[19]: - x_[16] + x_[19] + 131 delta_[19,16] >= 70
 delta[16,20]: delta_[16,20] + delta_[20,16] = 1
 delta_set_W[16,20]: delta_[16,20] = 1
 delta[16,21]: delta_[16,21] + delta_[21,16] = 1
 delta_set_W[16,21]: delta_[16,21] = 1
 delta[16,22]: delta_[16,22] + delta_[22,16] = 1
 delta_set_W[16,22]: delta_[16,22] = 1
 delta[16,23]: delta_[16,23] + delta_[23,16] = 1
 delta_set_W[16,23]: delta_[16,23] = 1
 delta[16,24]: delta_[16,24] + delta_[24,16] = 1
 delta_set_W[16,24]: delta_[16,24] = 1
 delta[16,25]: delta_[16,25] + delta_[25,16] = 1
 delta_set_W[16,25]: delta_[16,25] = 1
 delta[16,26]: delta_[16,26] + delta_[26,16] = 1
 delta_set_W[16,26]: delta_[16,26] = 1
 delta[16,27]: delta_[16,27] + delta_[27,16] = 1
 delta_set_W[16,27]: delta_[16,27] = 1
 delta[16,28]: delta_[16,28] + delta_[28,16] = 1
 delta_set_W[16,28]: delta_[16,28] = 1
 delta[16,29]: delta_[16,29] + delta_[29,16] = 1
 delta_set_W[16,29]: delta_[16,29] = 1
 Alpha[17]: alpha_[17] + x_[17] >= 1642
 Beta[17]: beta_[17] - x_[17] >= -1642
 x[17]: alpha_[17] - beta_[17] + x_[17] = 1642
 delta[17,0]: delta_[0,17] + delta_[17,0] = 1
 x_set_U[0]: x_[0] + 1999 delta_[0,17] - x_[17] >= 96
 delta[17,1]: delta_[1,17] + delta_[17,1] = 1
 x_set_U[1]: x_[1] + 1920 delta_[1,17] - x_[17] >= 96
 delta[17,2]: delta_[2,17] + delta_[17,2] = 1
 x_set_U[2]: x_[2] + 1855 delta_[2,17] - x_[17] >= 96
 delta[17,3]: delta_[3,17] + delta_[17,3] = 1
 x_set_U[3]: x_[3] + 1899 delta_[3,17] - x_[17] >= 200
 delta[17,4]: delta_[4,17] + delta_[17,4] = 1
 x_set_U[4]: x_[4] + 1735 delta_[4,17] - x_[17] >= 96
 delta[17,5]: delta_[5,17] + delta_[17,5] = 1
 x_set_U[5]: x_[5] + 1679 delta_[5,17] - x_[17] >= 96
 delta[17,6]: delta_[6,17] + delta_[17,6] = 1
 x_set_U[6]: x_[6] + 1575 delta_[6,17] - x_[17] >= 200
 delta[17,7]: delta_[7,17] + delta_[17,7] = 1
 x_set_U[7]: x_[7] + 1364 delta_[7,17] - x_[17] >= 96
 delta[17,8]: delta_[8,17] + delta_[17,8] = 1
 x_set_U[8]: x_[8] + 1373 delta_[8,17] - x_[17] >= 200
 delta[17,9]: delta_[9,17] + delta_[17,9] = 1
 x_set_U[9]: x_[9] + 1337 delta_[9,17] - x_[17] >= 200
 delta[17,10]: delta_[10,17] + delta_[17,10] = 1
 x_set_U[10]: x_[10] + 1209 delta_[10,17] - x_[17] >= 96
 delta[17,11]: delta_[11,17] + delta_[17,11] = 1
 x_set_U[11]: x_[11] + 1079 delta_[11,17] - x_[17] >= 96
 delta[17,12]: delta_[12,17] + delta_[17,12] = 1
 x_set_U[12]: x_[12] + 1038 delta_[12,17] - x_[17] >= 181
 delta[17,13]: delta_[13,17] + delta_[17,13] = 1
 x_set_U[13]: x_[13] + 1025 delta_[13,17] - x_[17] >= 228
 delta[17,14]: delta_[14,17] + delta_[17,14] = 1
 x_set_U[14]: x_[14] + 967 delta_[14,17] - x_[17] >= 200
 delta[17,15]: delta_[15,17] + delta_[17,15] = 1
 x_set_U[15]: x_[15] + 937 delta_[15,17] - x_[17] >= 200
 delta[17,16]: delta_[16,17] + delta_[17,16] = 1
 x_set_U[16]: x_[16] + 870 delta_[16,17] - x_[17] >= 200
 delta[17,18]: delta_[17,18] + delta_[18,17] = 1
 x_set_U[18]: - x_[17] + x_[18] + 284 delta_[18,17] >= 96
 delta[17,19]: delta_[17,19] + delta_[19,17] = 1
 x_set_U[19]: - x_[17] + x_[19] + 314 delta_[19,17] >= 181
 delta[17,20]: delta_[17,20] + delta_[20,17] = 1
 delta_set_W[17,20]: delta_[17,20] = 1
 delta[17,21]: delta_[17,21] + delta_[21,17] = 1
 delta_set_W[17,21]: delta_[17,21] = 1
 delta[17,22]: delta_[17,22] + delta_[22,17] = 1
 delta_set_W[17,22]: delta_[17,22] = 1
 delta[17,23]: delta_[17,23] + delta_[23,17] = 1
 delta_set_W[17,23]: delta_[17,23] = 1
 delta[17,24]: delta_[17,24] + delta_[24,17] = 1
 delta_set_W[17,24]: delta_[17,24] = 1
 delta[17,25]: delta_[17,25] + delta_[25,17] = 1
 delta_set_W[17,25]: delta_[17,25] = 1
 delta[17,26]: delta_[17,26] + delta_[26,17] = 1
 delta_set_W[17,26]: delta_[17,26] = 1
 delta[17,27]: delta_[17,27] + delta_[27,17] = 1
 delta_set_W[17,27]: delta_[17,27] = 1
 delta[17,28]: delta_[17,28] + delta_[28,17] = 1
 delta_set_W[17,28]: delta_[17,28] = 1
 delta[17,29]: delta_[17,29] + delta_[29,17] = 1
 delta_set_W[17,29]: delta_[17,29] = 1
 Alpha[18]: alpha_[18] + x_[18] >= 1715
 Beta[18]: beta_[18] - x_[18] >= -1715
 x[18]: alpha_[18] - beta_[18] + x_[18] = 1715
 delta[18,0]: delta_[0,18] + delta_[18,0] = 1
 x_set_U[0]: x_[0] + 2095 delta_[0,18] - x_[18] >= 96
 delta[18,1]: delta_[1,18] + delta_[18,1] = 1
 x_set_U[1]: x_[1] + 2016 delta_[1,18] - x_[18] >= 96
 delta[18,2]: delta_[2,18] + delta_[18,2] = 1
 x_set_U[2]: x_[2] + 1951 delta_[2,18] - x_[18] >= 96
 delta[18,3]: delta_[3,18] + delta_[18,3] = 1
 x_set_U[3]: x_[3] + 1995 delta_[3,18] - x_[18] >= 200
 delta[18,4]: delta_[4,18] + delta_[18,4] = 1
 x_set_U[4]: x_[4] + 1831 delta_[4,18] - x_[18] >= 96
 delta[18,5]: delta_[5,18] + delta_[18,5] = 1
 x_set_U[5]: x_[5] + 1775 delta_[5,18] - x_[18] >= 96
 delta[18,6]: delta_[6,18] + delta_[18,6] = 1
 x_set_U[6]: x_[6] + 1671 delta_[6,18] - x_[18] >= 200
 delta[18,7]: delta_[7,18] + delta_[18,7] = 1
 x_set_U[7]: x_[7] + 1460 delta_[7,18] - x_[18] >= 96
 delta[18,8]: delta_[8,18] + delta_[18,8] = 1
 x_set_U[8]: x_[8] + 1469 delta_[8,18] - x_[18] >= 200
 delta[18,9]: delta_[9,18] + delta_[18,9] = 1
 x_set_U[9]: x_[9] + 1433 delta_[9,18] - x_[18] >= 200
 delta[18,10]: delta_[10,18] + delta_[18,10] = 1
 x_set_U[10]: x_[10] + 1305 delta_[10,18] - x_[18] >= 96
 delta[18,11]: delta_[11,18] + delta_[18,11] = 1
 x_set_U[11]: x_[11] + 1175 delta_[11,18] - x_[18] >= 96
 delta[18,12]: delta_[12,18] + delta_[18,12] = 1
 x_set_U[12]: x_[12] + 1134 delta_[12,18] - x_[18] >= 181
 delta[18,13]: delta_[13,18] + delta_[18,13] = 1
 x_set_U[13]: x_[13] + 1121 delta_[13,18] - x_[18] >= 228
 delta[18,14]: delta_[14,18] + delta_[18,14] = 1
 x_set_U[14]: x_[14] + 1063 delta_[14,18] - x_[18] >= 200
 delta[18,15]: delta_[15,18] + delta_[18,15] = 1
 x_set_U[15]: x_[15] + 1033 delta_[15,18] - x_[18] >= 200
 delta[18,16]: delta_[16,18] + delta_[18,16] = 1
 x_set_U[16]: x_[16] + 966 delta_[16,18] - x_[18] >= 200
 delta[18,17]: delta_[17,18] + delta_[18,17] = 1
 x_set_U[17]: x_[17] + 453 delta_[17,18] - x_[18] >= 96
 delta[18,19]: delta_[18,19] + delta_[19,18] = 1
 x_set_U[19]: - x_[18] + x_[19] + 410 delta_[19,18] >= 181
 delta[18,20]: delta_[18,20] + delta_[20,18] = 1
 delta_set_V[18,20]: delta_[18,20] = 1
 x_set_V[20]: - x_[18] + x_[20] >= 96
 delta[18,21]: delta_[18,21] + delta_[21,18] = 1
 delta_set_W[18,21]: delta_[18,21] = 1
 delta[18,22]: delta_[18,22] + delta_[22,18] = 1
 delta_set_W[18,22]: delta_[18,22] = 1
 delta[18,23]: delta_[18,23] + delta_[23,18] = 1
 delta_set_W[18,23]: delta_[18,23] = 1
 delta[18,24]: delta_[18,24] + delta_[24,18] = 1
 delta_set_W[18,24]: delta_[18,24] = 1
 delta[18,25]: delta_[18,25] + delta_[25,18] = 1
 delta_set_W[18,25]: delta_[18,25] = 1
 delta[18,26]: delta_[18,26] + delta_[26,18] = 1
 delta_set_W[18,26]: delta_[18,26] = 1
 delta[18,27]: delta_[18,27] + delta_[27,18] = 1
 delta_set_W[18,27]: delta_[18,27] = 1
 delta[18,28]: delta_[18,28] + delta_[28,18] = 1
 delta_set_W[18,28]: delta_[18,28] = 1
 delta[18,29]: delta_[18,29] + delta_[29,18] = 1
 delta_set_W[18,29]: delta_[18,29] = 1
 Alpha[19]: alpha_[19] + x_[19] >= 1770
 Beta[19]: beta_[19] - x_[19] >= -1770
 x[19]: alpha_[19] - beta_[19] + x_[19] = 1770
 delta[19,0]: delta_[0,19] + delta_[19,0] = 1
 x_set_U[0]: x_[0] + 2252 delta_[0,19] - x_[19] >= 72
 delta[19,1]: delta_[1,19] + delta_[19,1] = 1
 x_set_U[1]: x_[1] + 2173 delta_[1,19] - x_[19] >= 72
 delta[19,2]: delta_[2,19] + delta_[19,2] = 1
 x_set_U[2]: x_[2] + 2108 delta_[2,19] - x_[19] >= 72
 delta[19,3]: delta_[3,19] + delta_[19,3] = 1
 x_set_U[3]: x_[3] + 2076 delta_[3,19] - x_[19] >= 100
 delta[19,4]: delta_[4,19] + delta_[19,4] = 1
 x_set_U[4]: x_[4] + 1988 delta_[4,19] - x_[19] >= 72
 delta[19,5]: delta_[5,19] + delta_[19,5] = 1
 x_set_U[5]: x_[5] + 1932 delta_[5,19] - x_[19] >= 72
 delta[19,6]: delta_[6,19] + delta_[19,6] = 1
 x_set_U[6]: x_[6] + 1752 delta_[6,19] - x_[19] >= 100
 delta[19,7]: delta_[7,19] + delta_[19,7] = 1
 x_set_U[7]: x_[7] + 1617 delta_[7,19] - x_[19] >= 72
 delta[19,8]: delta_[8,19] + delta_[19,8] = 1
 x_set_U[8]: x_[8] + 1550 delta_[8,19] - x_[19] >= 100
 delta[19,9]: delta_[9,19] + delta_[19,9] = 1
 x_set_U[9]: x_[9] + 1514 delta_[9,19] - x_[19] >= 100
 delta[19,10]: delta_[10,19] + delta_[19,10] = 1
 x_set_U[10]: x_[10] + 1462 delta_[10,19] - x_[19] >= 72
 delta[19,11]: delta_[11,19] + delta_[19,11] = 1
 x_set_U[11]: x_[11] + 1332 delta_[11,19] - x_[19] >= 72
 delta[19,12]: delta_[12,19] + delta_[19,12] = 1
 x_set_U[12]: x_[12] + 1204 delta_[12,19] - x_[19] >= 70
 delta[19,13]: delta_[13,19] + delta_[19,13] = 1
 x_set_U[13]: x_[13] + 1204 delta_[13,19] - x_[19] >= 130
 delta[19,14]: delta_[14,19] + delta_[19,14] = 1
 x_set_U[14]: x_[14] + 1144 delta_[14,19] - x_[19] >= 100
 delta[19,15]: delta_[15,19] + delta_[19,15] = 1
 x_set_U[15]: x_[15] + 1114 delta_[15,19] - x_[19] >= 100
 delta[19,16]: delta_[16,19] + delta_[19,16] = 1
 x_set_U[16]: x_[16] + 1047 delta_[16,19] - x_[19] >= 100
 delta[19,17]: delta_[17,19] + delta_[19,17] = 1
 x_set_U[17]: x_[17] + 610 delta_[17,19] - x_[19] >= 72
 delta[19,18]: delta_[18,19] + delta_[19,18] = 1
 x_set_U[18]: x_[18] + 537 delta_[18,19] - x_[19] >= 72
 delta[19,20]: delta_[19,20] + delta_[20,19] = 1
 x_set_U[20]: - x_[19] + x_[20] + 178 delta_[20,19] >= 72
 delta[19,21]: delta_[19,21] + delta_[21,19] = 1
 x_set_U[21]: - x_[19] + x_[21] + 84 delta_[21,19] >= 72
 delta[19,22]: delta_[19,22] + delta_[22,19] = 1
 delta_set_V[19,22]: delta_[19,22] = 1
 x_set_V[22]: - x_[19] + x_[22] >= 130
 delta[19,23]: delta_[19,23] + delta_[23,19] = 1
 delta_set_W[19,23]: delta_[19,23] = 1
 delta[19,24]: delta_[19,24] + delta_[24,19] = 1
 delta_set_W[19,24]: delta_[19,24] = 1
 delta[19,25]: delta_[19,25] + delta_[25,19] = 1
 delta_set_W[19,25]: delta_[19,25] = 1
 delta[19,26]: delta_[19,26] + delta_[26,19] = 1
 delta_set_W[19,26]: delta_[19,26] = 1
 delta[19,27]: delta_[19,27] + delta_[27,19] = 1
 delta_set_W[19,27]: delta_[19,27] = 1
 delta[19,28]: delta_[19,28] + delta_[28,19] = 1
 delta_set_W[19,28]: delta_[19,28] = 1
 delta[19,29]: delta_[19,29] + delta_[29,19] = 1
 delta_set_W[19,29]: delta_[19,29] = 1
 Alpha[20]: alpha_[20] + x_[20] >= 2074
 Beta[20]: beta_[20] - x_[20] >= -2074
 x[20]: alpha_[20] - beta_[20] + x_[20] = 2074
 delta[20,0]: delta_[0,20] + delta_[20,0] = 1
 x_set_U[0]: x_[0] + 2348 delta_[0,20] - x_[20] >= 96
 delta[20,1]: delta_[1,20] + delta_[20,1] = 1
 x_set_U[1]: x_[1] + 2269 delta_[1,20] - x_[20] >= 96
 delta[20,2]: delta_[2,20] + delta_[20,2] = 1
 x_set_U[2]: x_[2] + 2204 delta_[2,20] - x_[20] >= 96
 delta[20,3]: delta_[3,20] + delta_[20,3] = 1
 x_set_U[3]: x_[3] + 2248 delta_[3,20] - x_[20] >= 200
 delta[20,4]: delta_[4,20] + delta_[20,4] = 1
 x_set_U[4]: x_[4] + 2084 delta_[4,20] - x_[20] >= 96
 delta[20,5]: delta_[5,20] + delta_[20,5] = 1
 x_set_U[5]: x_[5] + 2028 delta_[5,20] - x_[20] >= 96
 delta[20,6]: delta_[6,20] + delta_[20,6] = 1
 x_set_U[6]: x_[6] + 1924 delta_[6,20] - x_[20] >= 200
 delta[20,7]: delta_[7,20] + delta_[20,7] = 1
 x_set_U[7]: x_[7] + 1713 delta_[7,20] - x_[20] >= 96
 delta[20,8]: delta_[8,20] + delta_[20,8] = 1
 x_set_U[8]: x_[8] + 1722 delta_[8,20] - x_[20] >= 200
 delta[20,9]: delta_[9,20] + delta_[20,9] = 1
 x_set_U[9]: x_[9] + 1686 delta_[9,20] - x_[20] >= 200
 delta[20,10]: delta_[10,20] + delta_[20,10] = 1
 x_set_U[10]: x_[10] + 1558 delta_[10,20] - x_[20] >= 96
 delta[20,11]: delta_[11,20] + delta_[20,11] = 1
 x_set_U[11]: x_[11] + 1428 delta_[11,20] - x_[20] >= 96
 delta[20,12]: delta_[12,20] + delta_[20,12] = 1
 x_set_U[12]: x_[12] + 1387 delta_[12,20] - x_[20] >= 181
 delta[20,13]: delta_[13,20] + delta_[20,13] = 1
 x_set_U[13]: x_[13] + 1374 delta_[13,20] - x_[20] >= 228
 delta[20,14]: delta_[14,20] + delta_[20,14] = 1
 x_set_U[14]: x_[14] + 1316 delta_[14,20] - x_[20] >= 200
 delta[20,15]: delta_[15,20] + delta_[20,15] = 1
 x_set_U[15]: x_[15] + 1286 delta_[15,20] - x_[20] >= 200
 delta[20,16]: delta_[16,20] + delta_[20,16] = 1
 x_set_U[16]: x_[16] + 1219 delta_[16,20] - x_[20] >= 200
 delta[20,17]: delta_[17,20] + delta_[20,17] = 1
 x_set_U[17]: x_[17] + 706 delta_[17,20] - x_[20] >= 96
 delta[20,18]: delta_[18,20] + delta_[20,18] = 1
 x_set_U[18]: x_[18] + 633 delta_[18,20] - x_[20] >= 96
 delta[20,19]: delta_[19,20] + delta_[20,19] = 1
 x_set_U[19]: x_[19] + 663 delta_[19,20] - x_[20] >= 181
 delta[20,21]: delta_[20,21] + delta_[21,20] = 1
 x_set_U[21]: - x_[20] + x_[21] + 180 delta_[21,20] >= 96
 delta[20,22]: delta_[20,22] + delta_[22,20] = 1
 delta_set_V[20,22]: delta_[20,22] = 1
 x_set_V[22]: - x_[20] + x_[22] >= 228
 delta[20,23]: delta_[20,23] + delta_[23,20] = 1
 delta_set_V[20,23]: delta_[20,23] = 1
 x_set_V[23]: - x_[20] + x_[23] >= 200
 delta[20,24]: delta_[20,24] + delta_[24,20] = 1
 delta_set_W[20,24]: delta_[20,24] = 1
 delta[20,25]: delta_[20,25] + delta_[25,20] = 1
 delta_set_W[20,25]: delta_[20,25] = 1
 delta[20,26]: delta_[20,26] + delta_[26,20] = 1
 delta_set_W[20,26]: delta_[20,26] = 1
 delta[20,27]: delta_[20,27] + delta_[27,20] = 1
 delta_set_W[20,27]: delta_[20,27] = 1
 delta[20,28]: delta_[20,28] + delta_[28,20] = 1
 delta_set_W[20,28]: delta_[20,28] = 1
 delta[20,29]: delta_[20,29] + delta_[29,20] = 1
 delta_set_W[20,29]: delta_[20,29] = 1
 Alpha[21]: alpha_[21] + x_[21] >= 2168
 Beta[21]: beta_[21] - x_[21] >= -2168
 x[21]: alpha_[21] - beta_[21] + x_[21] = 2168
 delta[21,0]: delta_[0,21] + delta_[21,0] = 1
 x_set_U[0]: x_[0] + 2444 delta_[0,21] - x_[21] >= 96
 delta[21,1]: delta_[1,21] + delta_[21,1] = 1
 x_set_U[1]: x_[1] + 2365 delta_[1,21] - x_[21] >= 96
 delta[21,2]: delta_[2,21] + delta_[21,2] = 1
 x_set_U[2]: x_[2] + 2300 delta_[2,21] - x_[21] >= 96
 delta[21,3]: delta_[3,21] + delta_[21,3] = 1
 x_set_U[3]: x_[3] + 2344 delta_[3,21] - x_[21] >= 200
 delta[21,4]: delta_[4,21] + delta_[21,4] = 1
 x_set_U[4]: x_[4] + 2180 delta_[4,21] - x_[21] >= 96
 delta[21,5]: delta_[5,21] + delta_[21,5] = 1
 x_set_U[5]: x_[5] + 2124 delta_[5,21] - x_[21] >= 96
 delta[21,6]: delta_[6,21] + delta_[21,6] = 1
 x_set_U[6]: x_[6] + 2020 delta_[6,21] - x_[21] >= 200
 delta[21,7]: delta_[7,21] + delta_[21,7] = 1
 x_set_U[7]: x_[7] + 1809 delta_[7,21] - x_[21] >= 96
 delta[21,8]: delta_[8,21] + delta_[21,8] = 1
 x_set_U[8]: x_[8] + 1818 delta_[8,21] - x_[21] >= 200
 delta[21,9]: delta_[9,21] + delta_[21,9] = 1
 x_set_U[9]: x_[9] + 1782 delta_[9,21] - x_[21] >= 200
 delta[21,10]: delta_[10,21] + delta_[21,10] = 1
 x_set_U[10]: x_[10] + 1654 delta_[10,21] - x_[21] >= 96
 delta[21,11]: delta_[11,21] + delta_[21,11] = 1
 x_set_U[11]: x_[11] + 1524 delta_[11,21] - x_[21] >= 96
 delta[21,12]: delta_[12,21] + delta_[21,12] = 1
 x_set_U[12]: x_[12] + 1483 delta_[12,21] - x_[21] >= 181
 delta[21,13]: delta_[13,21] + delta_[21,13] = 1
 x_set_U[13]: x_[13] + 1470 delta_[13,21] - x_[21] >= 228
 delta[21,14]: delta_[14,21] + delta_[21,14] = 1
 x_set_U[14]: x_[14] + 1412 delta_[14,21] - x_[21] >= 200
 delta[21,15]: delta_[15,21] + delta_[21,15] = 1
 x_set_U[15]: x_[15] + 1382 delta_[15,21] - x_[21] >= 200
 delta[21,16]: delta_[16,21] + delta_[21,16] = 1
 x_set_U[16]: x_[16] + 1315 delta_[16,21] - x_[21] >= 200
 delta[21,17]: delta_[17,21] + delta_[21,17] = 1
 x_set_U[17]: x_[17] + 802 delta_[17,21] - x_[21] >= 96
 delta[21,18]: delta_[18,21] + delta_[21,18] = 1
 x_set_U[18]: x_[18] + 729 delta_[18,21] - x_[21] >= 96
 delta[21,19]: delta_[19,21] + delta_[21,19] = 1
 x_set_U[19]: x_[19] + 759 delta_[19,21] - x_[21] >= 181
 delta[21,20]: delta_[20,21] + delta_[21,20] = 1
 x_set_U[20]: x_[20] + 370 delta_[20,21] - x_[21] >= 96
 delta[21,22]: delta_[21,22] + delta_[22,21] = 1
 x_set_U[22]: - x_[21] + x_[22] + 317 delta_[22,21] >= 228
 delta[21,23]: delta_[21,23] + delta_[23,21] = 1
 delta_set_V[21,23]: delta_[21,23] = 1
 x_set_V[23]: - x_[21] + x_[23] >= 200
 delta[21,24]: delta_[21,24] + delta_[24,21] = 1
 delta_set_W[21,24]: delta_[21,24] = 1
 delta[21,25]: delta_[21,25] + delta_[25,21] = 1
 delta_set_W[21,25]: delta_[21,25] = 1
 delta[21,26]: delta_[21,26] + delta_[26,21] = 1
 delta_set_W[21,26]: delta_[21,26] = 1
 delta[21,27]: delta_[21,27] + delta_[27,21] = 1
 delta_set_W[21,27]: delta_[21,27] = 1
 delta[21,28]: delta_[21,28] + delta_[28,21] = 1
 delta_set_W[21,28]: delta_[21,28] = 1
 delta[21,29]: delta_[21,29] + delta_[29,21] = 1
 delta_set_W[21,29]: delta_[21,29] = 1
 Alpha[22]: alpha_[22] + x_[22] >= 2259
 Beta[22]: beta_[22] - x_[22] >= -2259
 x[22]: alpha_[22] - beta_[22] + x_[22] = 2259
 delta[22,0]: delta_[0,22] + delta_[22,0] = 1
 x_set_U[0]: x_[0] + 2648 delta_[0,22] - x_[22] >= 72
 delta[22,1]: delta_[1,22] + delta_[22,1] = 1
 x_set_U[1]: x_[1] + 2569 delta_[1,22] - x_[22] >= 72
 delta[22,2]: delta_[2,22] + delta_[22,2] = 1
 x_set_U[2]: x_[2] + 2504 delta_[2,22] - x_[22] >= 72
 delta[22,3]: delta_[3,22] + delta_[22,3] = 1
 x_set_U[3]: x_[3] + 2452 delta_[3,22] - x_[22] >= 80
 delta[22,4]: delta_[4,22] + delta_[22,4] = 1
 x_set_U[4]: x_[4] + 2384 delta_[4,22] - x_[22] >= 72
 delta[22,5]: delta_[5,22] + delta_[22,5] = 1
 x_set_U[5]: x_[5] + 2328 delta_[5,22] - x_[22] >= 72
 delta[22,6]: delta_[6,22] + delta_[22,6] = 1
 x_set_U[6]: x_[6] + 2128 delta_[6,22] - x_[22] >= 80
 delta[22,7]: delta_[7,22] + delta_[22,7] = 1
 x_set_U[7]: x_[7] + 2013 delta_[7,22] - x_[22] >= 72
 delta[22,8]: delta_[8,22] + delta_[22,8] = 1
 x_set_U[8]: x_[8] + 1926 delta_[8,22] - x_[22] >= 80
 delta[22,9]: delta_[9,22] + delta_[22,9] = 1
 x_set_U[9]: x_[9] + 1890 delta_[9,22] - x_[22] >= 80
 delta[22,10]: delta_[10,22] + delta_[22,10] = 1
 x_set_U[10]: x_[10] + 1858 delta_[10,22] - x_[22] >= 72
 delta[22,11]: delta_[11,22] + delta_[22,11] = 1
 x_set_U[11]: x_[11] + 1728 delta_[11,22] - x_[22] >= 72
 delta[22,12]: delta_[12,22] + delta_[22,12] = 1
 x_set_U[12]: x_[12] + 1600 delta_[12,22] - x_[22] >= 70
 delta[22,13]: delta_[13,22] + delta_[22,13] = 1
 x_set_U[13]: x_[13] + 1560 delta_[13,22] - x_[22] >= 90
 delta[22,14]: delta_[14,22] + delta_[22,14] = 1
 x_set_U[14]: x_[14] + 1520 delta_[14,22] - x_[22] >= 80
 delta[22,15]: delta_[15,22] + delta_[22,15] = 1
 x_set_U[15]: x_[15] + 1490 delta_[15,22] - x_[22] >= 80
 delta[22,16]: delta_[16,22] + delta_[22,16] = 1
 x_set_U[16]: x_[16] + 1423 delta_[16,22] - x_[22] >= 80
 delta[22,17]: delta_[17,22] + delta_[22,17] = 1
 x_set_U[17]: x_[17] + 1006 delta_[17,22] - x_[22] >= 72
 delta[22,18]: delta_[18,22] + delta_[22,18] = 1
 x_set_U[18]: x_[18] + 933 delta_[18,22] - x_[22] >= 72
 delta[22,19]: delta_[19,22] + delta_[22,19] = 1
 x_set_U[19]: x_[19] + 876 delta_[19,22] - x_[22] >= 70
 delta[22,20]: delta_[20,22] + delta_[22,20] = 1
 x_set_U[20]: x_[20] + 574 delta_[20,22] - x_[22] >= 72
 delta[22,21]: delta_[21,22] + delta_[22,21] = 1
 x_set_U[21]: x_[21] + 480 delta_[21,22] - x_[22] >= 72
 delta[22,23]: delta_[22,23] + delta_[23,22] = 1
 x_set_U[23]: - x_[22] + x_[23] + 229 delta_[23,22] >= 80
 delta[22,24]: delta_[22,24] + delta_[24,22] = 1
 x_set_U[24]: - x_[22] + x_[24] + 167 delta_[24,22] >= 72
 delta[22,25]: delta_[22,25] + delta_[25,22] = 1
 delta_set_W[22,25]: delta_[22,25] = 1
 delta[22,26]: delta_[22,26] + delta_[26,22] = 1
 delta_set_W[22,26]: delta_[22,26] = 1
 delta[22,27]: delta_[22,27] + delta_[27,22] = 1
 delta_set_W[22,27]: delta_[22,27] = 1
 delta[22,28]: delta_[22,28] + delta_[28,22] = 1
 delta_set_W[22,28]: delta_[22,28] = 1
 delta[22,29]: delta_[22,29] + delta_[29,22] = 1
 delta_set_W[22,29]: delta_[22,29] = 1
 Alpha[23]: alpha_[23] + x_[23] >= 2427
 Beta[23]: beta_[23] - x_[23] >= -2427
 x[23]: alpha_[23] - beta_[23] + x_[23] = 2427
 delta[23,0]: delta_[0,23] + delta_[23,0] = 1
 x_set_U[0]: x_[0] + 2728 delta_[0,23] - x_[23] >= 72
 delta[23,1]: delta_[1,23] + delta_[23,1] = 1
 x_set_U[1]: x_[1] + 2649 delta_[1,23] - x_[23] >= 72
 delta[23,2]: delta_[2,23] + delta_[23,2] = 1
 x_set_U[2]: x_[2] + 2584 delta_[2,23] - x_[23] >= 72
 delta[23,3]: delta_[3,23] + delta_[23,3] = 1
 x_set_U[3]: x_[3] + 2532 delta_[3,23] - x_[23] >= 80
 delta[23,4]: delta_[4,23] + delta_[23,4] = 1
 x_set_U[4]: x_[4] + 2464 delta_[4,23] - x_[23] >= 72
 delta[23,5]: delta_[5,23] + delta_[23,5] = 1
 x_set_U[5]: x_[5] + 2408 delta_[5,23] - x_[23] >= 72
 delta[23,6]: delta_[6,23] + delta_[23,6] = 1
 x_set_U[6]: x_[6] + 2208 delta_[6,23] - x_[23] >= 80
 delta[23,7]: delta_[7,23] + delta_[23,7] = 1
 x_set_U[7]: x_[7] + 2093 delta_[7,23] - x_[23] >= 72
 delta[23,8]: delta_[8,23] + delta_[23,8] = 1
 x_set_U[8]: x_[8] + 2006 delta_[8,23] - x_[23] >= 80
 delta[23,9]: delta_[9,23] + delta_[23,9] = 1
 x_set_U[9]: x_[9] + 1970 delta_[9,23] - x_[23] >= 80
 delta[23,10]: delta_[10,23] + delta_[23,10] = 1
 x_set_U[10]: x_[10] + 1938 delta_[10,23] - x_[23] >= 72
 delta[23,11]: delta_[11,23] + delta_[23,11] = 1
 x_set_U[11]: x_[11] + 1808 delta_[11,23] - x_[23] >= 72
 delta[23,12]: delta_[12,23] + delta_[23,12] = 1
 x_set_U[12]: x_[12] + 1680 delta_[12,23] - x_[23] >= 70
 delta[23,13]: delta_[13,23] + delta_[23,13] = 1
 x_set_U[13]: x_[13] + 1660 delta_[13,23] - x_[23] >= 110
 delta[23,14]: delta_[14,23] + delta_[23,14] = 1
 x_set_U[14]: x_[14] + 1600 delta_[14,23] - x_[23] >= 80
 delta[23,15]: delta_[15,23] + delta_[23,15] = 1
 x_set_U[15]: x_[15] + 1570 delta_[15,23] - x_[23] >= 80
 delta[23,16]: delta_[16,23] + delta_[23,16] = 1
 x_set_U[16]: x_[16] + 1503 delta_[16,23] - x_[23] >= 80
 delta[23,17]: delta_[17,23] + delta_[23,17] = 1
 x_set_U[17]: x_[17] + 1086 delta_[17,23] - x_[23] >= 72
 delta[23,18]: delta_[18,23] + delta_[23,18] = 1
 x_set_U[18]: x_[18] + 1013 delta_[18,23] - x_[23] >= 72
 delta[23,19]: delta_[19,23] + delta_[23,19] = 1
 x_set_U[19]: x_[19] + 956 delta_[19,23] - x_[23] >= 70
 delta[23,20]: delta_[20,23] + delta_[23,20] = 1
 x_set_U[20]: x_[20] + 654 delta_[20,23] - x_[23] >= 72
 delta[23,21]: delta_[21,23] + delta_[23,21] = 1
 x_set_U[21]: x_[21] + 560 delta_[21,23] - x_[23] >= 72
 delta[23,22]: delta_[22,23] + delta_[23,22] = 1
 x_set_U[22]: x_[22] + 507 delta_[22,23] - x_[23] >= 110
 delta[23,24]: delta_[23,24] + delta_[24,23] = 1
 x_set_U[24]: - x_[23] + x_[24] + 247 delta_[24,23] >= 72
 delta[23,25]: delta_[23,25] + delta_[25,23] = 1
 delta_set_V[23,25]: delta_[23,25] = 1
 x_set_V[25]: - x_[23] + x_[25] >= 80
 delta[23,26]: delta_[23,26] + delta_[26,23] = 1
 delta_set_W[23,26]: delta_[23,26] = 1
 delta[23,27]: delta_[23,27] + delta_[27,23] = 1
 delta_set_W[23,27]: delta_[23,27] = 1
 delta[23,28]: delta_[23,28] + delta_[28,23] = 1
 delta_set_W[23,28]: delta_[23,28] = 1
 delta[23,29]: delta_[23,29] + delta_[29,23] = 1
 delta_set_W[23,29]: delta_[23,29] = 1
 Alpha[24]: alpha_[24] + x_[24] >= 2481
 Beta[24]: beta_[24] - x_[24] >= -2481
 x[24]: alpha_[24] - beta_[24] + x_[24] = 2481
 delta[24,0]: delta_[0,24] + delta_[24,0] = 1
 x_set_U[0]: x_[0] + 2824 delta_[0,24] - x_[24] >= 96
 delta[24,1]: delta_[1,24] + delta_[24,1] = 1
 x_set_U[1]: x_[1] + 2745 delta_[1,24] - x_[24] >= 96
 delta[24,2]: delta_[2,24] + delta_[24,2] = 1
 x_set_U[2]: x_[2] + 2680 delta_[2,24] - x_[24] >= 96
 delta[24,3]: delta_[3,24] + delta_[24,3] = 1
 x_set_U[3]: x_[3] + 2724 delta_[3,24] - x_[24] >= 200
 delta[24,4]: delta_[4,24] + delta_[24,4] = 1
 x_set_U[4]: x_[4] + 2560 delta_[4,24] - x_[24] >= 96
 delta[24,5]: delta_[5,24] + delta_[24,5] = 1
 x_set_U[5]: x_[5] + 2504 delta_[5,24] - x_[24] >= 96
 delta[24,6]: delta_[6,24] + delta_[24,6] = 1
 x_set_U[6]: x_[6] + 2400 delta_[6,24] - x_[24] >= 200
 delta[24,7]: delta_[7,24] + delta_[24,7] = 1
 x_set_U[7]: x_[7] + 2189 delta_[7,24] - x_[24] >= 96
 delta[24,8]: delta_[8,24] + delta_[24,8] = 1
 x_set_U[8]: x_[8] + 2198 delta_[8,24] - x_[24] >= 200
 delta[24,9]: delta_[9,24] + delta_[24,9] = 1
 x_set_U[9]: x_[9] + 2162 delta_[9,24] - x_[24] >= 200
 delta[24,10]: delta_[10,24] + delta_[24,10] = 1
 x_set_U[10]: x_[10] + 2034 delta_[10,24] - x_[24] >= 96
 delta[24,11]: delta_[11,24] + delta_[24,11] = 1
 x_set_U[11]: x_[11] + 1904 delta_[11,24] - x_[24] >= 96
 delta[24,12]: delta_[12,24] + delta_[24,12] = 1
 x_set_U[12]: x_[12] + 1863 delta_[12,24] - x_[24] >= 181
 delta[24,13]: delta_[13,24] + delta_[24,13] = 1
 x_set_U[13]: x_[13] + 1850 delta_[13,24] - x_[24] >= 228
 delta[24,14]: delta_[14,24] + delta_[24,14] = 1
 x_set_U[14]: x_[14] + 1792 delta_[14,24] - x_[24] >= 200
 delta[24,15]: delta_[15,24] + delta_[24,15] = 1
 x_set_U[15]: x_[15] + 1762 delta_[15,24] - x_[24] >= 200
 delta[24,16]: delta_[16,24] + delta_[24,16] = 1
 x_set_U[16]: x_[16] + 1695 delta_[16,24] - x_[24] >= 200
 delta[24,17]: delta_[17,24] + delta_[24,17] = 1
 x_set_U[17]: x_[17] + 1182 delta_[17,24] - x_[24] >= 96
 delta[24,18]: delta_[18,24] + delta_[24,18] = 1
 x_set_U[18]: x_[18] + 1109 delta_[18,24] - x_[24] >= 96
 delta[24,19]: delta_[19,24] + delta_[24,19] = 1
 x_set_U[19]: x_[19] + 1139 delta_[19,24] - x_[24] >= 181
 delta[24,20]: delta_[20,24] + delta_[24,20] = 1
 x_set_U[20]: x_[20] + 750 delta_[20,24] - x_[24] >= 96
 delta[24,21]: delta_[21,24] + delta_[24,21] = 1
 x_set_U[21]: x_[21] + 656 delta_[21,24] - x_[24] >= 96
 delta[24,22]: delta_[22,24] + delta_[24,22] = 1
 x_set_U[22]: x_[22] + 697 delta_[22,24] - x_[24] >= 228
 delta[24,23]: delta_[23,24] + delta_[24,23] = 1
 x_set_U[23]: x_[23] + 501 delta_[23,24] - x_[24] >= 200
 delta[24,25]: delta_[24,25] + delta_[25,24] = 1
 x_set_U[25]: - x_[24] + x_[25] + 249 delta_[25,24] >= 200
 delta[24,26]: delta_[24,26] + delta_[26,24] = 1
 delta_set_V[24,26]: delta_[24,26] = 1
 x_set_V[26]: - x_[24] + x_[26] >= 181
 delta[24,27]: delta_[24,27] + delta_[27,24] = 1
 delta_set_W[24,27]: delta_[24,27] = 1
 delta[24,28]: delta_[24,28] + delta_[28,24] = 1
 delta_set_W[24,28]: delta_[24,28] = 1
 delta[24,29]: delta_[24,29] + delta_[29,24] = 1
 delta_set_W[24,29]: delta_[24,29] = 1
 Alpha[25]: alpha_[25] + x_[25] >= 2679
 Beta[25]: beta_[25] - x_[25] >= -2679
 x[25]: alpha_[25] - beta_[25] + x_[25] = 2679
 delta[25,0]: delta_[0,25] + delta_[25,0] = 1
 x_set_U[0]: x_[0] + 3000 delta_[0,25] - x_[25] >= 72
 delta[25,1]: delta_[1,25] + delta_[25,1] = 1
 x_set_U[1]: x_[1] + 2921 delta_[1,25] - x_[25] >= 72
 delta[25,2]: delta_[2,25] + delta_[25,2] = 1
 x_set_U[2]: x_[2] + 2856 delta_[2,25] - x_[25] >= 72
 delta[25,3]: delta_[3,25] + delta_[25,3] = 1
 x_set_U[3]: x_[3] + 2804 delta_[3,25] - x_[25] >= 80
 delta[25,4]: delta_[4,25] + delta_[25,4] = 1
 x_set_U[4]: x_[4] + 2736 delta_[4,25] - x_[25] >= 72
 delta[25,5]: delta_[5,25] + delta_[25,5] = 1
 x_set_U[5]: x_[5] + 2680 delta_[5,25] - x_[25] >= 72
 delta[25,6]: delta_[6,25] + delta_[25,6] = 1
 x_set_U[6]: x_[6] + 2480 delta_[6,25] - x_[25] >= 80
 delta[25,7]: delta_[7,25] + delta_[25,7] = 1
 x_set_U[7]: x_[7] + 2365 delta_[7,25] - x_[25] >= 72
 delta[25,8]: delta_[8,25] + delta_[25,8] = 1
 x_set_U[8]: x_[8] + 2278 delta_[8,25] - x_[25] >= 80
 delta[25,9]: delta_[9,25] + delta_[25,9] = 1
 x_set_U[9]: x_[9] + 2242 delta_[9,25] - x_[25] >= 80
 delta[25,10]: delta_[10,25] + delta_[25,10] = 1
 x_set_U[10]: x_[10] + 2210 delta_[10,25] - x_[25] >= 72
 delta[25,11]: delta_[11,25] + delta_[25,11] = 1
 x_set_U[11]: x_[11] + 2080 delta_[11,25] - x_[25] >= 72
 delta[25,12]: delta_[12,25] + delta_[25,12] = 1
 x_set_U[12]: x_[12] + 1952 delta_[12,25] - x_[25] >= 70
 delta[25,13]: delta_[13,25] + delta_[25,13] = 1
 x_set_U[13]: x_[13] + 1932 delta_[13,25] - x_[25] >= 110
 delta[25,14]: delta_[14,25] + delta_[25,14] = 1
 x_set_U[14]: x_[14] + 1872 delta_[14,25] - x_[25] >= 80
 delta[25,15]: delta_[15,25] + delta_[25,15] = 1
 x_set_U[15]: x_[15] + 1842 delta_[15,25] - x_[25] >= 80
 delta[25,16]: delta_[16,25] + delta_[25,16] = 1
 x_set_U[16]: x_[16] + 1775 delta_[16,25] - x_[25] >= 80
 delta[25,17]: delta_[17,25] + delta_[25,17] = 1
 x_set_U[17]: x_[17] + 1358 delta_[17,25] - x_[25] >= 72
 delta[25,18]: delta_[18,25] + delta_[25,18] = 1
 x_set_U[18]: x_[18] + 1285 delta_[18,25] - x_[25] >= 72
 delta[25,19]: delta_[19,25] + delta_[25,19] = 1
 x_set_U[19]: x_[19] + 1228 delta_[19,25] - x_[25] >= 70
 delta[25,20]: delta_[20,25] + delta_[25,20] = 1
 x_set_U[20]: x_[20] + 926 delta_[20,25] - x_[25] >= 72
 delta[25,21]: delta_[21,25] + delta_[25,21] = 1
 x_set_U[21]: x_[21] + 832 delta_[21,25] - x_[25] >= 72
 delta[25,22]: delta_[22,25] + delta_[25,22] = 1
 x_set_U[22]: x_[22] + 779 delta_[22,25] - x_[25] >= 110
 delta[25,23]: delta_[23,25] + delta_[25,23] = 1
 x_set_U[23]: x_[23] + 581 delta_[23,25] - x_[25] >= 80
 delta[25,24]: delta_[24,25] + delta_[25,24] = 1
 x_set_U[24]: x_[24] + 519 delta_[24,25] - x_[25] >= 72
 delta[25,26]: delta_[25,26] + delta_[26,25] = 1
 x_set_U[26]: - x_[25] + x_[26] + 115 delta_[26,25] >= 70
 delta[25,27]: delta_[25,27] + delta_[27,25] = 1
 delta_set_V[25,27]: delta_[25,27] = 1
 x_set_V[27]: - x_[25] + x_[27] >= 80
 delta[25,28]: delta_[25,28] + delta_[28,25] = 1
 delta_set_W[25,28]: delta_[25,28] = 1
 delta[25,29]: delta_[25,29] + delta_[29,25] = 1
 delta_set_W[25,29]: delta_[25,29] = 1
 Alpha[26]: alpha_[26] + x_[26] >= 2883
 Beta[26]: beta_[26] - x_[26] >= -2883
 x[26]: alpha_[26] - beta_[26] + x_[26] = 2883
 delta[26,0]: delta_[0,26] + delta_[26,0] = 1
 x_set_U[0]: x_[0] + 3070 delta_[0,26] - x_[26] >= 72
 delta[26,1]: delta_[1,26] + delta_[26,1] = 1
 x_set_U[1]: x_[1] + 2991 delta_[1,26] - x_[26] >= 72
 delta[26,2]: delta_[2,26] + delta_[26,2] = 1
 x_set_U[2]: x_[2] + 2926 delta_[2,26] - x_[26] >= 72
 delta[26,3]: delta_[3,26] + delta_[26,3] = 1
 x_set_U[3]: x_[3] + 2894 delta_[3,26] - x_[26] >= 100
 delta[26,4]: delta_[4,26] + delta_[26,4] = 1
 x_set_U[4]: x_[4] + 2806 delta_[4,26] - x_[26] >= 72
 delta[26,5]: delta_[5,26] + delta_[26,5] = 1
 x_set_U[5]: x_[5] + 2750 delta_[5,26] - x_[26] >= 72
 delta[26,6]: delta_[6,26] + delta_[26,6] = 1
 x_set_U[6]: x_[6] + 2570 delta_[6,26] - x_[26] >= 100
 delta[26,7]: delta_[7,26] + delta_[26,7] = 1
 x_set_U[7]: x_[7] + 2435 delta_[7,26] - x_[26] >= 72
 delta[26,8]: delta_[8,26] + delta_[26,8] = 1
 x_set_U[8]: x_[8] + 2368 delta_[8,26] - x_[26] >= 100
 delta[26,9]: delta_[9,26] + delta_[26,9] = 1
 x_set_U[9]: x_[9] + 2332 delta_[9,26] - x_[26] >= 100
 delta[26,10]: delta_[10,26] + delta_[26,10] = 1
 x_set_U[10]: x_[10] + 2280 delta_[10,26] - x_[26] >= 72
 delta[26,11]: delta_[11,26] + delta_[26,11] = 1
 x_set_U[11]: x_[11] + 2150 delta_[11,26] - x_[26] >= 72
 delta[26,12]: delta_[12,26] + delta_[26,12] = 1
 x_set_U[12]: x_[12] + 2022 delta_[12,26] - x_[26] >= 70
 delta[26,13]: delta_[13,26] + delta_[26,13] = 1
 x_set_U[13]: x_[13] + 2022 delta_[13,26] - x_[26] >= 130
 delta[26,14]: delta_[14,26] + delta_[26,14] = 1
 x_set_U[14]: x_[14] + 1962 delta_[14,26] - x_[26] >= 100
 delta[26,15]: delta_[15,26] + delta_[26,15] = 1
 x_set_U[15]: x_[15] + 1932 delta_[15,26] - x_[26] >= 100
 delta[26,16]: delta_[16,26] + delta_[26,16] = 1
 x_set_U[16]: x_[16] + 1865 delta_[16,26] - x_[26] >= 100
 delta[26,17]: delta_[17,26] + delta_[26,17] = 1
 x_set_U[17]: x_[17] + 1428 delta_[17,26] - x_[26] >= 72
 delta[26,18]: delta_[18,26] + delta_[26,18] = 1
 x_set_U[18]: x_[18] + 1355 delta_[18,26] - x_[26] >= 72
 delta[26,19]: delta_[19,26] + delta_[26,19] = 1
 x_set_U[19]: x_[19] + 1298 delta_[19,26] - x_[26] >= 70
 delta[26,20]: delta_[20,26] + delta_[26,20] = 1
 x_set_U[20]: x_[20] + 996 delta_[20,26] - x_[26] >= 72
 delta[26,21]: delta_[21,26] + delta_[26,21] = 1
 x_set_U[21]: x_[21] + 902 delta_[21,26] - x_[26] >= 72
 delta[26,22]: delta_[22,26] + delta_[26,22] = 1
 x_set_U[22]: x_[22] + 869 delta_[22,26] - x_[26] >= 130
 delta[26,23]: delta_[23,26] + delta_[26,23] = 1
 x_set_U[23]: x_[23] + 671 delta_[23,26] - x_[26] >= 100
 delta[26,24]: delta_[24,26] + delta_[26,24] = 1
 x_set_U[24]: x_[24] + 589 delta_[24,26] - x_[26] >= 72
 delta[26,25]: delta_[25,26] + delta_[26,25] = 1
 x_set_U[25]: x_[25] + 419 delta_[25,26] - x_[26] >= 100
 delta[26,27]: delta_[26,27] + delta_[27,26] = 1
 x_set_U[27]: - x_[26] + x_[27] + 116 delta_[27,26] >= 100
 delta[26,28]: delta_[26,28] + delta_[28,26] = 1
 delta_set_V[26,28]: delta_[26,28] = 1
 x_set_V[28]: - x_[26] + x_[28] >= 72
 delta[26,29]: delta_[26,29] + delta_[29,26] = 1
 delta_set_W[26,29]: delta_[26,29] = 1
 Alpha[27]: alpha_[27] + x_[27] >= 2982
 Beta[27]: beta_[27] - x_[27] >= -2982
 x[27]: alpha_[27] - beta_[27] + x_[27] = 2982
 delta[27,0]: delta_[0,27] + delta_[27,0] = 1
 x_set_U[0]: x_[0] + 3170 delta_[0,27] - x_[27] >= 72
 delta[27,1]: delta_[1,27] + delta_[27,1] = 1
 x_set_U[1]: x_[1] + 3091 delta_[1,27] - x_[27] >= 72
 delta[27,2]: delta_[2,27] + delta_[27,2] = 1
 x_set_U[2]: x_[2] + 3026 delta_[2,27] - x_[27] >= 72
 delta[27,3]: delta_[3,27] + delta_[27,3] = 1
 x_set_U[3]: x_[3] + 2974 delta_[3,27] - x_[27] >= 80
 delta[27,4]: delta_[4,27] + delta_[27,4] = 1
 x_set_U[4]: x_[4] + 2906 delta_[4,27] - x_[27] >= 72
 delta[27,5]: delta_[5,27] + delta_[27,5] = 1
 x_set_U[5]: x_[5] + 2850 delta_[5,27] - x_[27] >= 72
 delta[27,6]: delta_[6,27] + delta_[27,6] = 1
 x_set_U[6]: x_[6] + 2650 delta_[6,27] - x_[27] >= 80
 delta[27,7]: delta_[7,27] + delta_[27,7] = 1
 x_set_U[7]: x_[7] + 2535 delta_[7,27] - x_[27] >= 72
 delta[27,8]: delta_[8,27] + delta_[27,8] = 1
 x_set_U[8]: x_[8] + 2448 delta_[8,27] - x_[27] >= 80
 delta[27,9]: delta_[9,27] + delta_[27,9] = 1
 x_set_U[9]: x_[9] + 2412 delta_[9,27] - x_[27] >= 80
 delta[27,10]: delta_[10,27] + delta_[27,10] = 1
 x_set_U[10]: x_[10] + 2380 delta_[10,27] - x_[27] >= 72
 delta[27,11]: delta_[11,27] + delta_[27,11] = 1
 x_set_U[11]: x_[11] + 2250 delta_[11,27] - x_[27] >= 72
 delta[27,12]: delta_[12,27] + delta_[27,12] = 1
 x_set_U[12]: x_[12] + 2122 delta_[12,27] - x_[27] >= 70
 delta[27,13]: delta_[13,27] + delta_[27,13] = 1
 x_set_U[13]: x_[13] + 2102 delta_[13,27] - x_[27] >= 110
 delta[27,14]: delta_[14,27] + delta_[27,14] = 1
 x_set_U[14]: x_[14] + 2042 delta_[14,27] - x_[27] >= 80
 delta[27,15]: delta_[15,27] + delta_[27,15] = 1
 x_set_U[15]: x_[15] + 2012 delta_[15,27] - x_[27] >= 80
 delta[27,16]: delta_[16,27] + delta_[27,16] = 1
 x_set_U[16]: x_[16] + 1945 delta_[16,27] - x_[27] >= 80
 delta[27,17]: delta_[17,27] + delta_[27,17] = 1
 x_set_U[17]: x_[17] + 1528 delta_[17,27] - x_[27] >= 72
 delta[27,18]: delta_[18,27] + delta_[27,18] = 1
 x_set_U[18]: x_[18] + 1455 delta_[18,27] - x_[27] >= 72
 delta[27,19]: delta_[19,27] + delta_[27,19] = 1
 x_set_U[19]: x_[19] + 1398 delta_[19,27] - x_[27] >= 70
 delta[27,20]: delta_[20,27] + delta_[27,20] = 1
 x_set_U[20]: x_[20] + 1096 delta_[20,27] - x_[27] >= 72
 delta[27,21]: delta_[21,27] + delta_[27,21] = 1
 x_set_U[21]: x_[21] + 1002 delta_[21,27] - x_[27] >= 72
 delta[27,22]: delta_[22,27] + delta_[27,22] = 1
 x_set_U[22]: x_[22] + 949 delta_[22,27] - x_[27] >= 110
 delta[27,23]: delta_[23,27] + delta_[27,23] = 1
 x_set_U[23]: x_[23] + 751 delta_[23,27] - x_[27] >= 80
 delta[27,24]: delta_[24,27] + delta_[27,24] = 1
 x_set_U[24]: x_[24] + 689 delta_[24,27] - x_[27] >= 72
 delta[27,25]: delta_[25,27] + delta_[27,25] = 1
 x_set_U[25]: x_[25] + 499 delta_[25,27] - x_[27] >= 80
 delta[27,26]: delta_[26,27] + delta_[27,26] = 1
 x_set_U[26]: x_[26] + 285 delta_[26,27] - x_[27] >= 70
 delta[27,28]: delta_[27,28] + delta_[28,27] = 1
 x_set_U[28]: - x_[27] + x_[28] + 124 delta_[28,27] >= 72
 delta[27,29]: delta_[27,29] + delta_[29,27] = 1
 x_set_U[29]: - x_[27] + x_[29] + 79 delta_[29,27] >= 72
 Alpha[28]: alpha_[28] + x_[28] >= 3046
 Beta[28]: beta_[28] - x_[28] >= -3046
 x[28]: alpha_[28] - beta_[28] + x_[28] = 3046
 delta[28,0]: delta_[0,28] + delta_[28,0] = 1
 x_set_U[0]: x_[0] + 3266 delta_[0,28] - x_[28] >= 96
 delta[28,1]: delta_[1,28] + delta_[28,1] = 1
 x_set_U[1]: x_[1] + 3187 delta_[1,28] - x_[28] >= 96
 delta[28,2]: delta_[2,28] + delta_[28,2] = 1
 x_set_U[2]: x_[2] + 3122 delta_[2,28] - x_[28] >= 96
 delta[28,3]: delta_[3,28] + delta_[28,3] = 1
 x_set_U[3]: x_[3] + 3166 delta_[3,28] - x_[28] >= 200
 delta[28,4]: delta_[4,28] + delta_[28,4] = 1
 x_set_U[4]: x_[4] + 3002 delta_[4,28] - x_[28] >= 96
 delta[28,5]: delta_[5,28] + delta_[28,5] = 1
 x_set_U[5]: x_[5] + 2946 delta_[5,28] - x_[28] >= 96
 delta[28,6]: delta_[6,28] + delta_[28,6] = 1
 x_set_U[6]: x_[6] + 2842 delta_[6,28] - x_[28] >= 200
 delta[28,7]: delta_[7,28] + delta_[28,7] = 1
 x_set_U[7]: x_[7] + 2631 delta_[7,28] - x_[28] >= 96
 delta[28,8]: delta_[8,28] + delta_[28,8] = 1
 x_set_U[8]: x_[8] + 2640 delta_[8,28] - x_[28] >= 200
 delta[28,9]: delta_[9,28] + delta_[28,9] = 1
 x_set_U[9]: x_[9] + 2604 delta_[9,28] - x_[28] >= 200
 delta[28,10]: delta_[10,28] + delta_[28,10] = 1
 x_set_U[10]: x_[10] + 2476 delta_[10,28] - x_[28] >= 96
 delta[28,11]: delta_[11,28] + delta_[28,11] = 1
 x_set_U[11]: x_[11] + 2346 delta_[11,28] - x_[28] >= 96
 delta[28,12]: delta_[12,28] + delta_[28,12] = 1
 x_set_U[12]: x_[12] + 2305 delta_[12,28] - x_[28] >= 181
 delta[28,13]: delta_[13,28] + delta_[28,13] = 1
 x_set_U[13]: x_[13] + 2292 delta_[13,28] - x_[28] >= 228
 delta[28,14]: delta_[14,28] + delta_[28,14] = 1
 x_set_U[14]: x_[14] + 2234 delta_[14,28] - x_[28] >= 200
 delta[28,15]: delta_[15,28] + delta_[28,15] = 1
 x_set_U[15]: x_[15] + 2204 delta_[15,28] - x_[28] >= 200
 delta[28,16]: delta_[16,28] + delta_[28,16] = 1
 x_set_U[16]: x_[16] + 2137 delta_[16,28] - x_[28] >= 200
 delta[28,17]: delta_[17,28] + delta_[28,17] = 1
 x_set_U[17]: x_[17] + 1624 delta_[17,28] - x_[28] >= 96
 delta[28,18]: delta_[18,28] + delta_[28,18] = 1
 x_set_U[18]: x_[18] + 1551 delta_[18,28] - x_[28] >= 96
 delta[28,19]: delta_[19,28] + delta_[28,19] = 1
 x_set_U[19]: x_[19] + 1581 delta_[19,28] - x_[28] >= 181
 delta[28,20]: delta_[20,28] + delta_[28,20] = 1
 x_set_U[20]: x_[20] + 1192 delta_[20,28] - x_[28] >= 96
 delta[28,21]: delta_[21,28] + delta_[28,21] = 1
 x_set_U[21]: x_[21] + 1098 delta_[21,28] - x_[28] >= 96
 delta[28,22]: delta_[22,28] + delta_[28,22] = 1
 x_set_U[22]: x_[22] + 1139 delta_[22,28] - x_[28] >= 228
 delta[28,23]: delta_[23,28] + delta_[28,23] = 1
 x_set_U[23]: x_[23] + 943 delta_[23,28] - x_[28] >= 200
 delta[28,24]: delta_[24,28] + delta_[28,24] = 1
 x_set_U[24]: x_[24] + 785 delta_[24,28] - x_[28] >= 96
 delta[28,25]: delta_[25,28] + delta_[28,25] = 1
 x_set_U[25]: x_[25] + 691 delta_[25,28] - x_[28] >= 200
 delta[28,26]: delta_[26,28] + delta_[28,26] = 1
 x_set_U[26]: x_[26] + 468 delta_[26,28] - x_[28] >= 181
 delta[28,27]: delta_[27,28] + delta_[28,27] = 1
 x_set_U[27]: x_[27] + 388 delta_[27,28] - x_[28] >= 200
 delta[28,29]: delta_[28,29] + delta_[29,28] = 1
 x_set_U[29]: - x_[28] + x_[29] + 175 delta_[29,28] >= 96
 Alpha[29]: alpha_[29] + x_[29] >= 3091
 Beta[29]: beta_[29] - x_[29] >= -3091
 x[29]: alpha_[29] - beta_[29] + x_[29] = 3091
 delta[29,0]: delta_[0,29] + delta_[29,0] = 1
 x_set_U[0]: x_[0] + 3362 delta_[0,29] - x_[29] >= 96
 delta[29,1]: delta_[1,29] + delta_[29,1] = 1
 x_set_U[1]: x_[1] + 3283 delta_[1,29] - x_[29] >= 96
 delta[29,2]: delta_[2,29] + delta_[29,2] = 1
 x_set_U[2]: x_[2] + 3218 delta_[2,29] - x_[29] >= 96
 delta[29,3]: delta_[3,29] + delta_[29,3] = 1
 x_set_U[3]: x_[3] + 3262 delta_[3,29] - x_[29] >= 200
 delta[29,4]: delta_[4,29] + delta_[29,4] = 1
 x_set_U[4]: x_[4] + 3098 delta_[4,29] - x_[29] >= 96
 delta[29,5]: delta_[5,29] + delta_[29,5] = 1
 x_set_U[5]: x_[5] + 3042 delta_[5,29] - x_[29] >= 96
 delta[29,6]: delta_[6,29] + delta_[29,6] = 1
 x_set_U[6]: x_[6] + 2938 delta_[6,29] - x_[29] >= 200
 delta[29,7]: delta_[7,29] + delta_[29,7] = 1
 x_set_U[7]: x_[7] + 2727 delta_[7,29] - x_[29] >= 96
 delta[29,8]: delta_[8,29] + delta_[29,8] = 1
 x_set_U[8]: x_[8] + 2736 delta_[8,29] - x_[29] >= 200
 delta[29,9]: delta_[9,29] + delta_[29,9] = 1
 x_set_U[9]: x_[9] + 2700 delta_[9,29] - x_[29] >= 200
 delta[29,10]: delta_[10,29] + delta_[29,10] = 1
 x_set_U[10]: x_[10] + 2572 delta_[10,29] - x_[29] >= 96
 delta[29,11]: delta_[11,29] + delta_[29,11] = 1
 x_set_U[11]: x_[11] + 2442 delta_[11,29] - x_[29] >= 96
 delta[29,12]: delta_[12,29] + delta_[29,12] = 1
 x_set_U[12]: x_[12] + 2401 delta_[12,29] - x_[29] >= 181
 delta[29,13]: delta_[13,29] + delta_[29,13] = 1
 x_set_U[13]: x_[13] + 2388 delta_[13,29] - x_[29] >= 228
 delta[29,14]: delta_[14,29] + delta_[29,14] = 1
 x_set_U[14]: x_[14] + 2330 delta_[14,29] - x_[29] >= 200
 delta[29,15]: delta_[15,29] + delta_[29,15] = 1
 x_set_U[15]: x_[15] + 2300 delta_[15,29] - x_[29] >= 200
 delta[29,16]: delta_[16,29] + delta_[29,16] = 1
 x_set_U[16]: x_[16] + 2233 delta_[16,29] - x_[29] >= 200
 delta[29,17]: delta_[17,29] + delta_[29,17] = 1
 x_set_U[17]: x_[17] + 1720 delta_[17,29] - x_[29] >= 96
 delta[29,18]: delta_[18,29] + delta_[29,18] = 1
 x_set_U[18]: x_[18] + 1647 delta_[18,29] - x_[29] >= 96
 delta[29,19]: delta_[19,29] + delta_[29,19] = 1
 x_set_U[19]: x_[19] + 1677 delta_[19,29] - x_[29] >= 181
 delta[29,20]: delta_[20,29] + delta_[29,20] = 1
 x_set_U[20]: x_[20] + 1288 delta_[20,29] - x_[29] >= 96
 delta[29,21]: delta_[21,29] + delta_[29,21] = 1
 x_set_U[21]: x_[21] + 1194 delta_[21,29] - x_[29] >= 96
 delta[29,22]: delta_[22,29] + delta_[29,22] = 1
 x_set_U[22]: x_[22] + 1235 delta_[22,29] - x_[29] >= 228
 delta[29,23]: delta_[23,29] + delta_[29,23] = 1
 x_set_U[23]: x_[23] + 1039 delta_[23,29] - x_[29] >= 200
 delta[29,24]: delta_[24,29] + delta_[29,24] = 1
 x_set_U[24]: x_[24] + 881 delta_[24,29] - x_[29] >= 96
 delta[29,25]: delta_[25,29] + delta_[29,25] = 1
 x_set_U[25]: x_[25] + 787 delta_[25,29] - x_[29] >= 200
 delta[29,26]: delta_[26,29] + delta_[29,26] = 1
 x_set_U[26]: x_[26] + 564 delta_[26,29] - x_[29] >= 181
 delta[29,27]: delta_[27,29] + delta_[29,27] = 1
 x_set_U[27]: x_[27] + 484 delta_[27,29] - x_[29] >= 200
 delta[29,28]: delta_[28,29] + delta_[29,28] = 1
 x_set_U[28]: x_[28] + 316 delta_[28,29] - x_[29] >= 96
Bounds
 alpha_[0] = 0
 beta_[0] = 0
 x_[0] = 0
 alpha_[1] = 0
 beta_[1] <= 17
 79 <= x_[1] <= 96
 alpha_[2] = 0
 beta_[2] <= 48
 144 <= x_[2] <= 192
 alpha_[3] = 0
 beta_[3] <= 188
 204 <= x_[3] <= 392
 alpha_[4] = 0
 beta_[4] <= 200
 264 <= x_[4] <= 464
 alpha_[5] = 0
 beta_[5] <= 240
 320 <= x_[5] <= 560
 alpha_[6] = 0
 beta_[6] <= 232
 528 <= x_[6] <= 760
 alpha_[7] = 0
 beta_[7] <= 197
 635 <= x_[7] <= 832
 alpha_[8] = 0
 beta_[8] <= 302
 730 <= x_[8] <= 1032
 alpha_[9] = 0
 beta_[9] <= 346
 766 <= x_[9] <= 1112
 alpha_[10] = 0
 beta_[10] <= 394
 790 <= x_[10] <= 1184
 alpha_[11] = 0
 beta_[11] <= 360
 920 <= x_[11] <= 1280
 alpha_[12] = 0
 beta_[12] <= 415
 1046 <= x_[12] <= 1461
 alpha_[13] = 0
 beta_[13] <= 485
 1106 <= x_[13] <= 1591
 alpha_[14] = 0
 beta_[14] <= 535
 1136 <= x_[14] <= 1671
 alpha_[15] = 0
 beta_[15] <= 585
 1166 <= x_[15] <= 1751
 alpha_[16] = 0
 beta_[16] <= 598
 1233 <= x_[16] <= 1831
 alpha_[17] = 0
 beta_[17] <= 261
 1642 <= x_[17] <= 1903
 alpha_[18] = 0
 beta_[18] <= 284
 1715 <= x_[18] <= 1999
 alpha_[19] = 0
 beta_[19] <= 410
 1770 <= x_[19] <= 2180
 alpha_[20] = 0
 beta_[20] <= 178
 2074 <= x_[20] <= 2252
 alpha_[21] = 0
 beta_[21] <= 180
 2168 <= x_[21] <= 2348
 alpha_[22] = 0
 beta_[22] <= 317
 2259 <= x_[22] <= 2576
 alpha_[23] = 0
 beta_[23] <= 229
 2427 <= x_[23] <= 2656
 alpha_[24] = 0
 beta_[24] <= 247
 2481 <= x_[24] <= 2728
 alpha_[25] = 0
 beta_[25] <= 249
 2679 <= x_[25] <= 2928
 alpha_[26] = 0
 beta_[26] <= 115
 2883 <= x_[26] <= 2998
 alpha_[27] = 0
 beta_[27] <= 116
 2982 <= x_[27] <= 3098
 alpha_[28] = 0
 beta_[28] <= 124
 3046 <= x_[28] <= 3170
 alpha_[29] = 0
 beta_[29] <= 175
 3091 <= x_[29] <= 3266
Binaries
 delta_[0,0] delta_[0,1] delta_[0,2] delta_[0,3] delta_[0,4] delta_[0,5]
 delta_[0,6] delta_[0,7] delta_[0,8] delta_[0,9] delta_[0,10] delta_[0,11]
 delta_[0,12] delta_[0,13] delta_[0,14] delta_[0,15] delta_[0,16]
 delta_[0,17] delta_[0,18] delta_[0,19] delta_[0,20] delta_[0,21]
 delta_[0,22] delta_[0,23] delta_[0,24] delta_[0,25] delta_[0,26]
 delta_[0,27] delta_[0,28] delta_[0,29] delta_[1,0] delta_[1,1] delta_[1,2]
 delta_[1,3] delta_[1,4] delta_[1,5] delta_[1,6] delta_[1,7] delta_[1,8]
 delta_[1,9] delta_[1,10] delta_[1,11] delta_[1,12] delta_[1,13]
 delta_[1,14] delta_[1,15] delta_[1,16] delta_[1,17] delta_[1,18]
 delta_[1,19] delta_[1,20] delta_[1,21] delta_[1,22] delta_[1,23]
 delta_[1,24] delta_[1,25] delta_[1,26] delta_[1,27] delta_[1,28]
 delta_[1,29] delta_[2,0] delta_[2,1] delta_[2,2] delta_[2,3] delta_[2,4]
 delta_[2,5] delta_[2,6] delta_[2,7] delta_[2,8] delta_[2,9] delta_[2,10]
 delta_[2,11] delta_[2,12] delta_[2,13] delta_[2,14] delta_[2,15]
 delta_[2,16] delta_[2,17] delta_[2,18] delta_[2,19] delta_[2,20]
 delta_[2,21] delta_[2,22] delta_[2,23] delta_[2,24] delta_[2,25]
 delta_[2,26] delta_[2,27] delta_[2,28] delta_[2,29] delta_[3,0]
 delta_[3,1] delta_[3,2] delta_[3,3] delta_[3,4] delta_[3,5] delta_[3,6]
 delta_[3,7] delta_[3,8] delta_[3,9] delta_[3,10] delta_[3,11] delta_[3,12]
 delta_[3,13] delta_[3,14] delta_[3,15] delta_[3,16] delta_[3,17]
 delta_[3,18] delta_[3,19] delta_[3,20] delta_[3,21] delta_[3,22]
 delta_[3,23] delta_[3,24] delta_[3,25] delta_[3,26] delta_[3,27]
 delta_[3,28] delta_[3,29] delta_[4,0] delta_[4,1] delta_[4,2] delta_[4,3]
 delta_[4,4] delta_[4,5] delta_[4,6] delta_[4,7] delta_[4,8] delta_[4,9]
 delta_[4,10] delta_[4,11] delta_[4,12] delta_[4,13] delta_[4,14]
 delta_[4,15] delta_[4,16] delta_[4,17] delta_[4,18] delta_[4,19]
 delta_[4,20] delta_[4,21] delta_[4,22] delta_[4,23] delta_[4,24]
 delta_[4,25] delta_[4,26] delta_[4,27] delta_[4,28] delta_[4,29]
 delta_[5,0] delta_[5,1] delta_[5,2] delta_[5,3] delta_[5,4] delta_[5,5]
 delta_[5,6] delta_[5,7] delta_[5,8] delta_[5,9] delta_[5,10] delta_[5,11]
 delta_[5,12] delta_[5,13] delta_[5,14] delta_[5,15] delta_[5,16]
 delta_[5,17] delta_[5,18] delta_[5,19] delta_[5,20] delta_[5,21]
 delta_[5,22] delta_[5,23] delta_[5,24] delta_[5,25] delta_[5,26]
 delta_[5,27] delta_[5,28] delta_[5,29] delta_[6,0] delta_[6,1] delta_[6,2]
 delta_[6,3] delta_[6,4] delta_[6,5] delta_[6,6] delta_[6,7] delta_[6,8]
 delta_[6,9] delta_[6,10] delta_[6,11] delta_[6,12] delta_[6,13]
 delta_[6,14] delta_[6,15] delta_[6,16] delta_[6,17] delta_[6,18]
 delta_[6,19] delta_[6,20] delta_[6,21] delta_[6,22] delta_[6,23]
 delta_[6,24] delta_[6,25] delta_[6,26] delta_[6,27] delta_[6,28]
 delta_[6,29] delta_[7,0] delta_[7,1] delta_[7,2] delta_[7,3] delta_[7,4]
 delta_[7,5] delta_[7,6] delta_[7,7] delta_[7,8] delta_[7,9] delta_[7,10]
 delta_[7,11] delta_[7,12] delta_[7,13] delta_[7,14] delta_[7,15]
 delta_[7,16] delta_[7,17] delta_[7,18] delta_[7,19] delta_[7,20]
 delta_[7,21] delta_[7,22] delta_[7,23] delta_[7,24] delta_[7,25]
 delta_[7,26] delta_[7,27] delta_[7,28] delta_[7,29] delta_[8,0]
 delta_[8,1] delta_[8,2] delta_[8,3] delta_[8,4] delta_[8,5] delta_[8,6]
 delta_[8,7] delta_[8,8] delta_[8,9] delta_[8,10] delta_[8,11] delta_[8,12]
 delta_[8,13] delta_[8,14] delta_[8,15] delta_[8,16] delta_[8,17]
 delta_[8,18] delta_[8,19] delta_[8,20] delta_[8,21] delta_[8,22]
 delta_[8,23] delta_[8,24] delta_[8,25] delta_[8,26] delta_[8,27]
 delta_[8,28] delta_[8,29] delta_[9,0] delta_[9,1] delta_[9,2] delta_[9,3]
 delta_[9,4] delta_[9,5] delta_[9,6] delta_[9,7] delta_[9,8] delta_[9,9]
 delta_[9,10] delta_[9,11] delta_[9,12] delta_[9,13] delta_[9,14]
 delta_[9,15] delta_[9,16] delta_[9,17] delta_[9,18] delta_[9,19]
 delta_[9,20] delta_[9,21] delta_[9,22] delta_[9,23] delta_[9,24]
 delta_[9,25] delta_[9,26] delta_[9,27] delta_[9,28] delta_[9,29]
 delta_[10,0] delta_[10,1] delta_[10,2] delta_[10,3] delta_[10,4]
 delta_[10,5] delta_[10,6] delta_[10,7] delta_[10,8] delta_[10,9]
 delta_[10,10] delta_[10,11] delta_[10,12] delta_[10,13] delta_[10,14]
 delta_[10,15] delta_[10,16] delta_[10,17] delta_[10,18] delta_[10,19]
 delta_[10,20] delta_[10,21] delta_[10,22] delta_[10,23] delta_[10,24]
 delta_[10,25] delta_[10,26] delta_[10,27] delta_[10,28] delta_[10,29]
 delta_[11,0] delta_[11,1] delta_[11,2] delta_[11,3] delta_[11,4]
 delta_[11,5] delta_[11,6] delta_[11,7] delta_[11,8] delta_[11,9]
 delta_[11,10] delta_[11,11] delta_[11,12] delta_[11,13] delta_[11,14]
 delta_[11,15] delta_[11,16] delta_[11,17] delta_[11,18] delta_[11,19]
 delta_[11,20] delta_[11,21] delta_[11,22] delta_[11,23] delta_[11,24]
 delta_[11,25] delta_[11,26] delta_[11,27] delta_[11,28] delta_[11,29]
 delta_[12,0] delta_[12,1] delta_[12,2] delta_[12,3] delta_[12,4]
 delta_[12,5] delta_[12,6] delta_[12,7] delta_[12,8] delta_[12,9]
 delta_[12,10] delta_[12,11] delta_[12,12] delta_[12,13] delta_[12,14]
 delta_[12,15] delta_[12,16] delta_[12,17] delta_[12,18] delta_[12,19]
 delta_[12,20] delta_[12,21] delta_[12,22] delta_[12,23] delta_[12,24]
 delta_[12,25] delta_[12,26] delta_[12,27] delta_[12,28] delta_[12,29]
 delta_[13,0] delta_[13,1] delta_[13,2] delta_[13,3] delta_[13,4]
 delta_[13,5] delta_[13,6] delta_[13,7] delta_[13,8] delta_[13,9]
 delta_[13,10] delta_[13,11] delta_[13,12] delta_[13,13] delta_[13,14]
 delta_[13,15] delta_[13,16] delta_[13,17] delta_[13,18] delta_[13,19]
 delta_[13,20] delta_[13,21] delta_[13,22] delta_[13,23] delta_[13,24]
 delta_[13,25] delta_[13,26] delta_[13,27] delta_[13,28] delta_[13,29]
 delta_[14,0] delta_[14,1] delta_[14,2] delta_[14,3] delta_[14,4]
 delta_[14,5] delta_[14,6] delta_[14,7] delta_[14,8] delta_[14,9]
 delta_[14,10] delta_[14,11] delta_[14,12] delta_[14,13] delta_[14,14]
 delta_[14,15] delta_[14,16] delta_[14,17] delta_[14,18] delta_[14,19]
 delta_[14,20] delta_[14,21] delta_[14,22] delta_[14,23] delta_[14,24]
 delta_[14,25] delta_[14,26] delta_[14,27] delta_[14,28] delta_[14,29]
 delta_[15,0] delta_[15,1] delta_[15,2] delta_[15,3] delta_[15,4]
 delta_[15,5] delta_[15,6] delta_[15,7] delta_[15,8] delta_[15,9]
 delta_[15,10] delta_[15,11] delta_[15,12] delta_[15,13] delta_[15,14]
 delta_[15,15] delta_[15,16] delta_[15,17] delta_[15,18] delta_[15,19]
 delta_[15,20] delta_[15,21] delta_[15,22] delta_[15,23] delta_[15,24]
 delta_[15,25] delta_[15,26] delta_[15,27] delta_[15,28] delta_[15,29]
 delta_[16,0] delta_[16,1] delta_[16,2] delta_[16,3] delta_[16,4]
 delta_[16,5] delta_[16,6] delta_[16,7] delta_[16,8] delta_[16,9]
 delta_[16,10] delta_[16,11] delta_[16,12] delta_[16,13] delta_[16,14]
 delta_[16,15] delta_[16,16] delta_[16,17] delta_[16,18] delta_[16,19]
 delta_[16,20] delta_[16,21] delta_[16,22] delta_[16,23] delta_[16,24]
 delta_[16,25] delta_[16,26] delta_[16,27] delta_[16,28] delta_[16,29]
 delta_[17,0] delta_[17,1] delta_[17,2] delta_[17,3] delta_[17,4]
 delta_[17,5] delta_[17,6] delta_[17,7] delta_[17,8] delta_[17,9]
 delta_[17,10] delta_[17,11] delta_[17,12] delta_[17,13] delta_[17,14]
 delta_[17,15] delta_[17,16] delta_[17,17] delta_[17,18] delta_[17,19]
 delta_[17,20] delta_[17,21] delta_[17,22] delta_[17,23] delta_[17,24]
 delta_[17,25] delta_[17,26] delta_[17,27] delta_[17,28] delta_[17,29]
 delta_[18,0] delta_[18,1] delta_[18,2] delta_[18,3] delta_[18,4]
 delta_[18,5] delta_[18,6] delta_[18,7] delta_[18,8] delta_[18,9]
 delta_[18,10] delta_[18,11] delta_[18,12] delta_[18,13] delta_[18,14]
 delta_[18,15] delta_[18,16] delta_[18,17] delta_[18,18] delta_[18,19]
 delta_[18,20] delta_[18,21] delta_[18,22] delta_[18,23] delta_[18,24]
 delta_[18,25] delta_[18,26] delta_[18,27] delta_[18,28] delta_[18,29]
 delta_[19,0] delta_[19,1] delta_[19,2] delta_[19,3] delta_[19,4]
 delta_[19,5] delta_[19,6] delta_[19,7] delta_[19,8] delta_[19,9]
 delta_[19,10] delta_[19,11] delta_[19,12] delta_[19,13] delta_[19,14]
 delta_[19,15] delta_[19,16] delta_[19,17] delta_[19,18] delta_[19,19]
 delta_[19,20] delta_[19,21] delta_[19,22] delta_[19,23] delta_[19,24]
 delta_[19,25] delta_[19,26] delta_[19,27] delta_[19,28] delta_[19,29]
 delta_[20,0] delta_[20,1] delta_[20,2] delta_[20,3] delta_[20,4]
 delta_[20,5] delta_[20,6] delta_[20,7] delta_[20,8] delta_[20,9]
 delta_[20,10] delta_[20,11] delta_[20,12] delta_[20,13] delta_[20,14]
 delta_[20,15] delta_[20,16] delta_[20,17] delta_[20,18] delta_[20,19]
 delta_[20,20] delta_[20,21] delta_[20,22] delta_[20,23] delta_[20,24]
 delta_[20,25] delta_[20,26] delta_[20,27] delta_[20,28] delta_[20,29]
 delta_[21,0] delta_[21,1] delta_[21,2] delta_[21,3] delta_[21,4]
 delta_[21,5] delta_[21,6] delta_[21,7] delta_[21,8] delta_[21,9]
 delta_[21,10] delta_[21,11] delta_[21,12] delta_[21,13] delta_[21,14]
 delta_[21,15] delta_[21,16] delta_[21,17] delta_[21,18] delta_[21,19]
 delta_[21,20] delta_[21,21] delta_[21,22] delta_[21,23] delta_[21,24]
 delta_[21,25] delta_[21,26] delta_[21,27] delta_[21,28] delta_[21,29]
 delta_[22,0] delta_[22,1] delta_[22,2] delta_[22,3] delta_[22,4]
 delta_[22,5] delta_[22,6] delta_[22,7] delta_[22,8] delta_[22,9]
 delta_[22,10] delta_[22,11] delta_[22,12] delta_[22,13] delta_[22,14]
 delta_[22,15] delta_[22,16] delta_[22,17] delta_[22,18] delta_[22,19]
 delta_[22,20] delta_[22,21] delta_[22,22] delta_[22,23] delta_[22,24]
 delta_[22,25] delta_[22,26] delta_[22,27] delta_[22,28] delta_[22,29]
 delta_[23,0] delta_[23,1] delta_[23,2] delta_[23,3] delta_[23,4]
 delta_[23,5] delta_[23,6] delta_[23,7] delta_[23,8] delta_[23,9]
 delta_[23,10] delta_[23,11] delta_[23,12] delta_[23,13] delta_[23,14]
 delta_[23,15] delta_[23,16] delta_[23,17] delta_[23,18] delta_[23,19]
 delta_[23,20] delta_[23,21] delta_[23,22] delta_[23,23] delta_[23,24]
 delta_[23,25] delta_[23,26] delta_[23,27] delta_[23,28] delta_[23,29]
 delta_[24,0] delta_[24,1] delta_[24,2] delta_[24,3] delta_[24,4]
 delta_[24,5] delta_[24,6] delta_[24,7] delta_[24,8] delta_[24,9]
 delta_[24,10] delta_[24,11] delta_[24,12] delta_[24,13] delta_[24,14]
 delta_[24,15] delta_[24,16] delta_[24,17] delta_[24,18] delta_[24,19]
 delta_[24,20] delta_[24,21] delta_[24,22] delta_[24,23] delta_[24,24]
 delta_[24,25] delta_[24,26] delta_[24,27] delta_[24,28] delta_[24,29]
 delta_[25,0] delta_[25,1] delta_[25,2] delta_[25,3] delta_[25,4]
 delta_[25,5] delta_[25,6] delta_[25,7] delta_[25,8] delta_[25,9]
 delta_[25,10] delta_[25,11] delta_[25,12] delta_[25,13] delta_[25,14]
 delta_[25,15] delta_[25,16] delta_[25,17] delta_[25,18] delta_[25,19]
 delta_[25,20] delta_[25,21] delta_[25,22] delta_[25,23] delta_[25,24]
 delta_[25,25] delta_[25,26] delta_[25,27] delta_[25,28] delta_[25,29]
 delta_[26,0] delta_[26,1] delta_[26,2] delta_[26,3] delta_[26,4]
 delta_[26,5] delta_[26,6] delta_[26,7] delta_[26,8] delta_[26,9]
 delta_[26,10] delta_[26,11] delta_[26,12] delta_[26,13] delta_[26,14]
 delta_[26,15] delta_[26,16] delta_[26,17] delta_[26,18] delta_[26,19]
 delta_[26,20] delta_[26,21] delta_[26,22] delta_[26,23] delta_[26,24]
 delta_[26,25] delta_[26,26] delta_[26,27] delta_[26,28] delta_[26,29]
 delta_[27,0] delta_[27,1] delta_[27,2] delta_[27,3] delta_[27,4]
 delta_[27,5] delta_[27,6] delta_[27,7] delta_[27,8] delta_[27,9]
 delta_[27,10] delta_[27,11] delta_[27,12] delta_[27,13] delta_[27,14]
 delta_[27,15] delta_[27,16] delta_[27,17] delta_[27,18] delta_[27,19]
 delta_[27,20] delta_[27,21] delta_[27,22] delta_[27,23] delta_[27,24]
 delta_[27,25] delta_[27,26] delta_[27,27] delta_[27,28] delta_[27,29]
 delta_[28,0] delta_[28,1] delta_[28,2] delta_[28,3] delta_[28,4]
 delta_[28,5] delta_[28,6] delta_[28,7] delta_[28,8] delta_[28,9]
 delta_[28,10] delta_[28,11] delta_[28,12] delta_[28,13] delta_[28,14]
 delta_[28,15] delta_[28,16] delta_[28,17] delta_[28,18] delta_[28,19]
 delta_[28,20] delta_[28,21] delta_[28,22] delta_[28,23] delta_[28,24]
 delta_[28,25] delta_[28,26] delta_[28,27] delta_[28,28] delta_[28,29]
 delta_[29,0] delta_[29,1] delta_[29,2] delta_[29,3] delta_[29,4]
 delta_[29,5] delta_[29,6] delta_[29,7] delta_[29,8] delta_[29,9]
 delta_[29,10] delta_[29,11] delta_[29,12] delta_[29,13] delta_[29,14]
 delta_[29,15] delta_[29,16] delta_[29,17] delta_[29,18] delta_[29,19]
 delta_[29,20] delta_[29,21] delta_[29,22] delta_[29,23] delta_[29,24]
 delta_[29,25] delta_[29,26] delta_[29,27] delta_[29,28] delta_[29,29]
Generals
 alpha_[0] beta_[0] x_[0] alpha_[1] beta_[1] x_[1] alpha_[2] beta_[2] x_[2]
 alpha_[3] beta_[3] x_[3] alpha_[4] beta_[4] x_[4] alpha_[5] beta_[5] x_[5]
 alpha_[6] beta_[6] x_[6] alpha_[7] beta_[7] x_[7] alpha_[8] beta_[8] x_[8]
 alpha_[9] beta_[9] x_[9] alpha_[10] beta_[10] x_[10] alpha_[11] beta_[11]
 x_[11] alpha_[12] beta_[12] x_[12] alpha_[13] beta_[13] x_[13] alpha_[14]
 beta_[14] x_[14] alpha_[15] beta_[15] x_[15] alpha_[16] beta_[16] x_[16]
 alpha_[17] beta_[17] x_[17] alpha_[18] beta_[18] x_[18] alpha_[19]
 beta_[19] x_[19] alpha_[20] beta_[20] x_[20] alpha_[21] beta_[21] x_[21]
 alpha_[22] beta_[22] x_[22] alpha_[23] beta_[23] x_[23] alpha_[24]
 beta_[24] x_[24] alpha_[25] beta_[25] x_[25] alpha_[26] beta_[26] x_[26]
 alpha_[27] beta_[27] x_[27] alpha_[28] beta_[28] x_[28] alpha_[29]
 beta_[29] x_[29]
End
