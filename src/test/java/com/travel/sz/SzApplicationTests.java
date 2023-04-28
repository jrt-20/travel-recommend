package com.travel.sz;

import com.travel.sz.entity.Result;
import com.travel.sz.entity.Test;
import com.travel.sz.entity.User;
import com.travel.sz.recommend.Recommend;
import com.travel.sz.service.TestService;
import com.travel.sz.service.UserService;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.List;

@SpringBootTest
class SzApplicationTests {

    @Resource
    private TestService testService;

    @Resource
    private UserService userService;

    @Resource
    private Recommend recommends;

    @org.junit.jupiter.api.Test
    void contextLoads() {
        List< Test> res = testService.selectAll();
        for (Test test:
             res) {
            System.out.printf(test.toString());
        }
    }

    @org.junit.jupiter.api.Test
    void user(){
        List<User> list = userService.selectAll("root");
        for (User u:
             list) {
            System.out.println(u.toString());
        }
    }

    /**
     * 注册功能验证
     */
    @org.junit.jupiter.api.Test
    void user_register(){
        User user = new User();
        user.setUsername("ikun");
        user.setPassword("ikun");
        int flag = userService.register(user);
        if(flag==1) System.out.println("注册成功");
        else System.out.println("注册失败");
    }

    @org.junit.jupiter.api.Test
    void test(){
        User user = new User();
        user.setUsername("Root");
        int flag = userService.register(user);
    }

    /**
     * 调用推荐系统，生成结果保存到mysql中
     */
    @org.junit.jupiter.api.Test
    void recommend_generator() throws IOException, TasteException {
        recommends.recommend();
    }

    @org.junit.jupiter.api.Test

    void test2() throws IOException, TasteException {
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
                    System.out.println("给用户" + id + "推荐物品为" + recommendedItem.getItemID() + "。 预测评分为:" + recommendedItem.getValue());
                }
            } else {
                System.out.println("用户"+id+"无任何推荐物品");
            }
        }
    }

}
