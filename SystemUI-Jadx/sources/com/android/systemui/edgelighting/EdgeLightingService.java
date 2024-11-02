package com.android.systemui.edgelighting;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Slog;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.edgelighting.EdgeLightingService;
import com.android.systemui.edgelighting.data.EdgeLightingSettingItem;
import com.android.systemui.edgelighting.device.EdgeLightingCoverManager;
import com.android.systemui.edgelighting.effect.container.EdgeLightingDialog;
import com.android.systemui.edgelighting.effect.container.NotificationEffect;
import com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback;
import com.android.systemui.edgelighting.effectservice.EdgeLightingDispatcher;
import com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener;
import com.android.systemui.edgelighting.manager.ContextStatusLoggingManager;
import com.android.systemui.edgelighting.manager.EdgeLightingPolicyManager;
import com.android.systemui.edgelighting.manager.EdgeLightingSettingManager;
import com.android.systemui.edgelighting.manager.EdgeLightingSettingsObserver;
import com.android.systemui.edgelighting.scheduler.ApplicationLightingScheduler;
import com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler;
import com.android.systemui.edgelighting.scheduler.EdgeLightingScreenStatus;
import com.android.systemui.edgelighting.scheduler.LightingScheduleInfo;
import com.android.systemui.edgelighting.scheduler.NotificationLightingScheduler;
import com.android.systemui.edgelighting.turnover.CallStateObserver;
import com.android.systemui.edgelighting.turnover.TurnOverEdgeLighting;
import com.android.systemui.edgelighting.utils.AppIconCache;
import com.android.systemui.edgelighting.utils.DrawableUtils;
import com.android.systemui.edgelighting.utils.EdgeLightingAnalytics;
import com.android.systemui.edgelighting.utils.EdgeLightingSettingUtils;
import com.android.systemui.edgelighting.utils.Utils;
import com.android.systemui.shade.SecHideInformationMirroringModel;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.edge.OnEdgeLightingCallback;
import com.samsung.android.edge.SemEdgeLightingInfo;
import com.samsung.android.edge.SemEdgeManager;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.knox.ucm.configurator.UniversalCredentialManager;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.sdk.SsdkUnsupportedException;
import com.samsung.android.sdk.cover.ScoverManager;
import com.samsung.android.sdk.cover.ScoverState;
import com.samsung.android.view.SemWindowManager;
import com.sec.ims.presence.ServiceTuple;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class EdgeLightingService extends Service {
    public static boolean sConfigured;
    public static int sFlipFont;
    public AppIconCache mAppIconCache;
    public AudioManager mAudioManager;
    public ISystemUIConditionListener mConditionListener;
    public final AnonymousClass8 mConnection;
    public final AnonymousClass9 mDBObserver;
    public DevicePolicyManager mDevicePolicyManager;
    public EdgeLightingDispatcher mDispatcher;
    public final AnonymousClass2 mEdgeLightingObserver;
    public SemEdgeManager mEdgeManager;
    public AnonymousClass6 mFoldStateListener;
    public final MainHandler mHandler;
    public boolean mIsColorThemeEnabled;
    public final AnonymousClass1 mKillBot;
    public final AnonymousClass3 mOnEdgeLightingCallback;
    public PowerManager mPowerManager;
    public EdgeLightingScheduler mScheduler;
    public boolean mShouldKillMyself;
    public boolean mShouldShowAppIcon;
    public StatusbarStateReceiver mStatusBarReceiver;
    public final IBinder mForegroundToken = new Binder();
    public AnonymousClass7 mCoverStateListener = null;
    public boolean mIsStarted = false;
    public int mCondition = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.EdgeLightingService$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            EdgeLightingService edgeLightingService = EdgeLightingService.this;
            if (edgeLightingService.mShouldKillMyself) {
                edgeLightingService.stopEdgeLightingService();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.EdgeLightingService$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements OnEdgeLightingCallback {
        public AnonymousClass3() {
        }

        public final void onScreenChanged(boolean z) {
            boolean z2;
            if (z) {
                EdgeLightingScheduler edgeLightingScheduler = EdgeLightingService.this.mScheduler;
                if (edgeLightingScheduler != null) {
                    edgeLightingScheduler.notifyScreenOn();
                }
                EdgeLightingDispatcher edgeLightingDispatcher = EdgeLightingService.this.mDispatcher;
                if (edgeLightingDispatcher != null) {
                    EdgeLightingDialog edgeLightingDialog = edgeLightingDispatcher.mDialog;
                    if (edgeLightingDialog != null) {
                        z2 = edgeLightingDialog.isShowing();
                    } else {
                        z2 = edgeLightingDispatcher.mEffectServiceConrtroller.mStarting;
                    }
                    if (z2) {
                        EdgeLightingService.this.mDispatcher.refreshBackground();
                        return;
                    }
                    return;
                }
                return;
            }
            EdgeLightingScheduler edgeLightingScheduler2 = EdgeLightingService.this.mScheduler;
            if (edgeLightingScheduler2 != null) {
                edgeLightingScheduler2.notifyScreenOff();
            }
        }

        public final void onStartEdgeLighting(String str, SemEdgeLightingInfo semEdgeLightingInfo, int i) {
            EdgeLightingService.this.mHandler.post(new EdgeLightingService$$ExternalSyntheticLambda0(this, str, semEdgeLightingInfo, i, 1));
            EdgeLightingService.this.mHandler.removeMessages(1);
            EdgeLightingService.this.mShouldKillMyself = false;
        }

        public final void onStopEdgeLighting(String str, int i) {
            EdgeLightingScheduler edgeLightingScheduler = EdgeLightingService.this.mScheduler;
            if (edgeLightingScheduler != null) {
                Slog.d("EdgeLightingScheduler", "stopEdgeLighting: " + i + " " + str);
                LightingScheduleInfo lightingScheduleInfo = new LightingScheduleInfo(str, "", null, null, i, 0);
                EdgeLightingScheduler.AnonymousClass1 anonymousClass1 = edgeLightingScheduler.mHandler;
                anonymousClass1.sendMessage(Message.obtain(anonymousClass1, 1, lightingScheduleInfo));
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.EdgeLightingService$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 {
        public AnonymousClass4() {
        }

        public final EdgeLightingDispatcher getUIController(boolean z) {
            int i;
            int i2;
            final EdgeLightingService edgeLightingService = EdgeLightingService.this;
            if (edgeLightingService.mDispatcher == null) {
                Slog.i("EdgeLightingService", "createEdgeLightingDialog make dispatcher " + z);
                boolean z2 = true;
                int intForUser = Settings.System.getIntForUser(edgeLightingService.getContentResolver(), "edge_lighting_show_condition", !Feature.FEATURE_SUPPORT_AOD ? 1 : 0, -2);
                if (intForUser == 1) {
                    i = 1;
                } else if (intForUser == 2) {
                    i = 2;
                } else {
                    i = 3;
                }
                if ((i & 2) == 0) {
                    z2 = false;
                }
                Context baseContext = edgeLightingService.getBaseContext();
                if (z2) {
                    i2 = 2227;
                } else {
                    i2 = 2228;
                }
                EdgeLightingDispatcher edgeLightingDispatcher = new EdgeLightingDispatcher(baseContext, i2, z);
                edgeLightingService.mDispatcher = edgeLightingDispatcher;
                edgeLightingDispatcher.registerEdgeWindowCallback(new IEdgeLightingWindowCallback() { // from class: com.android.systemui.edgelighting.EdgeLightingService.5
                    public final SecHideInformationMirroringModel mMirroringModel = new SecHideInformationMirroringModel();

                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void doActionNotification() {
                        EdgeLightingScheduler edgeLightingScheduler = EdgeLightingService.this.mScheduler;
                        edgeLightingScheduler.getClass();
                        NotificationLightingScheduler notificationLightingScheduler = edgeLightingScheduler.mNotificationLightingScheduler;
                        if (notificationLightingScheduler != null) {
                            ArrayList actionList = notificationLightingScheduler.mCurrentLightingScheduleInfo.getActionList();
                            String string = edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getString(R.string.restrict_mark_as_read);
                            if (actionList != null) {
                                Iterator it = actionList.iterator();
                                while (it.hasNext()) {
                                    Notification.Action action = (Notification.Action) it.next();
                                    if (TextUtils.equals(string, action.title)) {
                                        try {
                                            action.actionIntent.send();
                                            edgeLightingScheduler.mNotificationLightingScheduler.flushNotiNow();
                                        } catch (PendingIntent.CanceledException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                }
                            }
                        }
                    }

                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void onClickExpandButton(String str) {
                        boolean z3 = EdgeLightingService.sConfigured;
                        EdgeLightingService edgeLightingService2 = EdgeLightingService.this;
                        edgeLightingService2.getClass();
                        try {
                            ISystemUIConditionListener iSystemUIConditionListener = edgeLightingService2.mConditionListener;
                            if (iSystemUIConditionListener != null) {
                                iSystemUIConditionListener.turnToHeadsUp(str);
                            }
                        } catch (RemoteException unused) {
                        }
                        EdgeLightingAnalytics.sendEventLog(EdgeLightingAnalytics.sCurrentScreenID, "QPNE0104");
                    }

                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void onClickToastInWindow() {
                        EdgeLightingScheduler edgeLightingScheduler = EdgeLightingService.this.mScheduler;
                        NotificationLightingScheduler notificationLightingScheduler = edgeLightingScheduler.mNotificationLightingScheduler;
                        if (notificationLightingScheduler != null) {
                            notificationLightingScheduler.flushNotiNow();
                            if (edgeLightingScheduler.mNotificationLightingScheduler.mCurrentLightingScheduleInfo != null) {
                                edgeLightingScheduler.mRequester.getClass();
                                edgeLightingScheduler.mRequester.sendClickEvent(edgeLightingScheduler.mNotificationLightingScheduler.mCurrentLightingScheduleInfo.getNotificationKey());
                            }
                        }
                    }

                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void onDismissEdgeWindow() {
                        long j;
                        boolean z3 = EdgeLightingService.sConfigured;
                        Slog.i("EdgeLightingService", " onDismissEdgeWindow");
                        EdgeLightingService edgeLightingService2 = EdgeLightingService.this;
                        EdgeLightingScheduler edgeLightingScheduler = edgeLightingService2.mScheduler;
                        if (edgeLightingScheduler != null) {
                            edgeLightingScheduler.notifyEdgeLightingPackageList(true);
                        }
                        if (!edgeLightingService2.mPowerManager.isInteractive() && !Utils.isLargeCoverFlipFolded()) {
                            j = 5000;
                        } else {
                            j = 500;
                        }
                        MainHandler mainHandler = edgeLightingService2.mHandler;
                        mainHandler.sendMessageDelayed(mainHandler.obtainMessage(1, "onDismissEdgeWindow"), j);
                        EdgeLightingScheduler edgeLightingScheduler2 = edgeLightingService2.mScheduler;
                        PowerManager.WakeLock wakeLock = edgeLightingScheduler2.mWakeLock;
                        if (wakeLock != null && wakeLock.isHeld()) {
                            edgeLightingScheduler2.mWakeLock.release();
                        }
                    }

                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void onExtendLightingDuration() {
                        NotificationLightingScheduler notificationLightingScheduler = EdgeLightingService.this.mScheduler.mNotificationLightingScheduler;
                        if (notificationLightingScheduler != null) {
                            notificationLightingScheduler.extendLightingDuration(5500, false);
                        }
                    }

                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void onFling(boolean z3, boolean z4) {
                        if (z3) {
                            EdgeLightingAnalytics.sendEventLog(EdgeLightingAnalytics.sCurrentScreenID, "QPNE0103");
                        }
                        if (CoreRune.MW_SA_LOGGING && z3) {
                            CoreSaLogger.logForAdvanced("2004", "From Noti_Swipedown");
                        }
                        EdgeLightingScheduler edgeLightingScheduler = EdgeLightingService.this.mScheduler;
                        if (!z3) {
                            NotificationLightingScheduler notificationLightingScheduler = edgeLightingScheduler.mNotificationLightingScheduler;
                            if (notificationLightingScheduler != null) {
                                notificationLightingScheduler.flushNotiNow();
                                return;
                            }
                            return;
                        }
                        NotificationLightingScheduler notificationLightingScheduler2 = edgeLightingScheduler.mNotificationLightingScheduler;
                        if (notificationLightingScheduler2 != null && notificationLightingScheduler2.mCurrentLightingScheduleInfo != null) {
                            notificationLightingScheduler2.flushNotiNow();
                            LightingScheduleInfo lightingScheduleInfo = edgeLightingScheduler.mNotificationLightingScheduler.mCurrentLightingScheduleInfo;
                            if (!z4) {
                                Slog.i("EdgeLightingScheduler", " Not activity pending intent. : " + lightingScheduleInfo.mPackageName);
                                Toast.makeText(edgeLightingScheduler.mTurnOverEdgeLighting.mContext, R.string.edge_lighting_can_not_open_popup_view, 0).show();
                            }
                            edgeLightingScheduler.mRequester.sendClickEvent(lightingScheduleInfo.getNotificationKey());
                        }
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r6v1, types: [android.content.pm.PackageManager] */
                    /* JADX WARN: Type inference failed for: r6v13 */
                    /* JADX WARN: Type inference failed for: r6v15 */
                    /* JADX WARN: Type inference failed for: r6v16 */
                    /* JADX WARN: Type inference failed for: r6v2, types: [android.content.pm.PackageManager] */
                    /* JADX WARN: Type inference failed for: r6v3, types: [android.graphics.drawable.Drawable] */
                    /* JADX WARN: Type inference failed for: r6v4, types: [android.graphics.drawable.Drawable] */
                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void onFlingDownInWindow(boolean z3) {
                        boolean z4 = EdgeLightingService.sConfigured;
                        Slog.i("EdgeLightingService", "onFlingDownInWindow " + z3);
                        EdgeLightingScheduler edgeLightingScheduler = EdgeLightingService.this.mScheduler;
                        NotificationLightingScheduler notificationLightingScheduler = edgeLightingScheduler.mNotificationLightingScheduler;
                        if (notificationLightingScheduler != null && notificationLightingScheduler.mCurrentLightingScheduleInfo != null) {
                            notificationLightingScheduler.flushNotiNow();
                            LightingScheduleInfo lightingScheduleInfo = edgeLightingScheduler.mNotificationLightingScheduler.mCurrentLightingScheduleInfo;
                            if (z3) {
                                EdgeLightingDispatcher uIController = edgeLightingScheduler.mRequester.getUIController(false);
                                if (!(uIController instanceof EdgeLightingDispatcher)) {
                                    uIController = null;
                                }
                                if (uIController != null) {
                                    Context context = edgeLightingScheduler.mContext;
                                    PendingIntent contentIntent = lightingScheduleInfo.getContentIntent();
                                    String str = lightingScheduleInfo.mPackageName;
                                    NotificationEffect notificationEffect = uIController.mDialog.mNotificationEffect;
                                    int i3 = Utils.$r8$clinit;
                                    ?? packageManager = context.getPackageManager();
                                    try {
                                        ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 795136);
                                        if (applicationInfo != null) {
                                            packageManager = packageManager.getApplicationIcon(applicationInfo);
                                        } else {
                                            packageManager = packageManager.getDefaultActivityIcon();
                                        }
                                    } catch (PackageManager.NameNotFoundException unused) {
                                        packageManager = packageManager.getDefaultActivityIcon();
                                    }
                                    Bitmap drawableToBitmap = DrawableUtils.drawableToBitmap(packageManager);
                                    ImageView imageView = new ImageView(context);
                                    imageView.setImageBitmap(drawableToBitmap);
                                    imageView.layout(0, 0, context.getResources().getDimensionPixelSize(R.dimen.drag_and_drop_icon_size), context.getResources().getDimensionPixelSize(R.dimen.drag_and_drop_icon_size));
                                    ClipDescription clipDescription = new ClipDescription("Drag And Drop(E)", new String[]{"application/vnd.android.activity"});
                                    Intent intent = new Intent();
                                    intent.putExtra("android.intent.extra.PENDING_INTENT", contentIntent);
                                    intent.putExtra("android.intent.extra.USER", Process.myUserHandle());
                                    intent.putExtra("com.samsung.android.intent.extra.DRAG_AND_DROP_REQUESTER", "edgelighting");
                                    if (!notificationEffect.startDragAndDrop(new ClipData(clipDescription, new ClipData.Item(intent)), new View.DragShadowBuilder(imageView), null, 1048832)) {
                                        Slog.i("EdgeLightingScheduler", " Not activity pending intent. : " + str);
                                        Toast.makeText(edgeLightingScheduler.mTurnOverEdgeLighting.mContext, R.string.edge_lighting_can_not_open_popup_view, 0).show();
                                    }
                                }
                            }
                            edgeLightingScheduler.mRequester.sendClickEvent(lightingScheduleInfo.getNotificationKey());
                        }
                    }

                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void onShowEdgeWindow() {
                        boolean z3 = EdgeLightingService.sConfigured;
                        Slog.i("EdgeLightingService", " onShowEdgeWindow");
                        EdgeLightingService edgeLightingService2 = EdgeLightingService.this;
                        edgeLightingService2.mHandler.removeMessages(1);
                        if (this.mMirroringModel.shouldHideInformation()) {
                            Slog.d("EdgeLightingService", "HideInformationMirroring addInternalPresentationWindowFlag()");
                            EdgeLightingDispatcher edgeLightingDispatcher2 = edgeLightingService2.mDispatcher;
                            if (edgeLightingDispatcher2 != null && edgeLightingDispatcher2.getWindow() != null && edgeLightingService2.mDispatcher.getWindow().getDecorView() != null) {
                                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) edgeLightingService2.mDispatcher.getWindow().getDecorView().getLayoutParams();
                                if (layoutParams != null) {
                                    layoutParams.semAddExtensionFlags(VideoPlayer.MEDIA_ERROR_SYSTEM);
                                }
                                WindowManager windowManager = edgeLightingService2.mDispatcher.getWindow().getWindowManager();
                                if (windowManager != null) {
                                    windowManager.updateViewLayout(edgeLightingService2.mDispatcher.getWindow().getDecorView(), layoutParams);
                                }
                            }
                        }
                        edgeLightingService2.mScheduler.notifyEdgeLightingPackageList(false);
                        EdgeLightingDispatcher edgeLightingDispatcher3 = edgeLightingService2.mDispatcher;
                        if (edgeLightingDispatcher3 != null && edgeLightingDispatcher3.getWindow() != null && edgeLightingService2.mDispatcher.getWindow().getDecorView() != null) {
                            edgeLightingService2.mDispatcher.getWindow().getDecorView().setAccessibilityDelegate(new View.AccessibilityDelegate(this) { // from class: com.android.systemui.edgelighting.EdgeLightingService.5.1
                                @Override // android.view.View.AccessibilityDelegate
                                public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                                    if (accessibilityEvent.getEventType() == 32) {
                                        return;
                                    }
                                    super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
                                }
                            });
                        }
                    }

                    @Override // com.android.systemui.edgelighting.effect.interfaces.IEdgeLightingWindowCallback
                    public final void onSwipeToastInWindow() {
                        boolean z3;
                        String str;
                        EdgeLightingScheduler edgeLightingScheduler = EdgeLightingService.this.mScheduler;
                        NotificationLightingScheduler notificationLightingScheduler = edgeLightingScheduler.mNotificationLightingScheduler;
                        if (notificationLightingScheduler != null) {
                            LightingScheduleInfo lightingScheduleInfo = notificationLightingScheduler.mCurrentLightingScheduleInfo;
                            if (lightingScheduleInfo != null) {
                                String str2 = null;
                                try {
                                    SemEdgeManager semEdgeManager = edgeLightingScheduler.mEdgeManager;
                                    String str3 = lightingScheduleInfo.mPackageName;
                                    String notificationTag = lightingScheduleInfo.getNotificationTag();
                                    int notificationID = lightingScheduleInfo.getNotificationID();
                                    int userId = lightingScheduleInfo.getUserId();
                                    String notificationKey = lightingScheduleInfo.getNotificationKey();
                                    Bundle extra = lightingScheduleInfo.mLightingInfo.getExtra();
                                    if (extra != null) {
                                        str = extra.getString("group_key");
                                    } else {
                                        str = null;
                                    }
                                    semEdgeManager.cancelNotificationByGroupKey(str3, notificationTag, notificationID, userId, notificationKey, str);
                                    z3 = true;
                                } catch (RuntimeException unused) {
                                    z3 = false;
                                }
                                String str4 = lightingScheduleInfo.mPackageName;
                                if (!z3) {
                                    edgeLightingScheduler.mEdgeManager.cancelNotification(str4, lightingScheduleInfo.getNotificationTag(), lightingScheduleInfo.getNotificationID(), lightingScheduleInfo.getUserId(), lightingScheduleInfo.getNotificationKey());
                                    StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m(" swipe cancel pkg: ", str4, " , tag :  ");
                                    m.append(lightingScheduleInfo.getNotificationTag());
                                    m.append(" id: ");
                                    m.append(lightingScheduleInfo.getNotificationID());
                                    m.append(" , userid : ");
                                    m.append(lightingScheduleInfo.getUserId());
                                    m.append(" , key : ");
                                    m.append(lightingScheduleInfo.getNotificationKey());
                                    Slog.i("EdgeLightingScheduler", m.toString());
                                } else {
                                    StringBuilder m2 = ActivityResultRegistry$$ExternalSyntheticOutline0.m(" swipe cancel pkg: ", str4, " , tag :  ");
                                    m2.append(lightingScheduleInfo.getNotificationTag());
                                    m2.append(" id: ");
                                    m2.append(lightingScheduleInfo.getNotificationID());
                                    m2.append(" , userid : ");
                                    m2.append(lightingScheduleInfo.getUserId());
                                    m2.append(" , key : ");
                                    m2.append(lightingScheduleInfo.getNotificationKey());
                                    m2.append(" , groupKey : ");
                                    Bundle extra2 = lightingScheduleInfo.mLightingInfo.getExtra();
                                    if (extra2 != null) {
                                        str2 = extra2.getString("group_key");
                                    }
                                    m2.append(str2);
                                    Slog.i("EdgeLightingScheduler", m2.toString());
                                }
                            }
                            edgeLightingScheduler.mNotificationLightingScheduler.flushNotiNow();
                        }
                    }
                });
                EdgeLightingDialog edgeLightingDialog = edgeLightingService.mDispatcher.mDialog;
                if (edgeLightingDialog != null) {
                    edgeLightingDialog.mDozeDraw = z2;
                }
            }
            return edgeLightingService.mDispatcher;
        }

        public final boolean isNeedToSanitized(int i, int i2, String str) {
            try {
                ISystemUIConditionListener iSystemUIConditionListener = EdgeLightingService.this.mConditionListener;
                if (iSystemUIConditionListener == null) {
                    return false;
                }
                return iSystemUIConditionListener.isNeedToSanitize(i, i2, str);
            } catch (RemoteException e) {
                boolean z = EdgeLightingService.sConfigured;
                Slog.d("EdgeLightingService", "Remote exception in isNeedToSanitized " + e.getMessage());
                return false;
            }
        }

        public final boolean isScreenOn() {
            return EdgeLightingService.this.mPowerManager.isInteractive();
        }

        public final boolean isUIControllerExist() {
            if (EdgeLightingService.this.mDispatcher != null) {
                return true;
            }
            return false;
        }

        public final void requestStopService() {
            EdgeLightingService edgeLightingService = EdgeLightingService.this;
            if (edgeLightingService.mHandler.hasMessages(1)) {
                edgeLightingService.mHandler.removeMessages(1);
            }
            MainHandler mainHandler = edgeLightingService.mHandler;
            mainHandler.sendMessageDelayed(mainHandler.obtainMessage(1, "requestStopService"), 500L);
        }

        public final void sendClickEvent(String str) {
            try {
                ISystemUIConditionListener iSystemUIConditionListener = EdgeLightingService.this.mConditionListener;
                if (iSystemUIConditionListener != null) {
                    iSystemUIConditionListener.sendClickEvent(str);
                }
            } catch (RemoteException e) {
                boolean z = EdgeLightingService.sConfigured;
                Slog.i("EdgeLightingService", "Remote exception ");
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.EdgeLightingService$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass7 {
        public AnonymousClass7() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.EdgeLightingService$9, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass9 extends ContentObserver {
        public AnonymousClass9(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            boolean z2;
            if (uri == null) {
                return;
            }
            boolean z3 = true;
            if (Settings.System.getUriFor("colortheme_app_icon").equals(uri)) {
                EdgeLightingService edgeLightingService = EdgeLightingService.this;
                if (Settings.System.getIntForUser(edgeLightingService.getContentResolver(), "colortheme_app_icon", 0, -2) == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                edgeLightingService.mIsColorThemeEnabled = z2;
            }
            if (Settings.System.getUriFor("show_notification_app_icon").equals(uri)) {
                EdgeLightingService edgeLightingService2 = EdgeLightingService.this;
                if (Settings.System.getIntForUser(edgeLightingService2.getContentResolver(), "show_notification_app_icon", 0, -2) != 1) {
                    z3 = false;
                }
                edgeLightingService2.mShouldShowAppIcon = z3;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MainHandler extends Handler {
        public /* synthetic */ MainHandler(EdgeLightingService edgeLightingService, int i) {
            this();
        }

        @Override // android.os.Handler
        public final void dispatchMessage(Message message) {
            if (message.what != 1) {
                super.dispatchMessage(message);
                return;
            }
            EdgeLightingService edgeLightingService = EdgeLightingService.this;
            String str = (String) message.obj;
            boolean z = EdgeLightingService.sConfigured;
            edgeLightingService.getClass();
            Slog.i("EdgeLightingService", "stopService by " + str);
            EdgeLightingScheduler edgeLightingScheduler = edgeLightingService.mScheduler;
            if (edgeLightingScheduler != null) {
                edgeLightingScheduler.notifyEdgeLightingPackageList(true);
            }
            edgeLightingService.setProcessForeground(false);
            edgeLightingService.stopForeground(true);
            edgeLightingService.stopSelf();
        }

        private MainHandler() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class StatusbarStateReceiver extends BroadcastReceiver {
        public /* synthetic */ StatusbarStateReceiver(EdgeLightingService edgeLightingService, int i) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            NotificationLightingScheduler notificationLightingScheduler;
            String action = intent.getAction();
            boolean equals = "com.samsung.systemui.statusbar.ANIMATING".equals(action);
            boolean equals2 = "com.samsung.systemui.statusbar.EXPANDED".equals(action);
            if (equals || equals2) {
                boolean z = EdgeLightingService.sConfigured;
                Slog.d("EdgeLightingService", "ACTION_STATUS_OPEN");
                EdgeLightingScheduler edgeLightingScheduler = EdgeLightingService.this.mScheduler;
                if (edgeLightingScheduler != null && (notificationLightingScheduler = edgeLightingScheduler.mNotificationLightingScheduler) != null) {
                    notificationLightingScheduler.flushNotiNow();
                }
            }
        }

        private StatusbarStateReceiver() {
        }
    }

    static {
        Debug.semIsProductDev();
        sConfigured = false;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.edgelighting.EdgeLightingService$2] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.edgelighting.EdgeLightingService$8] */
    public EdgeLightingService() {
        MainHandler mainHandler = new MainHandler(this, 0);
        this.mHandler = mainHandler;
        this.mConditionListener = null;
        this.mFoldStateListener = null;
        this.mKillBot = new AnonymousClass1();
        this.mEdgeLightingObserver = new EdgeLightingSettingsObserver.EdgeLightingObserver() { // from class: com.android.systemui.edgelighting.EdgeLightingService.2
            @Override // com.android.systemui.edgelighting.manager.EdgeLightingSettingsObserver.EdgeLightingObserver
            public final Handler getHandler() {
                return EdgeLightingService.this.mHandler;
            }

            @Override // com.android.systemui.edgelighting.manager.EdgeLightingSettingsObserver.EdgeLightingObserver
            public final void onChange() {
                EdgeLightingService edgeLightingService = EdgeLightingService.this;
                boolean isEdgeLightingEnabled = EdgeLightingSettingUtils.isEdgeLightingEnabled(edgeLightingService.getContentResolver());
                boolean z = EdgeLightingService.sConfigured;
                Slog.i("EdgeLightingService", "EdgeLightingObserver: !!!! enable " + isEdgeLightingEnabled);
                if (!isEdgeLightingEnabled) {
                    edgeLightingService.setProcessForeground(false);
                    edgeLightingService.stopForeground(true);
                    edgeLightingService.stopSelf();
                }
                ContextStatusLoggingManager.getInstance().updateStatusLoggingItem(edgeLightingService);
            }
        };
        this.mOnEdgeLightingCallback = new AnonymousClass3();
        this.mConnection = new ServiceConnection() { // from class: com.android.systemui.edgelighting.EdgeLightingService.8
            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                ISystemUIConditionListener proxy;
                EdgeLightingService edgeLightingService = EdgeLightingService.this;
                int i = ISystemUIConditionListener.Stub.$r8$clinit;
                if (iBinder == null) {
                    proxy = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener");
                    if (queryLocalInterface != null && (queryLocalInterface instanceof ISystemUIConditionListener)) {
                        proxy = (ISystemUIConditionListener) queryLocalInterface;
                    } else {
                        proxy = new ISystemUIConditionListener.Stub.Proxy(iBinder);
                    }
                }
                edgeLightingService.mConditionListener = proxy;
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                boolean z = EdgeLightingService.sConfigured;
                Slog.i("EdgeLightingService", " onServiceDisconnected " + componentName.flattenToShortString());
                EdgeLightingService.this.mConditionListener = null;
            }
        };
        this.mDBObserver = new AnonymousClass9(mainHandler);
    }

    public static String checkEdgeLightingAvailable() {
        boolean z;
        int i = Utils.$r8$clinit;
        int semGetMyUserId = UserHandle.semGetMyUserId();
        Slog.i("Utils", "isCurrentUser current = " + semGetMyUserId + ", ownerId = 0");
        if (semGetMyUserId == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return "not Owner";
        }
        if (!SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION")) {
            return "not Support";
        }
        return "";
    }

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        EdgeLightingSettingManager edgeLightingSettingManager = EdgeLightingSettingManager.getInstance(getApplicationContext());
        edgeLightingSettingManager.getClass();
        StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m("Enable pkg ( ");
        boolean z = edgeLightingSettingManager.mAllApplication;
        HashMap hashMap = edgeLightingSettingManager.mEnableSet;
        if (z) {
            m.append("ALL");
        } else {
            m.append(hashMap.size());
        }
        m.append(" )  : ");
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            m.append((String) ((Map.Entry) it.next()).getKey());
            m.append(", ");
        }
        printWriter.println(m);
        super.dump(fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Slog.d("EdgeLightingService", "onCreate");
        this.mShouldKillMyself = true;
        String checkEdgeLightingAvailable = checkEdgeLightingAvailable();
        if (!"".equals(checkEdgeLightingAvailable)) {
            Slog.e("EdgeLightingService", "OnCreate : edgelighting is not availabe now : ".concat(checkEdgeLightingAvailable));
            this.mKillBot.run();
            return;
        }
        Slog.d("EdgeLightingService", "connectToSystemUI");
        if (this.mConditionListener == null) {
            Intent intent = new Intent(this, (Class<?>) SystemUIConditionListenerService.class);
            intent.setAction(ISystemUIConditionListener.class.getName());
            bindService(intent, this.mConnection, 1);
        }
        if (!sConfigured) {
            EdgeLightingAnalytics.initEdgeLightingAnalyticsStates(getApplication());
            sConfigured = true;
        }
        SemEdgeManager semEdgeManager = (SemEdgeManager) getSystemService("edge");
        this.mEdgeManager = semEdgeManager;
        if (semEdgeManager == null) {
            Slog.e("EdgeLightingService", "OnCreate : mEdgeManager is null.");
        }
        this.mPowerManager = (PowerManager) getSystemService("power");
        setProcessForeground(true);
        this.mAppIconCache = new AppIconCache(this);
        this.mHandler.removeCallbacks(this.mKillBot);
        this.mHandler.postDelayed(this.mKillBot, 1000L);
        this.mDevicePolicyManager = (DevicePolicyManager) getSystemService("device_policy");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        EdgeLightingScheduler edgeLightingScheduler = this.mScheduler;
        if (edgeLightingScheduler != null) {
            EdgeLightingSettingsObserver.getInstance().unregisterContentObserver(getContentResolver(), Settings.System.class, edgeLightingScheduler.mEdgeLightingObserver);
            TurnOverEdgeLighting turnOverEdgeLighting = edgeLightingScheduler.mTurnOverEdgeLighting;
            if (turnOverEdgeLighting != null) {
                CallStateObserver callStateObserver = turnOverEdgeLighting.mCallStateObserver;
                if (callStateObserver != null) {
                    callStateObserver.mTelephonyManager.listen(callStateObserver.mPhoneStateListener, 0);
                    turnOverEdgeLighting.mCallStateObserver.mStateListener = null;
                    turnOverEdgeLighting.mCallStateObserver = null;
                }
                turnOverEdgeLighting.mUpsideDownChecker.cancel();
            }
        }
        setProcessForeground(false);
        StatusbarStateReceiver statusbarStateReceiver = this.mStatusBarReceiver;
        if (statusbarStateReceiver != null) {
            unregisterReceiver(statusbarStateReceiver);
            this.mStatusBarReceiver = null;
        }
        if (this.mFoldStateListener != null) {
            SemWindowManager.getInstance().unregisterFoldStateListener(this.mFoldStateListener);
            this.mFoldStateListener = null;
        }
        if (this.mCoverStateListener != null) {
            EdgeLightingCoverManager edgeLightingCoverManager = EdgeLightingCoverManager.getInstance();
            AnonymousClass7 anonymousClass7 = this.mCoverStateListener;
            if (edgeLightingCoverManager.mSCoverStateListener != null) {
                ArrayList arrayList = edgeLightingCoverManager.mCoverStateListeners;
                arrayList.remove(anonymousClass7);
                if (arrayList.size() == 0) {
                    try {
                        edgeLightingCoverManager.mSCoverManager.unregisterListener(edgeLightingCoverManager.mSCoverStateListener);
                    } catch (SsdkUnsupportedException e) {
                        e.printStackTrace();
                    }
                    edgeLightingCoverManager.mSCoverManager = null;
                    edgeLightingCoverManager.mSCoverStateListener = null;
                    edgeLightingCoverManager.mCoverType = 2;
                }
            }
            this.mCoverStateListener = null;
        }
        EdgeLightingSettingsObserver.getInstance().unregisterContentObserver(getContentResolver(), Settings.System.class, this.mEdgeLightingObserver);
        getContentResolver().unregisterContentObserver(this.mDBObserver);
        SemEdgeManager semEdgeManager = this.mEdgeManager;
        if (semEdgeManager != null) {
            semEdgeManager.unbindEdgeLightingService(this.mOnEdgeLightingCallback);
        } else {
            Slog.e("EdgeLightingService", "onDestroy : mEdgeManager = " + this.mEdgeManager);
        }
        EdgeLightingDispatcher edgeLightingDispatcher = this.mDispatcher;
        if (edgeLightingDispatcher != null) {
            edgeLightingDispatcher.unRegisterEdgeWindowCallback();
            EdgeLightingDispatcher edgeLightingDispatcher2 = this.mDispatcher;
            if (edgeLightingDispatcher2.mSettingObserver != null) {
                edgeLightingDispatcher2.mContext.getContentResolver().unregisterContentObserver(edgeLightingDispatcher2.mSettingObserver);
                edgeLightingDispatcher2.mSettingObserver = null;
            }
            if (edgeLightingDispatcher2.mDialog != null) {
                Slog.i("EdgeLightingDispatcher", " mDialog showing : " + edgeLightingDispatcher2.mDialog.isShowing());
                edgeLightingDispatcher2.mDialog.stopEdgeEffect();
            } else if (edgeLightingDispatcher2.mEffectServiceConrtroller != null) {
                Slog.i("EdgeLightingDispatcher", " mEffectServiceConrtroller showing : " + edgeLightingDispatcher2.mEffectServiceConrtroller.mStarting);
                edgeLightingDispatcher2.mEffectServiceConrtroller.dispatchStop();
            }
            this.mDispatcher = null;
        }
        System.gc();
        this.mIsStarted = false;
        this.mCondition = 0;
        if (this.mConditionListener != null) {
            unbindService(this.mConnection);
            this.mConditionListener = null;
        }
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v50, types: [com.android.systemui.edgelighting.EdgeLightingService$6] */
    /* JADX WARN: Type inference failed for: r4v16, types: [com.android.systemui.edgelighting.device.EdgeLightingCoverManager$1] */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        boolean z;
        boolean z2;
        int i3;
        HashMap hashMap;
        Uri uriFor;
        String checkEdgeLightingAvailable = checkEdgeLightingAvailable();
        if (!"".equals(checkEdgeLightingAvailable)) {
            Slog.e("EdgeLightingService", "onStartCommand : edgelighting is not availabe now : ".concat(checkEdgeLightingAvailable));
            this.mKillBot.run();
            return 2;
        }
        if (this.mEdgeManager == null) {
            this.mEdgeManager = (SemEdgeManager) getSystemService("edge");
            Slog.e("EdgeLightingService", "onStartCommand : mEdgeManager = " + this.mEdgeManager);
        }
        if (SemEmergencyManager.isEmergencyMode(this)) {
            stopEdgeLightingService();
            return 2;
        }
        if (!EdgeLightingSettingUtils.isEdgeLightingEnabled(getContentResolver())) {
            stopEdgeLightingService();
            return 2;
        }
        setProcessForeground(true);
        int i4 = 0;
        if (this.mScheduler == null) {
            EdgeLightingScheduler edgeLightingScheduler = new EdgeLightingScheduler(this.mEdgeManager);
            this.mScheduler = edgeLightingScheduler;
            edgeLightingScheduler.mContext = this;
            if (edgeLightingScheduler.mScreenStatusChecker == null) {
                edgeLightingScheduler.mScreenStatusChecker = new EdgeLightingScreenStatus(this);
            }
            if (edgeLightingScheduler.mApplicationLightingScheduler == null) {
                ApplicationLightingScheduler applicationLightingScheduler = new ApplicationLightingScheduler();
                edgeLightingScheduler.mApplicationLightingScheduler = applicationLightingScheduler;
                EdgeLightingScheduler.AnonymousClass3 anonymousClass3 = new EdgeLightingScheduler.AnonymousClass3();
                synchronized (applicationLightingScheduler.mLinkedInfo) {
                    applicationLightingScheduler.mListener = anonymousClass3;
                }
            }
            if (edgeLightingScheduler.mNotificationLightingScheduler == null) {
                NotificationLightingScheduler notificationLightingScheduler = new NotificationLightingScheduler();
                edgeLightingScheduler.mNotificationLightingScheduler = notificationLightingScheduler;
                notificationLightingScheduler.mListener = new EdgeLightingScheduler.AnonymousClass4();
            }
            PowerManager powerManager = (PowerManager) getSystemService("power");
            edgeLightingScheduler.mPm = powerManager;
            edgeLightingScheduler.mWakeLock = powerManager.newWakeLock(1, "EdgeLighting:edge");
            if (edgeLightingScheduler.mTurnOverEdgeLighting == null) {
                edgeLightingScheduler.mTurnOverEdgeLighting = new TurnOverEdgeLighting(this);
                EdgeLightingScheduler.AnonymousClass5 anonymousClass5 = new EdgeLightingScheduler.AnonymousClass5();
                EdgeLightingScheduler.AnonymousClass6 anonymousClass6 = new EdgeLightingScheduler.AnonymousClass6();
                TurnOverEdgeLighting turnOverEdgeLighting = edgeLightingScheduler.mTurnOverEdgeLighting;
                turnOverEdgeLighting.mListener = anonymousClass5;
                turnOverEdgeLighting.mRequestor = anonymousClass6;
                turnOverEdgeLighting.setEnable();
            }
            EdgeLightingScheduler edgeLightingScheduler2 = this.mScheduler;
            AnonymousClass4 anonymousClass4 = new AnonymousClass4();
            edgeLightingScheduler2.mRequester = anonymousClass4;
            edgeLightingScheduler2.mIsScreenOnReceived = anonymousClass4.isScreenOn();
            EdgeLightingScreenStatus edgeLightingScreenStatus = edgeLightingScheduler2.mScreenStatusChecker;
            boolean isScreenOn = edgeLightingScheduler2.mRequester.isScreenOn();
            edgeLightingScreenStatus.getClass();
            if (isScreenOn) {
                Slog.d("EdgeLightingScreenStatus", UniversalCredentialManager.RESET_APPLET_FORM_FACTOR);
                System.currentTimeMillis();
            }
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (this.mFoldStateListener == null) {
                this.mFoldStateListener = new SemWindowManager.FoldStateListener() { // from class: com.android.systemui.edgelighting.EdgeLightingService.6
                    public final void onFoldStateChanged(boolean z3) {
                        NotificationLightingScheduler notificationLightingScheduler2;
                        EdgeLightingScheduler edgeLightingScheduler3 = EdgeLightingService.this.mScheduler;
                        if (edgeLightingScheduler3 != null && (notificationLightingScheduler2 = edgeLightingScheduler3.mNotificationLightingScheduler) != null) {
                            notificationLightingScheduler2.flushNotiNow();
                        }
                    }

                    public final void onTableModeChanged(boolean z3) {
                    }
                };
                SemWindowManager.getInstance().registerFoldStateListener(this.mFoldStateListener, (Handler) null);
            }
            if (this.mStatusBarReceiver == null) {
                this.mStatusBarReceiver = new StatusbarStateReceiver(this, i4);
                IntentFilter intentFilter = new IntentFilter("com.samsung.systemui.statusbar.ANIMATING");
                intentFilter.addAction("com.samsung.systemui.statusbar.EXPANDED");
                registerReceiver(this.mStatusBarReceiver, intentFilter);
            }
            if (this.mCoverStateListener == null) {
                this.mCoverStateListener = new AnonymousClass7();
                final EdgeLightingCoverManager edgeLightingCoverManager = EdgeLightingCoverManager.getInstance();
                AnonymousClass7 anonymousClass7 = this.mCoverStateListener;
                EdgeLightingCoverManager.AnonymousClass1 anonymousClass1 = edgeLightingCoverManager.mSCoverStateListener;
                ArrayList arrayList = edgeLightingCoverManager.mCoverStateListeners;
                if (anonymousClass1 == null) {
                    edgeLightingCoverManager.mSCoverManager = new ScoverManager(this);
                    ?? r4 = new ScoverManager.CoverStateListener() { // from class: com.android.systemui.edgelighting.device.EdgeLightingCoverManager.1
                        @Override // com.samsung.android.sdk.cover.ScoverManager.CoverStateListener
                        public final void onCoverAttachStateChanged(boolean z3) {
                            boolean z4 = EdgeLightingCoverManager.DEBUG;
                            if (z4) {
                                Slog.d("EdgeLightingCoverManager", "onCoverAttachStateChanged : " + z3);
                            }
                            EdgeLightingCoverManager edgeLightingCoverManager2 = EdgeLightingCoverManager.this;
                            ScoverManager scoverManager = edgeLightingCoverManager2.mSCoverManager;
                            if (scoverManager == null) {
                                Slog.d("EdgeLightingCoverManager", "onCoverAttachStateChanged : coverManager is null");
                                return;
                            }
                            if (z3) {
                                ScoverState coverState = scoverManager.getCoverState();
                                if (coverState != null) {
                                    edgeLightingCoverManager2.mCoverType = coverState.type;
                                    if (z4) {
                                        Slog.d("EdgeLightingCoverManager", "updateCoverType : " + edgeLightingCoverManager2.mCoverType);
                                    }
                                }
                            } else {
                                edgeLightingCoverManager2.mCoverType = 2;
                            }
                            edgeLightingCoverManager2.getClass();
                            Iterator it = edgeLightingCoverManager2.mCoverStateListeners.iterator();
                            while (it.hasNext()) {
                                ((EdgeLightingService.AnonymousClass7) it.next()).getClass();
                            }
                        }

                        @Override // com.samsung.android.sdk.cover.ScoverManager.CoverStateListener
                        public final void onCoverSwitchStateChanged(boolean z3) {
                            if (EdgeLightingCoverManager.DEBUG) {
                                Slog.d("EdgeLightingCoverManager", "onCoverSwitchStateChanged : " + z3);
                            }
                            EdgeLightingCoverManager edgeLightingCoverManager2 = EdgeLightingCoverManager.this;
                            edgeLightingCoverManager2.mSwitchState = z3;
                            Iterator it = edgeLightingCoverManager2.mCoverStateListeners.iterator();
                            while (it.hasNext()) {
                                EdgeLightingScheduler edgeLightingScheduler3 = EdgeLightingService.this.mScheduler;
                                if (edgeLightingScheduler3 != null) {
                                    if (!z3) {
                                        edgeLightingScheduler3.notifyScreenOff();
                                    } else {
                                        edgeLightingScheduler3.notifyScreenOn();
                                    }
                                }
                            }
                        }
                    };
                    edgeLightingCoverManager.mSCoverStateListener = r4;
                    try {
                        edgeLightingCoverManager.mSCoverManager.registerListener(r4);
                    } catch (SsdkUnsupportedException e) {
                        e.printStackTrace();
                    }
                    arrayList.add(anonymousClass7);
                    ScoverState coverState = edgeLightingCoverManager.mSCoverManager.getCoverState();
                    if (coverState != null) {
                        edgeLightingCoverManager.mSwitchState = coverState.switchState;
                        edgeLightingCoverManager.mCoverType = coverState.type;
                    }
                } else if (!arrayList.contains(anonymousClass7)) {
                    arrayList.add(anonymousClass7);
                }
            }
            EdgeLightingSettingsObserver edgeLightingSettingsObserver = EdgeLightingSettingsObserver.getInstance();
            ContentResolver contentResolver = getContentResolver();
            AnonymousClass2 anonymousClass2 = this.mEdgeLightingObserver;
            edgeLightingSettingsObserver.getClass();
            if (Settings.System.class == Settings.System.class) {
                hashMap = edgeLightingSettingsObserver.mSystemObservers;
                uriFor = Settings.System.getUriFor("edge_lighting");
            } else if (Settings.System.class == Settings.Global.class) {
                hashMap = edgeLightingSettingsObserver.mGlobalObservers;
                uriFor = Settings.Global.getUriFor("edge_lighting");
            } else {
                Slog.e("EdgeLightingSettingsObserver", "registerContentObserver : wrong table");
                getContentResolver().registerContentObserver(Settings.System.getUriFor("colortheme_app_icon"), false, this.mDBObserver);
                getContentResolver().registerContentObserver(Settings.System.getUriFor("show_notification_app_icon"), false, this.mDBObserver);
                this.mDBObserver.onChange(true, Settings.System.getUriFor("colortheme_app_icon"));
                this.mDBObserver.onChange(true, Settings.System.getUriFor("show_notification_app_icon"));
            }
            EdgeLightingSettingsObserver.ContentObserverWrapper contentObserverWrapper = (EdgeLightingSettingsObserver.ContentObserverWrapper) hashMap.get("edge_lighting");
            if (contentObserverWrapper == null) {
                EdgeLightingSettingsObserver.ContentObserverWrapper contentObserverWrapper2 = new EdgeLightingSettingsObserver.ContentObserverWrapper(null);
                hashMap.put("edge_lighting", contentObserverWrapper2);
                contentObserverWrapper2.mObservers.add(anonymousClass2);
                contentResolver.registerContentObserver(uriFor, false, contentObserverWrapper2);
            } else if (!contentObserverWrapper.mObservers.contains(anonymousClass2)) {
                contentObserverWrapper.mObservers.add(anonymousClass2);
            }
            getContentResolver().registerContentObserver(Settings.System.getUriFor("colortheme_app_icon"), false, this.mDBObserver);
            getContentResolver().registerContentObserver(Settings.System.getUriFor("show_notification_app_icon"), false, this.mDBObserver);
            this.mDBObserver.onChange(true, Settings.System.getUriFor("colortheme_app_icon"));
            this.mDBObserver.onChange(true, Settings.System.getUriFor("show_notification_app_icon"));
        }
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) getSystemService(ServiceTuple.MEDIA_CAP_AUDIO);
        }
        if (this.mEdgeManager != null) {
            int intForUser = Settings.System.getIntForUser(getContentResolver(), "edge_lighting_show_condition", !Feature.FEATURE_SUPPORT_AOD ? 1 : 0, -2);
            if (intForUser == 1) {
                i3 = 1;
            } else if (intForUser == 2) {
                i3 = 2;
            } else {
                i3 = 3;
            }
            if (this.mCondition != i3) {
                this.mCondition = i3;
                this.mEdgeManager.bindEdgeLightingService(this.mOnEdgeLightingCallback, i3);
            }
        }
        if (intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                if (extras.getBoolean("forUpdatePolicy", false) && !this.mIsStarted) {
                    Slog.d("EdgeLightingService", "start service for policy update");
                    EdgeLightingSettingManager edgeLightingSettingManager = EdgeLightingSettingManager.getInstance(this);
                    EdgeLightingPolicyManager edgeLightingPolicyManager = EdgeLightingPolicyManager.getInstance(this, false);
                    edgeLightingSettingManager.getClass();
                    SharedPreferences sharedPreferences = getSharedPreferences("edge_lighting_settings", 0);
                    Set<String> stringSet = sharedPreferences.getStringSet("silent_add_list", new HashSet());
                    int size = stringSet.size();
                    HashMap hashMap2 = edgeLightingSettingManager.mEnableSet;
                    if (size > 0) {
                        for (String str : stringSet) {
                            hashMap2.put(str, new EdgeLightingSettingItem(str, -11761985));
                        }
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.remove("silent_add_list");
                        edit.apply();
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Set<String> stringSet2 = sharedPreferences.getStringSet("silent_remove_list", new HashSet());
                    boolean z3 = z2;
                    if (stringSet2.size() > 0) {
                        Iterator<String> it = stringSet2.iterator();
                        while (it.hasNext()) {
                            hashMap2.remove(it.next());
                        }
                        SharedPreferences.Editor edit2 = sharedPreferences.edit();
                        edit2.remove("silent_remove_list");
                        edit2.apply();
                        z3 = true;
                    }
                    if (z3) {
                        SharedPreferences.Editor edit3 = sharedPreferences.edit();
                        edit3.putInt("version", 1);
                        edit3.putBoolean("all_application", false);
                        edit3.putStringSet("enable_list", hashMap2.keySet());
                        edit3.apply();
                    }
                    edgeLightingSettingManager.removeBlockListInEnabledEdgeLightingList(this, (HashMap) edgeLightingPolicyManager.mPolicyInfoData.get(2));
                    edgeLightingPolicyManager.updateEdgeLightingPolicy(this, edgeLightingSettingManager.mAllApplication);
                    stopEdgeLightingService();
                    return 2;
                }
                String string = extras.getString("packagename");
                SemEdgeLightingInfo parcelable = extras.getParcelable("info");
                int i5 = extras.getInt("reason");
                Slog.d("EdgeLightingService", "onStartCommand pkg=" + string + ",info=" + parcelable + ",reason=" + i5);
                if (string != null && parcelable != null) {
                    this.mHandler.post(new EdgeLightingService$$ExternalSyntheticLambda0(this, string, parcelable, i5, 0));
                    this.mShouldKillMyself = false;
                }
            } else {
                stopEdgeLightingService();
                return 2;
            }
        }
        this.mIsStarted = true;
        return 1;
    }

    public final void setProcessForeground(boolean z) {
        try {
            ActivityManager.getService().setProcessImportant(this.mForegroundToken, Process.myPid(), z, "EdgeLightingService");
        } catch (Exception e) {
            Slog.e("EdgeLightingService", "cant set to foreground" + e.toString());
            e.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0245  */
    /* JADX WARN: Type inference failed for: r0v103 */
    /* JADX WARN: Type inference failed for: r0v104 */
    /* JADX WARN: Type inference failed for: r0v107 */
    /* JADX WARN: Type inference failed for: r0v108 */
    /* JADX WARN: Type inference failed for: r0v112 */
    /* JADX WARN: Type inference failed for: r0v114 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r0v67 */
    /* JADX WARN: Type inference failed for: r0v70 */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r0v74 */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r0v81 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startEdgeLighting(java.lang.String r16, com.samsung.android.edge.SemEdgeLightingInfo r17, int r18) {
        /*
            Method dump skipped, instructions count: 961
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.edgelighting.EdgeLightingService.startEdgeLighting(java.lang.String, com.samsung.android.edge.SemEdgeLightingInfo, int):void");
    }

    public final void stopEdgeLightingService() {
        setProcessForeground(false);
        stopForeground(true);
        stopSelf();
    }
}
