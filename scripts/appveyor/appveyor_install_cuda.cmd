@echo off
echo Downloading CUDA toolkit 8 ...
appveyor DownloadFile  https://developer.download.nvidia.com/compute/cuda/9.2/secure/Prod2/local_installers2/cuda_9.2.148_win10.exe -FileName cuda_9.2.148_win10.exe
echo Installing CUDA toolkit 9 ...
cuda_8.0.44_windows.exe -s compiler_9.2 ^
                           cublas_9.2 ^
                           cublas_dev_9.2 ^
                           cudart_9.2 ^
                           curand_9.2 ^
                           curand_dev_9.2 ^
                           nvml_dev_9.2
:: Add CUDA toolkit to PATH
set PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\bin;%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\libnvvp;%PATH%
nvcc -V
