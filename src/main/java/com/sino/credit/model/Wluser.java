package com.sino.credit.model;

import java.util.Date;

public class Wluser {
    private String userId;

    private String code;

    private String loginName;

    private String name;

    private String organizeId;

    private Double reportToUserId;

    private Double certifiTypeId;

    private String certifiCode;

    private String password;

    private String allowChangePassword;

    private Double workTypeId;

    private Double userTypeId;

    private String checkFlag;

    private Double educationTypeId;

    private String homeTel;

    private String officeTel;

    private String mobileTele;

    private String addrId;

    private String email;

    private Date createDate;

    private Date effectDate;

    private Date expireDate;

    private Double multiLoginFlag;

    private Double lastLoginLogId;

    private Double tryTimes;

    private String lockFlag;

    private String isLogin;

    private String state;

    private String creator;

    private Date createTime;

    private String modifier;

    private Date modifyTime;

    private Double recVer;

    private String qq;

    private String icon;

    private String iconSmall;

    private String msn;

    private String onlineStatus;

    private String unitsId;

    private String issendmsg;

    private String tenantId;

    private String remarks;

    public Wluser(String userId, String code, String loginName, String name, String organizeId, Double reportToUserId, Double certifiTypeId, String certifiCode, String password, String allowChangePassword, Double workTypeId, Double userTypeId, String checkFlag, Double educationTypeId, String homeTel, String officeTel, String mobileTele, String addrId, String email, Date createDate, Date effectDate, Date expireDate, Double multiLoginFlag, Double lastLoginLogId, Double tryTimes, String lockFlag, String isLogin, String state, String creator, Date createTime, String modifier, Date modifyTime, Double recVer, String qq, String icon, String iconSmall, String msn, String onlineStatus, String unitsId, String issendmsg, String tenantId, String remarks) {
        this.userId = userId;
        this.code = code;
        this.loginName = loginName;
        this.name = name;
        this.organizeId = organizeId;
        this.reportToUserId = reportToUserId;
        this.certifiTypeId = certifiTypeId;
        this.certifiCode = certifiCode;
        this.password = password;
        this.allowChangePassword = allowChangePassword;
        this.workTypeId = workTypeId;
        this.userTypeId = userTypeId;
        this.checkFlag = checkFlag;
        this.educationTypeId = educationTypeId;
        this.homeTel = homeTel;
        this.officeTel = officeTel;
        this.mobileTele = mobileTele;
        this.addrId = addrId;
        this.email = email;
        this.createDate = createDate;
        this.effectDate = effectDate;
        this.expireDate = expireDate;
        this.multiLoginFlag = multiLoginFlag;
        this.lastLoginLogId = lastLoginLogId;
        this.tryTimes = tryTimes;
        this.lockFlag = lockFlag;
        this.isLogin = isLogin;
        this.state = state;
        this.creator = creator;
        this.createTime = createTime;
        this.modifier = modifier;
        this.modifyTime = modifyTime;
        this.recVer = recVer;
        this.qq = qq;
        this.icon = icon;
        this.iconSmall = iconSmall;
        this.msn = msn;
        this.onlineStatus = onlineStatus;
        this.unitsId = unitsId;
        this.issendmsg = issendmsg;
        this.tenantId = tenantId;
        this.remarks = remarks;
    }

    public Wluser() {
        super();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName == null ? null : loginName.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getOrganizeId() {
        return organizeId;
    }

    public void setOrganizeId(String organizeId) {
        this.organizeId = organizeId == null ? null : organizeId.trim();
    }

    public Double getReportToUserId() {
        return reportToUserId;
    }

    public void setReportToUserId(Double reportToUserId) {
        this.reportToUserId = reportToUserId;
    }

    public Double getCertifiTypeId() {
        return certifiTypeId;
    }

    public void setCertifiTypeId(Double certifiTypeId) {
        this.certifiTypeId = certifiTypeId;
    }

    public String getCertifiCode() {
        return certifiCode;
    }

    public void setCertifiCode(String certifiCode) {
        this.certifiCode = certifiCode == null ? null : certifiCode.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getAllowChangePassword() {
        return allowChangePassword;
    }

    public void setAllowChangePassword(String allowChangePassword) {
        this.allowChangePassword = allowChangePassword == null ? null : allowChangePassword.trim();
    }

    public Double getWorkTypeId() {
        return workTypeId;
    }

    public void setWorkTypeId(Double workTypeId) {
        this.workTypeId = workTypeId;
    }

    public Double getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Double userTypeId) {
        this.userTypeId = userTypeId;
    }

    public String getCheckFlag() {
        return checkFlag;
    }

    public void setCheckFlag(String checkFlag) {
        this.checkFlag = checkFlag == null ? null : checkFlag.trim();
    }

    public Double getEducationTypeId() {
        return educationTypeId;
    }

    public void setEducationTypeId(Double educationTypeId) {
        this.educationTypeId = educationTypeId;
    }

    public String getHomeTel() {
        return homeTel;
    }

    public void setHomeTel(String homeTel) {
        this.homeTel = homeTel == null ? null : homeTel.trim();
    }

    public String getOfficeTel() {
        return officeTel;
    }

    public void setOfficeTel(String officeTel) {
        this.officeTel = officeTel == null ? null : officeTel.trim();
    }

    public String getMobileTele() {
        return mobileTele;
    }

    public void setMobileTele(String mobileTele) {
        this.mobileTele = mobileTele == null ? null : mobileTele.trim();
    }

    public String getAddrId() {
        return addrId;
    }

    public void setAddrId(String addrId) {
        this.addrId = addrId == null ? null : addrId.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getEffectDate() {
        return effectDate;
    }

    public void setEffectDate(Date effectDate) {
        this.effectDate = effectDate;
    }

    public Date getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    public Double getMultiLoginFlag() {
        return multiLoginFlag;
    }

    public void setMultiLoginFlag(Double multiLoginFlag) {
        this.multiLoginFlag = multiLoginFlag;
    }

    public Double getLastLoginLogId() {
        return lastLoginLogId;
    }

    public void setLastLoginLogId(Double lastLoginLogId) {
        this.lastLoginLogId = lastLoginLogId;
    }

    public Double getTryTimes() {
        return tryTimes;
    }

    public void setTryTimes(Double tryTimes) {
        this.tryTimes = tryTimes;
    }

    public String getLockFlag() {
        return lockFlag;
    }

    public void setLockFlag(String lockFlag) {
        this.lockFlag = lockFlag == null ? null : lockFlag.trim();
    }

    public String getIsLogin() {
        return isLogin;
    }

    public void setIsLogin(String isLogin) {
        this.isLogin = isLogin == null ? null : isLogin.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getModifier() {
        return modifier;
    }

    public void setModifier(String modifier) {
        this.modifier = modifier == null ? null : modifier.trim();
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public Double getRecVer() {
        return recVer;
    }

    public void setRecVer(Double recVer) {
        this.recVer = recVer;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public String getIconSmall() {
        return iconSmall;
    }

    public void setIconSmall(String iconSmall) {
        this.iconSmall = iconSmall == null ? null : iconSmall.trim();
    }

    public String getMsn() {
        return msn;
    }

    public void setMsn(String msn) {
        this.msn = msn == null ? null : msn.trim();
    }

    public String getOnlineStatus() {
        return onlineStatus;
    }

    public void setOnlineStatus(String onlineStatus) {
        this.onlineStatus = onlineStatus == null ? null : onlineStatus.trim();
    }

    public String getUnitsId() {
        return unitsId;
    }

    public void setUnitsId(String unitsId) {
        this.unitsId = unitsId == null ? null : unitsId.trim();
    }

    public String getIssendmsg() {
        return issendmsg;
    }

    public void setIssendmsg(String issendmsg) {
        this.issendmsg = issendmsg == null ? null : issendmsg.trim();
    }

    public String getTenantId() {
        return tenantId;
    }

    public void setTenantId(String tenantId) {
        this.tenantId = tenantId == null ? null : tenantId.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}