package com.android.systemui.statusbar.notification;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import android.view.WindowManager;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenNotificationIntelligenceStartActivity extends Activity implements CommandQueue.Callbacks {
    public static final String TAG;
    public final SubscreenNotificationController controller;
    public SubscreenNotificationSmartReplyDisclaimerDialog mDialog;
    public final SettingsHelper settingsHelper;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        TAG = "SubscreenNotificationIntelligenceStartActivity";
    }

    public SubscreenNotificationIntelligenceStartActivity(SubscreenNotificationController subscreenNotificationController, SettingsHelper settingsHelper) {
        this.controller = subscreenNotificationController;
        this.settingsHelper = settingsHelper;
        Log.d(TAG, "SubscreenNotificationIntelligenceStartActivity()");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        SubscreenDeviceModelParent subscreenDeviceModelParent;
        super.onActivityResult(i, i2, intent);
        String m = ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("onActivityResult() request: ", i, ", result: ", i2);
        String str = TAG;
        Log.d(str, m);
        boolean z = true;
        SettingsHelper settingsHelper = this.settingsHelper;
        if (i != 10) {
            if (i == 20 && i2 == -1) {
                setAiInfoConfirmed();
                boolean z2 = NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA;
                if (z2 && !settingsHelper.isSuggestResponsesEnabled()) {
                    settingsHelper.getClass();
                    if (!NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH || !z2 || settingsHelper.mItemLists.get("suggestion_responses_used").getIntValue() == 0) {
                        z = false;
                    }
                    if (!z) {
                        showDisclaimerDialog();
                        return;
                    }
                }
            }
        } else if (i2 == -1 && (subscreenDeviceModelParent = this.controller.mDeviceModel) != null) {
            getBaseContext();
            if (subscreenDeviceModelParent.isSamsungAccountLoggedIn()) {
                setAiInfoConfirmed();
                boolean z3 = NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA;
                if (z3 && !settingsHelper.isSuggestResponsesEnabled()) {
                    settingsHelper.getClass();
                    if (!NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH || !z3 || settingsHelper.mItemLists.get("suggestion_responses_used").getIntValue() == 0) {
                        z = false;
                    }
                    if (!z) {
                        showDisclaimerDialog();
                        return;
                    }
                }
            } else {
                Log.d(str, "startSamsungAccountSignInPopup()");
                Intent intent2 = new Intent("com.msc.action.samsungaccount.SIGNIN_POPUP");
                intent2.setFlags(603979776);
                intent2.putExtra("client_id", "i5to7wq0er");
                startActivityForResult(intent2, 20);
                return;
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Boolean bool;
        super.onCreate(bundle);
        Log.d(TAG, "onCreate()");
        setContentView(R.layout.subscreen_notification_intelligence_start_activity);
        if (NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA) {
            boolean z = false;
            if (bundle != null && bundle.getInt(NetworkAnalyticsConstants.DataPoints.PID) == Process.myPid()) {
                z = true;
            }
            if (bundle != null) {
                bool = Boolean.valueOf(bundle.getBoolean("is_dialog_showing"));
            } else {
                bool = null;
            }
            if (!z) {
                startActivityForResult(new Intent("com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"), 10, null);
                return;
            } else {
                if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                    showDisclaimerDialog();
                    return;
                }
                return;
            }
        }
        startActivityForResult(new Intent("com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"), 10, null);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        SubscreenNotificationSmartReplyDisclaimerDialog subscreenNotificationSmartReplyDisclaimerDialog;
        boolean z;
        Log.d(TAG, "onDestroy()");
        super.onDestroy();
        if (NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA && (subscreenNotificationSmartReplyDisclaimerDialog = this.mDialog) != null) {
            AlertDialog alertDialog = subscreenNotificationSmartReplyDisclaimerDialog.alertDialog;
            if (alertDialog != null) {
                z = alertDialog.isShowing();
            } else {
                z = false;
            }
            if (z) {
                AlertDialog alertDialog2 = subscreenNotificationSmartReplyDisclaimerDialog.alertDialog;
                if (alertDialog2 != null) {
                    alertDialog2.setOnDismissListener(null);
                }
                AlertDialog alertDialog3 = subscreenNotificationSmartReplyDisclaimerDialog.alertDialog;
                if (alertDialog3 != null) {
                    alertDialog3.dismiss();
                }
            }
            subscreenNotificationSmartReplyDisclaimerDialog.alertDialog = null;
            this.mDialog = null;
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        boolean z;
        super.onSaveInstanceState(bundle);
        if (NotiRune.NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA) {
            bundle.putInt(NetworkAnalyticsConstants.DataPoints.PID, Process.myPid());
            SubscreenNotificationSmartReplyDisclaimerDialog subscreenNotificationSmartReplyDisclaimerDialog = this.mDialog;
            if (subscreenNotificationSmartReplyDisclaimerDialog != null) {
                AlertDialog alertDialog = subscreenNotificationSmartReplyDisclaimerDialog.alertDialog;
                if (alertDialog != null) {
                    z = alertDialog.isShowing();
                } else {
                    z = false;
                }
                bundle.putBoolean("is_dialog_showing", z);
            }
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
    }

    public final void setAiInfoConfirmed() {
        Log.d(TAG, "set ai_info_confirmed to 1");
        SettingsHelper settingsHelper = this.settingsHelper;
        settingsHelper.getClass();
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH) {
            Settings.System.putIntForUser(settingsHelper.mContext.getContentResolver(), "ai_info_confirmed", 1, -2);
            settingsHelper.mItemLists.get("ai_info_confirmed").mIntValue = 1;
        }
    }

    public final void showDisclaimerDialog() {
        boolean z;
        SubscreenNotificationSmartReplyDisclaimerDialog subscreenNotificationSmartReplyDisclaimerDialog = this.mDialog;
        if (subscreenNotificationSmartReplyDisclaimerDialog != null) {
            AlertDialog alertDialog = subscreenNotificationSmartReplyDisclaimerDialog.alertDialog;
            if (alertDialog != null) {
                z = alertDialog.isShowing();
            } else {
                z = false;
            }
            if (z) {
                AlertDialog alertDialog2 = subscreenNotificationSmartReplyDisclaimerDialog.alertDialog;
                if (alertDialog2 != null) {
                    alertDialog2.setOnDismissListener(null);
                }
                AlertDialog alertDialog3 = subscreenNotificationSmartReplyDisclaimerDialog.alertDialog;
                if (alertDialog3 != null) {
                    alertDialog3.dismiss();
                }
            }
            subscreenNotificationSmartReplyDisclaimerDialog.alertDialog = null;
            this.mDialog = null;
        }
        SubscreenNotificationSmartReplyDisclaimerDialog subscreenNotificationSmartReplyDisclaimerDialog2 = new SubscreenNotificationSmartReplyDisclaimerDialog(this, new DialogInterface.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SettingsHelper settingsHelper = SubscreenNotificationIntelligenceStartActivity.this.settingsHelper;
                settingsHelper.getClass();
                if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH) {
                    Settings.Global.putInt(settingsHelper.mContext.getContentResolver(), "suggestion_responses", 1);
                    settingsHelper.mItemLists.get("suggestion_responses").mIntValue = 1;
                }
                SubscreenNotificationIntelligenceStartActivity.this.settingsHelper.setSuggestResponsesUsed();
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
                SubscreenNotificationIntelligenceStartActivity.this.finish();
            }
        }, new DialogInterface.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
                SubscreenNotificationIntelligenceStartActivity.this.finish();
            }
        }, new DialogInterface.OnDismissListener() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SubscreenNotificationIntelligenceStartActivity.this.finish();
            }
        });
        this.mDialog = subscreenNotificationSmartReplyDisclaimerDialog2;
        try {
            AlertDialog alertDialog4 = subscreenNotificationSmartReplyDisclaimerDialog2.alertDialog;
            if (alertDialog4 != null) {
                alertDialog4.show();
            }
        } catch (WindowManager.BadTokenException unused) {
            Log.e("SubscreenNotificationSmartReplyDisclaimerDialog", "BadTokenException occurs. The dialog show will be ignored.");
        }
    }
}
