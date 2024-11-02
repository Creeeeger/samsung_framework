package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Trace;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.collection.ArrayMap;
import androidx.collection.IndexBasedArrayIterator;
import com.android.app.animation.Interpolators;
import com.android.internal.util.ContrastColorUtil;
import com.android.settingslib.Utils;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.demomode.DemoMode;
import com.android.systemui.demomode.DemoModeController;
import com.android.systemui.facewidget.plugin.ExternalClockProvider;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.plugins.keyguardstatusview.PluginClockProvider;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.CrossFadeHelper;
import com.android.systemui.statusbar.NotificationListener;
import com.android.systemui.statusbar.NotificationMediaManager;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.provider.SectionStyleProvider;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.SimpleStatusBarIconController;
import com.android.systemui.statusbar.phone.ongoingcall.OngoingCallController;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import com.android.wm.shell.bubbles.Bubbles;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationIconAreaController implements DarkIconDispatcher.DarkReceiver, StatusBarStateController.StateListener, NotificationWakeUpCoordinator.WakeUpListener, DemoMode {
    public boolean mAnimationsEnabled;
    public int mAodIconAppearTranslation;
    public int mAodIconTint;
    public NotificationIconContainer mAodIcons;
    public boolean mAodIconsVisible;
    public final Optional mBubblesOptional;
    public final KeyguardBypassController mBypassController;
    public final AnonymousClass3 mClockCallback;
    public final ExternalClockProvider mClockProvider;
    public final Context mContext;
    public final ContrastColorUtil mContrastColorUtil;
    public final DozeParameters mDozeParameters;
    public final FeatureFlags mFeatureFlags;
    public boolean mHeadsUpShowing;
    public int mIconHPadding;
    public int mIconSize;
    public final IndicatorScaleGardener mIndicatorScaleGardener;
    public final NotificationMediaManager mMediaManager;
    public final NotificationCountController mNotificationCountController;
    public View mNotificationIconArea;
    public NotificationIconContainer mNotificationIcons;
    public final OngoingCallController mOngoingCallController;
    public final ScreenOffAnimationController mScreenOffAnimationController;
    final NotificationListener.NotificationSettingsListener mSettingsListener;
    public NotificationIconContainer mShelfIcons;
    public final SimpleStatusBarIconController mSimpleStatusBarIconController;
    public int mSimpleStatusBarSettingsValue;
    public final StatusBarStateController mStatusBarStateController;
    public final StatusBarWindowController mStatusBarWindowController;
    public final SecUnlockedScreenOffAnimationHelper mUnlockedScreenOffAnimationHelper;
    public final NotificationWakeUpCoordinator mWakeUpCoordinator;
    public final NotificationIconAreaController$$ExternalSyntheticLambda2 mUpdateStatusBarIcons = new Runnable() { // from class: com.android.systemui.statusbar.phone.NotificationIconAreaController$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            NotificationIconAreaController.this.updateStatusBarIcons();
        }
    };
    public int mIconTint = -1;
    public List mNotificationEntries = List.of();
    public final ArrayList mTintAreas = new ArrayList();
    public boolean mShowLowPriority = true;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.NotificationIconAreaController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements NotificationListener.NotificationSettingsListener {
        public AnonymousClass1() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.NotificationIconAreaController$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 {
        public AnonymousClass2() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.systemui.statusbar.phone.NotificationIconAreaController$$ExternalSyntheticLambda2] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.android.systemui.plugins.keyguardstatusview.PluginClockProvider$ClockCallback, com.android.systemui.statusbar.phone.NotificationIconAreaController$3, java.lang.Object] */
    public NotificationIconAreaController(Context context, StatusBarStateController statusBarStateController, NotificationWakeUpCoordinator notificationWakeUpCoordinator, KeyguardBypassController keyguardBypassController, NotificationMediaManager notificationMediaManager, NotificationListener notificationListener, DozeParameters dozeParameters, SectionStyleProvider sectionStyleProvider, Optional<Bubbles> optional, DemoModeController demoModeController, DarkIconDispatcher darkIconDispatcher, FeatureFlags featureFlags, StatusBarWindowController statusBarWindowController, ScreenOffAnimationController screenOffAnimationController, IndicatorScaleGardener indicatorScaleGardener, OngoingCallController ongoingCallController, SecUnlockedScreenOffAnimationHelper secUnlockedScreenOffAnimationHelper, ExternalClockProvider externalClockProvider) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mSettingsListener = anonymousClass1;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.mHeadsUpShowing = false;
        ?? r9 = new PluginClockProvider.ClockCallback() { // from class: com.android.systemui.statusbar.phone.NotificationIconAreaController.3
            @Override // com.android.systemui.plugins.keyguardstatusview.PluginClockProvider.ClockCallback
            public final void onClockColorChanged() {
                int parseColor;
                NotificationIconAreaController notificationIconAreaController = NotificationIconAreaController.this;
                NotificationIconContainer notificationIconContainer = notificationIconAreaController.mShelfIcons;
                if (notificationIconContainer != null) {
                    PluginClockProvider pluginClockProvider = notificationIconAreaController.mClockProvider.mClockProvider;
                    if (pluginClockProvider == null) {
                        parseColor = Color.parseColor("#FFFAFAFA");
                    } else {
                        try {
                            parseColor = pluginClockProvider.getClockDateColor();
                        } catch (Error unused) {
                            parseColor = Color.parseColor("#FFFAFAFA");
                        }
                    }
                    notificationIconContainer.onClockColorChanged(parseColor);
                }
            }

            @Override // com.android.systemui.plugins.keyguardstatusview.PluginClockProvider.ClockCallback
            public final void onClockPositionChanged(boolean z) {
            }

            @Override // com.android.systemui.plugins.keyguardstatusview.PluginClockProvider.ClockCallback
            public final void onClockStyleChanged(boolean z) {
            }

            @Override // com.android.systemui.plugins.keyguardstatusview.PluginClockProvider.ClockCallback
            public final void onAODClockStyleChanged() {
            }

            @Override // com.android.systemui.plugins.keyguardstatusview.PluginClockProvider.ClockCallback
            public final void onClockFontChanged() {
            }

            @Override // com.android.systemui.plugins.keyguardstatusview.PluginClockProvider.ClockCallback
            public final void onClockPackageChanged() {
            }

            @Override // com.android.systemui.plugins.keyguardstatusview.PluginClockProvider.ClockCallback
            public final void onClockScaleChanged() {
            }

            @Override // com.android.systemui.plugins.keyguardstatusview.PluginClockProvider.ClockCallback
            public final void onClockVisibilityChanged() {
            }
        };
        this.mClockCallback = r9;
        this.mContrastColorUtil = ContrastColorUtil.getInstance(context);
        this.mContext = context;
        this.mStatusBarStateController = statusBarStateController;
        this.mFeatureFlags = featureFlags;
        statusBarStateController.addCallback(this);
        this.mMediaManager = notificationMediaManager;
        this.mDozeParameters = dozeParameters;
        this.mWakeUpCoordinator = notificationWakeUpCoordinator;
        notificationWakeUpCoordinator.wakeUpListeners.add(this);
        this.mBypassController = keyguardBypassController;
        this.mBubblesOptional = optional;
        demoModeController.addCallback((DemoMode) this);
        this.mStatusBarWindowController = statusBarWindowController;
        this.mScreenOffAnimationController = screenOffAnimationController;
        this.mIndicatorScaleGardener = indicatorScaleGardener;
        this.mOngoingCallController = ongoingCallController;
        if (LsRune.AOD_FULLSCREEN) {
            this.mUnlockedScreenOffAnimationHelper = secUnlockedScreenOffAnimationHelper;
        }
        notificationListener.mSettingsListeners.add(anonymousClass1);
        SimpleStatusBarIconController simpleStatusBarIconController = (SimpleStatusBarIconController) Dependency.get(SimpleStatusBarIconController.class);
        this.mSimpleStatusBarIconController = simpleStatusBarIconController;
        simpleStatusBarIconController.mIconController = this;
        NotificationCountController notificationCountController = new NotificationCountController(context, this);
        this.mNotificationCountController = notificationCountController;
        darkIconDispatcher.addDarkReceiver(notificationCountController);
        this.mClockProvider = externalClockProvider;
        PluginClockProvider pluginClockProvider = externalClockProvider.mClockProvider;
        if (pluginClockProvider != 0) {
            pluginClockProvider.registerClockChangedCallback(r9);
        }
        ArrayList arrayList = (ArrayList) externalClockProvider.mClockCallbacks;
        if (!arrayList.contains(r9)) {
            arrayList.add(r9);
        }
        reloadDimens(context);
        View inflate = LayoutInflater.from(context).inflate(R.layout.notification_icon_area, (ViewGroup) null);
        this.mNotificationIconArea = inflate;
        NotificationIconContainer notificationIconContainer = (NotificationIconContainer) inflate.findViewById(R.id.notificationIcons);
        this.mNotificationIcons = notificationIconContainer;
        simpleStatusBarIconController.mNotificationIconContainer = notificationIconContainer;
        simpleStatusBarIconController.mSettingChangeListener = anonymousClass2;
        simpleStatusBarIconController.mSettingsCallback.onChanged(Settings.System.getUriFor("simple_status_bar"));
        this.mAodIconTint = Utils.getColorAttrDefaultColor(R.attr.wallpaperTextColor, context, -1);
        darkIconDispatcher.addDarkReceiver(this);
    }

    public final void animateInAodIconTranslation() {
        this.mAodIcons.animate().setInterpolator(Interpolators.DECELERATE_QUINT).translationY(0.0f).setDuration(200L).start();
    }

    public final void applyNotificationIconsTint() {
        int i = 0;
        for (int i2 = 0; i2 < this.mNotificationIcons.getChildCount(); i2++) {
            StatusBarIconView statusBarIconView = (StatusBarIconView) this.mNotificationIcons.getChildAt(i2);
            if (statusBarIconView.getWidth() != 0) {
                updateTintForIcon(statusBarIconView, this.mIconTint);
            } else {
                statusBarIconView.mLayoutRunnable = new NotificationIconAreaController$$ExternalSyntheticLambda1(this, statusBarIconView, i);
            }
        }
        updateAodIconColors();
    }

    @Override // com.android.systemui.demomode.DemoMode
    public final List demoCommands() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("notifications");
        return arrayList;
    }

    @Override // com.android.systemui.demomode.DemoModeCommandReceiver
    public final void dispatchDemoCommand(Bundle bundle, String str) {
        int i;
        if (this.mNotificationIconArea != null) {
            if ("false".equals(bundle.getString("visible"))) {
                i = 4;
            } else {
                i = 0;
            }
            this.mNotificationIconArea.setVisibility(i);
        }
    }

    @Override // com.android.systemui.plugins.DarkIconDispatcher.DarkReceiver
    public final void onDarkChanged(ArrayList arrayList, float f, int i) {
        ArrayList arrayList2 = this.mTintAreas;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        if (DarkIconDispatcher.isInAreas(arrayList, this.mNotificationIconArea)) {
            this.mIconTint = i;
        }
        this.mIconTint = i;
        applyNotificationIconsTint();
    }

    @Override // com.android.systemui.demomode.DemoModeCommandReceiver
    public final void onDemoModeFinished() {
        View view = this.mNotificationIconArea;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onDozingChanged(boolean z) {
        boolean z2;
        if (this.mAodIcons == null) {
            return;
        }
        DozeParameters dozeParameters = this.mDozeParameters;
        if (dozeParameters.getAlwaysOn() && !dozeParameters.getDisplayNeedsBlanking()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (LsRune.AOD_FULLSCREEN && z && this.mUnlockedScreenOffAnimationHelper.shouldSkipAnimation()) {
            z2 = false;
        }
        NotificationIconContainer notificationIconContainer = this.mAodIcons;
        notificationIconContainer.mDozing = z;
        notificationIconContainer.mDisallowNextAnimation |= !z2;
        for (int i = 0; i < notificationIconContainer.getChildCount(); i++) {
            View childAt = notificationIconContainer.getChildAt(i);
            if (childAt instanceof StatusBarIconView) {
                ((StatusBarIconView) childAt).setDozing$1(z, z2);
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator.WakeUpListener
    public final void onFullyHiddenChanged(boolean z) {
        boolean z2 = true;
        if (!this.mBypassController.getBypassEnabled()) {
            DozeParameters dozeParameters = this.mDozeParameters;
            if (!dozeParameters.getAlwaysOn() || dozeParameters.getDisplayNeedsBlanking()) {
                z2 = false;
            }
            z2 &= z;
        }
        updateAodIconsVisibility(z2, false);
        updateAodNotificationIcons();
        updateAodIconColors();
    }

    @Override // com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator.WakeUpListener
    public final void onPulseExpansionChanged(boolean z) {
        if (z) {
            updateAodIconsVisibility(true, false);
        }
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onStateChanged(int i) {
        updateAodIconsVisibility(false, false);
        updateAnimations();
    }

    public final void reloadDimens(Context context) {
        Resources resources = context.getResources();
        this.mIconSize = resources.getDimensionPixelSize(R.dimen.notification_icon_view_width);
        this.mIconSize = (int) (this.mIconSize * this.mIndicatorScaleGardener.getLatestScaleModel(this.mContext).ratio);
        this.mIconHPadding = resources.getDimensionPixelSize(R.dimen.status_bar_icon_padding);
        this.mAodIconAppearTranslation = resources.getDimensionPixelSize(R.dimen.shelf_appear_translation);
        final NotificationCountController notificationCountController = this.mNotificationCountController;
        notificationCountController.getClass();
        Resources resources2 = context.getResources();
        Optional.ofNullable(notificationCountController.mIconController.mNotificationIconArea).ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.phone.NotificationCountController$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NotificationCountController notificationCountController2 = NotificationCountController.this;
                notificationCountController2.getClass();
                notificationCountController2.mCountIcon = (TextView) ((View) obj).findViewById(R.id.notificationCounts);
            }
        });
        notificationCountController.mDarkModeIconColorSingleTone = context.getColor(R.color.dark_mode_icon_color_single_tone);
        notificationCountController.mLightModeIconColorSingleTone = context.getColor(R.color.light_mode_icon_color_single_tone);
        notificationCountController.mCountIconSize = resources2.getDimensionPixelSize(R.dimen.notification_count_icon_size);
        notificationCountController.mCountTextSize = resources2.getDimensionPixelSize(R.dimen.notification_count_text_size);
    }

    public boolean shouldShouldLowPriorityIcons() {
        return this.mShowLowPriority;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean shouldShowNotificationIcon(com.android.systemui.statusbar.notification.collection.NotificationEntry r4, boolean r5, boolean r6, boolean r7, boolean r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.NotificationIconAreaController.shouldShowNotificationIcon(com.android.systemui.statusbar.notification.collection.NotificationEntry, boolean, boolean, boolean, boolean, boolean, boolean):boolean");
    }

    public final void updateAnimations() {
        boolean z;
        boolean z2;
        boolean z3 = true;
        if (this.mStatusBarStateController.getState() == 0) {
            z = true;
        } else {
            z = false;
        }
        NotificationIconContainer notificationIconContainer = this.mAodIcons;
        if (notificationIconContainer != null) {
            if (this.mAnimationsEnabled && !z) {
                z2 = true;
            } else {
                z2 = false;
            }
            notificationIconContainer.setAnimationsEnabled(z2);
        }
        NotificationIconContainer notificationIconContainer2 = this.mNotificationIcons;
        if (!this.mAnimationsEnabled || !z) {
            z3 = false;
        }
        notificationIconContainer2.setAnimationsEnabled(z3);
    }

    public final void updateAodIconColors() {
        if (this.mAodIcons != null) {
            for (int i = 0; i < this.mAodIcons.getChildCount(); i++) {
                StatusBarIconView statusBarIconView = (StatusBarIconView) this.mAodIcons.getChildAt(i);
                if (statusBarIconView.getWidth() != 0) {
                    updateTintForIcon(statusBarIconView, this.mAodIconTint);
                } else {
                    statusBarIconView.mLayoutRunnable = new NotificationIconAreaController$$ExternalSyntheticLambda1(this, statusBarIconView, 1);
                }
            }
        }
    }

    public final void updateAodIconsVisibility(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        if (this.mAodIcons == null) {
            return;
        }
        KeyguardBypassController keyguardBypassController = this.mBypassController;
        boolean bypassEnabled = keyguardBypassController.getBypassEnabled();
        int i = 0;
        NotificationWakeUpCoordinator notificationWakeUpCoordinator = this.mWakeUpCoordinator;
        if (!bypassEnabled && !notificationWakeUpCoordinator.notificationsFullyHidden) {
            z3 = false;
        } else {
            z3 = true;
        }
        int state = this.mStatusBarStateController.getState();
        ScreenOffAnimationController screenOffAnimationController = this.mScreenOffAnimationController;
        if (state != 1) {
            List list = screenOffAnimationController.animations;
            if (!(list instanceof Collection) || !((ArrayList) list).isEmpty()) {
                Iterator it = ((ArrayList) list).iterator();
                while (it.hasNext()) {
                    if (((ScreenOffAnimation) it.next()).shouldShowAodIconsWhenShade()) {
                        z5 = true;
                        break;
                    }
                }
            }
            z5 = false;
            if (!z5) {
                z3 = false;
            }
        }
        if (z3) {
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = notificationWakeUpCoordinator.mStackScrollerController;
            if (notificationStackScrollLayoutController == null) {
                notificationStackScrollLayoutController = null;
            }
            if (notificationStackScrollLayoutController.mView.mAmbientState.isPulseExpanding() && !keyguardBypassController.getBypassEnabled()) {
                z3 = false;
            }
        }
        if (this.mAodIconsVisible != z3 || z2) {
            this.mAodIconsVisible = z3;
            this.mAodIcons.animate().cancel();
            if (z) {
                if (this.mAodIcons.getVisibility() != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (this.mAodIconsVisible) {
                    if (z4) {
                        this.mAodIcons.setVisibility(0);
                        this.mAodIcons.setAlpha(1.0f);
                        if (this.mAodIcons != null) {
                            List list2 = screenOffAnimationController.animations;
                            if (!(list2 instanceof Collection) || !((ArrayList) list2).isEmpty()) {
                                Iterator it2 = ((ArrayList) list2).iterator();
                                while (it2.hasNext()) {
                                    if (!((ScreenOffAnimation) it2.next()).shouldAnimateAodIcons()) {
                                        break;
                                    }
                                }
                            }
                            i = 1;
                            if (i != 0) {
                                this.mAodIcons.setTranslationY(-this.mAodIconAppearTranslation);
                                this.mAodIcons.setAlpha(0.0f);
                                animateInAodIconTranslation();
                                this.mAodIcons.animate().alpha(1.0f).setInterpolator(Interpolators.LINEAR).setDuration(200L).start();
                                return;
                            }
                            this.mAodIcons.setAlpha(1.0f);
                            this.mAodIcons.setTranslationY(0.0f);
                            return;
                        }
                        return;
                    }
                    animateInAodIconTranslation();
                    CrossFadeHelper.fadeIn(this.mAodIcons, 210L, 0);
                    return;
                }
                animateInAodIconTranslation();
                CrossFadeHelper.fadeOut(this.mAodIcons, 210L, (Runnable) null);
                return;
            }
            this.mAodIcons.setAlpha(1.0f);
            this.mAodIcons.setTranslationY(0.0f);
            NotificationIconContainer notificationIconContainer = this.mAodIcons;
            if (!z3) {
                i = 4;
            }
            notificationIconContainer.setVisibility(i);
        }
    }

    public final void updateAodNotificationIcons() {
        NotificationIconContainer notificationIconContainer = this.mAodIcons;
        if (notificationIconContainer == null) {
            return;
        }
        updateIconsForLayout(new NotificationIconAreaController$$ExternalSyntheticLambda0(1), notificationIconContainer, false, true, true, true, true, this.mBypassController.getBypassEnabled(), false);
    }

    public final void updateIconLayoutParams(Context context) {
        reloadDimens(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((this.mIconHPadding * 2) + this.mIconSize, this.mStatusBarWindowController.mBarHeight);
        for (int i = 0; i < this.mNotificationIcons.getChildCount(); i++) {
            this.mNotificationIcons.getChildAt(i).setLayoutParams(layoutParams);
        }
        if (this.mAodIcons != null) {
            for (int i2 = 0; i2 < this.mAodIcons.getChildCount(); i2++) {
                this.mAodIcons.getChildAt(i2).setLayoutParams(layoutParams);
            }
        }
        this.mNotificationCountController.updateNotificationCountLayoutParams();
    }

    public final void updateIconsForLayout(NotificationIconAreaController$$ExternalSyntheticLambda0 notificationIconAreaController$$ExternalSyntheticLambda0, NotificationIconContainer notificationIconContainer, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        boolean z8;
        ArrayList arrayList = new ArrayList(this.mNotificationEntries.size());
        for (int i = 0; i < this.mNotificationEntries.size(); i++) {
            NotificationEntry representativeEntry = ((ListEntry) this.mNotificationEntries.get(i)).getRepresentativeEntry();
            if (representativeEntry != null && representativeEntry.row != null && shouldShowNotificationIcon(representativeEntry, z, z2, z3, z4, z5, z6)) {
                StatusBarIconView statusBarIconView = (StatusBarIconView) notificationIconAreaController$$ExternalSyntheticLambda0.apply(representativeEntry);
                if (statusBarIconView != null) {
                    arrayList.add(statusBarIconView);
                }
            }
        }
        if (z7) {
            SimpleStatusBarIconController simpleStatusBarIconController = this.mSimpleStatusBarIconController;
            if (notificationIconContainer == simpleStatusBarIconController.mNotificationIconContainer && simpleStatusBarIconController.mSettingsValue == 1) {
                int size = arrayList.size();
                arrayList.clear();
                arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (int i2 = 0; i2 < simpleStatusBarIconController.mEntries.size(); i2++) {
                    arrayList3.add(((ListEntry) simpleStatusBarIconController.mEntries.get(i2)).getRepresentativeEntry());
                }
                ArrayList arrayList4 = new ArrayList();
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    NotificationEntry notificationEntry = (NotificationEntry) it.next();
                    String str = notificationEntry.mKey;
                    long j = notificationEntry.mSbn.getNotification().when;
                    if (notificationEntry.mSbn.getNotification().extras.getInt("android.callType", -1) == 2) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    arrayList4.add(new SimpleStatusBarIconController.TimeOrderKey(simpleStatusBarIconController, str, j, z8, 0));
                }
                Collections.sort(arrayList4, simpleStatusBarIconController.mTimeComparator);
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    NotificationEntry notificationEntry2 = (NotificationEntry) simpleStatusBarIconController.mNotificationEntries.get(((SimpleStatusBarIconController.TimeOrderKey) it2.next()).key);
                    if (!(notificationEntry2 == null ? true : !simpleStatusBarIconController.mIconController.shouldShowNotificationIcon(notificationEntry2, false, true, true, false, false, false))) {
                        arrayList2.add(notificationEntry2);
                        StatusBarIconView statusBarIconView2 = notificationEntry2.mIcons.mStatusBarIcon;
                        if (statusBarIconView2 != null) {
                            arrayList.add(statusBarIconView2);
                        }
                    }
                    if (arrayList.size() == size) {
                        break;
                    }
                }
            }
        }
        ArrayMap arrayMap = new ArrayMap();
        ArrayList arrayList5 = new ArrayList();
        for (int i3 = 0; i3 < notificationIconContainer.getChildCount(); i3++) {
            View childAt = notificationIconContainer.getChildAt(i3);
            if ((childAt instanceof StatusBarIconView) && !arrayList.contains(childAt)) {
                StatusBarIconView statusBarIconView3 = (StatusBarIconView) childAt;
                if (this.mSimpleStatusBarSettingsValue != 1) {
                    String groupKey = statusBarIconView3.mNotification.getGroupKey();
                    int i4 = 0;
                    boolean z9 = false;
                    while (true) {
                        if (i4 >= arrayList.size()) {
                            break;
                        }
                        StatusBarIconView statusBarIconView4 = (StatusBarIconView) arrayList.get(i4);
                        if (statusBarIconView4.mIcon.icon.sameAs(statusBarIconView3.mIcon.icon) && statusBarIconView4.mNotification.getGroupKey().equals(groupKey)) {
                            if (!z9) {
                                z9 = true;
                            } else {
                                z9 = false;
                                break;
                            }
                        }
                        i4++;
                    }
                    if (z9) {
                        ArrayList arrayList6 = (ArrayList) arrayMap.get(groupKey);
                        if (arrayList6 == null) {
                            arrayList6 = new ArrayList();
                            arrayMap.put(groupKey, arrayList6);
                        }
                        arrayList6.add(statusBarIconView3.mIcon);
                    }
                }
                arrayList5.add(statusBarIconView3);
            }
        }
        ArrayList arrayList7 = new ArrayList();
        Iterator it3 = ((ArrayMap.KeySet) arrayMap.keySet()).iterator();
        while (true) {
            IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it3;
            if (!indexBasedArrayIterator.hasNext()) {
                break;
            }
            String str2 = (String) indexBasedArrayIterator.next();
            if (((ArrayList) arrayMap.get(str2)).size() != 1) {
                arrayList7.add(str2);
            }
        }
        arrayMap.removeAll(arrayList7);
        notificationIconContainer.mReplacingIcons = arrayMap;
        int size2 = arrayList5.size();
        for (int i5 = 0; i5 < size2; i5++) {
            notificationIconContainer.removeView((View) arrayList5.get(i5));
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((this.mIconHPadding * 2) + this.mIconSize, this.mStatusBarWindowController.mBarHeight);
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            StatusBarIconView statusBarIconView5 = (StatusBarIconView) arrayList.get(i6);
            notificationIconContainer.removeTransientView(statusBarIconView5);
            if (statusBarIconView5.getParent() == null) {
                if (z3) {
                    statusBarIconView5.mOnDismissListener = this.mUpdateStatusBarIcons;
                }
                notificationIconContainer.addView(statusBarIconView5, i6, layoutParams);
            }
        }
        notificationIconContainer.mChangingViewPositions = true;
        int min = Math.min(notificationIconContainer.getChildCount(), arrayList.size());
        for (int i7 = 0; i7 < min; i7++) {
            View childAt2 = notificationIconContainer.getChildAt(i7);
            StatusBarIconView statusBarIconView6 = (StatusBarIconView) arrayList.get(i7);
            if (childAt2 != statusBarIconView6) {
                notificationIconContainer.removeView(statusBarIconView6);
                notificationIconContainer.addView(statusBarIconView6, i7);
            }
        }
        notificationIconContainer.mChangingViewPositions = false;
        notificationIconContainer.mReplacingIcons = null;
    }

    public final void updateNotificationIcons(List list) {
        this.mNotificationEntries = list;
        SimpleStatusBarIconController simpleStatusBarIconController = this.mSimpleStatusBarIconController;
        simpleStatusBarIconController.mEntries = list;
        android.util.ArrayMap arrayMap = simpleStatusBarIconController.mNotificationEntries;
        arrayMap.clear();
        for (int i = 0; i < simpleStatusBarIconController.mEntries.size(); i++) {
            arrayMap.put(((ListEntry) simpleStatusBarIconController.mEntries.get(i)).getRepresentativeEntry().mKey, ((ListEntry) simpleStatusBarIconController.mEntries.get(i)).getRepresentativeEntry());
        }
        this.mNotificationCountController.mEntries = list;
        Trace.beginSection("NotificationIconAreaController.updateNotificationIcons");
        updateStatusBarIcons();
        NotificationIconContainer notificationIconContainer = this.mShelfIcons;
        if (notificationIconContainer != null) {
            updateIconsForLayout(new NotificationIconAreaController$$ExternalSyntheticLambda0(2), notificationIconContainer, true, true, false, false, false, false, false);
        }
        updateAodNotificationIcons();
        applyNotificationIconsTint();
        Trace.endSection();
    }

    public final void updateStatusBarIcons() {
        int i;
        boolean z;
        int i2 = this.mSimpleStatusBarSettingsValue;
        NotificationCountController notificationCountController = this.mNotificationCountController;
        if (i2 == 2 && !this.mHeadsUpShowing) {
            this.mNotificationIcons.setVisibility(8);
            TextView textView = notificationCountController.mCountIcon;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            }
            return;
        }
        int i3 = 0;
        if (i2 == 3 && !this.mHeadsUpShowing) {
            this.mNotificationIcons.setVisibility(8);
            TextView textView2 = notificationCountController.mCountIcon;
            if (textView2 != null) {
                textView2.setVisibility(8);
                ArrayList arrayList = new ArrayList();
                for (int i4 = 0; i4 < notificationCountController.mEntries.size(); i4++) {
                    arrayList.add(((ListEntry) notificationCountController.mEntries.get(i4)).getRepresentativeEntry());
                }
                Iterator it = arrayList.iterator();
                int i5 = 0;
                while (it.hasNext()) {
                    NotificationEntry notificationEntry = (NotificationEntry) it.next();
                    if (notificationEntry != null && notificationEntry.row != null && notificationCountController.mIconController.shouldShowNotificationIcon(notificationEntry, false, true, true, false, false, false)) {
                        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
                        i = 1;
                        if (expandableNotificationRow != null && expandableNotificationRow.mIsSummaryWithChildren) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            i = ((ArrayList) notificationEntry.getAttachedNotifChildren()).size();
                        }
                    } else {
                        i = 0;
                    }
                    i5 += i;
                }
                notificationCountController.mCountIcon.setText(NumberFormat.getInstance(Locale.getDefault()).format(i5));
                if (i5 > 0) {
                    notificationCountController.mCountIcon.setVisibility(0);
                    notificationCountController.updateNotificationCountLayoutParams();
                }
                notificationCountController.applyNotificationCountTint();
                return;
            }
            return;
        }
        this.mNotificationIcons.setVisibility(0);
        TextView textView3 = notificationCountController.mCountIcon;
        if (textView3 != null) {
            textView3.setVisibility(8);
        }
        updateIconsForLayout(new NotificationIconAreaController$$ExternalSyntheticLambda0(i3), this.mNotificationIcons, false, this.mShowLowPriority, true, false, false, false, true);
    }

    public final void updateTintForIcon(StatusBarIconView statusBarIconView, int i) {
        int i2;
        Boolean.TRUE.equals(statusBarIconView.getTag(R.id.icon_is_pre_L));
        boolean isGrayscale = NotificationUtils.isGrayscale(statusBarIconView, this.mContrastColorUtil);
        ArrayList arrayList = this.mTintAreas;
        if (isGrayscale) {
            i2 = DarkIconDispatcher.getTint(arrayList, statusBarIconView, i);
        } else {
            i2 = 0;
        }
        statusBarIconView.setStaticDrawableColor(i2);
        statusBarIconView.setDecorColor(i);
        int tint = DarkIconDispatcher.getTint(arrayList, statusBarIconView, this.mIconTint);
        if (tint != this.mIconTint) {
            statusBarIconView.setDecorColor(tint);
        } else {
            statusBarIconView.setDecorColor(i);
        }
    }
}
