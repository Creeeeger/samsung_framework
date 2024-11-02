package com.android.systemui.statusbar.phone.datausage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.net.Uri;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.PathInterpolator;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.shade.NotificationPanelView;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.NotificationPanelViewController$$ExternalSyntheticLambda15;
import com.android.systemui.shade.NotificationPanelViewController$$ExternalSyntheticLambda17;
import com.android.systemui.slimindicator.SlimIndicatorViewMediator;
import com.android.systemui.slimindicator.SlimIndicatorViewSubscriber;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import java.util.function.DoubleSupplier;
import java.util.function.IntSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DataUsageLabelManager {
    public static final boolean DEBUG = DeviceType.isEngOrUTBinary();
    public final Context mContext;
    public final DataUsageLabelParent mDataUsageLabelParent;
    public boolean mIsFadingIn;
    public boolean mIsFadingOut;
    public DataUsageLabelView mLabelView;
    public final NavSettingsHelper mNavSettingsHelper;
    public final QuickStarHelper mQuickStarHelper;
    public int mLastDensityDpi = -1;
    public int mLastOrientation = -1;
    public int mLastSemMobileKeyboardCovered = -1;
    public boolean mPreviousVisible = false;
    public boolean mPreviousVisibleWithoutAnimation = false;
    public float mPrvAlpha = -1.0f;
    public boolean mLabelAlphaAnimStarted = true;
    public int mInsetNavigationBarBottomHeight = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NavSettingsHelper implements SettingsHelper.OnChangedCallback {
        public boolean IsNavigationBarGestureHintEnabled;
        public boolean IsNavigationBarGestureProtectionEnabled;
        public boolean IsNavigationBarHideKeyboardButtonEnabled;
        public final Uri[] SETTINGS_VALUE_LIST = {Settings.Secure.getUriFor("game_double_swipe_enable"), Settings.Global.getUriFor("navigation_bar_gesture_hint"), Settings.Global.getUriFor("navigation_bar_button_to_hide_keyboard")};
        public final SettingsHelper mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);

        public NavSettingsHelper() {
        }

        public final String getDumpText() {
            StringBuilder sb = new StringBuilder("NavSettingsHelper(");
            sb.append("navGestureProtectionEnabled:" + this.IsNavigationBarGestureProtectionEnabled);
            sb.append(", navGestureHintEnabled:" + this.IsNavigationBarGestureHintEnabled);
            sb.append(", navHideKeyboardButtonEnabled:" + this.IsNavigationBarHideKeyboardButtonEnabled);
            sb.append(")");
            return sb.toString();
        }

        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            DataUsageLabelManager dataUsageLabelManager = DataUsageLabelManager.this;
            dataUsageLabelManager.updateNavBarHeight(dataUsageLabelManager.mInsetNavigationBarBottomHeight);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class QuickStarHelper implements SlimIndicatorViewSubscriber {
        public final SlimIndicatorViewMediator mSlimIndicatorViewMediator;

        public QuickStarHelper(SlimIndicatorViewMediator slimIndicatorViewMediator) {
            this.mSlimIndicatorViewMediator = slimIndicatorViewMediator;
        }

        @Override // com.android.systemui.slimindicator.SlimIndicatorViewSubscriber
        public final void updateQuickStarStyle() {
            DataUsageLabelManager.this.updateLabelVisibility(false);
        }
    }

    public DataUsageLabelManager(final NotificationPanelViewController notificationPanelViewController, SlimIndicatorViewMediator slimIndicatorViewMediator) {
        Context context;
        final int i = 0;
        final int i2 = 1;
        if (notificationPanelViewController.mDataUsageLabelParent == null) {
            notificationPanelViewController.mDataUsageLabelParent = new DataUsageLabelParent(new NotificationPanelViewController$$ExternalSyntheticLambda15(notificationPanelViewController, 1), new NotificationPanelViewController$$ExternalSyntheticLambda17(notificationPanelViewController, i), new DoubleSupplier() { // from class: com.android.systemui.shade.NotificationPanelViewController$$ExternalSyntheticLambda18
                @Override // java.util.function.DoubleSupplier
                public final double getAsDouble() {
                    return NotificationPanelViewController.this.mQsController.mExpansionHeight;
                }
            }, new IntSupplier() { // from class: com.android.systemui.shade.NotificationPanelViewController$$ExternalSyntheticLambda19
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    int i3 = i;
                    NotificationPanelViewController notificationPanelViewController2 = notificationPanelViewController;
                    switch (i3) {
                        case 0:
                            return notificationPanelViewController2.mQsController.mMinExpansionHeight;
                        default:
                            return notificationPanelViewController2.getMaxPanelHeight();
                    }
                }
            }, new NotificationPanelViewController$$ExternalSyntheticLambda17(notificationPanelViewController, 5), new IntSupplier() { // from class: com.android.systemui.shade.NotificationPanelViewController$$ExternalSyntheticLambda19
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    int i3 = i2;
                    NotificationPanelViewController notificationPanelViewController2 = notificationPanelViewController;
                    switch (i3) {
                        case 0:
                            return notificationPanelViewController2.mQsController.mMinExpansionHeight;
                        default:
                            return notificationPanelViewController2.getMaxPanelHeight();
                    }
                }
            });
        }
        DataUsageLabelParent dataUsageLabelParent = notificationPanelViewController.mDataUsageLabelParent;
        this.mDataUsageLabelParent = dataUsageLabelParent;
        NotificationPanelView notificationPanelView = (NotificationPanelView) dataUsageLabelParent.mPanelViewSupplier.get();
        if (notificationPanelView != null) {
            context = notificationPanelView.getContext();
        } else {
            context = null;
        }
        this.mContext = context;
        this.mNavSettingsHelper = new NavSettingsHelper();
        this.mQuickStarHelper = new QuickStarHelper(slimIndicatorViewMediator);
    }

    public final void animateLabelAlpha(View view, boolean z) {
        float f;
        if (view != null && view.animate() != null) {
            ViewPropertyAnimator animate = view.animate();
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            ViewPropertyAnimator alpha = animate.alpha(f);
            long j = 150;
            ViewPropertyAnimator duration = alpha.setDuration(150L);
            if (!z) {
                j = 0;
            }
            duration.setStartDelay(j).setInterpolator(new PathInterpolator(0.42f, 0.0f, 0.58f, 1.0f)).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.1
                /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
                
                    if (r0 != false) goto L18;
                 */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
                /* JADX WARN: Removed duplicated region for block: B:28:0x0075  */
                /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final void onAnimationUpdate(android.animation.ValueAnimator r8) {
                    /*
                        r7 = this;
                        float r8 = r8.getAnimatedFraction()
                        com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager r0 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.this
                        float r0 = r0.mPrvAlpha
                        r1 = 1065353216(0x3f800000, float:1.0)
                        int r2 = java.lang.Float.compare(r1, r0)
                        r3 = 0
                        r4 = 0
                        r5 = 1
                        if (r2 == 0) goto L1c
                        int r0 = java.lang.Float.compare(r3, r0)
                        if (r0 != 0) goto L1a
                        goto L1c
                    L1a:
                        r0 = r4
                        goto L1d
                    L1c:
                        r0 = r5
                    L1d:
                        if (r0 != 0) goto L36
                        com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager r0 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.this
                        r0.getClass()
                        int r0 = java.lang.Float.compare(r1, r8)
                        if (r0 == 0) goto L33
                        int r0 = java.lang.Float.compare(r3, r8)
                        if (r0 != 0) goto L31
                        goto L33
                    L31:
                        r0 = r4
                        goto L34
                    L33:
                        r0 = r5
                    L34:
                        if (r0 == 0) goto L3b
                    L36:
                        com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager r0 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.this
                        r0.updateLabelVisibility(r5)
                    L3b:
                        com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager r0 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.this
                        float r2 = r0.mPrvAlpha
                        int r6 = java.lang.Float.compare(r2, r8)
                        if (r6 == 0) goto L68
                        int r1 = java.lang.Float.compare(r1, r8)
                        if (r1 == 0) goto L54
                        int r1 = java.lang.Float.compare(r3, r8)
                        if (r1 != 0) goto L52
                        goto L54
                    L52:
                        r1 = r4
                        goto L55
                    L54:
                        r1 = r5
                    L55:
                        if (r1 == 0) goto L58
                        goto L68
                    L58:
                        int r1 = java.lang.Float.compare(r2, r8)
                        if (r1 <= 0) goto L63
                        r0.mIsFadingIn = r4
                        r0.mIsFadingOut = r5
                        goto L6c
                    L63:
                        r0.mIsFadingIn = r5
                        r0.mIsFadingOut = r4
                        goto L6c
                    L68:
                        r0.mIsFadingIn = r4
                        r0.mIsFadingOut = r4
                    L6c:
                        int r0 = java.lang.Float.compare(r2, r8)
                        if (r0 != 0) goto L73
                        r4 = r5
                    L73:
                        if (r4 != 0) goto L79
                        com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager r7 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.this
                        r7.mPrvAlpha = r8
                    L79:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.AnonymousClass1.onAnimationUpdate(android.animation.ValueAnimator):void");
                }
            }).start();
        }
    }

    public final void onPanelConfigurationChanged(Configuration configuration) {
        int i = configuration.orientation;
        int i2 = this.mLastOrientation;
        if (i != i2 || configuration.densityDpi != this.mLastDensityDpi || this.mLastSemMobileKeyboardCovered != configuration.semMobileKeyboardCovered) {
            int i3 = 1;
            if (i != i2) {
                this.mLastOrientation = i;
                updateLabelVisibility(true);
            }
            this.mLastDensityDpi = configuration.densityDpi;
            this.mLastSemMobileKeyboardCovered = configuration.semMobileKeyboardCovered;
            ViewGroup parentViewGroup = this.mDataUsageLabelParent.getParentViewGroup();
            if (parentViewGroup != null) {
                parentViewGroup.post(new DataUsageLabelManager$$ExternalSyntheticLambda0(this, parentViewGroup, i3));
            }
        }
        updateLabelViewColor();
    }

    public final void updateLabelViewColor() {
        int i;
        DataUsageLabelView dataUsageLabelView = this.mLabelView;
        if (dataUsageLabelView == null) {
            return;
        }
        if (QpRune.QUICK_TABLET) {
            i = -1627389953;
        } else {
            Context context = this.mContext;
            if (DeviceState.isOpenTheme(context)) {
                int color = context.getColor(R.color.sec_qs_header_tint_color);
                i = Color.argb(-1711604993, Color.red(color), Color.green(color), Color.blue(color));
            } else {
                i = -1711604993;
            }
        }
        dataUsageLabelView.setTextColor(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateLabelVisibility(boolean r9) {
        /*
            r8 = this;
            boolean r0 = com.android.systemui.QpRune.PANEL_DATA_USAGE_LABEL
            r1 = 1
            com.android.systemui.statusbar.phone.datausage.DataUsageLabelParent r2 = r8.mDataUsageLabelParent
            r3 = 0
            if (r0 == 0) goto L51
            java.util.function.BooleanSupplier r0 = r2.mOnKeyguardStateSupplier
            boolean r0 = r0.getAsBoolean()
            if (r0 != 0) goto L2b
            java.util.function.DoubleSupplier r0 = r2.mExpansionHeightSupplier
            double r4 = r0.getAsDouble()
            java.util.function.IntSupplier r0 = r2.mMinExpansionHeightSupplier
            int r0 = r0.getAsInt()
            double r6 = (double) r0
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 > 0) goto L2b
            java.util.function.BooleanSupplier r0 = r2.mFullyExpandedSupplier
            boolean r0 = r0.getAsBoolean()
            if (r0 != 0) goto L2b
            r0 = r1
            goto L2c
        L2b:
            r0 = r3
        L2c:
            if (r0 == 0) goto L51
            int r0 = r8.mLastOrientation
            r4 = 2
            if (r0 == r4) goto L51
            com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager$QuickStarHelper r0 = r8.mQuickStarHelper
            com.android.systemui.slimindicator.SlimIndicatorViewMediator r0 = r0.mSlimIndicatorViewMediator
            com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl r0 = (com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl) r0
            com.android.systemui.slimindicator.SlimIndicatorPluginMediator r4 = r0.mPluginMediator
            boolean r4 = r4.mIsSPluginConnected
            if (r4 == 0) goto L4c
            com.android.systemui.slimindicator.SlimIndicatorCarrierCrew r0 = r0.mCarrierCrew
            int r0 = r0.mIsPanelCarrierDisabled
            if (r0 != r1) goto L47
            r0 = r1
            goto L48
        L47:
            r0 = r3
        L48:
            if (r0 == 0) goto L4c
            r0 = r1
            goto L4d
        L4c:
            r0 = r3
        L4d:
            if (r0 != 0) goto L51
            r0 = r1
            goto L52
        L51:
            r0 = r3
        L52:
            boolean r4 = r8.mPreviousVisible
            if (r4 != r0) goto L58
            if (r9 == 0) goto L9d
        L58:
            boolean r5 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.DEBUG
            if (r5 == 0) goto L81
            if (r4 == r0) goto L81
            java.lang.String r4 = "updateLabelVisibility(forceUpdate:"
            java.lang.String r5 = ") preV:"
            java.lang.StringBuilder r4 = androidx.slice.widget.RowView$$ExternalSyntheticOutline0.m(r4, r9, r5)
            boolean r5 = r8.mPreviousVisible
            java.lang.String r6 = " >> newV:"
            java.lang.String r7 = ", isFadingAnimationRunning()"
            com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(r4, r5, r6, r0, r7)
            boolean r5 = r8.mIsFadingIn
            if (r5 != 0) goto L7b
            boolean r5 = r8.mIsFadingOut
            if (r5 == 0) goto L79
            goto L7b
        L79:
            r5 = r3
            goto L7c
        L7b:
            r5 = r1
        L7c:
            java.lang.String r6 = "DataUsageLabelManager"
            androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0.m(r4, r5, r6)
        L81:
            boolean r4 = r8.mIsFadingIn
            if (r4 != 0) goto L8b
            boolean r4 = r8.mIsFadingOut
            if (r4 == 0) goto L8a
            goto L8b
        L8a:
            r1 = r3
        L8b:
            if (r1 == 0) goto L8f
            if (r9 == 0) goto L9b
        L8f:
            android.view.ViewGroup r9 = r2.getParentViewGroup()
            if (r0 == 0) goto L96
            goto L98
        L96:
            r3 = 8
        L98:
            r9.setVisibility(r3)
        L9b:
            r8.mPreviousVisible = r0
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.updateLabelVisibility(boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateNavBarHeight(int r12) {
        /*
            r11 = this;
            com.android.systemui.statusbar.phone.datausage.DataUsageLabelParent r0 = r11.mDataUsageLabelParent
            android.view.ViewGroup r1 = r0.getParentViewGroup()
            if (r1 != 0) goto L9
            return
        L9:
            int r2 = r11.mInsetNavigationBarBottomHeight
            r3 = 0
            r4 = 1
            com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager$NavSettingsHelper r5 = r11.mNavSettingsHelper
            if (r2 != r12) goto L4f
            com.android.systemui.util.SettingsHelper r2 = r5.mSettingsHelper
            if (r2 != 0) goto L16
            goto L4a
        L16:
            boolean r6 = r5.IsNavigationBarGestureProtectionEnabled
            boolean r7 = r5.IsNavigationBarGestureHintEnabled
            boolean r8 = r5.IsNavigationBarHideKeyboardButtonEnabled
            boolean r9 = com.android.systemui.BasicRune.NAVBAR_REMOTEVIEW
            if (r9 == 0) goto L30
            com.android.systemui.util.SettingsHelper$ItemMap r9 = r2.mItemLists
            java.lang.String r10 = "game_double_swipe_enable"
            com.android.systemui.util.SettingsHelper$Item r9 = r9.get(r10)
            int r9 = r9.getIntValue()
            if (r9 == 0) goto L30
            r9 = r4
            goto L31
        L30:
            r9 = r3
        L31:
            r5.IsNavigationBarGestureProtectionEnabled = r9
            boolean r9 = r2.isNavigationBarGestureHintEnabled()
            r5.IsNavigationBarGestureHintEnabled = r9
            boolean r2 = r2.isNavigationBarHideKeyboardButtonEnabled()
            r5.IsNavigationBarHideKeyboardButtonEnabled = r2
            boolean r9 = r5.IsNavigationBarGestureProtectionEnabled
            if (r9 != r6) goto L4c
            boolean r6 = r5.IsNavigationBarGestureHintEnabled
            if (r6 != r7) goto L4c
            if (r2 == r8) goto L4a
            goto L4c
        L4a:
            r2 = r3
            goto L4d
        L4c:
            r2 = r4
        L4d:
            if (r2 == 0) goto L88
        L4f:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r6 = "updateNavBarHeight("
            r2.<init>(r6)
            int r6 = r11.mInsetNavigationBarBottomHeight
            java.lang.String r7 = " >> "
            java.lang.String r8 = ") "
            androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(r2, r6, r7, r12, r8)
            java.lang.String r5 = r5.getDumpText()
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            java.lang.String r5 = "DataUsageLabelManager"
            android.util.Log.d(r5, r2)
            r11.mInsetNavigationBarBottomHeight = r12
            com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager$$ExternalSyntheticLambda0 r12 = new com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager$$ExternalSyntheticLambda0
            r12.<init>(r11, r1, r3)
            r1.post(r12)
            android.view.ViewGroup r12 = r0.getParentViewGroup()
            if (r12 == 0) goto L88
            com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager$$ExternalSyntheticLambda0 r0 = new com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager$$ExternalSyntheticLambda0
            r0.<init>(r11, r12, r4)
            r12.post(r0)
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.datausage.DataUsageLabelManager.updateNavBarHeight(int):void");
    }
}
