package com.android.server.am;

import com.android.server.am.MARsPolicyManager;
import com.android.server.am.mars.database.MARsVersionManager;

/* loaded from: classes.dex */
public class MARsPackageInfo {
    public static String TAG = "MARsPackageInfo";
    public double BatteryUsage;
    public MARsPolicyManager.Policy appliedPolicy;
    public int checkJobRunningCount;
    public int curLevel;
    public int disableReason;
    public long disableResetTime;
    public int disableType;
    public String fasReason;
    public int fasType;
    public boolean hasAppIcon;
    public boolean isDisabled;
    public boolean isFASEnabled;
    public boolean isInRestrictedBucket;
    public boolean isInUsageStats;
    public boolean isRemovedPkg;
    public boolean isSCPMTarget;
    public long lastUsedTime;
    public int maxLevel;
    public int mpsm;
    public String name;
    public long nextKillTimeForLongRunningProcess;
    public int optionFlag;
    public int packageType;
    public double preBatteryUsage;
    public long resetTime;
    public int sbike;
    public String sharedUidName;
    public int state;
    public int uds;
    public int uid;
    public int userId;

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        if (java.lang.Integer.parseInt(r23.getStrMode()) == 1) goto L82;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MARsPackageInfo(com.android.server.am.mars.database.FASEntity r23) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.MARsPackageInfo.<init>(com.android.server.am.mars.database.FASEntity):void");
    }

    public void updatePackageInfo(MARsPackageInfo mARsPackageInfo) {
        int i;
        long j = this.resetTime;
        long j2 = mARsPackageInfo.resetTime;
        if (j == j2 && this.state == mARsPackageInfo.state && this.isFASEnabled == mARsPackageInfo.isFASEnabled && this.fasType == mARsPackageInfo.fasType && this.maxLevel == mARsPackageInfo.maxLevel && this.isDisabled == mARsPackageInfo.isDisabled) {
            return;
        }
        boolean z = mARsPackageInfo.isFASEnabled;
        this.isFASEnabled = z;
        this.isDisabled = mARsPackageInfo.isDisabled;
        this.fasType = mARsPackageInfo.fasType;
        this.state = mARsPackageInfo.state;
        this.resetTime = j2;
        this.packageType = mARsPackageInfo.packageType;
        if (z) {
            i = mARsPackageInfo.maxLevel;
            if (i <= 2) {
                i = 2;
            }
        } else {
            i = 1;
        }
        this.maxLevel = i;
        this.disableType = mARsPackageInfo.disableType;
        this.disableResetTime = mARsPackageInfo.disableResetTime;
        this.BatteryUsage = mARsPackageInfo.BatteryUsage;
        this.preBatteryUsage = mARsPackageInfo.preBatteryUsage;
        this.disableReason = mARsPackageInfo.disableReason;
    }

    public void setIsInUsageStats(boolean z) {
        this.isInUsageStats = z;
    }

    public String getName() {
        return this.name;
    }

    public void initOptionFlag() {
        this.optionFlag = 0;
        String str = this.name;
        if ((str != null && str.contains(".cts.")) || MARsVersionManager.getInstance().isAdjustRestrictionMatch(19, this.name, null, null)) {
            this.optionFlag |= 2;
        } else if (MARsVersionManager.getInstance().isAdjustRestrictionMatch(11, this.name, null, null)) {
            this.optionFlag |= 1;
        }
        if (MARsVersionManager.getInstance().isAdjustRestrictionMatch(20, this.name, null, null)) {
            this.optionFlag |= 4;
        }
    }

    public int getUid() {
        return this.uid;
    }

    public int getUserId() {
        return this.userId;
    }

    public boolean getFASEnabled() {
        return this.isFASEnabled;
    }

    public void setFASEnabled(boolean z) {
        this.isFASEnabled = z;
    }

    public boolean getIsInRestrictedBucket() {
        return this.isInRestrictedBucket;
    }

    public void setIsInRestrictedBucket(boolean z) {
        this.isInRestrictedBucket = z;
    }

    public String getFasReason() {
        return this.fasReason;
    }

    public void setFasReason(String str) {
        this.fasReason = str;
    }

    public boolean getDisabled() {
        return this.isDisabled;
    }

    public void setDisabled(boolean z) {
        this.isDisabled = z;
    }

    public int getFasType() {
        return this.fasType;
    }

    public void setFasType(int i) {
        this.fasType = i;
    }

    public int getState() {
        return this.state;
    }

    public void setState(int i) {
        this.state = i;
    }

    public long getResetTime() {
        return this.resetTime;
    }

    public void setResetTime(long j) {
        this.resetTime = j;
    }

    public long getLastUsedTime() {
        return this.lastUsedTime;
    }

    public void setLastUsedTime(long j) {
        this.lastUsedTime = j;
    }

    public int getPackageType() {
        return this.packageType;
    }

    public int getMaxLevel() {
        return this.maxLevel;
    }

    public void setMaxLevel(int i) {
        this.maxLevel = i;
    }

    public int getCurLevel() {
        return this.curLevel;
    }

    public void setCurLevel(int i) {
        this.curLevel = i;
    }

    public int getDisableType() {
        return this.disableType;
    }

    public void setDisableType(int i) {
        this.disableType = i;
    }

    public long getDisableResetTime() {
        return this.disableResetTime;
    }

    public void setDisableResetTime(long j) {
        this.disableResetTime = j;
    }

    public double getBatteryUsage() {
        return this.BatteryUsage;
    }

    public void setBatteryUsage(double d) {
        this.BatteryUsage = d;
    }

    public boolean getHasAppIcon() {
        return this.hasAppIcon;
    }

    public void setHasAppIcon(boolean z) {
        this.hasAppIcon = z;
    }

    public String getSharedUidName() {
        return this.sharedUidName;
    }

    public void setSharedUidName(String str) {
        this.sharedUidName = str;
    }

    public int getDisableReason() {
        return this.disableReason;
    }

    public void setDisableReason(int i) {
        this.disableReason = i;
    }

    public int getUds() {
        return this.uds;
    }

    public void setUds(int i) {
        this.uds = i;
    }

    public int getSBike() {
        return this.sbike;
    }

    public void setSBike(int i) {
        this.sbike = i;
    }

    public int getMpsm() {
        return this.mpsm;
    }

    public void setMpsm(int i) {
        this.mpsm = i;
    }

    public MARsPolicyManager.Policy getAppliedPolicy() {
        return this.appliedPolicy;
    }

    public void setAppliedPolicy(MARsPolicyManager.Policy policy) {
        this.appliedPolicy = policy;
    }

    public int getCheckJobRunningCount() {
        return this.checkJobRunningCount;
    }

    public void setCheckJobRunningCount(int i) {
        this.checkJobRunningCount = i;
    }

    public void setIsSCPMTarget(boolean z) {
        this.isSCPMTarget = z;
    }

    public boolean isSCPMTarget() {
        return this.isSCPMTarget;
    }
}
