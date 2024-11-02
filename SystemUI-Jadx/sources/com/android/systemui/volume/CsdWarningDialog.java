package com.android.systemui.volume;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.AudioManager;
import android.util.Log;
import android.view.KeyEvent;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CsdWarningDialog extends SystemUIDialog implements DialogInterface.OnDismissListener, DialogInterface.OnClickListener {
    public static final String TAG = Util.logTag(CsdWarningDialog.class);
    public final AudioManager mAudioManager;
    public ExecutorImpl.ExecutionToken mCancelScheduledNoUserActionRunnable;
    public final Context mContext;
    public final int mCsdWarning;
    public final DelayableExecutor mDelayableExecutor;
    public final CsdWarningDialog$$ExternalSyntheticLambda0 mNoUserActionRunnable;
    public final NotificationManager mNotificationManager;
    public final Runnable mOnCleanup;
    public final AnonymousClass1 mReceiver;
    public long mShowTime;
    public final Object mTimerLock;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        CsdWarningDialog create(int i, Runnable runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0077  */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.systemui.volume.CsdWarningDialog$1, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.volume.CsdWarningDialog$$ExternalSyntheticLambda0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CsdWarningDialog(int r3, android.content.Context r4, android.media.AudioManager r5, android.app.NotificationManager r6, com.android.systemui.util.concurrency.DelayableExecutor r7, java.lang.Runnable r8) {
        /*
            r2 = this;
            r2.<init>(r4)
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r2.mTimerLock = r0
            r0 = 0
            r2.mCancelScheduledNoUserActionRunnable = r0
            com.android.systemui.volume.CsdWarningDialog$1 r1 = new com.android.systemui.volume.CsdWarningDialog$1
            r1.<init>()
            r2.mReceiver = r1
            r2.mCsdWarning = r3
            r2.mContext = r4
            r2.mAudioManager = r5
            r2.mNotificationManager = r6
            r2.mOnCleanup = r8
            r2.mDelayableExecutor = r7
            android.view.Window r5 = r2.getWindow()
            r6 = 2010(0x7da, float:2.817E-42)
            r5.setType(r6)
            com.android.systemui.statusbar.phone.SystemUIDialog.setShowForAllUsers(r2)
            r5 = 1
            if (r3 == r5) goto L47
            r6 = 3
            if (r3 == r6) goto L43
            java.lang.String r6 = com.android.systemui.volume.CsdWarningDialog.TAG
            java.lang.String r7 = "Invalid CSD warning event "
            java.lang.String r7 = android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r7, r3)
            java.lang.Exception r8 = new java.lang.Exception
            r8.<init>()
            android.util.Log.e(r6, r7, r8)
            goto L47
        L43:
            r6 = 17040342(0x10403d6, float:2.4247323E-38)
            goto L4a
        L47:
            r6 = 17040341(0x10403d5, float:2.424732E-38)
        L4a:
            java.lang.String r6 = r4.getString(r6)
            r2.setMessage(r6)
            r6 = 2131952682(0x7f13042a, float:1.9541814E38)
            java.lang.String r6 = r4.getString(r6)
            r7 = -1
            r2.setButton(r7, r6, r2)
            r6 = 2131952683(0x7f13042b, float:1.9541816E38)
            java.lang.String r6 = r4.getString(r6)
            r7 = -2
            r2.setButton(r7, r6, r2)
            r2.setOnDismissListener(r2)
            android.content.IntentFilter r6 = new android.content.IntentFilter
            java.lang.String r7 = "android.intent.action.CLOSE_SYSTEM_DIALOGS"
            r6.<init>(r7)
            r7 = 2
            r4.registerReceiver(r1, r6, r7)
            if (r3 != r5) goto L7f
            com.android.systemui.volume.CsdWarningDialog$$ExternalSyntheticLambda0 r3 = new com.android.systemui.volume.CsdWarningDialog$$ExternalSyntheticLambda0
            r3.<init>()
            r2.mNoUserActionRunnable = r3
            goto L81
        L7f:
            r2.mNoUserActionRunnable = r0
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.CsdWarningDialog.<init>(int, android.content.Context, android.media.AudioManager, android.app.NotificationManager, com.android.systemui.util.concurrency.DelayableExecutor, java.lang.Runnable):void");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == -2) {
            Log.d(TAG, "Lower volume pressed for CSD warning " + this.mCsdWarning);
            dismiss();
        }
        if (D.BUG) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("on click ", i, TAG);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        if (this.mCsdWarning == 2) {
            this.mAudioManager.lowerVolumeToRs1();
        }
        try {
            this.mContext.unregisterReceiver(this.mReceiver);
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "Error unregistering broadcast receiver", e);
        }
        Runnable runnable = this.mOnCleanup;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 24) {
            return true;
        }
        if (i == 25 && System.currentTimeMillis() - this.mShowTime > 1000) {
            Log.i(TAG, "Confirmed CSD exposure warning via VOLUME_DOWN");
            dismiss();
        }
        return super.onKeyUp(i, keyEvent);
    }

    public final void sendNotification(boolean z) {
        String string;
        PendingIntent activity = PendingIntent.getActivity(this.mContext, 0, new Intent("android.settings.SOUND_SETTINGS"), QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY);
        if (z) {
            string = this.mContext.getString(R.string.csd_500_system_lowered_text);
        } else {
            string = this.mContext.getString(R.string.csd_system_lowered_text);
        }
        this.mNotificationManager.notify(1007, new Notification.Builder(this.mContext, "ALR").setSmallIcon(R.drawable.hearing).setContentTitle(this.mContext.getString(R.string.csd_lowered_title)).setContentText(string).setContentIntent(activity).setStyle(new Notification.BigTextStyle().bigText(string)).setVisibility(1).setLocalOnly(true).setAutoCancel(true).setCategory("sys").build());
    }

    @Override // android.app.Dialog
    public final void show() {
        int i = this.mCsdWarning;
        if (i == 2) {
            if (i != 2) {
                Log.w(TAG, "Notification dose repeat 5x is not shown for " + this.mCsdWarning);
                return;
            }
            this.mAudioManager.lowerVolumeToRs1();
            sendNotification(true);
            return;
        }
        super.show();
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public final void start() {
        this.mShowTime = System.currentTimeMillis();
        synchronized (this.mTimerLock) {
            CsdWarningDialog$$ExternalSyntheticLambda0 csdWarningDialog$$ExternalSyntheticLambda0 = this.mNoUserActionRunnable;
            if (csdWarningDialog$$ExternalSyntheticLambda0 != null) {
                this.mCancelScheduledNoUserActionRunnable = this.mDelayableExecutor.executeDelayed(5000L, csdWarningDialog$$ExternalSyntheticLambda0);
            }
        }
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public final void stop() {
        synchronized (this.mTimerLock) {
            ExecutorImpl.ExecutionToken executionToken = this.mCancelScheduledNoUserActionRunnable;
            if (executionToken != null) {
                executionToken.run();
            }
        }
    }
}
