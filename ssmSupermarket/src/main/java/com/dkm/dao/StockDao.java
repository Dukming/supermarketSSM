package com.dkm.dao;

import com.dkm.pojo.Stock;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StockDao {
    public int insertStock(Stock stock);
    public List<Stock> selectStockByMultItem(@Param("minTime") String minTime, @Param("maxTime") String maxTime, @Param("stock") Stock stock);

}
