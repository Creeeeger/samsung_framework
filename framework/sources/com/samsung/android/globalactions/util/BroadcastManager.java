package com.samsung.android.globalactions.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes5.dex */
public class BroadcastManager {
    public static final String ACTION_KEYGUARD_STATE_UPDATE = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE";
    public static final String ACTION_POWER_OFF_ANIMATION_START = "POWER_OFF_ANIMATION_START";
    public static final String ACTION_POWER_OFF_CANCEL = "POWER_OFF_CANCEL";
    public static final String ACTION_SHOW_GLOBAL_ACTIONS = "android.intent.action.SHOW_GLOBAL_ACTIONS";
    public static final String ACTION_TALKBACK_TOGGLED = "com.samsung.settings.action.talkback_toggled";
    public static final String SYSTEM_DIALOG_REASON_DREAM = "dream";
    public static final String SYSTEM_DIALOG_REASON_KEY = "reason";
    public static final String TAG = "BroadcastManager";
    private final Context mContext;
    private BroadcastReceiver mDismissBroadcastReceiver;
    private final HandlerUtil mHandlerUtil;
    private BroadcastReceiver mKeyguardShowBroadcastReceiver;
    private final LogWrapper mLogWrapper;
    private BroadcastReceiver mSecureConfirmBroadcastReceiver;

    public BroadcastManager(Context context, LogWrapper logWrapper, HandlerUtil handlerUtil) {
        this.mContext = context;
        this.mLogWrapper = logWrapper;
        this.mHandlerUtil = handlerUtil;
    }

    public void registerDismissActions(Runnable dismissRunnable, Runnable dismissVIRunnable) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_SCREEN_OFF);
        intentFilter.addAction(Intent.ACTION_CLOSE_SYSTEM_DIALOGS);
        intentFilter.addAction(ACTION_TALKBACK_TOGGLED);
        intentFilter.addAction(ACTION_POWER_OFF_CANCEL);
        intentFilter.addAction(ACTION_KEYGUARD_STATE_UPDATE);
        intentFilter.addAction(ACTION_POWER_OFF_ANIMATION_START);
        AnonymousClass1 anonymousClass1 = new BroadcastReceiver() { // from class: com.samsung.android.globalactions.util.BroadcastManager.1
            final /* synthetic */ Runnable val$dismissRunnable;
            final /* synthetic */ Runnable val$dismissVIRunnable;

            AnonymousClass1(Runnable dismissRunnable2, Runnable dismissVIRunnable2) {
                dismissRunnable = dismissRunnable2;
                dismissVIRunnable = dismissVIRunnable2;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                char c;
                String action = intent.getAction();
                BroadcastManager.this.mLogWrapper.i(BroadcastManager.TAG, "action = " + action);
                switch (action.hashCode()) {
                    case -2128145023:
                        if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1932656035:
                        if (action.equals(BroadcastManager.ACTION_POWER_OFF_ANIMATION_START)) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case -616862702:
                        if (action.equals(BroadcastManager.ACTION_TALKBACK_TOGGLED)) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case -403228793:
                        if (action.equals(Intent.ACTION_CLOSE_SYSTEM_DIALOGS)) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case -140814967:
                        if (action.equals(BroadcastManager.ACTION_KEYGUARD_STATE_UPDATE)) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1747999492:
                        if (action.equals(BroadcastManager.ACTION_POWER_OFF_CANCEL)) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        dismissRunnable.run();
                        return;
                    case 1:
                        String reason = intent.getStringExtra("reason");
                        if ("dream".equals(reason)) {
                            dismissRunnable.run();
                            return;
                        } else {
                            dismissVIRunnable.run();
                            return;
                        }
                    case 2:
                    case 3:
                        dismissVIRunnable.run();
                        return;
                    case 4:
                        boolean bouncerShowing = intent.getBooleanExtra("bouncerShowing", false);
                        if (!bouncerShowing) {
                            dismissRunnable.run();
                            return;
                        }
                        return;
                    case 5:
                        BroadcastManager.this.mHandlerUtil.postDelayed(dismissVIRunnable, 2000L);
                        return;
                    default:
                        return;
                }
            }
        };
        this.mDismissBroadcastReceiver = anonymousClass1;
        this.mContext.registerReceiver(anonymousClass1, intentFilter, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.samsung.android.globalactions.util.BroadcastManager$1 */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 extends BroadcastReceiver {
        final /* synthetic */ Runnable val$dismissRunnable;
        final /* synthetic */ Runnable val$dismissVIRunnable;

        AnonymousClass1(Runnable dismissRunnable2, Runnable dismissVIRunnable2) {
            dismissRunnable = dismissRunnable2;
            dismissVIRunnable = dismissVIRunnable2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            char c;
            String action = intent.getAction();
            BroadcastManager.this.mLogWrapper.i(BroadcastManager.TAG, "action = " + action);
            switch (action.hashCode()) {
                case -2128145023:
                    if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1932656035:
                    if (action.equals(BroadcastManager.ACTION_POWER_OFF_ANIMATION_START)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -616862702:
                    if (action.equals(BroadcastManager.ACTION_TALKBACK_TOGGLED)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -403228793:
                    if (action.equals(Intent.ACTION_CLOSE_SYSTEM_DIALOGS)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -140814967:
                    if (action.equals(BroadcastManager.ACTION_KEYGUARD_STATE_UPDATE)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1747999492:
                    if (action.equals(BroadcastManager.ACTION_POWER_OFF_CANCEL)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    dismissRunnable.run();
                    return;
                case 1:
                    String reason = intent.getStringExtra("reason");
                    if ("dream".equals(reason)) {
                        dismissRunnable.run();
                        return;
                    } else {
                        dismissVIRunnable.run();
                        return;
                    }
                case 2:
                case 3:
                    dismissVIRunnable.run();
                    return;
                case 4:
                    boolean bouncerShowing = intent.getBooleanExtra("bouncerShowing", false);
                    if (!bouncerShowing) {
                        dismissRunnable.run();
                        return;
                    }
                    return;
                case 5:
                    BroadcastManager.this.mHandlerUtil.postDelayed(dismissVIRunnable, 2000L);
                    return;
                default:
                    return;
            }
        }
    }

    public void registerSecureConfirmAction(Runnable confirmRunnable) {
        IntentFilter filter = new IntentFilter();
        filter.addAction(ACTION_SHOW_GLOBAL_ACTIONS);
        AnonymousClass2 anonymousClass2 = new BroadcastReceiver() { // from class: com.samsung.android.globalactions.util.BroadcastManager.2
            final /* synthetic */ Runnable val$confirmRunnable;

            AnonymousClass2(Runnable confirmRunnable2) {
                confirmRunnable = confirmRunnable2;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (BroadcastManager.ACTION_SHOW_GLOBAL_ACTIONS.equals(action)) {
                    confirmRunnable.run();
                }
            }
        };
        this.mSecureConfirmBroadcastReceiver = anonymousClass2;
        this.mContext.registerReceiver(anonymousClass2, filter, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.samsung.android.globalactions.util.BroadcastManager$2 */
    /* loaded from: classes5.dex */
    public class AnonymousClass2 extends BroadcastReceiver {
        final /* synthetic */ Runnable val$confirmRunnable;

        AnonymousClass2(Runnable confirmRunnable2) {
            confirmRunnable = confirmRunnable2;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (BroadcastManager.ACTION_SHOW_GLOBAL_ACTIONS.equals(action)) {
                confirmRunnable.run();
            }
        }
    }

    public void unregisterDismissBroadcastReceiver() {
        BroadcastReceiver broadcastReceiver = this.mDismissBroadcastReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mDismissBroadcastReceiver = null;
        }
    }

    public void unregisterSecureConfirmBroadcastReceiver() {
        BroadcastReceiver broadcastReceiver = this.mSecureConfirmBroadcastReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mSecureConfirmBroadcastReceiver = null;
        }
    }
}
