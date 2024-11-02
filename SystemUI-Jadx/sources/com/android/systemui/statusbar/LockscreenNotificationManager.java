package com.android.systemui.statusbar;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.widget.ImageView;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.util.ContrastColorUtil;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.NotiRune;
import com.android.systemui.facewidget.plugin.FaceWidgetContainerWrapper;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.collection.coordinator.LockScreenNotiIconCoordinator;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.cover.CoverState;
import com.samsung.android.view.SemWindowManager;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LockscreenNotificationManager implements ConfigurationController.ConfigurationListener, StatusBarStateController.StateListener, WakefulnessLifecycle.Observer, SemWindowManager.FoldStateListener {
    public int mBarState;
    public final Context mContext;
    public final KeyguardUpdateMonitorCallback mCoverCallback;
    public int mCurrentNotificationType;
    public int mCurrentOrientation;
    public UserTracker.Callback mCurrentUserTrackerCallback;
    public final LockscreenNotificationMgrHandler mHandler;
    public boolean mIsCovered;
    public boolean mIsFolded;
    public boolean mIsFolderStateOpen;
    public final boolean mIsKeyguardSupportLandscapePhone;
    public FaceWidgetContainerWrapper mKeyguardStatusBase;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public LockScreenNotiIconCoordinator mLockScreenNotificationStateListener;
    public final LockscreenNotificationManagerLogger mLogger;
    public final Uri mNotificationSettingUri;
    public int mSemDisplayDeviceType;
    public int mSettingNotificationType;
    public final AnonymousClass1 mSettingsListenerForNotificationStyle;
    public NotificationStackScrollLayout mStackScrollLayout;
    public final StatusBarStateController mStatusBarStateController;
    public final Object mLock = new Object();
    public final ArrayList mCallbacks = new ArrayList();
    public boolean mIsDetail = false;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.LockscreenNotificationManager$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements SettingsHelper.OnChangedCallback {
        public AnonymousClass1() {
        }

        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            LockscreenNotificationManager lockscreenNotificationManager = LockscreenNotificationManager.this;
            if (uri.equals(lockscreenNotificationManager.mNotificationSettingUri)) {
                lockscreenNotificationManager.mSettingNotificationType = Settings.System.getIntForUser(lockscreenNotificationManager.mContext.getContentResolver(), "lockscreen_minimizing_notification", 1, -2);
                Log.d("LockscreenNotificationManager", " setting updated : " + lockscreenNotificationManager.mSettingNotificationType);
                lockscreenNotificationManager.updateNotificationType();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.LockscreenNotificationManager$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 implements UserTracker.Callback {
        public AnonymousClass3() {
        }

        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.systemui.statusbar.LockscreenNotificationManager$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LockscreenNotificationManager lockscreenNotificationManager = LockscreenNotificationManager.this;
                    lockscreenNotificationManager.mSettingsListenerForNotificationStyle.onChanged(lockscreenNotificationManager.mNotificationSettingUri);
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
        void onNotificationInfoUpdated(ArrayList arrayList);

        void onNotificationTypeChanged(int i);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LockscreenNotificationMgrHandler extends Handler {
        public /* synthetic */ LockscreenNotificationMgrHandler(LockscreenNotificationManager lockscreenNotificationManager, Looper looper, int i) {
            this(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            int i2 = 0;
            if (i != 100) {
                if (i == 101) {
                    ArrayList arrayList = (ArrayList) message.obj;
                    LockscreenNotificationManagerLogger lockscreenNotificationManagerLogger = LockscreenNotificationManager.this.mLogger;
                    lockscreenNotificationManagerLogger.getClass();
                    StringBuffer stringBuffer = new StringBuffer();
                    int size = arrayList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        stringBuffer.append("[" + i3 + "] " + ((LockscreenNotificationInfo) arrayList.get(i3)).mKey + "\n");
                    }
                    if (lockscreenNotificationManagerLogger.DEBUG) {
                        Log.d("LockNotifManager", stringBuffer.toString());
                    }
                    LogLevel logLevel = LogLevel.INFO;
                    LockscreenNotificationManagerLogger$logNotifList$2 lockscreenNotificationManagerLogger$logNotifList$2 = new Function1() { // from class: com.android.systemui.statusbar.LockscreenNotificationManagerLogger$logNotifList$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return KeyAttributes$$ExternalSyntheticOutline0.m("NOTIF LOCK LIST ", ((LogMessage) obj).getStr1());
                        }
                    };
                    LogBuffer logBuffer = lockscreenNotificationManagerLogger.buffer;
                    LogMessage obtain = logBuffer.obtain("LockNotifManager", logLevel, lockscreenNotificationManagerLogger$logNotifList$2, null);
                    obtain.setStr1(stringBuffer.toString());
                    logBuffer.commit(obtain);
                    while (i2 < LockscreenNotificationManager.this.mCallbacks.size()) {
                        ((Callback) LockscreenNotificationManager.this.mCallbacks.get(i2)).onNotificationInfoUpdated(arrayList);
                        i2++;
                    }
                    return;
                }
                return;
            }
            while (i2 < LockscreenNotificationManager.this.mCallbacks.size()) {
                ((Callback) LockscreenNotificationManager.this.mCallbacks.get(i2)).onNotificationTypeChanged(message.arg1);
                i2++;
            }
        }

        private LockscreenNotificationMgrHandler(Looper looper) {
            super(looper);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotificationIconData {
        public int mColor;
        public final Context mContext;
        public final ArrayList mIconArray = new ArrayList();
        public int mTagFreshDrawable;
        public int mTagIsAppColor;
        public int mTagShowConversation;

        public NotificationIconData(Context context) {
            this.mContext = context;
        }

        public final void createImageViewIcon(StatusBarIconView statusBarIconView, StatusBarNotification statusBarNotification, ImageView.ScaleType scaleType) {
            int i;
            Drawable drawable;
            Drawable icon = statusBarIconView.getIcon(statusBarIconView.mIcon.clone());
            Context context = this.mContext;
            if (NotificationUtils.isGrayscale(statusBarIconView, ContrastColorUtil.getInstance(context))) {
                i = statusBarNotification.getNotification().color;
            } else {
                i = 0;
            }
            this.mColor = i;
            int i2 = statusBarNotification.getNotification().iconLevel;
            boolean z = statusBarIconView.mShowsConversation;
            ImageView imageView = new ImageView(context);
            if (icon != null) {
                drawable = icon.mutate();
            } else {
                drawable = null;
            }
            if (drawable instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                Drawable[] drawableArr = new Drawable[numberOfFrames];
                for (int i3 = 0; i3 < numberOfFrames; i3++) {
                    Drawable frame = animationDrawable.getFrame(i3);
                    if (frame != null) {
                        frame.clearColorFilter();
                        frame.setTintList(null);
                    }
                    drawableArr[i3] = frame;
                }
                drawable = new LayerDrawable(drawableArr);
                imageView.setImageDrawable(drawable);
            } else {
                if (drawable != null) {
                    drawable.clearColorFilter();
                    drawable.setTintList(null);
                }
                imageView.setImageDrawable(drawable);
                if (i2 != 0) {
                    imageView.setImageLevel(i2);
                }
            }
            imageView.setTag(this.mTagIsAppColor, Integer.valueOf(this.mColor));
            imageView.setTag(this.mTagFreshDrawable, drawable);
            imageView.setTag(this.mTagShowConversation, Boolean.valueOf(z));
            imageView.setScaleType(scaleType);
            ArrayList arrayList = this.mIconArray;
            if (!arrayList.contains(imageView)) {
                arrayList.add(imageView);
            }
        }
    }

    public LockscreenNotificationManager(Context context, StatusBarStateController statusBarStateController, SettingsHelper settingsHelper, KeyguardUpdateMonitor keyguardUpdateMonitor, LockscreenNotificationManagerLogger lockscreenNotificationManagerLogger, UserTracker userTracker, Handler handler, ConfigurationController configurationController) {
        boolean z = false;
        z = false;
        this.mHandler = new LockscreenNotificationMgrHandler(this, Looper.getMainLooper(), z ? 1 : 0);
        Uri uriFor = Settings.System.getUriFor("lockscreen_minimizing_notification");
        this.mNotificationSettingUri = uriFor;
        this.mIsCovered = false;
        this.mIsFolded = false;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mSettingsListenerForNotificationStyle = anonymousClass1;
        KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.LockscreenNotificationManager.4
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onUpdateCoverState(CoverState coverState) {
                if (coverState == null) {
                    return;
                }
                boolean z2 = !coverState.switchState;
                LockscreenNotificationManager lockscreenNotificationManager = LockscreenNotificationManager.this;
                if (lockscreenNotificationManager.mIsCovered != z2) {
                    lockscreenNotificationManager.mIsCovered = z2;
                    LockScreenNotiIconCoordinator lockScreenNotiIconCoordinator = lockscreenNotificationManager.mLockScreenNotificationStateListener;
                    if (lockScreenNotiIconCoordinator != null) {
                        lockScreenNotiIconCoordinator.mNotifFilter.invalidateList("LockScreenNotiStateChanged");
                    }
                }
            }
        };
        this.mCoverCallback = keyguardUpdateMonitorCallback;
        this.mContext = context;
        this.mStatusBarStateController = statusBarStateController;
        this.mLogger = lockscreenNotificationManagerLogger;
        if (DeviceState.shouldEnableKeyguardScreenRotation(context) && !DeviceType.isTablet()) {
            z = true;
        }
        this.mIsKeyguardSupportLandscapePhone = z;
        if (LsRune.LOCKUI_SUB_DISPLAY_LOCK) {
            ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).addObserver(new DisplayLifecycle.Observer() { // from class: com.android.systemui.statusbar.LockscreenNotificationManager.2
                @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
                public final void onFolderStateChanged(boolean z2) {
                    LockscreenNotificationManager lockscreenNotificationManager = LockscreenNotificationManager.this;
                    lockscreenNotificationManager.mIsFolderStateOpen = z2;
                    if (lockscreenNotificationManager.mStatusBarStateController.getState() == 1) {
                        lockscreenNotificationManager.updateNotificationType();
                    }
                }
            });
            this.mIsFolderStateOpen = ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened;
        }
        statusBarStateController.addCallback(this);
        ((ConfigurationControllerImpl) configurationController).addCallback(this);
        onConfigChanged(context.getResources().getConfiguration());
        settingsHelper.registerCallback(anonymousClass1, uriFor);
        anonymousClass1.onChanged(uriFor);
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        keyguardUpdateMonitor.registerCallback(keyguardUpdateMonitorCallback);
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        this.mCurrentUserTrackerCallback = anonymousClass3;
        ((UserTrackerImpl) userTracker).addCallback(anonymousClass3, new HandlerExecutor(handler));
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON || NotiRune.NOTI_SUBSCREEN_NOTIFICATION) {
            SemWindowManager.getInstance().registerFoldStateListener(this, (Handler) null);
        }
    }

    public final void addCallback(Callback callback) {
        if (this.mCallbacks.contains(callback)) {
            return;
        }
        this.mCallbacks.add(callback);
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
        boolean z;
        int i = this.mCurrentOrientation;
        int i2 = configuration.orientation;
        if (i != i2) {
            this.mCurrentOrientation = i2;
            Log.d("LockscreenNotificationManager", "Orientation updated : " + this.mCurrentOrientation);
            updateNotificationType();
        }
        int i3 = this.mSemDisplayDeviceType;
        int i4 = configuration.semDisplayDeviceType;
        if (i3 != i4) {
            this.mSemDisplayDeviceType = i4;
            RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("Fold state updated : "), this.mSemDisplayDeviceType, "LockscreenNotificationManager");
            if (this.mSemDisplayDeviceType == 5) {
                z = true;
            } else {
                z = false;
            }
            this.mIsFolded = z;
            updateNotificationType();
        }
    }

    public final void onFoldStateChanged(boolean z) {
        String str;
        LockScreenNotiIconCoordinator lockScreenNotiIconCoordinator;
        if (z) {
            str = "FOLD ";
        } else {
            str = "UNFOLD ";
        }
        Log.d("LockscreenNotificationManager", " FOLD STATE - ".concat(str));
        if (this.mIsFolded != z) {
            this.mIsFolded = z;
            if (this.mKeyguardUpdateMonitor.isLockscreenDisabled() && z && (lockScreenNotiIconCoordinator = this.mLockScreenNotificationStateListener) != null) {
                lockScreenNotiIconCoordinator.mNotifFilter.invalidateList("LockScreenNotiStateChanged");
            }
        }
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onStateChanged(int i) {
        if (this.mBarState != i) {
            this.mBarState = i;
            this.mIsDetail = false;
            Log.d("LockscreenNotificationManager", "BarState updated : " + this.mBarState);
            updateNotificationType();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0081 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateNotificationType() {
        /*
            r9 = this;
            com.android.systemui.plugins.statusbar.StatusBarStateController r0 = r9.mStatusBarStateController
            int r0 = r0.getState()
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 != r3) goto L24
            boolean r0 = r9.mIsKeyguardSupportLandscapePhone
            if (r0 == 0) goto L19
            int r0 = r9.mCurrentOrientation
            if (r0 != r1) goto L19
            boolean r0 = r9.mIsFolderStateOpen
            if (r0 != 0) goto L19
            r0 = r1
            goto L25
        L19:
            int r0 = r9.mSettingNotificationType
            if (r0 != r3) goto L24
            boolean r0 = r9.mIsDetail
            if (r0 == 0) goto L22
            goto L24
        L22:
            r0 = r3
            goto L25
        L24:
            r0 = r2
        L25:
            int r4 = r9.mCurrentNotificationType
            if (r0 == r4) goto L81
            if (r0 != 0) goto L2f
            if (r4 != r1) goto L2f
            r4 = r3
            goto L30
        L2f:
            r4 = r2
        L30:
            r9.mCurrentNotificationType = r0
            java.lang.Object r0 = r9.mLock
            monitor-enter(r0)
            com.android.systemui.statusbar.LockscreenNotificationManager$LockscreenNotificationMgrHandler r5 = r9.mHandler     // Catch: java.lang.Throwable -> L7e
            r6 = 100
            r5.removeMessages(r6)     // Catch: java.lang.Throwable -> L7e
            com.android.systemui.statusbar.LockscreenNotificationManager$LockscreenNotificationMgrHandler r5 = r9.mHandler     // Catch: java.lang.Throwable -> L7e
            int r7 = r9.mCurrentNotificationType     // Catch: java.lang.Throwable -> L7e
            r8 = 0
            android.os.Message r5 = r5.obtainMessage(r6, r7, r2, r8)     // Catch: java.lang.Throwable -> L7e
            r5.sendToTarget()     // Catch: java.lang.Throwable -> L7e
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7e
            com.android.systemui.statusbar.notification.collection.coordinator.LockScreenNotiIconCoordinator r0 = r9.mLockScreenNotificationStateListener
            if (r0 == 0) goto L54
            com.android.systemui.statusbar.notification.collection.coordinator.LockScreenNotiIconCoordinator$1 r0 = r0.mNotifFilter
            java.lang.String r5 = "LockScreenNotiStateChanged"
            r0.invalidateList(r5)
        L54:
            if (r4 == 0) goto L6e
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r0 = r9.mStackScrollLayout
            r0.updateVisibility()
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r0 = r9.mStackScrollLayout
            r0.mSpeedBumpIndexDirty = r3
            boolean r3 = r0.mIsExpanded
            if (r3 == 0) goto L6e
            boolean r3 = r0.mAnimationsEnabled
            if (r3 == 0) goto L6e
            r0.mEverythingNeedsAnimation = r2
            r0.mNeedsAnimation = r2
            r0.requestChildrenUpdate()
        L6e:
            int r9 = r9.mCurrentNotificationType
            if (r9 != r1) goto L81
            java.lang.Class<com.android.systemui.statusbar.iconsOnly.NotificationIconTransitionController> r9 = com.android.systemui.statusbar.iconsOnly.NotificationIconTransitionController.class
            java.lang.Object r9 = com.android.systemui.Dependency.get(r9)
            com.android.systemui.statusbar.iconsOnly.NotificationIconTransitionController r9 = (com.android.systemui.statusbar.iconsOnly.NotificationIconTransitionController) r9
            r9.resetTransformAnimation()
            goto L81
        L7e:
            r9 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7e
            throw r9
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.LockscreenNotificationManager.updateNotificationType():void");
    }

    public final void onTableModeChanged(boolean z) {
    }
}
