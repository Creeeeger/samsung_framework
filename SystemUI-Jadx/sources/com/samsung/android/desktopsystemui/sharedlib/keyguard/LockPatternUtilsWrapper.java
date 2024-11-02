package com.samsung.android.desktopsystemui.sharedlib.keyguard;

import android.content.Context;
import com.android.internal.widget.LockPatternUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class LockPatternUtilsWrapper {
    public static final int BIOMETRIC_TYPE_ALL = 257;
    public static final int BIOMETRIC_TYPE_FACE = 256;
    public static final int BIOMETRIC_TYPE_FINGERPRINT = 1;
    public static final int BIOMETRIC_TYPE_NONE = 0;
    private final Context mContext;
    private final LockPatternUtils mLockPatternUtils;

    public LockPatternUtilsWrapper(Context context) {
        this.mContext = context;
        this.mLockPatternUtils = new LockPatternUtils(context);
    }

    public int getBiometricType() {
        return this.mLockPatternUtils.getBiometricType(this.mContext.getUserId());
    }

    public String getPasswordHint() {
        return this.mLockPatternUtils.getPasswordHint(this.mContext.getUserId());
    }

    public int getPinLength() {
        return this.mLockPatternUtils.getPinLength(this.mContext.getUserId());
    }

    public boolean getPowerButtonInstantlyLocks() {
        return this.mLockPatternUtils.getPowerButtonInstantlyLocks(this.mContext.getUserId());
    }

    public boolean isAutoPinConfirmEnabled() {
        return this.mLockPatternUtils.isAutoPinConfirmEnabled(this.mContext.getUserId());
    }

    public boolean isLockScreenDisabled() {
        return this.mLockPatternUtils.isLockScreenDisabled(this.mContext.getUserId());
    }

    public boolean isSecure() {
        return this.mLockPatternUtils.isSecure(this.mContext.getUserId());
    }

    public boolean isVisiblePatternEnabled() {
        return this.mLockPatternUtils.isVisiblePatternEnabled(this.mContext.getUserId());
    }
}
