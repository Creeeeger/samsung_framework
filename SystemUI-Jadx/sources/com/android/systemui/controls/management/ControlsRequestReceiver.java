package com.android.systemui.controls.management;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.UserHandle;
import android.service.controls.Control;
import android.util.Log;
import com.android.systemui.BasicRune;
import com.android.systemui.controls.controller.ControlsController;
import com.android.systemui.controls.controller.CustomControlsController;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsRequestReceiver extends BroadcastReceiver {
    public static final Companion Companion = new Companion(null);
    public final ControlsController controller;
    public final CustomControlsController customController;
    public final Handler handler;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ControlsRequestReceiver() {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, final Intent intent) {
        String str;
        int i;
        if (!context.getPackageManager().hasSystemFeature("android.software.controls")) {
            return;
        }
        try {
            final ComponentName componentName = (ComponentName) intent.getParcelableExtra("android.intent.extra.COMPONENT_NAME");
            try {
                final Control control = (Control) intent.getParcelableExtra("android.service.controls.extra.CONTROL");
                if (componentName != null) {
                    str = componentName.getPackageName();
                } else {
                    str = null;
                }
                boolean z = false;
                if (BasicRune.CONTROLS_AUTO_ADD && intent.getBooleanExtra("android.service.controls.extra.CONTROL_AUTO_ADD", false)) {
                    if (str == null) {
                        return;
                    }
                    Handler handler = this.handler;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.android.systemui.controls.management.ControlsRequestReceiver$onReceive$1
                            /* JADX WARN: Removed duplicated region for block: B:11:0x0087  */
                            /* JADX WARN: Removed duplicated region for block: B:5:0x005d  */
                            /* JADX WARN: Removed duplicated region for block: B:71:0x007d  */
                            /* JADX WARN: Removed duplicated region for block: B:8:0x0080  */
                            @Override // java.lang.Runnable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct code enable 'Show inconsistent code' option in preferences
                            */
                            public final void run() {
                                /*
                                    Method dump skipped, instructions count: 371
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.ControlsRequestReceiver$onReceive$1.run():void");
                            }
                        });
                        return;
                    } else {
                        Log.e("ControlsRequestReceiver", "onReceive handler is null");
                        return;
                    }
                }
                if (str != null) {
                    Companion.getClass();
                    try {
                        int packageUid = context.getPackageManager().getPackageUid(str, 0);
                        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityManager.class);
                        if (activityManager != null) {
                            i = activityManager.getUidImportance(packageUid);
                        } else {
                            i = 1000;
                        }
                        if (i != 100) {
                            Log.w("ControlsRequestReceiver", "Uid " + packageUid + " not in foreground");
                        } else {
                            z = true;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        Log.w("ControlsRequestReceiver", "Package " + str + " not found");
                    }
                    if (z) {
                        Intent intent2 = new Intent(context, (Class<?>) ControlsRequestDialog.class);
                        intent2.putExtra("android.intent.extra.COMPONENT_NAME", componentName);
                        intent2.putExtra("android.service.controls.extra.CONTROL", control);
                        intent2.addFlags(268566528);
                        intent2.putExtra("android.intent.extra.USER_ID", context.getUserId());
                        context.startActivityAsUser(intent2, UserHandle.SYSTEM);
                    }
                }
            } catch (ClassCastException e) {
                Log.e("ControlsRequestReceiver", "Malformed intent extra Control", e);
            }
        } catch (ClassCastException e2) {
            Log.e("ControlsRequestReceiver", "Malformed intent extra ComponentName", e2);
        }
    }

    public ControlsRequestReceiver(ControlsController controlsController, CustomControlsController customControlsController, Handler handler) {
        this();
        this.controller = controlsController;
        this.customController = customControlsController;
        this.handler = handler;
    }
}
