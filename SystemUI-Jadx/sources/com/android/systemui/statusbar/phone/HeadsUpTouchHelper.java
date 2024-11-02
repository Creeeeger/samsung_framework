package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HeadsUpTouchHelper implements Gefingerpoken {
    public final Callback mCallback;
    public boolean mCollapseSnoozes;
    public final HeadsUpManagerPhone mHeadsUpManager;
    public float mInitialTouchX;
    public float mInitialTouchY;
    public final HeadsUpNotificationViewController mPanel;
    public ExpandableNotificationRow mPickedChild;
    public final float mTouchSlop;
    public boolean mTouchingHeadsUpView;
    public boolean mTrackingHeadsUp;
    public int mTrackingPointer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface HeadsUpNotificationViewController {
    }

    public HeadsUpTouchHelper(HeadsUpManagerPhone headsUpManagerPhone, Callback callback, HeadsUpNotificationViewController headsUpNotificationViewController) {
        Context context;
        this.mHeadsUpManager = headsUpManagerPhone;
        this.mCallback = callback;
        this.mPanel = headsUpNotificationViewController;
        context = ((ViewGroup) NotificationStackScrollLayout.this).mContext;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public final void endMotion$1() {
        this.mTrackingPointer = -1;
        this.mPickedChild = null;
        this.mTouchingHeadsUpView = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ea  */
    @Override // com.android.systemui.Gefingerpoken
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.HeadsUpTouchHelper.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.systemui.Gefingerpoken
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mTrackingHeadsUp) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            endMotion$1();
            setTrackingHeadsUp(false);
        }
        return true;
    }

    public final void setTrackingHeadsUp(boolean z) {
        ExpandableNotificationRow expandableNotificationRow;
        this.mTrackingHeadsUp = z;
        this.mHeadsUpManager.mTrackingHeadsUp = z;
        if (z) {
            expandableNotificationRow = this.mPickedChild;
        } else {
            expandableNotificationRow = null;
        }
        NotificationPanelViewController.HeadsUpNotificationViewControllerImpl headsUpNotificationViewControllerImpl = (NotificationPanelViewController.HeadsUpNotificationViewControllerImpl) this.mPanel;
        if (expandableNotificationRow != null) {
            NotificationPanelViewController notificationPanelViewController = NotificationPanelViewController.this;
            NotificationPanelViewController notificationPanelViewController2 = NotificationPanelViewController.this;
            notificationPanelViewController2.mTrackedHeadsUpNotification = expandableNotificationRow;
            int i = 0;
            while (true) {
                ArrayList arrayList = notificationPanelViewController2.mTrackingHeadsUpListeners;
                if (i < arrayList.size()) {
                    ((Consumer) arrayList.get(i)).accept(expandableNotificationRow);
                    i++;
                } else {
                    notificationPanelViewController.mExpandingFromHeadsUp = true;
                    return;
                }
            }
        } else {
            headsUpNotificationViewControllerImpl.getClass();
        }
    }
}
