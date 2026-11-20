# 練習目錄

目錄列出各題的實作位置與執行入口。

## 執行與驗證

    sh practice/run_tests.sh
    # more_modules.sv 的測試在 practice/tb_more.sv

## 題目

| 題號 | 任務／學習重點 | 來源 | 入口 |
|---|---|---|---|
| 01 | UART 8N1 | [uart_tx.v](practice/uart_tx.v) | practice_uart_tx |
| 02 | Ready-valid FIFO | [fifo.v](practice/fifo.v) | practice_fifo |
| 03 | 去彈跳 | [debounce.v](practice/debounce.v) | practice_debounce |
| 04 | 飽和計數 | [saturating_counter.v](practice/saturating_counter.v) | practice_saturating_counter |
| 05 | 二選一多工器 | [more_modules.sv](practice/more_modules.sv) | lab_mux2 |
| 06 | 四選一多工器 | [more_modules.sv](practice/more_modules.sv) | lab_mux4 |
| 07 | 一對四解多工 | [more_modules.sv](practice/more_modules.sv) | lab_demux |
| 08 | 三對八解碼器 | [more_modules.sv](practice/more_modules.sv) | lab_decoder |
| 09 | 高位優先編碼 | [more_modules.sv](practice/more_modules.sv) | lab_priority |
| 10 | One-hot 有效性編碼 | [more_modules.sv](practice/more_modules.sv) | lab_onehot |
| 11 | 奇偶同位元 | [more_modules.sv](practice/more_modules.sv) | lab_parity |
| 12 | 三輸入多數決 | [more_modules.sv](practice/more_modules.sv) | lab_majority |
| 13 | 上升緣單週期偵測 | [more_modules.sv](practice/more_modules.sv) | lab_rising |
| 14 | 下降緣單週期偵測 | [more_modules.sv](practice/more_modules.sv) | lab_falling |
| 15 | 半加器 | [more_modules.sv](practice/more_modules.sv) | lab_half_adder |
| 16 | 全加器 | [more_modules.sv](practice/more_modules.sv) | lab_full_adder |
| 17 | 八位元帶進位加法 | [more_modules.sv](practice/more_modules.sv) | lab_adder8 |
| 18 | 加減法單元 | [more_modules.sv](practice/more_modules.sv) | lab_addsub |
| 19 | 無號飽和加法 | [more_modules.sv](practice/more_modules.sv) | lab_sat_add |
| 20 | 有號大小比較 | [more_modules.sv](practice/more_modules.sv) | lab_signed_compare |
| 21 | 二補數絕對值 | [more_modules.sv](practice/more_modules.sv) | lab_absolute |
| 22 | 無號最小最大 | [more_modules.sv](practice/more_modules.sv) | lab_minmax |
| 23 | 邏輯桶式位移 | [more_modules.sv](practice/more_modules.sv) | lab_barrel |
| 24 | 循環左移 | [more_modules.sv](practice/more_modules.sv) | lab_rotate |
| 25 | 二進位轉 Gray | [more_modules.sv](practice/more_modules.sv) | lab_binary_gray |
| 26 | Gray 還原二進位 | [more_modules.sv](practice/more_modules.sv) | lab_gray_binary |
| 27 | 組合邏輯人口計數 | [more_modules.sv](practice/more_modules.sv) | lab_popcount |
| 28 | 前導零數量 | [more_modules.sv](practice/more_modules.sv) | lab_leading_zero |
| 29 | 七段顯示器字形 | [more_modules.sv](practice/more_modules.sv) | lab_seven_segment |
| 30 | BCD 轉二進位 | [more_modules.sv](practice/more_modules.sv) | lab_bcd_binary |
| 31 | 二進位轉兩位 BCD | [more_modules.sv](practice/more_modules.sv) | lab_binary_bcd |
| 32 | BCD 進位修正 | [more_modules.sv](practice/more_modules.sv) | lab_bcd_add |
| 33 | 位元次序反轉 | [more_modules.sv](practice/more_modules.sv) | lab_reverse_bits |
| 34 | 符號擴展到十六位元 | [more_modules.sv](practice/more_modules.sv) | lab_sign_extend |
| 35 | 使能暫存器 | [more_modules.sv](practice/more_modules.sv) | lab_enabled_register |
| 36 | 序列輸入移位暫存器 | [more_modules.sv](practice/more_modules.sv) | lab_shift_register |
| 37 | 兩級乘法流水線 | [more_modules.sv](practice/more_modules.sv) | lab_pipeline_multiply |
| 38 | 兩級同步器的數位模型 | [more_modules.sv](practice/more_modules.sv) | lab_synchronizer |
| 39 | T 型正反器 | [more_modules.sv](practice/more_modules.sv) | lab_toggle |
| 40 | 三週期脈衝延長 | [more_modules.sv](practice/more_modules.sv) | lab_pulse_stretch |
| 41 | 十進位循環計數器 | [more_modules.sv](practice/more_modules.sv) | lab_mod10 |
| 42 | 上下循環計數器 | [more_modules.sv](practice/more_modules.sv) | lab_updown |
| 43 | 八位元 LFSR | [more_modules.sv](practice/more_modules.sv) | lab_lfsr |
| 44 | 四週期 clock enable | [more_modules.sv](practice/more_modules.sv) | lab_clock_enable |
| 45 | 十六階 PWM | [more_modules.sv](practice/more_modules.sv) | lab_pwm |
| 46 | 序列同位元累積 | [more_modules.sv](practice/more_modules.sv) | lab_serial_parity |
| 47 | 可重疊 101 偵測 | [more_modules.sv](practice/more_modules.sv) | lab_sequence101 |
| 48 | 二請求公平仲裁 | [more_modules.sv](practice/more_modules.sv) | lab_round_robin |
| 49 | 單筆 ready-valid 緩衝 | [more_modules.sv](practice/more_modules.sv) | lab_elastic |
| 50 | 可重新載入倒數計時器 | [more_modules.sv](practice/more_modules.sv) | lab_timer |

每個新增單元的正常值與邊界案例可在 tests/、check.py 或 testbench 找到。先預測輸出，再執行，再修改輸入觀察；不是把通過單一範例視為正式部署或線上 AC。
