package com.android.systemui.coverlauncher.widget;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class CoverLauncherWidgetHelper extends Activity {
    public Intent mGoToLabsIntent;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        synchronized (this) {
            try {
                if (this.mGoToLabsIntent == null) {
                    Intent intent = new Intent();
                    this.mGoToLabsIntent = intent;
                    intent.setAction("com.samsung.settings.APPS_ALLOWED_COVER_SCREEN");
                    this.mGoToLabsIntent.setClassName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.Settings$AppAllowedCoverScreenSettingsActivity");
                    this.mGoToLabsIntent.setFlags(872415232);
                }
                Intent intent2 = getIntent();
                if (intent2 != null && "android.appwidget.action.APPWIDGET_CONFIGURE".equals(intent2.getAction())) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    setResult(-1);
                }
                startActivity(this.mGoToLabsIntent);
                finish();
            } catch (Exception e) {
                Toast.makeText(this, "Fail to go to Labs! error=" + e.toString(), 1).show();
                e.printStackTrace();
                finish();
            }
        }
    }
}
