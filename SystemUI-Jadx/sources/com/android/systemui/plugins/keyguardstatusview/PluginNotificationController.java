package com.android.systemui.plugins.keyguardstatusview;

import android.graphics.Point;
import android.service.notification.StatusBarNotification;
import android.view.MotionEvent;
import android.view.View;
import com.android.systemui.plugins.annotations.SupportVersionChecker;
import com.android.systemui.plugins.annotations.VersionCheck;
import com.android.systemui.plugins.aod.PluginAODNotificationManager;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@SupportVersionChecker
/* loaded from: classes2.dex */
public interface PluginNotificationController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
        @VersionCheck(version = 2010)
        void expandToNotifications();

        int getActiveNotificationSize();

        @VersionCheck(version = 1026)
        List<StatusBarNotification> getAllNotifications();

        String getEntryKey(int i);

        String getNotificationPackageName(int i);

        int getNotificationUid(int i);

        @VersionCheck(version = VolteConstants.ErrorCode.CALL_FORBIDDEN)
        int getPluginLockDataGravity();

        @VersionCheck(version = VolteConstants.ErrorCode.MAKECALL_REG_FAILURE_GENERAL)
        int getPluginLockDataMarginTop();

        @VersionCheck(version = VolteConstants.ErrorCode.CALL_FORBIDDEN)
        int getPluginLockDataPaddingEnd();

        @VersionCheck(version = VolteConstants.ErrorCode.CALL_FORBIDDEN)
        int getPluginLockDataPaddingStart();

        @VersionCheck(version = VolteConstants.ErrorCode.CALL_FORBIDDEN)
        boolean isPluginLockDataAvailable();

        @VersionCheck(version = 1050)
        boolean isTransformAnimating();

        @VersionCheck(version = 1050)
        void onClick();

        @VersionCheck(version = 1050)
        void onTouchEvent(int i);

        @VersionCheck(version = 1050)
        void setNotificationIconsOnlyContainer();
    }

    void addFaceWidgetMusicNotification(String str);

    @VersionCheck(version = 1050)
    void calculateAlphaByQsExpansion(float f, boolean z, int i, int i2);

    @VersionCheck(version = 1050)
    View getIconContainer();

    @VersionCheck(version = 1050)
    PluginAODNotificationManager getNotificationManager();

    void init(Consumer<Void> consumer);

    boolean isFaceWidgetMusicNotification(String str);

    @VersionCheck(version = 1050)
    boolean isIconsOnlyInterceptTouchEvent(MotionEvent motionEvent);

    @VersionCheck(version = 1050)
    boolean isIconsOnlyTouchEvent(MotionEvent motionEvent);

    boolean isMusicFaceWidgetOn();

    @VersionCheck(version = 1018)
    void onMediaDataLoaded(String str, String str2, PluginFaceWidgetMediaData pluginFaceWidgetMediaData);

    @VersionCheck(version = 1018)
    void onMediaDataRemoved(String str);

    void removeFaceWidgetMusicNotification(String str);

    boolean updateFaceWidgetMusicNotificationKey();

    void updateFaceWidgetMusicNotificationPkg(String str);

    @VersionCheck(version = 1050)
    Point updateNotificationIconsOnlyPosition();
}
