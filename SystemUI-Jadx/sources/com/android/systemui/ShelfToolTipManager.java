package com.android.systemui;

import android.content.Context;
import android.widget.LinearLayout;
import com.android.systemui.BootAnimationFinishedCache;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.SecPanelExpansionStateNotifier;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.shade.ShadeQsExpansionListener;
import com.android.systemui.statusbar.NotificationShelf;
import com.android.systemui.statusbar.NotificationShelfManager;
import com.android.systemui.statusbar.notification.stack.AmbientState;
import com.samsung.android.widget.SemTipPopup;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ShelfToolTipManager {
    public boolean alreadyToolTipShown;
    public boolean isFullyExpanded;
    public boolean isTappedNotiSettings;
    public final AmbientState mAmbientState;
    public final Context mContext;
    public boolean mIsQsExpanded;
    public boolean mJustBeginToOpen;
    public final LinearLayout mNotiSettingContainer;
    public SemTipPopup mNotiSettingTip;
    public final NotificationShelf mNotificationShelf;
    public final StatusBarStateController mStatusBarStateController;
    public final SecPanelExpansionStateNotifier panelExpansionStateNotifier;
    public final ShadeExpansionStateManager shadeExpansionStateManager;
    public final int THRESHOLD_COUNT = 200;
    public int panelExpandedCount = -1;
    public final int[] buttonLocation = new int[2];

    public ShelfToolTipManager(Context context, NotificationShelfManager notificationShelfManager, AmbientState ambientState, ShadeExpansionStateManager shadeExpansionStateManager, SecPanelExpansionStateNotifier secPanelExpansionStateNotifier, BootAnimationFinishedCache bootAnimationFinishedCache, StatusBarStateController statusBarStateController) {
        LinearLayout linearLayout;
        this.mContext = context;
        this.mAmbientState = ambientState;
        this.shadeExpansionStateManager = shadeExpansionStateManager;
        this.panelExpansionStateNotifier = secPanelExpansionStateNotifier;
        this.mStatusBarStateController = statusBarStateController;
        BootAnimationFinishedCache.BootAnimationFinishedListener bootAnimationFinishedListener = new BootAnimationFinishedCache.BootAnimationFinishedListener() { // from class: com.android.systemui.ShelfToolTipManager$bootAnimationFinishedListener$1
            @Override // com.android.systemui.BootAnimationFinishedCache.BootAnimationFinishedListener
            public final void onBootAnimationFinished() {
                final ShelfToolTipManager shelfToolTipManager = ShelfToolTipManager.this;
                shelfToolTipManager.mStatusBarStateController.addCallback(new StatusBarStateController.StateListener() { // from class: com.android.systemui.ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$1
                    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
                    public final void onStateChanged(int i) {
                        if (i == 1) {
                            ShelfToolTipManager.this.releaseToolTip();
                        }
                    }
                });
                shelfToolTipManager.panelExpansionStateNotifier.registerTicket(new SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket() { // from class: com.android.systemui.ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$2
                    @Override // com.android.systemui.shade.SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket
                    public final String getName() {
                        return "ShelfToolTipManager";
                    }

                    @Override // com.android.systemui.shade.SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket
                    public final void onSecPanelExpansionStateChanged(int i, boolean z) {
                        boolean z2;
                        ShelfToolTipManager shelfToolTipManager2 = ShelfToolTipManager.this;
                        if (shelfToolTipManager2.mStatusBarStateController.getState() == 1) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (!z2 && z) {
                            int i2 = shelfToolTipManager2.panelExpandedCount;
                            if (i2 < shelfToolTipManager2.THRESHOLD_COUNT) {
                                shelfToolTipManager2.panelExpandedCount = i2 + 1;
                            }
                            shelfToolTipManager2.mJustBeginToOpen = true;
                        }
                    }
                });
                shelfToolTipManager.shadeExpansionStateManager.addExpansionListener(new ShadeExpansionListener() { // from class: com.android.systemui.ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$3
                    @Override // com.android.systemui.shade.ShadeExpansionListener
                    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
                        boolean z;
                        if (shadeExpansionChangeEvent.fraction == 1.0f) {
                            z = true;
                        } else {
                            z = false;
                        }
                        ShelfToolTipManager shelfToolTipManager2 = ShelfToolTipManager.this;
                        if (shelfToolTipManager2.isFullyExpanded != z) {
                            shelfToolTipManager2.isFullyExpanded = z;
                            if (!z) {
                                shelfToolTipManager2.releaseToolTip();
                            }
                            if (shelfToolTipManager2.mJustBeginToOpen && !z) {
                                shelfToolTipManager2.mJustBeginToOpen = false;
                            }
                        }
                    }
                });
                shelfToolTipManager.shadeExpansionStateManager.addQsExpansionListener(new ShadeQsExpansionListener() { // from class: com.android.systemui.ShelfToolTipManager$bootAnimationFinishedListener$1$onBootAnimationFinished$4
                    @Override // com.android.systemui.shade.ShadeQsExpansionListener
                    public final void onQsExpansionChanged(boolean z) {
                        ShelfToolTipManager shelfToolTipManager2 = ShelfToolTipManager.this;
                        if (shelfToolTipManager2.mIsQsExpanded != z) {
                            shelfToolTipManager2.mIsQsExpanded = z;
                            if (z) {
                                shelfToolTipManager2.releaseToolTip();
                            }
                        }
                    }
                });
            }
        };
        releaseToolTip();
        this.alreadyToolTipShown = Prefs.getBoolean(context, "NotificationSettingsToolTipShown", false);
        NotificationShelf notificationShelf = notificationShelfManager.shelf;
        this.mNotificationShelf = notificationShelf;
        if (notificationShelf != null) {
            linearLayout = (LinearLayout) notificationShelf.findViewById(R.id.noti_setting_container);
        } else {
            linearLayout = null;
        }
        this.mNotiSettingContainer = linearLayout;
        ((BootAnimationFinishedCacheImpl) bootAnimationFinishedCache).addListener(bootAnimationFinishedListener);
    }

    public final void calculatePosition() {
        LinearLayout linearLayout = this.mNotiSettingContainer;
        if (linearLayout != null && this.mNotiSettingTip != null) {
            Intrinsics.checkNotNull(linearLayout);
            int[] iArr = this.buttonLocation;
            linearLayout.getLocationOnScreen(iArr);
            SemTipPopup semTipPopup = this.mNotiSettingTip;
            Intrinsics.checkNotNull(semTipPopup);
            int i = iArr[0];
            Intrinsics.checkNotNull(linearLayout);
            semTipPopup.setTargetPosition((linearLayout.getWidth() / 2) + i, this.mContext.getResources().getDimensionPixelSize(R.dimen.notification_shelf_tooltip_bottom) + iArr[1]);
        }
    }

    public final boolean hasBottomClippedNotiRow() {
        NotificationShelf notificationShelf = this.mNotificationShelf;
        if (notificationShelf == null) {
            return false;
        }
        Intrinsics.checkNotNull(notificationShelf);
        int translationY = (int) notificationShelf.getTranslationY();
        Intrinsics.checkNotNull(notificationShelf);
        if (notificationShelf.getHeight() + translationY != this.mAmbientState.mLayoutMaxHeight) {
            return false;
        }
        return true;
    }

    public final void releaseToolTip() {
        SemTipPopup semTipPopup = this.mNotiSettingTip;
        if (semTipPopup != null && semTipPopup != null) {
            semTipPopup.dismiss(true);
        }
    }
}
