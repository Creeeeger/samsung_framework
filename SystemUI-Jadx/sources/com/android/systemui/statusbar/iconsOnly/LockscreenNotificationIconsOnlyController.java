package com.android.systemui.statusbar.iconsOnly;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.facewidget.FaceWidgetNotificationController;
import com.android.systemui.facewidget.plugin.FaceWidgetNotificationControllerWrapper;
import com.android.systemui.facewidget.plugin.FaceWidgetPluginControllerImpl;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.lockstar.PluginLockStarManager;
import com.android.systemui.pluginlock.PluginLockData;
import com.android.systemui.pluginlock.PluginLockMediator;
import com.android.systemui.pluginlock.listener.PluginLockListener$State;
import com.android.systemui.plugins.keyguardstatusview.PluginNotificationController;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.statusbar.LockscreenNotificationInfo;
import com.android.systemui.statusbar.LockscreenNotificationManager;
import com.android.systemui.statusbar.LockscreenShadeTransitionController;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.notification.stack.AnimationProperties;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LockscreenNotificationIconsOnlyController implements LockscreenNotificationManager.Callback, PluginLockListener$State {
    public final CentralSurfaces mCentralSurfaces;
    public final Context mContext;
    public NotificationPanelViewController mNPVController;
    public final FaceWidgetNotificationControllerWrapper mNotificationControllerWrapper;
    public LockscreenNotificationManager.NotificationIconData mNotificationIconData;
    public final NotificationIconTransitionController mNotificationIconTransitionController;
    public final PluginLockData mPluginLockData;
    public final LockscreenShadeTransitionController mShadeController;
    public NotificationStackScrollLayoutController mStackScrollLayoutController;
    public LockscreenNotificationManager.NotificationIconData mSubUiNotificationIconData;
    public final LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0 mTimeComparator;
    public final AnonymousClass1 mWakefulnessObserver;
    public ArrayList mKeyguardIconArray = new ArrayList();
    public ArrayList mSubUiIconArray = new ArrayList();
    public final FaceWidgetNotificationController mFaceWidgetNotificationController = ((FaceWidgetPluginControllerImpl) Dependency.get(FaceWidgetPluginControllerImpl.class)).mNotificationManager;
    public boolean mScreenOn = false;

    static {
        new AnimationProperties();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.android.systemui.statusbar.iconsOnly.LockscreenNotificationIconsOnlyController$1, java.lang.Object] */
    public LockscreenNotificationIconsOnlyController(Context context, LockscreenShadeTransitionController lockscreenShadeTransitionController, KeyguardWallpaper keyguardWallpaper, PluginLockMediator pluginLockMediator, PluginLockData pluginLockData, NotificationIconTransitionController notificationIconTransitionController, PluginLockStarManager pluginLockStarManager, FaceWidgetNotificationControllerWrapper faceWidgetNotificationControllerWrapper, SettingsHelper settingsHelper) {
        View view;
        ?? r3 = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.statusbar.iconsOnly.LockscreenNotificationIconsOnlyController.1
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedWakingUp() {
                Log.d("LockscreenNotificationIconsOnlyController", "mWakefulnessObserver onFinishedWakingUp ");
                LockscreenNotificationIconsOnlyController.this.mScreenOn = true;
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedGoingToSleep() {
                Log.d("LockscreenNotificationIconsOnlyController", "mWakefulnessObserver onStartedGoingToSleep ");
                LockscreenNotificationIconsOnlyController.this.mScreenOn = false;
            }
        };
        this.mWakefulnessObserver = r3;
        this.mTimeComparator = new LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0();
        this.mContext = context;
        this.mShadeController = lockscreenShadeTransitionController;
        new TextView(context);
        this.mPluginLockData = pluginLockData;
        this.mNotificationControllerWrapper = faceWidgetNotificationControllerWrapper;
        this.mCentralSurfaces = (CentralSurfaces) Dependency.get(CentralSurfaces.class);
        this.mNotificationIconTransitionController = notificationIconTransitionController;
        PluginNotificationController pluginNotificationController = faceWidgetNotificationControllerWrapper.mNotificationController;
        if (pluginNotificationController != null) {
            view = pluginNotificationController.getIconContainer();
        } else {
            view = null;
        }
        notificationIconTransitionController.mIconContainer = view;
        faceWidgetNotificationControllerWrapper.mLockscreenNotificationIconsOnlyController = this;
        ((WakefulnessLifecycle) Dependency.get(WakefulnessLifecycle.class)).addObserver(r3);
    }

    public final int getNotificationIconsOnlyContainerHeight() {
        View view;
        FaceWidgetNotificationControllerWrapper faceWidgetNotificationControllerWrapper = this.mNotificationControllerWrapper;
        PluginNotificationController pluginNotificationController = faceWidgetNotificationControllerWrapper.mNotificationController;
        View view2 = null;
        if (pluginNotificationController != null) {
            view = pluginNotificationController.getIconContainer();
        } else {
            view = null;
        }
        if (view != null) {
            PluginNotificationController pluginNotificationController2 = faceWidgetNotificationControllerWrapper.mNotificationController;
            if (pluginNotificationController2 != null) {
                view2 = pluginNotificationController2.getIconContainer();
            }
            return view2.getHeight();
        }
        return 0;
    }

    public final void init() {
        View view;
        FaceWidgetNotificationController faceWidgetNotificationController = this.mFaceWidgetNotificationController;
        if (faceWidgetNotificationController != null) {
            FaceWidgetNotificationControllerWrapper faceWidgetNotificationControllerWrapper = (FaceWidgetNotificationControllerWrapper) faceWidgetNotificationController;
            if (faceWidgetNotificationControllerWrapper.getNotificationManager() != null) {
                faceWidgetNotificationControllerWrapper.getNotificationManager().setTagId(R.id.tag_fresh_drawable, R.id.tag_shows_conversation);
            }
        }
        PluginNotificationController pluginNotificationController = this.mNotificationControllerWrapper.mNotificationController;
        if (pluginNotificationController != null) {
            view = pluginNotificationController.getIconContainer();
        } else {
            view = null;
        }
        this.mNotificationIconTransitionController.mIconContainer = view;
        CentralSurfaces centralSurfaces = this.mCentralSurfaces;
        if (centralSurfaces != null) {
            CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) centralSurfaces;
            if (centralSurfacesImpl.getShadeViewController() != null) {
                this.mStackScrollLayoutController = ((NotificationPanelViewController) centralSurfacesImpl.getShadeViewController()).mNotificationStackScrollLayoutController;
            }
        }
    }

    public final boolean isIconsOnlyInterceptTouchEvent(MotionEvent motionEvent) {
        PluginNotificationController pluginNotificationController = this.mNotificationControllerWrapper.mNotificationController;
        if (pluginNotificationController != null) {
            return pluginNotificationController.isIconsOnlyInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.LockscreenNotificationManager.Callback
    public final void onNotificationInfoUpdated(ArrayList arrayList) {
        boolean z = LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY;
        int i = 0;
        Context context = this.mContext;
        FaceWidgetNotificationController faceWidgetNotificationController = this.mFaceWidgetNotificationController;
        if (z && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            if (this.mSubUiNotificationIconData == null) {
                this.mSubUiNotificationIconData = new LockscreenNotificationManager.NotificationIconData(context);
            }
            if (this.mSubUiIconArray == null) {
                this.mSubUiIconArray = new ArrayList();
            }
            if (this.mSubUiIconArray.size() > 0) {
                this.mSubUiIconArray.clear();
            }
            LockscreenNotificationManager.NotificationIconData notificationIconData = this.mSubUiNotificationIconData;
            notificationIconData.mTagFreshDrawable = R.id.tag_fresh_drawable;
            notificationIconData.mTagIsAppColor = R.id.tag_is_appcolor;
            notificationIconData.mTagShowConversation = R.id.tag_shows_conversation;
            if (notificationIconData.mIconArray.size() > 0) {
                this.mSubUiNotificationIconData.mIconArray.clear();
            }
            List list = (List) arrayList.stream().sorted(this.mTimeComparator).collect(Collectors.toList());
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (faceWidgetNotificationController != null) {
                    ((LockscreenNotificationInfo) list.get(i2)).getClass();
                }
                StatusBarIconView statusBarIconView = ((LockscreenNotificationInfo) list.get(i2)).mStatusBarIcon;
                StatusBarNotification statusBarNotification = ((LockscreenNotificationInfo) list.get(i2)).mSbn;
                String str = ((LockscreenNotificationInfo) list.get(i2)).mKey;
                this.mSubUiNotificationIconData.getClass();
                this.mSubUiNotificationIconData.createImageViewIcon(statusBarIconView, statusBarNotification, ImageView.ScaleType.FIT_CENTER);
            }
            while (i < this.mSubUiNotificationIconData.mIconArray.size()) {
                ImageView imageView = new ImageView(context);
                if (((Drawable) ((ImageView) this.mSubUiNotificationIconData.mIconArray.get(i)).getTag(R.id.tag_fresh_drawable)) != null) {
                    imageView.setImageDrawable(((ImageView) this.mSubUiNotificationIconData.mIconArray.get(i)).getDrawable());
                    imageView.setTag(R.id.tag_fresh_drawable, ((ImageView) this.mSubUiNotificationIconData.mIconArray.get(i)).getDrawable());
                    imageView.setTag(R.id.tag_shows_conversation, ((ImageView) this.mSubUiNotificationIconData.mIconArray.get(i)).getTag(R.id.tag_shows_conversation));
                    this.mSubUiIconArray.add(imageView);
                }
                i++;
            }
            if (faceWidgetNotificationController != null) {
                try {
                    if (((FaceWidgetNotificationControllerWrapper) faceWidgetNotificationController).getNotificationManager() != null) {
                        ((FaceWidgetNotificationControllerWrapper) faceWidgetNotificationController).getNotificationManager().subLauncherUpdateNotification(this.mSubUiIconArray);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    Log.e("LockscreenNotificationIconsOnlyController", "PluginSubScreen updateNotification error!!\n" + Log.getStackTraceString(th));
                    return;
                }
            }
            return;
        }
        if (this.mNotificationIconData == null) {
            this.mNotificationIconData = new LockscreenNotificationManager.NotificationIconData(context);
        }
        if (this.mKeyguardIconArray == null) {
            this.mKeyguardIconArray = new ArrayList();
        }
        if (this.mKeyguardIconArray.size() > 0) {
            this.mKeyguardIconArray.clear();
        }
        LockscreenNotificationManager.NotificationIconData notificationIconData2 = this.mNotificationIconData;
        notificationIconData2.mTagFreshDrawable = R.id.tag_fresh_drawable;
        notificationIconData2.mTagIsAppColor = R.id.tag_is_appcolor;
        notificationIconData2.mTagShowConversation = R.id.tag_shows_conversation;
        if (notificationIconData2.mIconArray.size() > 0) {
            this.mNotificationIconData.mIconArray.clear();
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if (faceWidgetNotificationController != null) {
                ((LockscreenNotificationInfo) arrayList.get(i3)).getClass();
            }
            StatusBarIconView statusBarIconView2 = ((LockscreenNotificationInfo) arrayList.get(i3)).mStatusBarIcon;
            StatusBarNotification statusBarNotification2 = ((LockscreenNotificationInfo) arrayList.get(i3)).mSbn;
            String str2 = ((LockscreenNotificationInfo) arrayList.get(i3)).mKey;
            this.mNotificationIconData.getClass();
            this.mNotificationIconData.createImageViewIcon(statusBarIconView2, statusBarNotification2, ImageView.ScaleType.FIT_CENTER);
        }
        while (i < this.mNotificationIconData.mIconArray.size()) {
            ImageView imageView2 = new ImageView(context);
            if (((Drawable) ((ImageView) this.mNotificationIconData.mIconArray.get(i)).getTag(R.id.tag_fresh_drawable)) != null) {
                imageView2.setImageDrawable(((ImageView) this.mNotificationIconData.mIconArray.get(i)).getDrawable());
                imageView2.setTag(R.id.tag_fresh_drawable, ((ImageView) this.mNotificationIconData.mIconArray.get(i)).getDrawable());
                imageView2.setTag(R.id.tag_shows_conversation, ((ImageView) this.mNotificationIconData.mIconArray.get(i)).getTag(R.id.tag_shows_conversation));
                this.mKeyguardIconArray.add(imageView2);
            }
            i++;
        }
        if (faceWidgetNotificationController != null) {
            try {
                if (((FaceWidgetNotificationControllerWrapper) faceWidgetNotificationController).getNotificationManager() != null) {
                    ((FaceWidgetNotificationControllerWrapper) faceWidgetNotificationController).getNotificationManager().updateNotification(this.mKeyguardIconArray);
                }
            } catch (Throwable th2) {
                Log.e("LockscreenNotificationIconsOnlyController", "PluginSubScreen updateNotification error!!\n" + Log.getStackTraceString(th2));
            }
        }
    }

    @Override // com.android.systemui.statusbar.LockscreenNotificationManager.Callback
    public final void onNotificationTypeChanged(int i) {
        FaceWidgetNotificationController faceWidgetNotificationController = this.mFaceWidgetNotificationController;
        if (faceWidgetNotificationController != null) {
            try {
                if (((FaceWidgetNotificationControllerWrapper) faceWidgetNotificationController).getNotificationManager() != null) {
                    ((FaceWidgetNotificationControllerWrapper) faceWidgetNotificationController).getNotificationManager().lockscreenNotificationTypeChanged(i);
                }
            } catch (Throwable th) {
                Log.e("LockscreenNotificationIconsOnlyController", "PluginSubScreen updateNotification error!!\n" + Log.getStackTraceString(th));
            }
        }
    }
}
