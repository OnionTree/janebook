package com.xycode.janebook.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TCommentaryFirExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TCommentaryFirExample() {
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

        public Criteria andReviewerIdIsNull() {
            addCriterion("reviewer_id is null");
            return (Criteria) this;
        }

        public Criteria andReviewerIdIsNotNull() {
            addCriterion("reviewer_id is not null");
            return (Criteria) this;
        }

        public Criteria andReviewerIdEqualTo(String value) {
            addCriterion("reviewer_id =", value, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdNotEqualTo(String value) {
            addCriterion("reviewer_id <>", value, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdGreaterThan(String value) {
            addCriterion("reviewer_id >", value, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdGreaterThanOrEqualTo(String value) {
            addCriterion("reviewer_id >=", value, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdLessThan(String value) {
            addCriterion("reviewer_id <", value, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdLessThanOrEqualTo(String value) {
            addCriterion("reviewer_id <=", value, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdLike(String value) {
            addCriterion("reviewer_id like", value, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdNotLike(String value) {
            addCriterion("reviewer_id not like", value, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdIn(List<String> values) {
            addCriterion("reviewer_id in", values, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdNotIn(List<String> values) {
            addCriterion("reviewer_id not in", values, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdBetween(String value1, String value2) {
            addCriterion("reviewer_id between", value1, value2, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerIdNotBetween(String value1, String value2) {
            addCriterion("reviewer_id not between", value1, value2, "reviewerId");
            return (Criteria) this;
        }

        public Criteria andCommentContIsNull() {
            addCriterion("comment_cont is null");
            return (Criteria) this;
        }

        public Criteria andCommentContIsNotNull() {
            addCriterion("comment_cont is not null");
            return (Criteria) this;
        }

        public Criteria andCommentContEqualTo(String value) {
            addCriterion("comment_cont =", value, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContNotEqualTo(String value) {
            addCriterion("comment_cont <>", value, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContGreaterThan(String value) {
            addCriterion("comment_cont >", value, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContGreaterThanOrEqualTo(String value) {
            addCriterion("comment_cont >=", value, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContLessThan(String value) {
            addCriterion("comment_cont <", value, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContLessThanOrEqualTo(String value) {
            addCriterion("comment_cont <=", value, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContLike(String value) {
            addCriterion("comment_cont like", value, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContNotLike(String value) {
            addCriterion("comment_cont not like", value, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContIn(List<String> values) {
            addCriterion("comment_cont in", values, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContNotIn(List<String> values) {
            addCriterion("comment_cont not in", values, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContBetween(String value1, String value2) {
            addCriterion("comment_cont between", value1, value2, "commentCont");
            return (Criteria) this;
        }

        public Criteria andCommentContNotBetween(String value1, String value2) {
            addCriterion("comment_cont not between", value1, value2, "commentCont");
            return (Criteria) this;
        }

        public Criteria andReviewTimeIsNull() {
            addCriterion("review_time is null");
            return (Criteria) this;
        }

        public Criteria andReviewTimeIsNotNull() {
            addCriterion("review_time is not null");
            return (Criteria) this;
        }

        public Criteria andReviewTimeEqualTo(Date value) {
            addCriterion("review_time =", value, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeNotEqualTo(Date value) {
            addCriterion("review_time <>", value, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeGreaterThan(Date value) {
            addCriterion("review_time >", value, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("review_time >=", value, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeLessThan(Date value) {
            addCriterion("review_time <", value, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeLessThanOrEqualTo(Date value) {
            addCriterion("review_time <=", value, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeIn(List<Date> values) {
            addCriterion("review_time in", values, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeNotIn(List<Date> values) {
            addCriterion("review_time not in", values, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeBetween(Date value1, Date value2) {
            addCriterion("review_time between", value1, value2, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andReviewTimeNotBetween(Date value1, Date value2) {
            addCriterion("review_time not between", value1, value2, "reviewTime");
            return (Criteria) this;
        }

        public Criteria andFavorIsNull() {
            addCriterion("favor is null");
            return (Criteria) this;
        }

        public Criteria andFavorIsNotNull() {
            addCriterion("favor is not null");
            return (Criteria) this;
        }

        public Criteria andFavorEqualTo(String value) {
            addCriterion("favor =", value, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorNotEqualTo(String value) {
            addCriterion("favor <>", value, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorGreaterThan(String value) {
            addCriterion("favor >", value, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorGreaterThanOrEqualTo(String value) {
            addCriterion("favor >=", value, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorLessThan(String value) {
            addCriterion("favor <", value, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorLessThanOrEqualTo(String value) {
            addCriterion("favor <=", value, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorLike(String value) {
            addCriterion("favor like", value, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorNotLike(String value) {
            addCriterion("favor not like", value, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorIn(List<String> values) {
            addCriterion("favor in", values, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorNotIn(List<String> values) {
            addCriterion("favor not in", values, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorBetween(String value1, String value2) {
            addCriterion("favor between", value1, value2, "favor");
            return (Criteria) this;
        }

        public Criteria andFavorNotBetween(String value1, String value2) {
            addCriterion("favor not between", value1, value2, "favor");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdIsNull() {
            addCriterion("be_reviewer_id is null");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdIsNotNull() {
            addCriterion("be_reviewer_id is not null");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdEqualTo(String value) {
            addCriterion("be_reviewer_id =", value, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdNotEqualTo(String value) {
            addCriterion("be_reviewer_id <>", value, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdGreaterThan(String value) {
            addCriterion("be_reviewer_id >", value, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdGreaterThanOrEqualTo(String value) {
            addCriterion("be_reviewer_id >=", value, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdLessThan(String value) {
            addCriterion("be_reviewer_id <", value, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdLessThanOrEqualTo(String value) {
            addCriterion("be_reviewer_id <=", value, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdLike(String value) {
            addCriterion("be_reviewer_id like", value, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdNotLike(String value) {
            addCriterion("be_reviewer_id not like", value, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdIn(List<String> values) {
            addCriterion("be_reviewer_id in", values, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdNotIn(List<String> values) {
            addCriterion("be_reviewer_id not in", values, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdBetween(String value1, String value2) {
            addCriterion("be_reviewer_id between", value1, value2, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andBeReviewerIdNotBetween(String value1, String value2) {
            addCriterion("be_reviewer_id not between", value1, value2, "beReviewerId");
            return (Criteria) this;
        }

        public Criteria andReviewerNameIsNull() {
            addCriterion("reviewer_name is null");
            return (Criteria) this;
        }

        public Criteria andReviewerNameIsNotNull() {
            addCriterion("reviewer_name is not null");
            return (Criteria) this;
        }

        public Criteria andReviewerNameEqualTo(String value) {
            addCriterion("reviewer_name =", value, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameNotEqualTo(String value) {
            addCriterion("reviewer_name <>", value, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameGreaterThan(String value) {
            addCriterion("reviewer_name >", value, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameGreaterThanOrEqualTo(String value) {
            addCriterion("reviewer_name >=", value, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameLessThan(String value) {
            addCriterion("reviewer_name <", value, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameLessThanOrEqualTo(String value) {
            addCriterion("reviewer_name <=", value, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameLike(String value) {
            addCriterion("reviewer_name like", value, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameNotLike(String value) {
            addCriterion("reviewer_name not like", value, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameIn(List<String> values) {
            addCriterion("reviewer_name in", values, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameNotIn(List<String> values) {
            addCriterion("reviewer_name not in", values, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameBetween(String value1, String value2) {
            addCriterion("reviewer_name between", value1, value2, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andReviewerNameNotBetween(String value1, String value2) {
            addCriterion("reviewer_name not between", value1, value2, "reviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameIsNull() {
            addCriterion("be_reviewer_name is null");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameIsNotNull() {
            addCriterion("be_reviewer_name is not null");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameEqualTo(String value) {
            addCriterion("be_reviewer_name =", value, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameNotEqualTo(String value) {
            addCriterion("be_reviewer_name <>", value, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameGreaterThan(String value) {
            addCriterion("be_reviewer_name >", value, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameGreaterThanOrEqualTo(String value) {
            addCriterion("be_reviewer_name >=", value, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameLessThan(String value) {
            addCriterion("be_reviewer_name <", value, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameLessThanOrEqualTo(String value) {
            addCriterion("be_reviewer_name <=", value, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameLike(String value) {
            addCriterion("be_reviewer_name like", value, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameNotLike(String value) {
            addCriterion("be_reviewer_name not like", value, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameIn(List<String> values) {
            addCriterion("be_reviewer_name in", values, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameNotIn(List<String> values) {
            addCriterion("be_reviewer_name not in", values, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameBetween(String value1, String value2) {
            addCriterion("be_reviewer_name between", value1, value2, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andBeReviewerNameNotBetween(String value1, String value2) {
            addCriterion("be_reviewer_name not between", value1, value2, "beReviewerName");
            return (Criteria) this;
        }

        public Criteria andArticleIdIsNull() {
            addCriterion("article_id is null");
            return (Criteria) this;
        }

        public Criteria andArticleIdIsNotNull() {
            addCriterion("article_id is not null");
            return (Criteria) this;
        }

        public Criteria andArticleIdEqualTo(Integer value) {
            addCriterion("article_id =", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotEqualTo(Integer value) {
            addCriterion("article_id <>", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdGreaterThan(Integer value) {
            addCriterion("article_id >", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_id >=", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdLessThan(Integer value) {
            addCriterion("article_id <", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdLessThanOrEqualTo(Integer value) {
            addCriterion("article_id <=", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdIn(List<Integer> values) {
            addCriterion("article_id in", values, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotIn(List<Integer> values) {
            addCriterion("article_id not in", values, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdBetween(Integer value1, Integer value2) {
            addCriterion("article_id between", value1, value2, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotBetween(Integer value1, Integer value2) {
            addCriterion("article_id not between", value1, value2, "articleId");
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