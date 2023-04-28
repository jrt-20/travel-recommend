package com.travel.sz.recommend;

import com.travel.sz.entity.Result;
import com.travel.sz.mapper.ResultMapper;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.*;

/**
 * 推荐系统
 */
@Service
public class Recommend {

    @Resource
    private ResultMapper resultMapper;

    public List<Result> selectById(Integer id){
        return resultMapper.selectById(id);
    }

    public void recommend() throws IOException, TasteException {
        // 1. 加载数据模型
        File file = new File("F:\\桌面\\test.txt");
        FileDataModel dataModel = new FileDataModel(file);
        // 2. 使用 皮尔森相似度计算方式
        UserSimilarity similarity = new PearsonCorrelationSimilarity(dataModel);
        // 3. 使用 最邻近距离
        NearestNUserNeighborhood userNeighborhood = new NearestNUserNeighborhood(3, similarity, dataModel);
        // 4. 使用 推荐器
        GenericUserBasedRecommender recommender = new GenericUserBasedRecommender(dataModel, userNeighborhood, similarity);
        // 5. 得出每个用户的推荐物品以及预测评分
        LongPrimitiveIterator userIDs = dataModel.getUserIDs();
        while(userIDs.hasNext()){
            long id = userIDs.nextLong();
            // 计算相似度
            LongPrimitiveIterator otherUserIds = dataModel.getUserIDs();
            while(otherUserIds.hasNext()){
                long otherId = otherUserIds.nextLong();
                double similarityValue = similarity.userSimilarity(id, otherId);
                System.out.println("用户"+id+"与用户"+otherId+"的相似度为" + similarityValue);
            }
            List<RecommendedItem> recommendedItemList = recommender.recommend(id, 6);
            if(recommendedItemList.size()>0){
                for (RecommendedItem recommendedItem : recommendedItemList) {
                    Result result = new Result();
                    result.setUid((int) id);
                    result.setSid((int) recommendedItem.getItemID());
                    result.setScore((double) recommendedItem.getValue());
//                    resultMapper.insert(result);
                    System.out.println(result.toString());
                    System.out.println("给用户" + id + "推荐歌手为" + recommendedItem.getItemID() + "。 预测评分为:" + recommendedItem.getValue());
                }
            } else {
                System.out.println("用户"+id+"无任何推荐物品");
            }
        }
    }

}
