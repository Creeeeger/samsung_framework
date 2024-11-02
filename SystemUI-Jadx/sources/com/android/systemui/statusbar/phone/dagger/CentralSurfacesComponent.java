package com.android.systemui.statusbar.phone.dagger;

import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.NotificationShadeWindowView;
import com.android.systemui.shade.NotificationShadeWindowViewController;
import com.android.systemui.shade.QuickSettingsController;
import com.android.systemui.statusbar.NotificationPresenter;
import com.android.systemui.statusbar.NotificationShelfController;
import com.android.systemui.statusbar.notification.NotificationActivityStarter;
import com.android.systemui.statusbar.notification.collection.inflation.NotificationRowBinderImpl;
import com.android.systemui.statusbar.notification.stack.NotificationListContainer;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.CapturedBlurContainerController;
import com.android.systemui.statusbar.phone.CentralSurfacesCommandQueueCallbacks;
import com.android.systemui.statusbar.phone.SecPanelBackgroundController;
import com.android.systemui.statusbar.phone.StatusBarHeadsUpChangeListener;
import com.android.systemui.statusbar.phone.fragment.CollapsedStatusBarFragment;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface CentralSurfacesComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        CentralSurfacesComponent create();
    }

    CollapsedStatusBarFragment createCollapsedStatusBarFragment();

    NotificationRowBinderImpl.BindRowCallback getBindRowCallback();

    CapturedBlurContainerController getCapturedBlurContainerController();

    CentralSurfacesCommandQueueCallbacks getCentralSurfacesCommandQueueCallbacks();

    NotificationActivityStarter getNotificationActivityStarter();

    NotificationListContainer getNotificationListContainer();

    NotificationPanelViewController getNotificationPanelViewController();

    NotificationPresenter getNotificationPresenter();

    NotificationShadeWindowView getNotificationShadeWindowView();

    NotificationShadeWindowViewController getNotificationShadeWindowViewController();

    NotificationShelfController getNotificationShelfController();

    NotificationStackScrollLayoutController getNotificationStackScrollLayoutController();

    QuickSettingsController getQuickSettingsController();

    SecPanelBackgroundController getSecPanelBackgroundController();

    StatusBarHeadsUpChangeListener getStatusBarHeadsUpChangeListener();
}
