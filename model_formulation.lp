\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  30 alpha_[0] + 30 beta_[0] + 0 delta_[0,0] + 30 alpha_[1] + 30 beta_[1]
   + 0 delta_[1,1] + 30 alpha_[2] + 30 beta_[2] + 0 delta_[2,2]
   + 30 alpha_[3] + 30 beta_[3] + 0 delta_[3,3] + 30 alpha_[4]
   + 30 beta_[4] + 0 delta_[4,4] + 30 alpha_[5] + 30 beta_[5]
   + 0 delta_[5,5] + 30 alpha_[6] + 30 beta_[6] + 0 delta_[6,6]
   + 10 alpha_[7] + 10 beta_[7] + 0 delta_[7,7] + 30 alpha_[8]
   + 30 beta_[8] + 0 delta_[8,8] + 10 alpha_[9] + 10 beta_[9]
   + 0 delta_[9,9]
Subject To
 Alpha[0]: alpha_[0] + x_[0] >= 98
 Beta[0]: beta_[0] - x_[0] >= -98
 x[0]: alpha_[0] - beta_[0] + x_[0] = 98
 delta[0,1]: delta_[0,1] + delta_[1,0] = 1
 x_set_U[1]: - x_[0] + x_[1] + 422 delta_[1,0] >= 8
 delta[0,2]: delta_[0,2] + delta_[2,0] = 1
 x_set_U[2]: - x_[0] + x_[2] + 408 delta_[2,0] >= 8
 delta[0,3]: delta_[0,3] + delta_[3,0] = 1
 x_set_U[3]: - x_[0] + x_[3] + 398 delta_[3,0] >= 8
 delta[0,4]: delta_[0,4] + delta_[4,0] = 1
 x_set_U[4]: - x_[0] + x_[4] + 394 delta_[4,0] >= 8
 delta[0,5]: delta_[0,5] + delta_[5,0] = 1
 x_set_U[5]: - x_[0] + x_[5] + 392 delta_[5,0] >= 8
 delta[0,6]: delta_[0,6] + delta_[6,0] = 1
 x_set_U[6]: - x_[0] + x_[6] + 383 delta_[6,0] >= 8
 delta[0,7]: delta_[0,7] + delta_[7,0] = 1
 x_set_U[7]: - x_[0] + x_[7] + 396 delta_[7,0] >= 15
 delta[0,8]: delta_[0,8] + delta_[8,0] = 1
 x_set_U[8]: - x_[0] + x_[8] + 358 delta_[8,0] >= 8
 delta[0,9]: delta_[0,9] + delta_[9,0] = 1
 x_set_U[9]: - x_[0] + x_[9] + 330 delta_[9,0] >= 15
 Alpha[1]: alpha_[1] + x_[1] >= 106
 Beta[1]: beta_[1] - x_[1] >= -106
 x[1]: alpha_[1] - beta_[1] + x_[1] = 106
 delta[1,0]: delta_[0,1] + delta_[1,0] = 1
 x_set_U[0]: x_[0] + 440 delta_[0,1] - x_[1] >= 8
 delta[1,2]: delta_[1,2] + delta_[2,1] = 1
 x_set_U[2]: - x_[1] + x_[2] + 419 delta_[2,1] >= 8
 delta[1,3]: delta_[1,3] + delta_[3,1] = 1
 x_set_U[3]: - x_[1] + x_[3] + 409 delta_[3,1] >= 8
 delta[1,4]: delta_[1,4] + delta_[4,1] = 1
 x_set_U[4]: - x_[1] + x_[4] + 405 delta_[4,1] >= 8
 delta[1,5]: delta_[1,5] + delta_[5,1] = 1
 x_set_U[5]: - x_[1] + x_[5] + 403 delta_[5,1] >= 8
 delta[1,6]: delta_[1,6] + delta_[6,1] = 1
 x_set_U[6]: - x_[1] + x_[6] + 394 delta_[6,1] >= 8
 delta[1,7]: delta_[1,7] + delta_[7,1] = 1
 x_set_U[7]: - x_[1] + x_[7] + 407 delta_[7,1] >= 15
 delta[1,8]: delta_[1,8] + delta_[8,1] = 1
 x_set_U[8]: - x_[1] + x_[8] + 369 delta_[8,1] >= 8
 delta[1,9]: delta_[1,9] + delta_[9,1] = 1
 x_set_U[9]: - x_[1] + x_[9] + 341 delta_[9,1] >= 15
 Alpha[2]: alpha_[2] + x_[2] >= 123
 Beta[2]: beta_[2] - x_[2] >= -123
 x[2]: alpha_[2] - beta_[2] + x_[2] = 123
 delta[2,0]: delta_[0,2] + delta_[2,0] = 1
 x_set_U[0]: x_[0] + 474 delta_[0,2] - x_[2] >= 8
 delta[2,1]: delta_[1,2] + delta_[2,1] = 1
 x_set_U[1]: x_[1] + 467 delta_[1,2] - x_[2] >= 8
 delta[2,3]: delta_[2,3] + delta_[3,2] = 1
 x_set_U[3]: - x_[2] + x_[3] + 443 delta_[3,2] >= 8
 delta[2,4]: delta_[2,4] + delta_[4,2] = 1
 x_set_U[4]: - x_[2] + x_[4] + 439 delta_[4,2] >= 8
 delta[2,5]: delta_[2,5] + delta_[5,2] = 1
 x_set_U[5]: - x_[2] + x_[5] + 437 delta_[5,2] >= 8
 delta[2,6]: delta_[2,6] + delta_[6,2] = 1
 x_set_U[6]: - x_[2] + x_[6] + 428 delta_[6,2] >= 8
 delta[2,7]: delta_[2,7] + delta_[7,2] = 1
 x_set_U[7]: - x_[2] + x_[7] + 441 delta_[7,2] >= 15
 delta[2,8]: delta_[2,8] + delta_[8,2] = 1
 x_set_U[8]: - x_[2] + x_[8] + 403 delta_[8,2] >= 8
 delta[2,9]: delta_[2,9] + delta_[9,2] = 1
 x_set_U[9]: - x_[2] + x_[9] + 375 delta_[9,2] >= 15
 Alpha[3]: alpha_[3] + x_[3] >= 135
 Beta[3]: beta_[3] - x_[3] >= -135
 x[3]: alpha_[3] - beta_[3] + x_[3] = 135
 delta[3,0]: delta_[0,3] + delta_[3,0] = 1
 x_set_U[0]: x_[0] + 495 delta_[0,3] - x_[3] >= 8
 delta[3,1]: delta_[1,3] + delta_[3,1] = 1
 x_set_U[1]: x_[1] + 488 delta_[1,3] - x_[3] >= 8
 delta[3,2]: delta_[2,3] + delta_[3,2] = 1
 x_set_U[2]: x_[2] + 474 delta_[2,3] - x_[3] >= 8
 delta[3,4]: delta_[3,4] + delta_[4,3] = 1
 x_set_U[4]: - x_[3] + x_[4] + 460 delta_[4,3] >= 8
 delta[3,5]: delta_[3,5] + delta_[5,3] = 1
 x_set_U[5]: - x_[3] + x_[5] + 458 delta_[5,3] >= 8
 delta[3,6]: delta_[3,6] + delta_[6,3] = 1
 x_set_U[6]: - x_[3] + x_[6] + 449 delta_[6,3] >= 8
 delta[3,7]: delta_[3,7] + delta_[7,3] = 1
 x_set_U[7]: - x_[3] + x_[7] + 462 delta_[7,3] >= 15
 delta[3,8]: delta_[3,8] + delta_[8,3] = 1
 x_set_U[8]: - x_[3] + x_[8] + 424 delta_[8,3] >= 8
 delta[3,9]: delta_[3,9] + delta_[9,3] = 1
 x_set_U[9]: - x_[3] + x_[9] + 396 delta_[9,3] >= 15
 Alpha[4]: alpha_[4] + x_[4] >= 138
 Beta[4]: beta_[4] - x_[4] >= -138
 x[4]: alpha_[4] - beta_[4] + x_[4] = 138
 delta[4,0]: delta_[0,4] + delta_[4,0] = 1
 x_set_U[0]: x_[0] + 496 delta_[0,4] - x_[4] >= 8
 delta[4,1]: delta_[1,4] + delta_[4,1] = 1
 x_set_U[1]: x_[1] + 489 delta_[1,4] - x_[4] >= 8
 delta[4,2]: delta_[2,4] + delta_[4,2] = 1
 x_set_U[2]: x_[2] + 475 delta_[2,4] - x_[4] >= 8
 delta[4,3]: delta_[3,4] + delta_[4,3] = 1
 x_set_U[3]: x_[3] + 465 delta_[3,4] - x_[4] >= 8
 delta[4,5]: delta_[4,5] + delta_[5,4] = 1
 x_set_U[5]: - x_[4] + x_[5] + 459 delta_[5,4] >= 8
 delta[4,6]: delta_[4,6] + delta_[6,4] = 1
 x_set_U[6]: - x_[4] + x_[6] + 450 delta_[6,4] >= 8
 delta[4,7]: delta_[4,7] + delta_[7,4] = 1
 x_set_U[7]: - x_[4] + x_[7] + 463 delta_[7,4] >= 15
 delta[4,8]: delta_[4,8] + delta_[8,4] = 1
 x_set_U[8]: - x_[4] + x_[8] + 425 delta_[8,4] >= 8
 delta[4,9]: delta_[4,9] + delta_[9,4] = 1
 x_set_U[9]: - x_[4] + x_[9] + 397 delta_[9,4] >= 15
 Alpha[5]: alpha_[5] + x_[5] >= 140
 Beta[5]: beta_[5] - x_[5] >= -140
 x[5]: alpha_[5] - beta_[5] + x_[5] = 140
 delta[5,0]: delta_[0,5] + delta_[5,0] = 1
 x_set_U[0]: x_[0] + 492 delta_[0,5] - x_[5] >= 8
 delta[5,1]: delta_[1,5] + delta_[5,1] = 1
 x_set_U[1]: x_[1] + 485 delta_[1,5] - x_[5] >= 8
 delta[5,2]: delta_[2,5] + delta_[5,2] = 1
 x_set_U[2]: x_[2] + 471 delta_[2,5] - x_[5] >= 8
 delta[5,3]: delta_[3,5] + delta_[5,3] = 1
 x_set_U[3]: x_[3] + 461 delta_[3,5] - x_[5] >= 8
 delta[5,4]: delta_[4,5] + delta_[5,4] = 1
 x_set_U[4]: x_[4] + 457 delta_[4,5] - x_[5] >= 8
 delta[5,6]: delta_[5,6] + delta_[6,5] = 1
 x_set_U[6]: - x_[5] + x_[6] + 446 delta_[6,5] >= 8
 delta[5,7]: delta_[5,7] + delta_[7,5] = 1
 x_set_U[7]: - x_[5] + x_[7] + 459 delta_[7,5] >= 15
 delta[5,8]: delta_[5,8] + delta_[8,5] = 1
 x_set_U[8]: - x_[5] + x_[8] + 421 delta_[8,5] >= 8
 delta[5,9]: delta_[5,9] + delta_[9,5] = 1
 x_set_U[9]: - x_[5] + x_[9] + 393 delta_[9,5] >= 15
 Alpha[6]: alpha_[6] + x_[6] >= 150
 Beta[6]: beta_[6] - x_[6] >= -150
 x[6]: alpha_[6] - beta_[6] + x_[6] = 150
 delta[6,0]: delta_[0,6] + delta_[6,0] = 1
 x_set_U[0]: x_[0] + 510 delta_[0,6] - x_[6] >= 8
 delta[6,1]: delta_[1,6] + delta_[6,1] = 1
 x_set_U[1]: x_[1] + 503 delta_[1,6] - x_[6] >= 8
 delta[6,2]: delta_[2,6] + delta_[6,2] = 1
 x_set_U[2]: x_[2] + 489 delta_[2,6] - x_[6] >= 8
 delta[6,3]: delta_[3,6] + delta_[6,3] = 1
 x_set_U[3]: x_[3] + 479 delta_[3,6] - x_[6] >= 8
 delta[6,4]: delta_[4,6] + delta_[6,4] = 1
 x_set_U[4]: x_[4] + 475 delta_[4,6] - x_[6] >= 8
 delta[6,5]: delta_[5,6] + delta_[6,5] = 1
 x_set_U[5]: x_[5] + 473 delta_[5,6] - x_[6] >= 8
 delta[6,7]: delta_[6,7] + delta_[7,6] = 1
 x_set_U[7]: - x_[6] + x_[7] + 477 delta_[7,6] >= 15
 delta[6,8]: delta_[6,8] + delta_[8,6] = 1
 x_set_U[8]: - x_[6] + x_[8] + 439 delta_[8,6] >= 8
 delta[6,9]: delta_[6,9] + delta_[9,6] = 1
 x_set_U[9]: - x_[6] + x_[9] + 411 delta_[9,6] >= 15
 Alpha[7]: alpha_[7] + x_[7] >= 155
 Beta[7]: beta_[7] - x_[7] >= -155
 x[7]: alpha_[7] - beta_[7] + x_[7] = 155
 delta[7,0]: delta_[0,7] + delta_[7,0] = 1
 x_set_U[0]: x_[0] + 485 delta_[0,7] - x_[7] >= 15
 delta[7,1]: delta_[1,7] + delta_[7,1] = 1
 x_set_U[1]: x_[1] + 478 delta_[1,7] - x_[7] >= 15
 delta[7,2]: delta_[2,7] + delta_[7,2] = 1
 x_set_U[2]: x_[2] + 464 delta_[2,7] - x_[7] >= 15
 delta[7,3]: delta_[3,7] + delta_[7,3] = 1
 x_set_U[3]: x_[3] + 454 delta_[3,7] - x_[7] >= 15
 delta[7,4]: delta_[4,7] + delta_[7,4] = 1
 x_set_U[4]: x_[4] + 450 delta_[4,7] - x_[7] >= 15
 delta[7,5]: delta_[5,7] + delta_[7,5] = 1
 x_set_U[5]: x_[5] + 448 delta_[5,7] - x_[7] >= 15
 delta[7,6]: delta_[6,7] + delta_[7,6] = 1
 x_set_U[6]: x_[6] + 439 delta_[6,7] - x_[7] >= 15
 delta[7,8]: delta_[7,8] + delta_[8,7] = 1
 x_set_U[8]: - x_[7] + x_[8] + 414 delta_[8,7] >= 15
 delta[7,9]: delta_[7,9] + delta_[9,7] = 1
 x_set_U[9]: - x_[7] + x_[9] + 367 delta_[9,7] >= 3
 Alpha[8]: alpha_[8] + x_[8] >= 180
 Beta[8]: beta_[8] - x_[8] >= -180
 x[8]: alpha_[8] - beta_[8] + x_[8] = 180
 delta[8,0]: delta_[0,8] + delta_[8,0] = 1
 x_set_U[0]: x_[0] + 576 delta_[0,8] - x_[8] >= 8
 delta[8,1]: delta_[1,8] + delta_[8,1] = 1
 x_set_U[1]: x_[1] + 569 delta_[1,8] - x_[8] >= 8
 delta[8,2]: delta_[2,8] + delta_[8,2] = 1
 x_set_U[2]: x_[2] + 555 delta_[2,8] - x_[8] >= 8
 delta[8,3]: delta_[3,8] + delta_[8,3] = 1
 x_set_U[3]: x_[3] + 545 delta_[3,8] - x_[8] >= 8
 delta[8,4]: delta_[4,8] + delta_[8,4] = 1
 x_set_U[4]: x_[4] + 541 delta_[4,8] - x_[8] >= 8
 delta[8,5]: delta_[5,8] + delta_[8,5] = 1
 x_set_U[5]: x_[5] + 539 delta_[5,8] - x_[8] >= 8
 delta[8,6]: delta_[6,8] + delta_[8,6] = 1
 x_set_U[6]: x_[6] + 530 delta_[6,8] - x_[8] >= 8
 delta[8,7]: delta_[7,8] + delta_[8,7] = 1
 x_set_U[7]: x_[7] + 543 delta_[7,8] - x_[8] >= 15
 delta[8,9]: delta_[8,9] + delta_[9,8] = 1
 x_set_U[9]: - x_[8] + x_[9] + 477 delta_[9,8] >= 15
 Alpha[9]: alpha_[9] + x_[9] >= 258
 Beta[9]: beta_[9] - x_[9] >= -258
 x[9]: alpha_[9] - beta_[9] + x_[9] = 258
 delta[9,0]: delta_[0,9] + delta_[9,0] = 1
 x_set_U[0]: x_[0] + 670 delta_[0,9] - x_[9] >= 15
 delta[9,1]: delta_[1,9] + delta_[9,1] = 1
 x_set_U[1]: x_[1] + 663 delta_[1,9] - x_[9] >= 15
 delta[9,2]: delta_[2,9] + delta_[9,2] = 1
 x_set_U[2]: x_[2] + 649 delta_[2,9] - x_[9] >= 15
 delta[9,3]: delta_[3,9] + delta_[9,3] = 1
 x_set_U[3]: x_[3] + 639 delta_[3,9] - x_[9] >= 15
 delta[9,4]: delta_[4,9] + delta_[9,4] = 1
 x_set_U[4]: x_[4] + 635 delta_[4,9] - x_[9] >= 15
 delta[9,5]: delta_[5,9] + delta_[9,5] = 1
 x_set_U[5]: x_[5] + 633 delta_[5,9] - x_[9] >= 15
 delta[9,6]: delta_[6,9] + delta_[9,6] = 1
 x_set_U[6]: x_[6] + 624 delta_[6,9] - x_[9] >= 15
 delta[9,7]: delta_[7,9] + delta_[9,7] = 1
 x_set_U[7]: x_[7] + 618 delta_[7,9] - x_[9] >= 3
 delta[9,8]: delta_[8,9] + delta_[9,8] = 1
 x_set_U[8]: x_[8] + 599 delta_[8,9] - x_[9] >= 15
Bounds
 alpha_[0] <= 9
 beta_[0] <= 412
 89 <= x_[0] <= 510
 alpha_[1] <= 10
 beta_[1] <= 415
 96 <= x_[1] <= 521
 alpha_[2] <= 13
 beta_[2] <= 432
 110 <= x_[2] <= 555
 alpha_[3] <= 15
 beta_[3] <= 441
 120 <= x_[3] <= 576
 alpha_[4] <= 14
 beta_[4] <= 439
 124 <= x_[4] <= 577
 alpha_[5] <= 14
 beta_[5] <= 433
 126 <= x_[5] <= 573
 alpha_[6] <= 15
 beta_[6] <= 441
 135 <= x_[6] <= 591
 alpha_[7] <= 26
 beta_[7] <= 404
 129 <= x_[7] <= 559
 alpha_[8] <= 20
 beta_[8] <= 477
 160 <= x_[8] <= 657
 alpha_[9] <= 63
 beta_[9] <= 486
 195 <= x_[9] <= 744
Binaries
 delta_[0,0] delta_[0,1] delta_[0,2] delta_[0,3] delta_[0,4] delta_[0,5]
 delta_[0,6] delta_[0,7] delta_[0,8] delta_[0,9] delta_[1,0] delta_[1,1]
 delta_[1,2] delta_[1,3] delta_[1,4] delta_[1,5] delta_[1,6] delta_[1,7]
 delta_[1,8] delta_[1,9] delta_[2,0] delta_[2,1] delta_[2,2] delta_[2,3]
 delta_[2,4] delta_[2,5] delta_[2,6] delta_[2,7] delta_[2,8] delta_[2,9]
 delta_[3,0] delta_[3,1] delta_[3,2] delta_[3,3] delta_[3,4] delta_[3,5]
 delta_[3,6] delta_[3,7] delta_[3,8] delta_[3,9] delta_[4,0] delta_[4,1]
 delta_[4,2] delta_[4,3] delta_[4,4] delta_[4,5] delta_[4,6] delta_[4,7]
 delta_[4,8] delta_[4,9] delta_[5,0] delta_[5,1] delta_[5,2] delta_[5,3]
 delta_[5,4] delta_[5,5] delta_[5,6] delta_[5,7] delta_[5,8] delta_[5,9]
 delta_[6,0] delta_[6,1] delta_[6,2] delta_[6,3] delta_[6,4] delta_[6,5]
 delta_[6,6] delta_[6,7] delta_[6,8] delta_[6,9] delta_[7,0] delta_[7,1]
 delta_[7,2] delta_[7,3] delta_[7,4] delta_[7,5] delta_[7,6] delta_[7,7]
 delta_[7,8] delta_[7,9] delta_[8,0] delta_[8,1] delta_[8,2] delta_[8,3]
 delta_[8,4] delta_[8,5] delta_[8,6] delta_[8,7] delta_[8,8] delta_[8,9]
 delta_[9,0] delta_[9,1] delta_[9,2] delta_[9,3] delta_[9,4] delta_[9,5]
 delta_[9,6] delta_[9,7] delta_[9,8] delta_[9,9]
Generals
 alpha_[0] beta_[0] x_[0] alpha_[1] beta_[1] x_[1] alpha_[2] beta_[2] x_[2]
 alpha_[3] beta_[3] x_[3] alpha_[4] beta_[4] x_[4] alpha_[5] beta_[5] x_[5]
 alpha_[6] beta_[6] x_[6] alpha_[7] beta_[7] x_[7] alpha_[8] beta_[8] x_[8]
 alpha_[9] beta_[9] x_[9]
End
