package com.android.wm.shell.common;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.android.systemui.R;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultiWindowOverheatUI extends AlertDialog {
    public final AnonymousClass1 mDismissReceiver;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.wm.shell.common.MultiWindowOverheatUI$1] */
    private MultiWindowOverheatUI(Context context) {
        super(context, 2132018416);
        int i;
        this.mDismissReceiver = new BroadcastReceiver() { // from class: com.android.wm.shell.common.MultiWindowOverheatUI.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                MultiWindowOverheatUI.this.dismiss();
            }
        };
        if (CoreRune.IS_TABLET_DEVICE) {
            i = R.string.multiwindow_overheat_warning_dialog_body_tablet;
        } else {
            i = R.string.multiwindow_overheat_warning_dialog_body_phone;
        }
        setMessage(context.getResources().getString(i));
        setButton(-1, context.getResources().getString(R.string.dnd_yes), (DialogInterface.OnClickListener) null);
        getWindow().setType(2008);
    }

    public static boolean showIfNeeded(Context context) {
        List mWDisableRequesters = MultiWindowManager.getInstance().getMWDisableRequesters();
        if (mWDisableRequesters != null && !mWDisableRequesters.contains("SSRM")) {
            Log.w("MWOverheatDialog", "requester is not SSRM");
            return false;
        }
        Log.w("MWOverheatDialog", "show mw overheat dialog");
        new MultiWindowOverheatUI(context).show();
        return true;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        getContext().registerReceiver(this.mDismissReceiver, intentFilter, 2);
    }

    @Override // android.app.Dialog
    public final void onStop() {
        super.onStop();
        getContext().unregisterReceiver(this.mDismissReceiver);
    }
}
