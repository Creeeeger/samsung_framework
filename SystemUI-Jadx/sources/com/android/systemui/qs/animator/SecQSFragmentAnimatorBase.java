package com.android.systemui.qs.animator;

import android.content.res.Configuration;
import com.android.systemui.R;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.qs.SecQSPanel;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import java.util.ArrayList;
import java.util.function.BooleanSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SecQSFragmentAnimatorBase implements ShadeExpansionListener, PanelScreenShotLogger.LogProvider {
    public int mAssetSeq;
    public BooleanSupplier mExpandImmediateSupplier;
    public NotificationPanelViewController mPanelViewController;
    public QS mQs;
    public NotificationStackScrollLayoutController mStackScrollerController;
    public int mState;
    public int mThemeSeq;
    public int mUIMode;
    public boolean mQsExpanded = false;
    public boolean mQsFullyExpanded = false;
    public boolean mPanelExpanded = false;
    public boolean mAnimatorsInitialiezed = false;
    public boolean mIsDetailOpening = false;
    public boolean mIsDetailShowing = false;
    public boolean mIsDetailClosing = false;
    public boolean mDetailTriggeredExpand = false;
    public boolean mExpandedByNotiOverScroll = false;

    public abstract void destroyQSViews();

    public ArrayList gatherState() {
        return null;
    }

    public final boolean isDetailVisible() {
        if (!this.mIsDetailOpening && !this.mIsDetailShowing && !this.mIsDetailClosing) {
            return false;
        }
        return true;
    }

    public boolean isThereNoView() {
        SecQSPanel secQSPanel;
        QS qs = this.mQs;
        if (qs == null || qs.getView() == null || (secQSPanel = (SecQSPanel) this.mQs.getView().findViewById(R.id.quick_settings_panel)) == null || !secQSPanel.isAttachedToWindow() || secQSPanel.findViewById(R.id.qs_pager) == null) {
            return true;
        }
        return false;
    }

    public void onPanelClosed() {
        this.mPanelExpanded = false;
    }

    public void onStateChanged(int i) {
        this.mState = i;
    }

    public void setExpandImmediateSupplier(BooleanSupplier booleanSupplier) {
        this.mExpandImmediateSupplier = booleanSupplier;
    }

    public void setFullyExpanded(boolean z) {
        this.mQsFullyExpanded = z;
    }

    public void setNotificationStackScrollerController(NotificationStackScrollLayoutController notificationStackScrollLayoutController) {
        this.mStackScrollerController = notificationStackScrollLayoutController;
    }

    public void setPanelViewController(NotificationPanelViewController notificationPanelViewController) {
        this.mPanelViewController = notificationPanelViewController;
    }

    public abstract void setQs(QS qs);

    public void setQsExpanded(boolean z) {
        this.mQsExpanded = z;
    }

    public void setStackScrollerOverscrolling(boolean z) {
        this.mExpandedByNotiOverScroll = z;
    }

    public abstract void updateAnimators();

    public void updatePanelExpanded(boolean z) {
        this.mPanelExpanded = z;
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.android.systemui.shade.ShadeExpansionListener
    public void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
    }

    public void setQsExpansionPosition(float f) {
    }

    public void onRtlChanged() {
    }

    public void setFancyClipping(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
    }
}
