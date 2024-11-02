package com.android.systemui.usb;

import android.app.Activity;
import android.content.Intent;
import android.hardware.usb.ParcelableUsbPort;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbPort;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import com.android.systemui.R;
import com.samsung.android.knox.accounts.HostAuth;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class UsbContaminantActivity extends Activity implements View.OnClickListener {
    public TextView mEnableUsb;
    public TextView mGotIt;
    public TextView mLearnMore;
    public TextView mMessage;
    public TextView mTitle;
    public UsbPort mUsbPort;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == this.mEnableUsb) {
            try {
                this.mUsbPort.enableContaminantDetection(false);
                Toast.makeText(this, R.string.usb_port_enabled, 0).show();
            } catch (Exception e) {
                Log.e("UsbContaminantActivity", "Unable to notify Usb service", e);
            }
        } else if (view == this.mLearnMore) {
            Intent intent = new Intent();
            intent.setClassName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.HelpTrampoline");
            intent.putExtra("android.intent.extra.TEXT", "help_url_usb_contaminant_detected");
            startActivity(intent);
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Window window = getWindow();
        window.addSystemFlags(524288);
        window.setType(2008);
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.contaminant_dialog);
        ParcelableUsbPort parcelableExtra = getIntent().getParcelableExtra(HostAuth.PORT);
        if (parcelableExtra != null) {
            this.mUsbPort = parcelableExtra.getUsbPort((UsbManager) getSystemService(UsbManager.class));
        } else {
            finish();
        }
        this.mLearnMore = (TextView) findViewById(R.id.learnMore);
        this.mEnableUsb = (TextView) findViewById(R.id.enableUsb);
        this.mGotIt = (TextView) findViewById(R.id.gotIt);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mMessage = (TextView) findViewById(R.id.message);
        this.mTitle.setText(getString(R.string.usb_contaminant_title));
        this.mMessage.setText(getString(R.string.usb_contaminant_message));
        this.mEnableUsb.setText(getString(R.string.usb_disable_contaminant_detection));
        this.mGotIt.setText(getString(R.string.got_it));
        this.mLearnMore.setText(getString(R.string.learn_more));
        if (getResources().getBoolean(17891819)) {
            this.mLearnMore.setVisibility(0);
        }
        this.mEnableUsb.setOnClickListener(this);
        this.mGotIt.setOnClickListener(this);
        this.mLearnMore.setOnClickListener(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        super.onWindowAttributesChanged(layoutParams);
    }
}
