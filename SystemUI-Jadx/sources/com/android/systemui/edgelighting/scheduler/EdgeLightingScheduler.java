package com.android.systemui.edgelighting.scheduler;

import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.app.SemStatusBarManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.util.ContrastColorUtil;
import com.android.systemui.R;
import com.android.systemui.edgelighting.EdgeLightingForegroundService;
import com.android.systemui.edgelighting.EdgeLightingService;
import com.android.systemui.edgelighting.Feature;
import com.android.systemui.edgelighting.device.EdgeLightingCoverManager;
import com.android.systemui.edgelighting.effect.data.EdgeEffectInfo;
import com.android.systemui.edgelighting.manager.EdgeLightingSettingsObserver;
import com.android.systemui.edgelighting.manager.EdgeLightingStyleManager;
import com.android.systemui.edgelighting.scheduler.LightingScheduleInfo;
import com.android.systemui.edgelighting.scheduler.NotificationLightingScheduler;
import com.android.systemui.edgelighting.turnover.TurnOverEdgeLighting;
import com.android.systemui.edgelighting.utils.EdgeLightingSettingUtils;
import com.android.systemui.edgelighting.utils.SemEdgeLightingInfoUtils;
import com.android.systemui.edgelighting.utils.Utils;
import com.samsung.android.edge.SemEdgeLightingInfo;
import com.samsung.android.edge.SemEdgeManager;
import com.samsung.android.knox.ucm.configurator.UniversalCredentialManager;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import com.samsung.systemui.splugins.edgelightingplus.PluginEdgeLightingPlus;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeLightingScheduler {
    public ApplicationLightingScheduler mApplicationLightingScheduler;
    public Context mContext;
    public final SemEdgeManager mEdgeManager;
    public boolean mIsScreenOnReceived;
    public NotificationLightingScheduler mNotificationLightingScheduler;
    public AnonymousClass7 mOneHandOperationObserver;
    public PowerManager mPm;
    public EdgeLightingService.AnonymousClass4 mRequester;
    public EdgeLightingScreenStatus mScreenStatusChecker;
    public TurnOverEdgeLighting mTurnOverEdgeLighting;
    public PowerManager.WakeLock mWakeLock;
    public final AnonymousClass1 mHandler = new Handler() { // from class: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler.1
        /* JADX WARN: Code restructure failed: missing block: B:178:0x045b, code lost:
        
            if (r14 != 6) goto L199;
         */
        /* JADX WARN: Removed duplicated region for block: B:181:0x0499  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x04a5  */
        /* JADX WARN: Removed duplicated region for block: B:207:0x053d  */
        /* JADX WARN: Removed duplicated region for block: B:390:0x0948  */
        /* JADX WARN: Removed duplicated region for block: B:391:0x0949 A[Catch: all -> 0x09b9, TryCatch #0 {, blocks: (B:360:0x0881, B:362:0x088c, B:363:0x0894, B:366:0x0897, B:368:0x08a7, B:370:0x08c3, B:372:0x08da, B:374:0x08e3, B:375:0x08eb, B:377:0x08ef, B:379:0x08f3, B:380:0x08f9, B:381:0x0916, B:383:0x091a, B:385:0x0920, B:387:0x0928, B:388:0x0930, B:391:0x0949, B:393:0x0963, B:395:0x0969, B:396:0x096c, B:398:0x09b7), top: B:359:0x0881 }] */
        /* JADX WARN: Removed duplicated region for block: B:70:0x01b3  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x01b5 A[Catch: all -> 0x025c, TryCatch #1 {, blocks: (B:42:0x00f8, B:44:0x0101, B:45:0x0109, B:48:0x010c, B:50:0x011c, B:52:0x0148, B:54:0x0151, B:55:0x0159, B:57:0x015d, B:59:0x0161, B:60:0x0166, B:61:0x0183, B:63:0x0187, B:65:0x018d, B:67:0x0194, B:68:0x019c, B:71:0x01b5, B:73:0x01cf, B:75:0x01d5, B:76:0x01d8, B:78:0x0259, B:81:0x0224, B:83:0x0232, B:85:0x023c, B:87:0x0248, B:89:0x024e, B:90:0x0254), top: B:41:0x00f8 }] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void handleMessage(android.os.Message r15) {
            /*
                Method dump skipped, instructions count: 2493
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler.AnonymousClass1.handleMessage(android.os.Message):void");
        }
    };
    public final AnonymousClass2 mEdgeLightingObserver = new EdgeLightingSettingsObserver.EdgeLightingObserver() { // from class: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler.2
        @Override // com.android.systemui.edgelighting.manager.EdgeLightingSettingsObserver.EdgeLightingObserver
        public final Handler getHandler() {
            return EdgeLightingScheduler.this.mHandler;
        }

        @Override // com.android.systemui.edgelighting.manager.EdgeLightingSettingsObserver.EdgeLightingObserver
        public final void onChange() {
            EdgeLightingScheduler.this.mTurnOverEdgeLighting.setEnable();
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 {
        public AnonymousClass3() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 {
        public AnonymousClass4() {
        }

        public final void stopNotification(boolean z) {
            EdgeLightingScheduler edgeLightingScheduler = EdgeLightingScheduler.this;
            TurnOverEdgeLighting turnOverEdgeLighting = edgeLightingScheduler.mTurnOverEdgeLighting;
            TurnOverEdgeLighting.ITurnModeState onNotificationEnd = turnOverEdgeLighting.mCurrentTurnMode.onNotificationEnd();
            int mode = turnOverEdgeLighting.mCurrentTurnMode.getMode();
            boolean z2 = true;
            if (mode != 1) {
                if (mode != 2) {
                    turnOverEdgeLighting.mCurrentTurnMode = onNotificationEnd;
                    z2 = false;
                } else {
                    turnOverEdgeLighting.mCurrentTurnMode = onNotificationEnd;
                }
            } else {
                turnOverEdgeLighting.mCurrentTurnMode = onNotificationEnd;
            }
            if (z2) {
                Slog.d("EdgeLightingScheduler", "stopNotification: end with turnover");
            } else {
                Slog.d("EdgeLightingScheduler", "stopNotification");
                if (z) {
                    Slog.d("EdgeLightingScheduler", "stop Notification to turn to heads up");
                    edgeLightingScheduler.mRequester.requestStopService();
                    PowerManager.WakeLock wakeLock = edgeLightingScheduler.mWakeLock;
                    if (wakeLock != null && wakeLock.isHeld()) {
                        edgeLightingScheduler.mWakeLock.release();
                    }
                } else if (edgeLightingScheduler.mRequester.isUIControllerExist()) {
                    edgeLightingScheduler.mRequester.getUIController(false).stopEdgeEffect();
                } else {
                    Slog.d("EdgeLightingScheduler", "stopNotification not exist. so stop service");
                    edgeLightingScheduler.mRequester.requestStopService();
                    PowerManager.WakeLock wakeLock2 = edgeLightingScheduler.mWakeLock;
                    if (wakeLock2 != null && wakeLock2.isHeld()) {
                        edgeLightingScheduler.mWakeLock.release();
                    }
                }
                if (Utils.isLargeCoverFlipFolded()) {
                    EdgeLightingService.AnonymousClass4 anonymousClass4 = edgeLightingScheduler.mRequester;
                    EdgeLightingService edgeLightingService = EdgeLightingService.this;
                    try {
                        if (edgeLightingService.mConditionListener != null && !anonymousClass4.isScreenOn()) {
                            edgeLightingService.mConditionListener.requestDozeStateSubScreen(false);
                        }
                    } catch (RemoteException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
            edgeLightingScheduler.mTurnOverEdgeLighting.mContext.stopService(new Intent(edgeLightingScheduler.mTurnOverEdgeLighting.mContext, (Class<?>) EdgeLightingForegroundService.class));
            if (edgeLightingScheduler.mOneHandOperationObserver != null) {
                edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver().unregisterContentObserver(edgeLightingScheduler.mOneHandOperationObserver);
                edgeLightingScheduler.mOneHandOperationObserver = null;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 {
        public AnonymousClass5() {
        }

        public final void onIdle() {
            EdgeLightingScheduler edgeLightingScheduler = EdgeLightingScheduler.this;
            if (edgeLightingScheduler.mRequester.isUIControllerExist()) {
                edgeLightingScheduler.mRequester.getUIController(false).stopEdgeEffect();
            }
        }

        public final void onTurnOver(boolean z) {
            EdgeLightingScheduler edgeLightingScheduler = EdgeLightingScheduler.this;
            if (z) {
                if (Settings.System.getIntForUser(EdgeLightingService.this.getContentResolver(), "edge_lighting_show_condition", !Feature.FEATURE_SUPPORT_AOD ? 1 : 0, -2) == 1) {
                    Slog.d("EdgeLightingScheduler", "onTurnOver: calling not available with screen on setting");
                    return;
                }
                Slog.d("EdgeLightingScheduler", "startCallingEffect");
                EdgeEffectInfo edgeEffectInfo = new EdgeEffectInfo();
                edgeEffectInfo.mEffectColors = new int[]{-9980597};
                edgeEffectInfo.mIsBlackBG = true;
                edgeEffectInfo.mStrokeWidth = edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getResources().getDimensionPixelSize(R.dimen.edge_lighting_turnover_width);
                edgeEffectInfo.mWidthDepth = -1;
                edgeEffectInfo.mInfiniteLighting = true;
                edgeLightingScheduler.mRequester.getUIController(true).startEdgeEffect(edgeEffectInfo);
                Slog.d("EdgeLightingScheduler", "EdgeLightingEventStyleInfo," + EdgeLightingSettingUtils.effectInfoToString(edgeEffectInfo, EdgeLightingStyleManager.getInstance().getEdgeLightingStyleType(edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver())));
                edgeLightingScheduler.mRequester.isScreenOn();
                edgeLightingScheduler.mRequester.isScreenOn();
                edgeLightingScheduler.mRequester.getClass();
                return;
            }
            NotificationLightingScheduler notificationLightingScheduler = edgeLightingScheduler.mNotificationLightingScheduler;
            LightingScheduleInfo lightingScheduleInfo = notificationLightingScheduler.mCurrentLightingScheduleInfo;
            if (lightingScheduleInfo == null) {
                Slog.d("EdgeLightingScheduler", "onTurnOver: noti info empty");
                return;
            }
            notificationLightingScheduler.extendLightingDuration(PluginEdgeLightingPlus.VERSION, true);
            if (edgeLightingScheduler.mRequester.isScreenOn()) {
                LightingScheduleInfo.LightingLogicPolicy lightingLogicPolicy = lightingScheduleInfo.mLightingLogicPolicy;
                if (lightingLogicPolicy == null) {
                    lightingLogicPolicy = new LightingScheduleInfo.LightingLogicPolicy();
                }
                if (lightingLogicPolicy.isNeedLightOnWhenTurnOveredLcdOn) {
                    EdgeLightingScheduler.m1248$$Nest$mstartNotiEffect(edgeLightingScheduler, true);
                    return;
                }
                return;
            }
            LightingScheduleInfo.LightingLogicPolicy lightingLogicPolicy2 = lightingScheduleInfo.mLightingLogicPolicy;
            if (lightingLogicPolicy2 == null) {
                lightingLogicPolicy2 = new LightingScheduleInfo.LightingLogicPolicy();
            }
            if (lightingLogicPolicy2.isNeedLightOnWhenTurnOveredLcdOff) {
                EdgeLightingScheduler.m1248$$Nest$mstartNotiEffect(edgeLightingScheduler, true);
            }
        }

        public final void onTurnRight() {
            boolean z;
            EdgeLightingScheduler edgeLightingScheduler = EdgeLightingScheduler.this;
            LightingScheduleInfo lightingScheduleInfo = edgeLightingScheduler.mNotificationLightingScheduler.mCurrentLightingScheduleInfo;
            if (lightingScheduleInfo == null) {
                Slog.d("EdgeLightingScheduler", "onTurnRight: noti info empty");
                return;
            }
            if (edgeLightingScheduler.mRequester.isScreenOn()) {
                EdgeLightingService.AnonymousClass4 anonymousClass4 = edgeLightingScheduler.mRequester;
                anonymousClass4.getClass();
                boolean z2 = EdgeLightingService.sConfigured;
                KeyguardManager keyguardManager = (KeyguardManager) EdgeLightingService.this.getSystemService("keyguard");
                if (keyguardManager != null && keyguardManager.isKeyguardLocked()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    Slog.d("EdgeLightingScheduler", "onTurnRight: keyguard + screenon");
                    return;
                }
                LightingScheduleInfo.LightingLogicPolicy lightingLogicPolicy = lightingScheduleInfo.mLightingLogicPolicy;
                if (lightingLogicPolicy == null) {
                    lightingLogicPolicy = new LightingScheduleInfo.LightingLogicPolicy();
                }
                if (lightingLogicPolicy.isNeedLightOnWhenTurnRightedLcdOn) {
                    EdgeLightingScheduler.m1248$$Nest$mstartNotiEffect(edgeLightingScheduler, false);
                    return;
                }
                return;
            }
            LightingScheduleInfo.LightingLogicPolicy lightingLogicPolicy2 = lightingScheduleInfo.mLightingLogicPolicy;
            if (lightingLogicPolicy2 == null) {
                lightingLogicPolicy2 = new LightingScheduleInfo.LightingLogicPolicy();
            }
            if (lightingLogicPolicy2.isNeedLightOnWhenTurnRightedLcdOff) {
                EdgeLightingScheduler.m1248$$Nest$mstartNotiEffect(edgeLightingScheduler, false);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 {
        public AnonymousClass6() {
        }
    }

    /* renamed from: -$$Nest$misNeedToBlockedByPolicy, reason: not valid java name */
    public static boolean m1247$$Nest$misNeedToBlockedByPolicy(EdgeLightingScheduler edgeLightingScheduler, String str, int i) {
        boolean z;
        SemStatusBarManager semStatusBarManager = (SemStatusBarManager) EdgeLightingService.this.getSystemService(SemStatusBarManager.class);
        if (semStatusBarManager != null) {
            z = semStatusBarManager.isPanelExpanded();
        } else {
            z = false;
        }
        if (z) {
            Slog.d("EdgeLightingScheduler", "isNeedToBlockedByPolicy: not work on statusbar");
        } else if (Settings.System.getIntForUser(EdgeLightingService.this.getContentResolver(), "edge_lighting_show_condition", !Feature.FEATURE_SUPPORT_AOD ? 1 : 0, -2) == 1 && str != null && str.startsWith("com.samsung.android.messaging") && !edgeLightingScheduler.mIsScreenOnReceived) {
            Slog.d("EdgeLightingScheduler", "isNeedToBlockedByPolicy: skip by screen on order policy " + i + " " + str);
        } else {
            if (EdgeLightingCoverManager.getInstance().mSwitchState) {
                return false;
            }
            Slog.d("EdgeLightingScheduler", "isNeedToBlockedByPolicy: not work when cover");
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r8v7, types: [com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler$7] */
    /* renamed from: -$$Nest$mstartNotiEffect, reason: not valid java name */
    public static void m1248$$Nest$mstartNotiEffect(EdgeLightingScheduler edgeLightingScheduler, boolean z) {
        boolean z2;
        boolean z3;
        int i;
        int i2;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3;
        String str;
        Integer valueOf;
        StringBuffer stringBuffer = new StringBuffer("startNotiEffect:  dur=");
        LightingScheduleInfo lightingScheduleInfo = edgeLightingScheduler.mNotificationLightingScheduler.mCurrentLightingScheduleInfo;
        if (lightingScheduleInfo == null) {
            Slog.d("EdgeLightingScheduler", "startNotiEffect: noti info empty");
            return;
        }
        if (Utils.isLargeCoverFlipFolded()) {
            EdgeLightingService.AnonymousClass4 anonymousClass4 = edgeLightingScheduler.mRequester;
            EdgeLightingService edgeLightingService = EdgeLightingService.this;
            try {
                if (edgeLightingService.mConditionListener != null && !anonymousClass4.isScreenOn()) {
                    edgeLightingService.mConditionListener.requestDozeStateSubScreen(true);
                }
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }
        if (Utils.isLargeCoverFlipFolded()) {
            edgeLightingScheduler.mPm.userActivity(SystemClock.uptimeMillis(), 0, 0);
        }
        boolean isScreenOn = edgeLightingScheduler.mRequester.isScreenOn();
        if (edgeLightingScheduler.mOneHandOperationObserver != null) {
            edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver().unregisterContentObserver(edgeLightingScheduler.mOneHandOperationObserver);
            edgeLightingScheduler.mOneHandOperationObserver = null;
        }
        if (edgeLightingScheduler.mOneHandOperationObserver == null) {
            edgeLightingScheduler.mOneHandOperationObserver = new ContentObserver(new Handler()) { // from class: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler.7
                @Override // android.database.ContentObserver
                public final void onChange(boolean z7) {
                    NotificationLightingScheduler notificationLightingScheduler;
                    EdgeLightingScheduler edgeLightingScheduler2 = EdgeLightingScheduler.this;
                    Context context = edgeLightingScheduler2.mTurnOverEdgeLighting.mContext;
                    edgeLightingScheduler2.getClass();
                    boolean z8 = false;
                    if (Settings.System.getIntForUser(context.getContentResolver(), "any_screen_running", 0, -2) == 1) {
                        z8 = true;
                    }
                    Slog.i("EdgeLightingScheduler", " mOneHandOperationObserver value = " + z8);
                    if (z8 && (notificationLightingScheduler = EdgeLightingScheduler.this.mNotificationLightingScheduler) != null) {
                        notificationLightingScheduler.flushNotiNow();
                    }
                }
            };
        }
        edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("any_screen_running"), false, edgeLightingScheduler.mOneHandOperationObserver);
        stringBuffer.append(lightingScheduleInfo.getDuration());
        EdgeEffectInfo edgeEffectInfo = new EdgeEffectInfo();
        if (lightingScheduleInfo.getActionList() != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        edgeEffectInfo.mHasActionButton = z2;
        Context context = edgeLightingScheduler.mTurnOverEdgeLighting.mContext;
        String[] notiText = lightingScheduleInfo.getNotiText();
        SemEdgeLightingInfo semEdgeLightingInfo = lightingScheduleInfo.mLightingInfo;
        int[] effectColors = semEdgeLightingInfo.getEffectColors();
        String str2 = lightingScheduleInfo.mPackageName;
        edgeEffectInfo.mEffectColors = EdgeLightingSettingUtils.getLightingColor(context, notiText, str2, effectColors);
        edgeEffectInfo.mIsBlackBG = z;
        edgeLightingScheduler.mTurnOverEdgeLighting.getClass();
        edgeEffectInfo.mEdgeLightingAction = true;
        if (!isScreenOn) {
            edgeLightingScheduler.mTurnOverEdgeLighting.mContext.startService(new Intent(edgeLightingScheduler.mTurnOverEdgeLighting.mContext, (Class<?>) EdgeLightingForegroundService.class));
        }
        if (!isScreenOn && z) {
            stringBuffer.append(" +TurnOver");
            edgeEffectInfo.mLightingDuration = 6000L;
            edgeEffectInfo.mStrokeWidth = edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getResources().getDimensionPixelSize(R.dimen.edge_lighting_turnover_width);
            edgeEffectInfo.mWidthDepth = -1;
        } else {
            edgeEffectInfo.mStrokeAlpha = 1.0f - (Settings.System.getIntForUser(edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver(), "edge_lighting_transparency", 0, -2) / 100.0f);
            Context context2 = edgeLightingScheduler.mTurnOverEdgeLighting.mContext;
            float edgeLightingStyleWidth = EdgeLightingSettingUtils.getEdgeLightingStyleWidth(context2, EdgeLightingStyleManager.getInstance().getEdgeLightingStyleType(edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver()), Settings.System.getIntForUser(context2.getContentResolver(), "edge_lighting_thickness", 0, -2));
            int intForUser = Settings.System.getIntForUser(edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver(), "edge_lighting_thickness", 0, -2);
            edgeEffectInfo.mStrokeWidth = edgeLightingStyleWidth;
            edgeEffectInfo.mWidthDepth = intForUser;
            edgeEffectInfo.mLightingDuration = EdgeLightingSettingUtils.getEdgeLightingDuration(EdgeLightingSettingUtils.loadEdgeLightingDurationOptionType(edgeLightingScheduler.mTurnOverEdgeLighting.mContext));
            if (isScreenOn) {
                stringBuffer.append(" +On");
            } else {
                stringBuffer.append(" +Off");
            }
        }
        if (z) {
            stringBuffer.append(" +TurnOver");
            edgeLightingScheduler.mRequester.getUIController(true).startEdgeEffect(edgeEffectInfo);
            Slog.d("EdgeLightingScheduler", "EdgeLightingEventStyleInfo," + EdgeLightingSettingUtils.effectInfoToString(edgeEffectInfo, EdgeLightingStyleManager.getInstance().getEdgeLightingStyleType(edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver())));
            edgeLightingScheduler.mWakeLock.acquire((long) (lightingScheduleInfo.getDuration() + 2000));
        } else {
            boolean isNeedToSanitized = edgeLightingScheduler.mRequester.isNeedToSanitized(lightingScheduleInfo.getUserId(), lightingScheduleInfo.getVisibility(), lightingScheduleInfo.getNotificationKey());
            edgeEffectInfo.mAppIcon = edgeLightingScheduler.getAppIcon(lightingScheduleInfo);
            edgeEffectInfo.mIsSupportAppIcon = edgeLightingScheduler.isSupportAppIcon(str2);
            edgeEffectInfo.mShouldShowAppIcon = EdgeLightingService.this.mShouldShowAppIcon;
            edgeEffectInfo.mText = lightingScheduleInfo.getNotiText();
            int preloadIndex = EdgeLightingStyleManager.getInstance().getPreloadIndex(EdgeLightingStyleManager.getInstance().getEdgeLightingStyleType(edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver()));
            if (Settings.System.getInt(edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver(), "remove_animations", 0) == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            Uri parse = Uri.parse("content://com.samsung.android.systemui.edgelighting.plus.provider");
            if (edgeLightingScheduler.mContext.getContentResolver().acquireContentProviderClient(parse) != null) {
                Bundle bundle = new Bundle();
                String[] strArr = edgeEffectInfo.mText;
                if (strArr != null) {
                    bundle.putString(UniversalCredentialUtil.AGENT_TITLE, strArr[0]);
                    bundle.putString("description", edgeEffectInfo.mText[1]);
                }
                i = preloadIndex;
                edgeEffectInfo.mPlusEffectBundle = edgeLightingScheduler.mContext.getContentResolver().call(parse, "getData()", (String) null, bundle);
            } else {
                i = preloadIndex;
            }
            if (edgeEffectInfo.mPlusEffectBundle != null) {
                edgeEffectInfo.mEffectType = 100;
            } else {
                if (z3) {
                    i2 = 0;
                } else {
                    i2 = i;
                }
                edgeEffectInfo.mEffectType = i2;
            }
            edgeEffectInfo.mPackageName = str2;
            edgeEffectInfo.mIsMultiResolutionSupoorted = false;
            edgeEffectInfo.mIsGrayScaled = ContrastColorUtil.getInstance(edgeLightingScheduler.mTurnOverEdgeLighting.mContext).isGrayscaleIcon(lightingScheduleInfo.mIcon);
            EdgeLightingService.AnonymousClass4 anonymousClass42 = edgeLightingScheduler.mRequester;
            anonymousClass42.getClass();
            boolean z7 = EdgeLightingService.sConfigured;
            KeyguardManager keyguardManager = (KeyguardManager) EdgeLightingService.this.getSystemService("keyguard");
            if (keyguardManager != null && keyguardManager.isKeyguardLocked()) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z4) {
                stringBuffer.append("+locked");
                boolean z8 = true;
                if (Settings.Secure.getIntForUser(EdgeLightingService.this.getContentResolver(), "lock_screen_show_notifications", 0, -2) == 1) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (z5) {
                    if (Settings.Secure.getIntForUser(EdgeLightingService.this.getContentResolver(), "lock_screen_allow_private_notifications", 1, -2) == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    Bundle extra = semEdgeLightingInfo.getExtra();
                    if (extra != null && (valueOf = Integer.valueOf(extra.getInt("package_visiblity"))) != null) {
                        i3 = valueOf.intValue();
                    } else {
                        i3 = -1000;
                    }
                    if (i3 != 0) {
                        z8 = false;
                    }
                    int visibility = lightingScheduleInfo.getVisibility();
                    if (isNeedToSanitized || visibility == 0 || visibility == -1 || z6 || z8) {
                        edgeEffectInfo.mText = new String[]{edgeLightingScheduler.getAppName(str2), null};
                        if (isScreenOn && !Utils.isLargeCoverFlipFolded()) {
                            Slog.i("EdgeLightingScheduler", "Not showing edgelighting because suppressAwakeHeadsUp is true");
                            return;
                        }
                    }
                    stringBuffer.append("+notiOn");
                    String str3 = " ";
                    if (!z6) {
                        str = " ";
                    } else {
                        str = "+hideContent";
                    }
                    stringBuffer.append(str);
                    if (z8) {
                        str3 = "+hideContentPackageName";
                    }
                    stringBuffer.append(str3);
                    stringBuffer.append("notiVisibility: ");
                    stringBuffer.append(visibility);
                }
            } else if (isNeedToSanitized) {
                edgeEffectInfo.mText = new String[]{edgeLightingScheduler.getAppName(str2), null};
            }
            PendingIntent contentIntent = lightingScheduleInfo.getContentIntent();
            if (contentIntent != null) {
                edgeEffectInfo.mPendingIntent = contentIntent;
            }
            edgeEffectInfo.mNotificationKey = lightingScheduleInfo.getNotificationKey();
            edgeLightingScheduler.mRequester.getUIController(false).startEdgeEffect(edgeEffectInfo);
            Slog.d("EdgeLightingScheduler", "EdgeLightingEventStyleInfo," + EdgeLightingSettingUtils.effectInfoToString(edgeEffectInfo, EdgeLightingStyleManager.getInstance().getEdgeLightingStyleType(edgeLightingScheduler.mTurnOverEdgeLighting.mContext.getContentResolver())));
            edgeLightingScheduler.mWakeLock.acquire((long) (lightingScheduleInfo.getDuration() + 2000));
        }
        String text = SemEdgeLightingInfoUtils.getText(semEdgeLightingInfo, "component");
        boolean isScreenOn2 = edgeLightingScheduler.mRequester.isScreenOn();
        edgeLightingScheduler.mRequester.isScreenOn();
        edgeLightingScheduler.mRequester.getClass();
        if (text != null && isScreenOn2) {
            edgeLightingScheduler.mRequester.getClass();
        }
        Slog.d("EdgeLightingScheduler", stringBuffer.toString());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler$1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler$2] */
    public EdgeLightingScheduler(SemEdgeManager semEdgeManager) {
        this.mEdgeManager = semEdgeManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable getAppIcon(com.android.systemui.edgelighting.scheduler.LightingScheduleInfo r6) {
        /*
            r5 = this;
            java.lang.String r0 = r6.mPackageName
            android.content.Context r1 = r5.mContext     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            android.content.pm.PackageManager r1 = r1.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            r2 = 4202624(0x402080, float:5.88913E-39)
            android.content.pm.ApplicationInfo r2 = r1.getApplicationInfo(r0, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            boolean r3 = r5.isSupportAppIcon(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            if (r3 == 0) goto L5d
            com.android.systemui.edgelighting.EdgeLightingService$4 r3 = r5.mRequester     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            com.android.systemui.edgelighting.EdgeLightingService r3 = com.android.systemui.edgelighting.EdgeLightingService.this     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            boolean r3 = r3.mIsColorThemeEnabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            if (r3 == 0) goto L54
            android.content.Context r3 = r5.mContext     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            java.lang.Class<android.content.pm.LauncherApps> r4 = android.content.pm.LauncherApps.class
            java.lang.Object r3 = r3.getSystemService(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            android.content.pm.LauncherApps r3 = (android.content.pm.LauncherApps) r3     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            int r4 = r2.uid     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            android.os.UserHandle r4 = android.os.UserHandle.getUserHandleForUid(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            java.util.List r0 = r3.getActivityList(r0, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            boolean r3 = r0.isEmpty()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            if (r3 != 0) goto L4f
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            android.content.pm.LauncherActivityInfo r0 = (android.content.pm.LauncherActivityInfo) r0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            android.content.Context r5 = r5.mContext     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            android.content.res.Resources r5 = r5.getResources()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            android.util.DisplayMetrics r5 = r5.getDisplayMetrics()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            int r5 = r5.densityDpi     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            android.graphics.drawable.Drawable r5 = r0.semGetBadgedIconForIconTray(r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            goto L5e
        L4f:
            android.graphics.drawable.Drawable r5 = r2.loadIcon(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            goto L5e
        L54:
            android.graphics.drawable.Drawable r5 = r2.loadIcon(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L59
            goto L5e
        L59:
            r5 = move-exception
            r5.printStackTrace()
        L5d:
            r5 = 0
        L5e:
            if (r5 != 0) goto L62
            android.graphics.drawable.Drawable r5 = r6.mIcon
        L62:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler.getAppIcon(com.android.systemui.edgelighting.scheduler.LightingScheduleInfo):android.graphics.drawable.Drawable");
    }

    public final String getAppName(String str) {
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8704);
            if (applicationInfo != null) {
                return String.valueOf(packageManager.getApplicationLabel(applicationInfo));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return str;
    }

    public final boolean isSupportAppIcon(String str) {
        try {
            ApplicationInfo applicationInfo = this.mContext.getPackageManager().getApplicationInfo(str, 4202624);
            if (str.equals("android") || str.equals("com.android.systemui") || applicationInfo.icon == 0) {
                return false;
            }
            if (!EdgeLightingService.this.mShouldShowAppIcon) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void notifyEdgeLightingPackageList(boolean z) {
        LightingScheduleInfo lightingScheduleInfo;
        LightingScheduleInfo lightingScheduleInfo2;
        ArrayList arrayList = new ArrayList();
        if (!z) {
            ApplicationLightingScheduler applicationLightingScheduler = this.mApplicationLightingScheduler;
            if (applicationLightingScheduler != null) {
                synchronized (applicationLightingScheduler.mLinkedInfo) {
                    lightingScheduleInfo2 = applicationLightingScheduler.mCurrentLightingScheduleInfo;
                }
                if (lightingScheduleInfo2 != null) {
                    arrayList.add(lightingScheduleInfo2.mPackageName);
                }
            }
            NotificationLightingScheduler notificationLightingScheduler = this.mNotificationLightingScheduler;
            if (notificationLightingScheduler != null && (lightingScheduleInfo = notificationLightingScheduler.mCurrentLightingScheduleInfo) != null) {
                arrayList.add(lightingScheduleInfo.mPackageName);
            }
        }
        Slog.d("EdgeLightingScheduler", "notifyEdgeLightingPackageList :" + arrayList.toString() + ", empty = " + z);
        this.mEdgeManager.updateEdgeLightingPackageList(arrayList);
    }

    public final void notifyScreenOff() {
        this.mIsScreenOnReceived = false;
        NotificationLightingScheduler notificationLightingScheduler = this.mNotificationLightingScheduler;
        if (notificationLightingScheduler != null) {
            notificationLightingScheduler.flushNotiNow();
        }
        if (this.mRequester.isUIControllerExist()) {
            this.mRequester.getUIController(false).stopEdgeEffect();
        }
    }

    public final void notifyScreenOn() {
        boolean z = true;
        this.mIsScreenOnReceived = true;
        if (this.mScreenStatusChecker != null) {
            Slog.d("EdgeLightingScreenStatus", UniversalCredentialManager.RESET_APPLET_FORM_FACTOR);
            System.currentTimeMillis();
        }
        if (this.mTurnOverEdgeLighting.mIsUpsideDown != 1) {
            z = false;
        }
        if (z) {
            Slog.d("EdgeLightingScheduler", "notifyScreenOn: isUpsideDown is true");
            return;
        }
        NotificationLightingScheduler notificationLightingScheduler = this.mNotificationLightingScheduler;
        if (notificationLightingScheduler != null && notificationLightingScheduler.mCurrentLightingScheduleInfo != null) {
            NotificationLightingScheduler.AnonymousClass1 anonymousClass1 = notificationLightingScheduler.mNotificationScheduleHandler;
            if (!anonymousClass1.hasMessages(0)) {
                anonymousClass1.sendMessageDelayed(anonymousClass1.obtainMessage(0, notificationLightingScheduler.mCurrentLightingScheduleInfo.getNotificationKey()), 4000L);
            }
        }
    }
}
