# Verilog 數位邏輯練習

原有邏輯閘、計數器與 FSM 目錄保留。新增 practice/ 把四個模組的介面、時序與 testbench 放在一起，以 Icarus Verilog 驗證。

    sh practice/run_tests.sh

需要 iverilog、vvp 與 /bin/sh。模擬程式放在暫存目錄。

| 模組 | 功能 | 檢查 |
|---|---|---|
| practice_uart_tx | 8N1，LSB-first，ready/valid | CPB=1/3、A5/00/FF、閒置與中途 reset |
| practice_fifo | 非 2 的冪深度、同時讀寫 | DEPTH=3，800 週期與參考佇列比對 |
| practice_debounce | 連續穩定 N 個 clock 才更新 | 單週期毛刺、穩定高低、單次 rising |
| practice_saturating_counter | 上下限停止 | 飽和、雙控制保持 |

UART 在 ready=1 的上升緣接受 valid/data，frame 之後保持不變。每個位元維持 CLKS_PER_BIT 個 clock，輸出 start=0、data[0] 至 data[7]、stop=1，忙碌時不能接受新資料。testbench 在時脈後等 #1 觀察非阻塞指定結果。

FIFO 以 count 區分空滿，指標到 DEPTH-1 後歸零，因此 DEPTH=3 也可用。滿時若同週期讀出，可同時寫入；空時沒有輸入旁路。rd_valid=0 時不能使用 rd_data。

debounce 假設輸入已同步到 clk，只排除毛刺；真實按鈕還需要同步器與硬體評估。此練習未宣稱解決 metastability，也沒有執行 FPGA/ASIC 合成或時序收斂。

不符合預期時 testbench 使用 $fatal 失敗，不是只列印波形值。
