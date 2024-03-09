# 加载所需的库
library(foreach)
library(doParallel)

# 注册并行核心
# 获取可用核心数并留一个核心不使用，避免系统过载
numCores <- detectCores() - 1
registerDoParallel(cores = numCores)

# 创建一个要处理的数字列表
numbers <- 1:20

# 使用foreach进行并行计算
results <- foreach(n = numbers, .combine = rbind) %dopar% {
  squared <- n^2  # 计算平方
  data.frame(original = n, squared = squared)  # 返回一个包含原始数字和计算结果的数据框
}

# 转换结果为数据框（如果需要）
results_df <- as.data.frame(results)

# 查看结果
print(results_df)

# 停止并行后端
stopImplicitCluster()
