package com.android.systemui.edgelighting.effect.data;

import android.app.PendingIntent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeEffectInfo {
    public Drawable mAppIcon;
    public int[] mEffectColors;
    public int mEffectType;
    public boolean mHasActionButton;
    public boolean mIsBlackBG;
    public boolean mIsMultiResolutionSupoorted;
    public boolean mIsSupportAppIcon;
    public long mLightingDuration;
    public String mNotificationKey;
    public String mPackageName;
    public PendingIntent mPendingIntent;
    public Bundle mPlusEffectBundle;
    public boolean mShouldShowAppIcon;
    public float mStrokeAlpha;
    public float mStrokeWidth;
    public String[] mText;
    public int mWidthDepth;
    public boolean mInfiniteLighting = false;
    public boolean mEdgeLightingAction = true;
    public boolean mIsGrayScaled = true;
}
