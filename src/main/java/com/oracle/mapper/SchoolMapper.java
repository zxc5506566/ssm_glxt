package com.oracle.mapper;

import com.oracle.web.bean.School;
import java.util.List;

public interface SchoolMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table school
     *
     * @mbg.generated Tue Apr 23 11:33:34 CST 2019
     */
    int deleteByPrimaryKey(Integer schoolId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table school
     *
     * @mbg.generated Tue Apr 23 11:33:34 CST 2019
     */
    int insert(School record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table school
     *
     * @mbg.generated Tue Apr 23 11:33:34 CST 2019
     */
    School selectByPrimaryKey(Integer schoolId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table school
     *
     * @mbg.generated Tue Apr 23 11:33:34 CST 2019
     */
    List<School> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table school
     *
     * @mbg.generated Tue Apr 23 11:33:34 CST 2019
     */
    int updateByPrimaryKey(School record);
}