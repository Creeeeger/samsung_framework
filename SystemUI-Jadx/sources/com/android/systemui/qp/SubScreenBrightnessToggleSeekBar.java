package com.android.systemui.qp;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.SeekBar;
import android.widget.Toast;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubScreenBrightnessToggleSeekBar extends SeekBar {
    public static boolean mHighBrightnessModeEnter = false;
    public final Context mContext;
    public Toast mHighBrightnessModeToast;
    public float mInitialTouchX;
    public float mInitialTouchY;
    public boolean mIsDetailViewTouched;
    public boolean mIsDragging;
    public boolean mIsHorizontalGesture;

    public SubScreenBrightnessToggleSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsHorizontalGesture = false;
        this.mContext = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007d, code lost:
    
        if (r4 != 3) goto L42;
     */
    @Override // android.widget.AbsSeekBar, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            boolean r0 = r6.mIsDragging
            r1 = 1
            if (r0 != 0) goto L10
            boolean r0 = r6.mIsDetailViewTouched
            if (r0 == 0) goto L10
            int r0 = r7.getAction()
            if (r0 != 0) goto L10
            return r1
        L10:
            boolean r0 = com.android.systemui.qp.SubScreenBrightnessToggleSeekBar.mHighBrightnessModeEnter
            r2 = 0
            if (r0 == 0) goto L69
            java.lang.Class<com.android.systemui.qp.util.SubscreenUtil> r0 = com.android.systemui.qp.util.SubscreenUtil.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.qp.util.SubscreenUtil r0 = (com.android.systemui.qp.util.SubscreenUtil) r0
            r0.getClass()
            boolean r0 = com.android.systemui.QpRune.QUICK_PANEL_SUBSCREEN
            if (r0 == 0) goto L3d
            java.lang.Class<com.android.systemui.util.SettingsHelper> r0 = com.android.systemui.util.SettingsHelper.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.util.SettingsHelper r0 = (com.android.systemui.util.SettingsHelper) r0
            com.android.systemui.util.SettingsHelper$ItemMap r0 = r0.mItemLists
            java.lang.String r3 = "sub_screen_brightness_mode"
            com.android.systemui.util.SettingsHelper$Item r0 = r0.get(r3)
            int r0 = r0.getIntValue()
            if (r0 == 0) goto L3d
            r0 = r1
            goto L3e
        L3d:
            r0 = r2
        L3e:
            if (r0 == 0) goto L69
            int r0 = r7.getAction()
            if (r0 != 0) goto L69
            java.lang.String r0 = "SubScreenBrightnessToggleSeekBar"
            java.lang.String r3 = "showHighBrightnessModeToast()"
            android.util.Log.d(r0, r3)
            android.widget.Toast r0 = r6.mHighBrightnessModeToast
            if (r0 != 0) goto L61
            android.content.Context r0 = r6.mContext
            r3 = 2131955470(0x7f130f0e, float:1.9547468E38)
            java.lang.String r3 = r0.getString(r3)
            android.widget.Toast r0 = android.widget.Toast.makeText(r0, r3, r2)
            r6.mHighBrightnessModeToast = r0
        L61:
            android.widget.Toast r0 = r6.mHighBrightnessModeToast
            r0.show()
            r0 = 0
            r6.mHighBrightnessModeToast = r0
        L69:
            float r0 = r7.getX()
            float r3 = r7.getY()
            int r4 = r7.getAction()
            if (r4 == 0) goto Laa
            if (r4 == r1) goto La8
            r5 = 2
            if (r4 == r5) goto L80
            r0 = 3
            if (r4 == r0) goto La8
            goto Lb0
        L80:
            boolean r4 = r6.mIsHorizontalGesture
            if (r4 == 0) goto L85
            goto La8
        L85:
            float r4 = r6.mInitialTouchY
            float r3 = r3 - r4
            float r4 = r6.mInitialTouchX
            float r0 = r0 - r4
            float r3 = java.lang.Math.abs(r3)
            float r0 = java.lang.Math.abs(r0)
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 <= 0) goto Lb0
            android.content.Context r3 = r6.mContext
            android.view.ViewConfiguration r3 = android.view.ViewConfiguration.get(r3)
            int r3 = r3.getScaledTouchSlop()
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto Lb0
            r6.mIsHorizontalGesture = r1
        La8:
            r2 = r1
            goto Lb0
        Laa:
            r6.mInitialTouchX = r0
            r6.mInitialTouchY = r3
            r6.mIsHorizontalGesture = r2
        Lb0:
            if (r2 == 0) goto Lb7
            boolean r6 = super.onTouchEvent(r7)
            return r6
        Lb7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qp.SubScreenBrightnessToggleSeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
