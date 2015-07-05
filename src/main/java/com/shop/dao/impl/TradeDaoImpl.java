package com.shop.dao.impl;

import com.shop.bean.Page;
import com.shop.bean.Trade;
import com.shop.dao.ITradeDao;

public class TradeDaoImpl extends BaseDao implements ITradeDao {

	public Page<Trade> selectForPage(Page<Trade> page, Trade trade) {
		return selectPage(page, "TradeManager.queryPage",
				"TradeManager.queryPageCount", trade);
	}

	public boolean insert(Trade trade) {
		int affectedRows = getSqlSession().insert("TradeManager.insert", trade);
		if (affectedRows > 0)
			return true;
		return false;
	}
}
