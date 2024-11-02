package com.android.systemui.statusbar.phone;

import android.util.MathUtils;
import android.view.View;
import android.widget.TextView;
import com.android.internal.widget.ViewClippingUtil;
import com.android.systemui.R;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.CrossFadeHelper;
import com.android.systemui.statusbar.HeadsUpStatusBarView;
import com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator;
import com.android.systemui.statusbar.notification.SourceType;
import com.android.systemui.statusbar.notification.SourceType$Companion$from$1;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper;
import com.android.systemui.statusbar.notification.stack.NotificationRoundnessManager;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.policy.OnHeadsUpChangedListener;
import com.android.systemui.util.ViewController;
import java.util.ArrayList;
import java.util.Optional;
import java.util.function.BiConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HeadsUpAppearanceController extends ViewController implements OnHeadsUpChangedListener, DarkIconDispatcher.DarkReceiver, NotificationWakeUpCoordinator.WakeUpListener {
    public static final SourceType$Companion$from$1 HEADS_UP = SourceType.from("HeadsUp");
    public static final SourceType$Companion$from$1 PULSING = SourceType.from("Pulsing");
    public boolean mAnimationsEnabled;
    float mAppearFraction;
    public final KeyguardBypassController mBypassController;
    public final View mClockView;
    public final CommandQueue mCommandQueue;
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass2 mConfigurationListener;
    public final DarkIconDispatcher mDarkIconDispatcher;
    float mExpandedHeight;
    public final HeadsUpManagerPhone mHeadsUpManager;
    public final IndicatorScaleGardener mIndicatorScaleGardener;
    public final KeyguardStateController mKeyguardStateController;
    public final NotificationIconAreaController mNotificationIconAreaController;
    public final NotificationRoundnessManager mNotificationRoundnessManager;
    public final Optional mOperatorNameViewOptional;
    public final AnonymousClass1 mParentClippingParams;
    public final HeadsUpAppearanceController$$ExternalSyntheticLambda1 mSetExpandedHeight;
    public final HeadsUpAppearanceController$$ExternalSyntheticLambda0 mSetTrackingHeadsUp;
    public final ShadeViewController mShadeViewController;
    public boolean mShown;
    public final NotificationStackScrollLayoutController mStackScrollerController;
    public final StatusBarStateController mStatusBarStateController;
    public ExpandableNotificationRow mTrackedChild;
    public final NotificationWakeUpCoordinator mWakeUpCoordinator;

    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.systemui.statusbar.phone.HeadsUpAppearanceController$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.android.systemui.statusbar.phone.HeadsUpAppearanceController$1] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.android.systemui.statusbar.phone.HeadsUpAppearanceController$2] */
    public HeadsUpAppearanceController(NotificationIconAreaController notificationIconAreaController, HeadsUpManagerPhone headsUpManagerPhone, StatusBarStateController statusBarStateController, KeyguardBypassController keyguardBypassController, NotificationWakeUpCoordinator notificationWakeUpCoordinator, DarkIconDispatcher darkIconDispatcher, KeyguardStateController keyguardStateController, CommandQueue commandQueue, NotificationStackScrollLayoutController notificationStackScrollLayoutController, ShadeViewController shadeViewController, NotificationRoundnessManager notificationRoundnessManager, HeadsUpStatusBarView headsUpStatusBarView, Optional<View> optional, View view, ConfigurationController configurationController, IndicatorScaleGardener indicatorScaleGardener) {
        super(headsUpStatusBarView);
        this.mSetTrackingHeadsUp = new HeadsUpAppearanceController$$ExternalSyntheticLambda0(this, 0);
        this.mSetExpandedHeight = new BiConsumer() { // from class: com.android.systemui.statusbar.phone.HeadsUpAppearanceController$$ExternalSyntheticLambda1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                boolean z;
                HeadsUpAppearanceController headsUpAppearanceController = HeadsUpAppearanceController.this;
                float floatValue = ((Float) obj).floatValue();
                float floatValue2 = ((Float) obj2).floatValue();
                if (floatValue != headsUpAppearanceController.mExpandedHeight) {
                    z = true;
                } else {
                    z = false;
                }
                boolean isExpanded = headsUpAppearanceController.isExpanded();
                headsUpAppearanceController.mExpandedHeight = floatValue;
                headsUpAppearanceController.mAppearFraction = floatValue2;
                if (z) {
                    headsUpAppearanceController.mHeadsUpManager.getAllEntries().forEach(new HeadsUpAppearanceController$$ExternalSyntheticLambda0(headsUpAppearanceController, 3));
                }
                if (headsUpAppearanceController.isExpanded() != isExpanded) {
                    headsUpAppearanceController.updateTopEntry();
                }
            }
        };
        this.mParentClippingParams = new ViewClippingUtil.ClippingParameters(this) { // from class: com.android.systemui.statusbar.phone.HeadsUpAppearanceController.1
            public final boolean shouldFinish(View view2) {
                if (view2.getId() == R.id.status_bar) {
                    return true;
                }
                return false;
            }
        };
        this.mAnimationsEnabled = true;
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.phone.HeadsUpAppearanceController.2
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onDensityOrFontScaleChanged() {
                SourceType$Companion$from$1 sourceType$Companion$from$1 = HeadsUpAppearanceController.HEADS_UP;
                HeadsUpAppearanceController headsUpAppearanceController = HeadsUpAppearanceController.this;
                ((TextView) ((HeadsUpStatusBarView) headsUpAppearanceController.mView).findViewById(R.id.text)).setTextSize(0, headsUpAppearanceController.getResources().getDimensionPixelSize(R.dimen.heads_up_status_bar_text_size) * headsUpAppearanceController.mIndicatorScaleGardener.getLatestScaleModel(((HeadsUpStatusBarView) headsUpAppearanceController.mView).getContext()).ratio);
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onDisplayDeviceTypeChanged() {
                onDensityOrFontScaleChanged();
            }
        };
        this.mNotificationIconAreaController = notificationIconAreaController;
        this.mNotificationRoundnessManager = notificationRoundnessManager;
        this.mHeadsUpManager = headsUpManagerPhone;
        this.mTrackedChild = NotificationPanelViewController.this.mTrackedHeadsUpNotification;
        NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
        this.mAppearFraction = notificationStackScrollLayout.mLastSentAppear;
        this.mExpandedHeight = notificationStackScrollLayout.mLastSentExpandedHeight;
        this.mStackScrollerController = notificationStackScrollLayoutController;
        this.mShadeViewController = shadeViewController;
        notificationStackScrollLayoutController.mHeadsUpAppearanceController = this;
        notificationStackScrollLayout.mHeadsUpAppearanceController = this;
        this.mClockView = view;
        this.mOperatorNameViewOptional = optional;
        this.mDarkIconDispatcher = darkIconDispatcher;
        ((HeadsUpStatusBarView) this.mView).addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.systemui.statusbar.phone.HeadsUpAppearanceController.3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (HeadsUpAppearanceController.this.shouldBeVisible()) {
                    HeadsUpAppearanceController.this.updateTopEntry();
                    HeadsUpAppearanceController.this.mStackScrollerController.mView.requestLayout();
                }
                ((HeadsUpStatusBarView) HeadsUpAppearanceController.this.mView).removeOnLayoutChangeListener(this);
            }
        });
        this.mBypassController = keyguardBypassController;
        this.mStatusBarStateController = statusBarStateController;
        this.mWakeUpCoordinator = notificationWakeUpCoordinator;
        this.mCommandQueue = commandQueue;
        this.mKeyguardStateController = keyguardStateController;
        this.mConfigurationController = configurationController;
        this.mIndicatorScaleGardener = indicatorScaleGardener;
    }

    public final void hide(final View view, final int i, final HeadsUpAppearanceController$$ExternalSyntheticLambda2 headsUpAppearanceController$$ExternalSyntheticLambda2) {
        if (this.mAnimationsEnabled) {
            CrossFadeHelper.fadeOut(view, 110L, new Runnable() { // from class: com.android.systemui.statusbar.phone.HeadsUpAppearanceController$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    View view2 = view;
                    int i2 = i;
                    Runnable runnable = headsUpAppearanceController$$ExternalSyntheticLambda2;
                    view2.setVisibility(i2);
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            });
            return;
        }
        view.setVisibility(i);
        if (headsUpAppearanceController$$ExternalSyntheticLambda2 != null) {
            headsUpAppearanceController$$ExternalSyntheticLambda2.run();
        }
    }

    public final boolean isExpanded() {
        if (this.mExpandedHeight > 0.0f) {
            return true;
        }
        return false;
    }

    public boolean isShown() {
        return this.mShown;
    }

    @Override // com.android.systemui.plugins.DarkIconDispatcher.DarkReceiver
    public final void onDarkChanged(ArrayList arrayList, float f, int i) {
        HeadsUpStatusBarView headsUpStatusBarView = (HeadsUpStatusBarView) this.mView;
        headsUpStatusBarView.mTextView.setTextColor(DarkIconDispatcher.getTint(arrayList, headsUpStatusBarView, i));
    }

    @Override // com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator.WakeUpListener
    public final void onFullyHiddenChanged(boolean z) {
        updateTopEntry();
    }

    @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
    public final void onHeadsUpPinned(NotificationEntry notificationEntry) {
        updateTopEntry();
        updateHeader(notificationEntry);
        updateHeadsUpAndPulsingRoundness(notificationEntry);
    }

    @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
    public final void onHeadsUpStateChanged(NotificationEntry notificationEntry, boolean z) {
        updateHeadsUpAndPulsingRoundness(notificationEntry);
    }

    @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
    public final void onHeadsUpUnPinned(NotificationEntry notificationEntry) {
        updateTopEntry();
        updateHeader(notificationEntry);
        updateHeadsUpAndPulsingRoundness(notificationEntry);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        this.mHeadsUpManager.addListener(this);
        ((HeadsUpStatusBarView) this.mView).mOnDrawingRectChangedListener = new HeadsUpAppearanceController$$ExternalSyntheticLambda2(this, 0);
        this.mWakeUpCoordinator.wakeUpListeners.add(this);
        ShadeViewController shadeViewController = this.mShadeViewController;
        NotificationPanelViewController.this.mTrackingHeadsUpListeners.add(this.mSetTrackingHeadsUp);
        NotificationPanelViewController.this.mHeadsUpAppearanceController = this;
        this.mStackScrollerController.mView.mExpandedHeightListeners.add(this.mSetExpandedHeight);
        this.mDarkIconDispatcher.addDarkReceiver(this);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        this.mHeadsUpManager.mListeners.remove(this);
        ((HeadsUpStatusBarView) this.mView).mOnDrawingRectChangedListener = null;
        this.mWakeUpCoordinator.wakeUpListeners.remove(this);
        ShadeViewController shadeViewController = this.mShadeViewController;
        NotificationPanelViewController.this.mTrackingHeadsUpListeners.remove(this.mSetTrackingHeadsUp);
        NotificationPanelViewController.this.mHeadsUpAppearanceController = null;
        this.mStackScrollerController.mView.mExpandedHeightListeners.remove(this.mSetExpandedHeight);
        this.mDarkIconDispatcher.removeDarkReceiver(this);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
    }

    public void setAnimationsEnabled(boolean z) {
        this.mAnimationsEnabled = z;
    }

    public final void setShown(boolean z) {
        if (this.mShown != z) {
            this.mShown = z;
            int i = 1;
            Optional optional = this.mOperatorNameViewOptional;
            View view = this.mClockView;
            if (z) {
                ViewClippingUtil.setClippingDeactivated(this.mView, true, this.mParentClippingParams);
                ((HeadsUpStatusBarView) this.mView).setVisibility(0);
                show(this.mView);
                hide(view, 4, null);
                optional.ifPresent(new HeadsUpAppearanceController$$ExternalSyntheticLambda0(this, i));
            } else {
                show(view);
                optional.ifPresent(new HeadsUpAppearanceController$$ExternalSyntheticLambda0(this, 2));
                hide(this.mView, 8, new HeadsUpAppearanceController$$ExternalSyntheticLambda2(this, i));
            }
            if (this.mStatusBarStateController.getState() != 0) {
                this.mCommandQueue.recomputeDisableFlags(((HeadsUpStatusBarView) this.mView).getContext().getDisplayId(), false);
            }
        }
    }

    public final boolean shouldBeVisible() {
        boolean z;
        boolean z2 = !this.mWakeUpCoordinator.notificationsFullyHidden;
        if (!isExpanded() && z2) {
            z = true;
        } else {
            z = false;
        }
        if (this.mBypassController.getBypassEnabled() && ((this.mStatusBarStateController.getState() == 1 || ((KeyguardStateControllerImpl) this.mKeyguardStateController).mKeyguardGoingAway) && z2)) {
            z = true;
        }
        if (z && this.mHeadsUpManager.mHasPinnedNotification) {
            return true;
        }
        return false;
    }

    public final void show(View view) {
        if (this.mAnimationsEnabled) {
            CrossFadeHelper.fadeIn(view, 110L, 100);
        } else {
            view.setVisibility(0);
        }
    }

    public final void updateHeader(NotificationEntry notificationEntry) {
        float f;
        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
        if (!expandableNotificationRow.mIsPinned && !expandableNotificationRow.mHeadsupDisappearRunning && expandableNotificationRow != this.mTrackedChild && !expandableNotificationRow.showingPulsing()) {
            f = 1.0f;
        } else {
            f = this.mAppearFraction;
        }
        if (expandableNotificationRow.mHeaderVisibleAmount != f) {
            expandableNotificationRow.mHeaderVisibleAmount = f;
            for (NotificationContentView notificationContentView : expandableNotificationRow.mLayouts) {
                NotificationViewWrapper notificationViewWrapper = notificationContentView.mContractedWrapper;
                if (notificationViewWrapper != null) {
                    notificationViewWrapper.setHeaderVisibleAmount(f);
                }
                NotificationViewWrapper notificationViewWrapper2 = notificationContentView.mHeadsUpWrapper;
                if (notificationViewWrapper2 != null) {
                    notificationViewWrapper2.setHeaderVisibleAmount(f);
                }
                NotificationViewWrapper notificationViewWrapper3 = notificationContentView.mExpandedWrapper;
                if (notificationViewWrapper3 != null) {
                    notificationViewWrapper3.setHeaderVisibleAmount(f);
                }
            }
            expandableNotificationRow.notifyHeightChanged(false);
        }
    }

    public final void updateHeadsUpAndPulsingRoundness(NotificationEntry notificationEntry) {
        boolean z;
        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
        if (expandableNotificationRow == this.mTrackedChild) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = expandableNotificationRow.mIsPinned;
        SourceType$Companion$from$1 sourceType$Companion$from$1 = HEADS_UP;
        if (!z2 && !expandableNotificationRow.mHeadsupDisappearRunning && !z) {
            expandableNotificationRow.requestRoundnessReset(sourceType$Companion$from$1);
        } else {
            float saturate = MathUtils.saturate(1.0f - this.mAppearFraction);
            expandableNotificationRow.requestRoundness(saturate, saturate, sourceType$Companion$from$1);
        }
        if (this.mNotificationRoundnessManager.mRoundForPulsingViews) {
            boolean showingPulsing = expandableNotificationRow.showingPulsing();
            SourceType$Companion$from$1 sourceType$Companion$from$12 = PULSING;
            if (showingPulsing) {
                expandableNotificationRow.requestRoundness(1.0f, 1.0f, sourceType$Companion$from$12);
            } else {
                expandableNotificationRow.requestRoundnessReset(sourceType$Companion$from$12);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateTopEntry() {
        /*
            r6 = this;
            boolean r0 = r6.shouldBeVisible()
            r1 = 0
            if (r0 == 0) goto L12
            com.android.systemui.statusbar.phone.HeadsUpManagerPhone r0 = r6.mHeadsUpManager
            com.android.systemui.statusbar.policy.HeadsUpManager$HeadsUpEntry r0 = r0.getTopHeadsUpEntry()
            if (r0 == 0) goto L12
            com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = r0.mEntry
            goto L13
        L12:
            r0 = r1
        L13:
            android.view.View r2 = r6.mView
            com.android.systemui.statusbar.HeadsUpStatusBarView r2 = (com.android.systemui.statusbar.HeadsUpStatusBarView) r2
            com.android.systemui.statusbar.notification.collection.NotificationEntry r3 = r2.mShowingEntry
            r2.setEntry(r0)
            if (r0 == r3) goto L85
            r2 = 1
            r4 = 0
            if (r0 != 0) goto L2a
            r6.setShown(r4)
            boolean r3 = r6.isExpanded()
            goto L33
        L2a:
            if (r3 != 0) goto L35
            r6.setShown(r2)
            boolean r3 = r6.isExpanded()
        L33:
            r3 = r3 ^ r2
            goto L36
        L35:
            r3 = r4
        L36:
            android.view.View r5 = r6.mView
            com.android.systemui.statusbar.HeadsUpStatusBarView r5 = (com.android.systemui.statusbar.HeadsUpStatusBarView) r5
            android.graphics.Rect r5 = r5.mIconDrawingRect
            com.android.systemui.statusbar.phone.NotificationIconAreaController r6 = r6.mNotificationIconAreaController
            com.android.systemui.statusbar.phone.NotificationIconContainer r5 = r6.mNotificationIcons
            r5.getClass()
            if (r0 != 0) goto L46
            goto L4a
        L46:
            com.android.systemui.statusbar.notification.icon.IconPack r0 = r0.mIcons
            com.android.systemui.statusbar.StatusBarIconView r1 = r0.mStatusBarIcon
        L4a:
            int r0 = r6.mSimpleStatusBarSettingsValue
            r5 = 3
            if (r0 == r5) goto L6b
            r5 = 2
            if (r0 != r5) goto L53
            goto L6b
        L53:
            com.android.systemui.statusbar.phone.NotificationIconContainer r6 = r6.mNotificationIcons
            if (r3 == 0) goto L5f
            if (r1 == 0) goto L5b
            r0 = r1
            goto L5d
        L5b:
            com.android.systemui.statusbar.StatusBarIconView r0 = r6.mIsolatedIcon
        L5d:
            r6.mIsolatedIconForAnimation = r0
        L5f:
            r6.mIsolatedIcon = r1
            r6.resetViewStates()
            r6.calculateIconXTranslations()
            r6.applyIconStates()
            goto L85
        L6b:
            com.android.systemui.statusbar.phone.NotificationIconContainer r0 = r6.mNotificationIcons
            r0.mIsolatedIcon = r1
            r0.resetViewStates()
            r0.calculateIconXTranslations()
            r0.applyIconStates()
            if (r1 == 0) goto L7b
            goto L7c
        L7b:
            r2 = r4
        L7c:
            boolean r0 = r6.mHeadsUpShowing
            if (r0 == r2) goto L85
            r6.mHeadsUpShowing = r2
            r6.updateStatusBarIcons()
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.HeadsUpAppearanceController.updateTopEntry():void");
    }
}
