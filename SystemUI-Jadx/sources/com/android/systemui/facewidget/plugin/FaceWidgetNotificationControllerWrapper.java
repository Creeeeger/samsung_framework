package com.android.systemui.facewidget.plugin;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.facewidget.FaceWidgetNotificationController;
import com.android.systemui.media.controls.models.player.MediaAction;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.models.player.MediaDeviceData;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.pluginlock.PluginLockDataImpl;
import com.android.systemui.plugins.aod.PluginAODNotificationManager;
import com.android.systemui.plugins.keyguardstatusview.PluginFaceWidgetMediaData;
import com.android.systemui.plugins.keyguardstatusview.PluginNotificationController;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.statusbar.iconsOnly.LockscreenNotificationIconsOnlyController;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.util.SystemUIAnalytics;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWidgetNotificationControllerWrapper implements PluginNotificationController.Callback, FaceWidgetNotificationController {
    public Context mContext;
    public LockscreenNotificationIconsOnlyController mLockscreenNotificationIconsOnlyController;
    public AnonymousClass1 mMediaDataListener;
    public PluginNotificationController mNotificationController;

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final void expandToNotifications() {
        NotificationPanelViewController notificationPanelViewController;
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        if (lockscreenNotificationIconsOnlyController != null && (notificationPanelViewController = lockscreenNotificationIconsOnlyController.mNPVController) != null) {
            notificationPanelViewController.expandToNotifications();
        }
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final int getActiveNotificationSize() {
        return 0;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final List getAllNotifications() {
        return new ArrayList();
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final String getEntryKey(int i) {
        return null;
    }

    public final PluginAODNotificationManager getNotificationManager() {
        PluginNotificationController pluginNotificationController = this.mNotificationController;
        if (pluginNotificationController != null) {
            return pluginNotificationController.getNotificationManager();
        }
        return null;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final String getNotificationPackageName(int i) {
        return null;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final int getNotificationUid(int i) {
        return 0;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final int getPluginLockDataGravity() {
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        if (lockscreenNotificationIconsOnlyController != null) {
            PluginLockDataImpl pluginLockDataImpl = (PluginLockDataImpl) lockscreenNotificationIconsOnlyController.mPluginLockData;
            if (pluginLockDataImpl.mData == null) {
                return -1;
            }
            if (pluginLockDataImpl.isLandscape()) {
                return pluginLockDataImpl.mData.getNotificationData().getIconOnlyData().getGravityLand().intValue();
            }
            return pluginLockDataImpl.mData.getNotificationData().getIconOnlyData().getGravity().intValue();
        }
        return 17;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final int getPluginLockDataMarginTop() {
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        if (lockscreenNotificationIconsOnlyController != null) {
            return ((PluginLockDataImpl) lockscreenNotificationIconsOnlyController.mPluginLockData).getTop(3);
        }
        return -1;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final int getPluginLockDataPaddingEnd() {
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        if (lockscreenNotificationIconsOnlyController != null) {
            PluginLockDataImpl pluginLockDataImpl = (PluginLockDataImpl) lockscreenNotificationIconsOnlyController.mPluginLockData;
            if (pluginLockDataImpl.mData == null) {
                return -1;
            }
            if (pluginLockDataImpl.isLandscape()) {
                return pluginLockDataImpl.mData.getNotificationData().getIconOnlyData().getPaddingEndLand().intValue();
            }
            return pluginLockDataImpl.mData.getNotificationData().getIconOnlyData().getPaddingEnd().intValue();
        }
        return 0;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final int getPluginLockDataPaddingStart() {
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        if (lockscreenNotificationIconsOnlyController != null) {
            return ((PluginLockDataImpl) lockscreenNotificationIconsOnlyController.mPluginLockData).getPaddingStart(3);
        }
        return 0;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final boolean isPluginLockDataAvailable() {
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        if (lockscreenNotificationIconsOnlyController != null) {
            return ((PluginLockDataImpl) lockscreenNotificationIconsOnlyController.mPluginLockData).isAvailable();
        }
        return false;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final boolean isTransformAnimating() {
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        if (lockscreenNotificationIconsOnlyController != null) {
            return lockscreenNotificationIconsOnlyController.mNotificationIconTransitionController.misTransformAnimating;
        }
        return false;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final void onClick() {
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = lockscreenNotificationIconsOnlyController.mStackScrollLayoutController;
        if (notificationStackScrollLayoutController != null) {
            notificationStackScrollLayoutController.mProgressingShadeLockedFromNotiIcon = true;
            lockscreenNotificationIconsOnlyController.mShadeController.goToLockedShade(null, false);
        }
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final void onTouchEvent(int i) {
        LockscreenNotificationIconsOnlyController lockscreenNotificationIconsOnlyController = this.mLockscreenNotificationIconsOnlyController;
        if (lockscreenNotificationIconsOnlyController != null && lockscreenNotificationIconsOnlyController.mScreenOn) {
            if (i != 1) {
                if (i == 2) {
                    lockscreenNotificationIconsOnlyController.mStackScrollLayoutController.mProgressingShadeLockedFromNotiIcon = true;
                    lockscreenNotificationIconsOnlyController.mShadeController.goToLockedShade(null, false);
                    SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "1005", "Swipe down icon only");
                    return;
                }
                return;
            }
            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "1005", "Tap icon only");
        }
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginNotificationController.Callback
    public final void setNotificationIconsOnlyContainer() {
        this.mLockscreenNotificationIconsOnlyController.init();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.facewidget.plugin.FaceWidgetNotificationControllerWrapper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements MediaDataManager.Listener {
        public AnonymousClass1() {
        }

        @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
        public final void onMediaDataLoaded(String str, String str2, MediaData mediaData, boolean z, int i, boolean z2) {
            PluginFaceWidgetMediaData.PluginFaceWidgetMediaDeviceData pluginFaceWidgetMediaDeviceData;
            int intValue;
            int intValue2;
            Drawable drawable;
            Context context;
            Drawable loadDrawable;
            Drawable mutate;
            Drawable.ConstantState constantState;
            Drawable drawable2;
            String charSequence;
            Drawable.ConstantState constantState2;
            Drawable drawable3;
            Drawable.ConstantState constantState3;
            FaceWidgetNotificationControllerWrapper faceWidgetNotificationControllerWrapper = FaceWidgetNotificationControllerWrapper.this;
            if (faceWidgetNotificationControllerWrapper.mNotificationController != null) {
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("onMediaDataLoaded, ", str, ", ", str2, ", ");
                m.append(mediaData.toString());
                Log.d("FaceWidgetNotificationControllerWrapper", m.toString());
                PluginNotificationController pluginNotificationController = faceWidgetNotificationControllerWrapper.mNotificationController;
                ArrayList arrayList = new ArrayList();
                List<MediaAction> list = mediaData.actions;
                if (list != null && !list.isEmpty()) {
                    for (MediaAction mediaAction : list) {
                        Drawable drawable4 = mediaAction.icon;
                        if (drawable4 == null || (constantState3 = drawable4.mutate().getConstantState()) == null) {
                            drawable3 = null;
                        } else {
                            drawable3 = constantState3.newDrawable();
                        }
                        arrayList.add(new PluginFaceWidgetMediaData.PluginFaceWidgetMediaAction(drawable3, mediaAction.action, mediaAction.contentDescription));
                    }
                }
                MediaDeviceData mediaDeviceData = mediaData.device;
                if (mediaDeviceData != null) {
                    int i2 = -1;
                    Integer num = -1;
                    Drawable drawable5 = mediaDeviceData.icon;
                    if (drawable5 == null || (constantState2 = drawable5.mutate().getConstantState()) == null) {
                        drawable2 = null;
                    } else {
                        drawable2 = constantState2.newDrawable();
                    }
                    CharSequence charSequence2 = mediaDeviceData.name;
                    if (charSequence2 == null) {
                        charSequence = "";
                    } else {
                        charSequence = charSequence2.toString();
                    }
                    if (num != null) {
                        i2 = num.intValue();
                    }
                    pluginFaceWidgetMediaDeviceData = new PluginFaceWidgetMediaData.PluginFaceWidgetMediaDeviceData(mediaDeviceData.enabled, drawable2, charSequence, i2);
                } else {
                    pluginFaceWidgetMediaDeviceData = null;
                }
                Integer valueOf = Integer.valueOf(mediaData.userId);
                int i3 = 0;
                if (valueOf == null) {
                    intValue = 0;
                } else {
                    intValue = valueOf.intValue();
                }
                boolean z3 = mediaData.initialized;
                Integer num2 = 0;
                if (num2 == null) {
                    intValue2 = 0;
                } else {
                    intValue2 = num2.intValue();
                }
                Integer num3 = 0;
                if (num3 != null) {
                    i3 = num3.intValue();
                }
                int i4 = i3;
                String str3 = mediaData.app;
                Icon icon = mediaData.appIcon;
                if (icon != null && (context = faceWidgetNotificationControllerWrapper.mContext) != null && (loadDrawable = icon.loadDrawable(context)) != null && (mutate = loadDrawable.mutate()) != null && (constantState = mutate.getConstantState()) != null) {
                    drawable = constantState.newDrawable();
                } else {
                    drawable = null;
                }
                pluginNotificationController.onMediaDataLoaded(str, str2, new PluginFaceWidgetMediaData(intValue, z3, intValue2, i4, str3, drawable, mediaData.artist, mediaData.song, mediaData.artwork, arrayList, mediaData.actionsToShowInCompact, mediaData.packageName, mediaData.token, mediaData.clickIntent, pluginFaceWidgetMediaDeviceData, mediaData.active, mediaData.resumeAction, mediaData.resumption, mediaData.notificationKey, mediaData.hasCheckedForResume));
            }
        }

        @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
        public final void onMediaDataRemoved(String str) {
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onMediaDataRemoved, ", str, "FaceWidgetNotificationControllerWrapper");
            PluginNotificationController pluginNotificationController = FaceWidgetNotificationControllerWrapper.this.mNotificationController;
            if (pluginNotificationController != null) {
                pluginNotificationController.onMediaDataRemoved(str);
            }
        }

        @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
        public final void onSmartspaceMediaDataLoaded(String str, SmartspaceMediaData smartspaceMediaData) {
        }

        @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
        public final void onSmartspaceMediaDataRemoved(String str, boolean z) {
        }
    }
}
