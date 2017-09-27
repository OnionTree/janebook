package com.xycode.janebook.model;

import java.util.ArrayList;
import java.util.List;

public class TClassifyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TClassifyExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andClassifyNameIsNull() {
            addCriterion("classify_name is null");
            return (Criteria) this;
        }

        public Criteria andClassifyNameIsNotNull() {
            addCriterion("classify_name is not null");
            return (Criteria) this;
        }

        public Criteria andClassifyNameEqualTo(String value) {
            addCriterion("classify_name =", value, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameNotEqualTo(String value) {
            addCriterion("classify_name <>", value, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameGreaterThan(String value) {
            addCriterion("classify_name >", value, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameGreaterThanOrEqualTo(String value) {
            addCriterion("classify_name >=", value, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameLessThan(String value) {
            addCriterion("classify_name <", value, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameLessThanOrEqualTo(String value) {
            addCriterion("classify_name <=", value, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameLike(String value) {
            addCriterion("classify_name like", value, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameNotLike(String value) {
            addCriterion("classify_name not like", value, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameIn(List<String> values) {
            addCriterion("classify_name in", values, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameNotIn(List<String> values) {
            addCriterion("classify_name not in", values, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameBetween(String value1, String value2) {
            addCriterion("classify_name between", value1, value2, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyNameNotBetween(String value1, String value2) {
            addCriterion("classify_name not between", value1, value2, "classifyName");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoIsNull() {
            addCriterion("classify_info is null");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoIsNotNull() {
            addCriterion("classify_info is not null");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoEqualTo(String value) {
            addCriterion("classify_info =", value, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoNotEqualTo(String value) {
            addCriterion("classify_info <>", value, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoGreaterThan(String value) {
            addCriterion("classify_info >", value, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoGreaterThanOrEqualTo(String value) {
            addCriterion("classify_info >=", value, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoLessThan(String value) {
            addCriterion("classify_info <", value, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoLessThanOrEqualTo(String value) {
            addCriterion("classify_info <=", value, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoLike(String value) {
            addCriterion("classify_info like", value, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoNotLike(String value) {
            addCriterion("classify_info not like", value, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoIn(List<String> values) {
            addCriterion("classify_info in", values, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoNotIn(List<String> values) {
            addCriterion("classify_info not in", values, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoBetween(String value1, String value2) {
            addCriterion("classify_info between", value1, value2, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyInfoNotBetween(String value1, String value2) {
            addCriterion("classify_info not between", value1, value2, "classifyInfo");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminIsNull() {
            addCriterion("classify_admin is null");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminIsNotNull() {
            addCriterion("classify_admin is not null");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminEqualTo(String value) {
            addCriterion("classify_admin =", value, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminNotEqualTo(String value) {
            addCriterion("classify_admin <>", value, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminGreaterThan(String value) {
            addCriterion("classify_admin >", value, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminGreaterThanOrEqualTo(String value) {
            addCriterion("classify_admin >=", value, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminLessThan(String value) {
            addCriterion("classify_admin <", value, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminLessThanOrEqualTo(String value) {
            addCriterion("classify_admin <=", value, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminLike(String value) {
            addCriterion("classify_admin like", value, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminNotLike(String value) {
            addCriterion("classify_admin not like", value, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminIn(List<String> values) {
            addCriterion("classify_admin in", values, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminNotIn(List<String> values) {
            addCriterion("classify_admin not in", values, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminBetween(String value1, String value2) {
            addCriterion("classify_admin between", value1, value2, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andClassifyAdminNotBetween(String value1, String value2) {
            addCriterion("classify_admin not between", value1, value2, "classifyAdmin");
            return (Criteria) this;
        }

        public Criteria andIsSendIsNull() {
            addCriterion("is_send is null");
            return (Criteria) this;
        }

        public Criteria andIsSendIsNotNull() {
            addCriterion("is_send is not null");
            return (Criteria) this;
        }

        public Criteria andIsSendEqualTo(String value) {
            addCriterion("is_send =", value, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendNotEqualTo(String value) {
            addCriterion("is_send <>", value, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendGreaterThan(String value) {
            addCriterion("is_send >", value, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendGreaterThanOrEqualTo(String value) {
            addCriterion("is_send >=", value, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendLessThan(String value) {
            addCriterion("is_send <", value, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendLessThanOrEqualTo(String value) {
            addCriterion("is_send <=", value, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendLike(String value) {
            addCriterion("is_send like", value, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendNotLike(String value) {
            addCriterion("is_send not like", value, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendIn(List<String> values) {
            addCriterion("is_send in", values, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendNotIn(List<String> values) {
            addCriterion("is_send not in", values, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendBetween(String value1, String value2) {
            addCriterion("is_send between", value1, value2, "isSend");
            return (Criteria) this;
        }

        public Criteria andIsSendNotBetween(String value1, String value2) {
            addCriterion("is_send not between", value1, value2, "isSend");
            return (Criteria) this;
        }

        public Criteria andClassifyImgIsNull() {
            addCriterion("classify_img is null");
            return (Criteria) this;
        }

        public Criteria andClassifyImgIsNotNull() {
            addCriterion("classify_img is not null");
            return (Criteria) this;
        }

        public Criteria andClassifyImgEqualTo(String value) {
            addCriterion("classify_img =", value, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgNotEqualTo(String value) {
            addCriterion("classify_img <>", value, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgGreaterThan(String value) {
            addCriterion("classify_img >", value, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgGreaterThanOrEqualTo(String value) {
            addCriterion("classify_img >=", value, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgLessThan(String value) {
            addCriterion("classify_img <", value, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgLessThanOrEqualTo(String value) {
            addCriterion("classify_img <=", value, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgLike(String value) {
            addCriterion("classify_img like", value, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgNotLike(String value) {
            addCriterion("classify_img not like", value, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgIn(List<String> values) {
            addCriterion("classify_img in", values, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgNotIn(List<String> values) {
            addCriterion("classify_img not in", values, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgBetween(String value1, String value2) {
            addCriterion("classify_img between", value1, value2, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andClassifyImgNotBetween(String value1, String value2) {
            addCriterion("classify_img not between", value1, value2, "classifyImg");
            return (Criteria) this;
        }

        public Criteria andSendCheckIsNull() {
            addCriterion("send_check is null");
            return (Criteria) this;
        }

        public Criteria andSendCheckIsNotNull() {
            addCriterion("send_check is not null");
            return (Criteria) this;
        }

        public Criteria andSendCheckEqualTo(String value) {
            addCriterion("send_check =", value, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckNotEqualTo(String value) {
            addCriterion("send_check <>", value, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckGreaterThan(String value) {
            addCriterion("send_check >", value, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckGreaterThanOrEqualTo(String value) {
            addCriterion("send_check >=", value, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckLessThan(String value) {
            addCriterion("send_check <", value, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckLessThanOrEqualTo(String value) {
            addCriterion("send_check <=", value, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckLike(String value) {
            addCriterion("send_check like", value, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckNotLike(String value) {
            addCriterion("send_check not like", value, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckIn(List<String> values) {
            addCriterion("send_check in", values, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckNotIn(List<String> values) {
            addCriterion("send_check not in", values, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckBetween(String value1, String value2) {
            addCriterion("send_check between", value1, value2, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andSendCheckNotBetween(String value1, String value2) {
            addCriterion("send_check not between", value1, value2, "sendCheck");
            return (Criteria) this;
        }

        public Criteria andArticleNumIsNull() {
            addCriterion("article_num is null");
            return (Criteria) this;
        }

        public Criteria andArticleNumIsNotNull() {
            addCriterion("article_num is not null");
            return (Criteria) this;
        }

        public Criteria andArticleNumEqualTo(Integer value) {
            addCriterion("article_num =", value, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumNotEqualTo(Integer value) {
            addCriterion("article_num <>", value, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumGreaterThan(Integer value) {
            addCriterion("article_num >", value, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_num >=", value, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumLessThan(Integer value) {
            addCriterion("article_num <", value, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumLessThanOrEqualTo(Integer value) {
            addCriterion("article_num <=", value, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumIn(List<Integer> values) {
            addCriterion("article_num in", values, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumNotIn(List<Integer> values) {
            addCriterion("article_num not in", values, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumBetween(Integer value1, Integer value2) {
            addCriterion("article_num between", value1, value2, "articleNum");
            return (Criteria) this;
        }

        public Criteria andArticleNumNotBetween(Integer value1, Integer value2) {
            addCriterion("article_num not between", value1, value2, "articleNum");
            return (Criteria) this;
        }

        public Criteria andFollowIsNull() {
            addCriterion("follow is null");
            return (Criteria) this;
        }

        public Criteria andFollowIsNotNull() {
            addCriterion("follow is not null");
            return (Criteria) this;
        }

        public Criteria andFollowEqualTo(Integer value) {
            addCriterion("follow =", value, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowNotEqualTo(Integer value) {
            addCriterion("follow <>", value, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowGreaterThan(Integer value) {
            addCriterion("follow >", value, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowGreaterThanOrEqualTo(Integer value) {
            addCriterion("follow >=", value, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowLessThan(Integer value) {
            addCriterion("follow <", value, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowLessThanOrEqualTo(Integer value) {
            addCriterion("follow <=", value, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowIn(List<Integer> values) {
            addCriterion("follow in", values, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowNotIn(List<Integer> values) {
            addCriterion("follow not in", values, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowBetween(Integer value1, Integer value2) {
            addCriterion("follow between", value1, value2, "follow");
            return (Criteria) this;
        }

        public Criteria andFollowNotBetween(Integer value1, Integer value2) {
            addCriterion("follow not between", value1, value2, "follow");
            return (Criteria) this;
        }

        public Criteria andIsCityIsNull() {
            addCriterion("is_city is null");
            return (Criteria) this;
        }

        public Criteria andIsCityIsNotNull() {
            addCriterion("is_city is not null");
            return (Criteria) this;
        }

        public Criteria andIsCityEqualTo(Integer value) {
            addCriterion("is_city =", value, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityNotEqualTo(Integer value) {
            addCriterion("is_city <>", value, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityGreaterThan(Integer value) {
            addCriterion("is_city >", value, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_city >=", value, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityLessThan(Integer value) {
            addCriterion("is_city <", value, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityLessThanOrEqualTo(Integer value) {
            addCriterion("is_city <=", value, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityIn(List<Integer> values) {
            addCriterion("is_city in", values, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityNotIn(List<Integer> values) {
            addCriterion("is_city not in", values, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityBetween(Integer value1, Integer value2) {
            addCriterion("is_city between", value1, value2, "isCity");
            return (Criteria) this;
        }

        public Criteria andIsCityNotBetween(Integer value1, Integer value2) {
            addCriterion("is_city not between", value1, value2, "isCity");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}