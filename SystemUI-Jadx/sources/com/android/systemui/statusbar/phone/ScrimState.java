package com.android.systemui.statusbar.phone;

import android.graphics.Color;
import android.os.Build;
import android.os.Trace;
import android.util.Log;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.aod.AODAmbientWallpaperHelper;
import com.android.systemui.dock.DockManager;
import com.android.systemui.scrim.ScrimView;
import com.android.systemui.scrim.ScrimView$$ExternalSyntheticLambda4;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ScrimState {
    public static final /* synthetic */ ScrimState[] $VALUES;
    public static final ScrimState AOD;
    public static final ScrimState AUTH_SCRIMMED;
    public static final ScrimState AUTH_SCRIMMED_SHADE;
    public static final ScrimState BOUNCER;
    public static final ScrimState BOUNCER_SCRIMMED;
    public static final ScrimState BRIGHTNESS_MIRROR;
    public static final ScrimState DREAMING;
    public static final ScrimState KEYGUARD;
    public static final ScrimState OFF;
    public static final ScrimState PULSING;
    public static final ScrimState SHADE_LOCKED;
    public static final String TAG;
    public static final ScrimState UNINITIALIZED;
    public static final ScrimState UNLOCKED;
    AODAmbientWallpaperHelper mAODAmbientWallpaperHelper;
    boolean mAnimateChange;
    long mAnimationDuration;
    float mAodFrontScrimAlpha;
    float mBehindAlpha;
    int mBehindTint;
    boolean mBlankScreen;
    boolean mClipQsScrim;
    float mDefaultScrimAlpha;
    boolean mDisplayRequiresBlanking;
    DockManager mDockManager;
    DozeParameters mDozeParameters;
    float mFrontAlpha;
    int mFrontTint;
    boolean mHasBackdrop;
    boolean mKeyguardFadingAway;
    long mKeyguardFadingAwayDuration;
    boolean mLaunchingAffordanceWithPreview;
    float mNotifAlpha;
    int mNotifTint;
    boolean mOccludeAnimationPlaying;
    ScrimView mScrimBehind;
    float mScrimBehindAlphaKeyguard;
    ScrimView mScrimInFront;
    int mSurfaceColor;
    boolean mWakeLockScreenSensorActive;
    boolean mWallpaperSupportsAmbientMode;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass1 extends ScrimState {
        public /* synthetic */ AnonymousClass1() {
            this("OFF", 1);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            this.mFrontTint = EmergencyPhoneWidget.BG_COLOR;
            this.mBehindTint = EmergencyPhoneWidget.BG_COLOR;
            this.mFrontAlpha = 1.0f;
            this.mBehindAlpha = 1.0f;
            this.mAnimationDuration = 1000L;
        }

        private AnonymousClass1(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$10, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass10 extends ScrimState {
        public /* synthetic */ AnonymousClass10() {
            this("PULSING", 10);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final float getMaxLightRevealScrimAlpha() {
            if (this.mWakeLockScreenSensorActive) {
                return 0.6f;
            }
            return ScrimState.AOD.getMaxLightRevealScrimAlpha();
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            long j;
            this.mFrontAlpha = this.mAodFrontScrimAlpha;
            this.mBehindTint = EmergencyPhoneWidget.BG_COLOR;
            this.mFrontTint = EmergencyPhoneWidget.BG_COLOR;
            this.mBlankScreen = this.mDisplayRequiresBlanking;
            if (this.mWakeLockScreenSensorActive) {
                j = 1000;
            } else {
                j = 220;
            }
            this.mAnimationDuration = j;
        }

        private AnonymousClass10(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$11, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass11 extends ScrimState {
        public /* synthetic */ AnonymousClass11() {
            this("UNLOCKED", 11);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            float f;
            long j;
            boolean z;
            boolean z2;
            if (this.mClipQsScrim) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            this.mBehindAlpha = f;
            this.mNotifAlpha = 0.0f;
            this.mFrontAlpha = 0.0f;
            if (this.mKeyguardFadingAway) {
                j = this.mKeyguardFadingAwayDuration;
            } else {
                j = 300;
            }
            this.mAnimationDuration = j;
            ScrimState scrimState2 = ScrimState.AOD;
            if (scrimState != scrimState2 && scrimState != ScrimState.PULSING) {
                z = false;
            } else {
                z = true;
            }
            if (!this.mLaunchingAffordanceWithPreview && !this.mOccludeAnimationPlaying && !z) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.mAnimateChange = z2;
            this.mFrontTint = 0;
            this.mBehindTint = EmergencyPhoneWidget.BG_COLOR;
            this.mBlankScreen = false;
            if (this.mDisplayRequiresBlanking && scrimState == scrimState2) {
                updateScrimColor(this.mScrimInFront);
                updateScrimColor(this.mScrimBehind);
                this.mFrontTint = EmergencyPhoneWidget.BG_COLOR;
                this.mBehindTint = EmergencyPhoneWidget.BG_COLOR;
                this.mBlankScreen = true;
            }
            if (this.mClipQsScrim) {
                updateScrimColor(this.mScrimBehind);
            }
        }

        private AnonymousClass11(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$12, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass12 extends ScrimState {
        public /* synthetic */ AnonymousClass12() {
            this("DREAMING", 12);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            float f;
            this.mFrontTint = 0;
            int i = EmergencyPhoneWidget.BG_COLOR;
            this.mBehindTint = EmergencyPhoneWidget.BG_COLOR;
            boolean z = this.mClipQsScrim;
            if (!z) {
                i = 0;
            }
            this.mNotifTint = i;
            this.mFrontAlpha = 0.0f;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            this.mBehindAlpha = f;
            this.mNotifAlpha = 0.0f;
            this.mBlankScreen = false;
            if (z) {
                updateScrimColor(this.mScrimBehind);
            }
        }

        private AnonymousClass12(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass2 extends ScrimState {
        public /* synthetic */ AnonymousClass2() {
            this("KEYGUARD", 2);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            float f;
            int i = 0;
            this.mBlankScreen = false;
            if (scrimState == ScrimState.AOD) {
                this.mAnimationDuration = 667L;
                if (this.mDisplayRequiresBlanking) {
                    this.mBlankScreen = true;
                }
            } else if (scrimState == ScrimState.KEYGUARD) {
                this.mAnimationDuration = 667L;
            } else {
                this.mAnimationDuration = 220L;
            }
            this.mFrontTint = EmergencyPhoneWidget.BG_COLOR;
            this.mBehindTint = EmergencyPhoneWidget.BG_COLOR;
            boolean z = this.mClipQsScrim;
            if (z) {
                i = -16777216;
            }
            this.mNotifTint = i;
            float f2 = 0.0f;
            this.mFrontAlpha = 0.0f;
            if (z) {
                f = 1.0f;
            } else {
                f = this.mScrimBehindAlphaKeyguard;
            }
            this.mBehindAlpha = f;
            if (z) {
                f2 = this.mScrimBehindAlphaKeyguard;
            }
            this.mNotifAlpha = f2;
            if (z) {
                updateScrimColor(this.mScrimBehind);
            }
        }

        private AnonymousClass2(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass3 extends ScrimState {
        public /* synthetic */ AnonymousClass3() {
            this("AUTH_SCRIMMED_SHADE", 3);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            this.mFrontTint = EmergencyPhoneWidget.BG_COLOR;
            this.mFrontAlpha = 0.66f;
            this.mBehindTint = EmergencyPhoneWidget.BG_COLOR;
            this.mBehindAlpha = 1.0f;
        }

        private AnonymousClass3(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass4 extends ScrimState {
        public /* synthetic */ AnonymousClass4() {
            this("AUTH_SCRIMMED", 4);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            this.mNotifTint = scrimState.mNotifTint;
            this.mNotifAlpha = scrimState.mNotifAlpha;
            this.mBehindTint = scrimState.mBehindTint;
            this.mBehindAlpha = scrimState.mBehindAlpha;
            this.mFrontTint = EmergencyPhoneWidget.BG_COLOR;
            this.mFrontAlpha = 0.66f;
        }

        private AnonymousClass4(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass5 extends ScrimState {
        public /* synthetic */ AnonymousClass5() {
            this("BOUNCER", 5);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            float f;
            int i;
            float f2;
            boolean z = this.mClipQsScrim;
            if (z) {
                f = 1.0f;
            } else {
                f = this.mDefaultScrimAlpha;
            }
            this.mBehindAlpha = f;
            if (z) {
                i = EmergencyPhoneWidget.BG_COLOR;
            } else {
                i = this.mSurfaceColor;
            }
            this.mBehindTint = i;
            if (z) {
                f2 = this.mDefaultScrimAlpha;
            } else {
                f2 = 0.0f;
            }
            this.mNotifAlpha = f2;
            this.mNotifTint = 0;
            this.mFrontAlpha = 0.0f;
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void setSurfaceColor(int i) {
            this.mSurfaceColor = i;
            if (!this.mClipQsScrim) {
                this.mBehindTint = i;
            }
        }

        private AnonymousClass5(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$6, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass6 extends ScrimState {
        public /* synthetic */ AnonymousClass6() {
            this("BOUNCER_SCRIMMED", 6);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            this.mBehindAlpha = 0.0f;
            this.mFrontAlpha = this.mDefaultScrimAlpha;
        }

        private AnonymousClass6(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$7, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass7 extends ScrimState {
        public /* synthetic */ AnonymousClass7() {
            this("SHADE_LOCKED", 7);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            float f;
            int i;
            boolean z = this.mClipQsScrim;
            if (z) {
                f = 1.0f;
            } else {
                f = this.mDefaultScrimAlpha;
            }
            this.mBehindAlpha = f;
            this.mNotifAlpha = 1.0f;
            this.mFrontAlpha = 0.0f;
            if (z) {
                i = 0;
            } else {
                i = EmergencyPhoneWidget.BG_COLOR;
            }
            this.mBehindTint = i;
            if (z) {
                updateScrimColor(this.mScrimBehind);
            }
        }

        private AnonymousClass7(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$8, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass8 extends ScrimState {
        public /* synthetic */ AnonymousClass8() {
            this("BRIGHTNESS_MIRROR", 8);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            this.mBehindAlpha = 0.0f;
            this.mFrontAlpha = 0.0f;
        }

        private AnonymousClass8(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.ScrimState$9, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass9 extends ScrimState {
        public /* synthetic */ AnonymousClass9() {
            this("AOD", 9);
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final float getMaxLightRevealScrimAlpha() {
            if (LsRune.AOD_FULLSCREEN && this.mAODAmbientWallpaperHelper.isAODFullScreenMode()) {
                return ScrimState.getAlpha();
            }
            if (this.mWallpaperSupportsAmbientMode && !this.mHasBackdrop) {
                return 0.0f;
            }
            return 1.0f;
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final boolean isLowPowerState() {
            return true;
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final void prepare(ScrimState scrimState) {
            float f;
            boolean z;
            boolean alwaysOn = this.mDozeParameters.getAlwaysOn();
            boolean z2 = this.mDozeParameters.mIsQuickPickupEnabled;
            this.mDockManager.getClass();
            this.mBlankScreen = this.mDisplayRequiresBlanking;
            this.mFrontTint = EmergencyPhoneWidget.BG_COLOR;
            if (!alwaysOn && !z2) {
                f = 1.0f;
            } else {
                f = this.mAodFrontScrimAlpha;
            }
            this.mFrontAlpha = f;
            this.mBehindTint = EmergencyPhoneWidget.BG_COLOR;
            this.mBehindAlpha = 0.0f;
            this.mAnimationDuration = 1000L;
            DozeParameters dozeParameters = this.mDozeParameters;
            if (dozeParameters.mControlScreenOffAnimation && !dozeParameters.shouldShowLightRevealScrim()) {
                z = true;
            } else {
                z = false;
            }
            this.mAnimateChange = z;
        }

        @Override // com.android.systemui.statusbar.phone.ScrimState
        public final boolean shouldBlendWithMainColor() {
            return false;
        }

        private AnonymousClass9(String str, int i) {
            super(str, i, 0);
        }
    }

    static {
        ScrimState scrimState = new ScrimState("UNINITIALIZED", 0);
        UNINITIALIZED = scrimState;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        OFF = anonymousClass1;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        KEYGUARD = anonymousClass2;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        AUTH_SCRIMMED_SHADE = anonymousClass3;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4();
        AUTH_SCRIMMED = anonymousClass4;
        AnonymousClass5 anonymousClass5 = new AnonymousClass5();
        BOUNCER = anonymousClass5;
        AnonymousClass6 anonymousClass6 = new AnonymousClass6();
        BOUNCER_SCRIMMED = anonymousClass6;
        AnonymousClass7 anonymousClass7 = new AnonymousClass7();
        SHADE_LOCKED = anonymousClass7;
        AnonymousClass8 anonymousClass8 = new AnonymousClass8();
        BRIGHTNESS_MIRROR = anonymousClass8;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9();
        AOD = anonymousClass9;
        AnonymousClass10 anonymousClass10 = new AnonymousClass10();
        PULSING = anonymousClass10;
        AnonymousClass11 anonymousClass11 = new AnonymousClass11();
        UNLOCKED = anonymousClass11;
        AnonymousClass12 anonymousClass12 = new AnonymousClass12();
        DREAMING = anonymousClass12;
        $VALUES = new ScrimState[]{scrimState, anonymousClass1, anonymousClass2, anonymousClass3, anonymousClass4, anonymousClass5, anonymousClass6, anonymousClass7, anonymousClass8, anonymousClass9, anonymousClass10, anonymousClass11, anonymousClass12};
        TAG = "ScrimState";
    }

    public /* synthetic */ ScrimState(String str, int i, int i2) {
        this(str, i);
    }

    public static float getAlpha() {
        String str;
        String str2 = TAG;
        String str3 = Build.TYPE;
        float f = 0.6f;
        if (!"eng".equals(str3) && !"userdebug".equals(str3)) {
            return 0.6f;
        }
        SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        settingsHelper.getClass();
        if (LsRune.AOD_FULLSCREEN) {
            str = settingsHelper.mItemLists.get("aod_light_reveal_alpha").getStringValue();
        } else {
            str = null;
        }
        if (str == null) {
            return 0.6f;
        }
        try {
            f = Float.parseFloat(str);
            Log.d(str2, "alpha:" + f);
            return f;
        } catch (NumberFormatException e) {
            Log.e(str2, "cannot convert alpha to float: " + e);
            return f;
        }
    }

    public static ScrimState valueOf(String str) {
        return (ScrimState) Enum.valueOf(ScrimState.class, str);
    }

    public static ScrimState[] values() {
        return (ScrimState[]) $VALUES.clone();
    }

    public float getMaxLightRevealScrimAlpha() {
        if (LsRune.AOD_FULLSCREEN && this.mAODAmbientWallpaperHelper.isAODFullScreenMode()) {
            return getAlpha();
        }
        return 1.0f;
    }

    public boolean isLowPowerState() {
        return this instanceof AnonymousClass1;
    }

    public void setSurfaceColor(int i) {
        this.mSurfaceColor = i;
    }

    public boolean shouldBlendWithMainColor() {
        return !(this instanceof AnonymousClass11);
    }

    public final void updateScrimColor(ScrimView scrimView) {
        String str;
        String str2;
        if (scrimView == this.mScrimInFront) {
            str = "front_scrim_alpha";
        } else {
            str = "back_scrim_alpha";
        }
        Trace.traceCounter(4096L, str, (int) 255.0f);
        if (scrimView == this.mScrimInFront) {
            str2 = "front_scrim_tint";
        } else {
            str2 = "back_scrim_tint";
        }
        Trace.traceCounter(4096L, str2, Color.alpha(EmergencyPhoneWidget.BG_COLOR));
        scrimView.getClass();
        scrimView.executeOnExecutor(new ScrimView$$ExternalSyntheticLambda4(scrimView, EmergencyPhoneWidget.BG_COLOR));
        scrimView.setViewAlpha(1.0f);
    }

    private ScrimState(String str, int i) {
        this.mBlankScreen = false;
        this.mAnimationDuration = 220L;
        this.mFrontTint = 0;
        this.mBehindTint = 0;
        this.mNotifTint = 0;
        this.mSurfaceColor = 0;
        this.mAnimateChange = true;
    }

    public void prepare(ScrimState scrimState) {
    }
}
