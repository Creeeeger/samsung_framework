package com.android.wifitrackerlib;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import com.android.systemui.R;
import com.android.wifitrackerlib.WifiEntry;
import java.util.StringJoiner;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MergedCarrierEntry extends WifiEntry {
    public final Context mContext;
    public final String mKey;
    public final int mSubscriptionId;

    public MergedCarrierEntry(Handler handler, WifiManager wifiManager, boolean z, Context context, int i) {
        super(handler, wifiManager, z);
        this.mContext = context;
        this.mSubscriptionId = i;
        this.mKey = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("MergedCarrierEntry:", i);
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized boolean canConnect() {
        boolean z;
        if (getConnectedState() == 0) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final boolean canDisconnect() {
        if (getConnectedState() == 2) {
            return true;
        }
        return false;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized void connect(WifiEntry.ConnectCallback connectCallback) {
        connect$1(connectCallback);
    }

    public final synchronized void connect$1(WifiEntry.ConnectCallback connectCallback) {
        this.mConnectCallback = connectCallback;
        this.mWifiManager.startRestrictingAutoJoinToSubscriptionId(this.mSubscriptionId);
        if (this.mConnectCallback != null) {
            this.mCallbackHandler.post(new Runnable() { // from class: com.android.wifitrackerlib.MergedCarrierEntry$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WifiEntry.ConnectCallback connectCallback2 = MergedCarrierEntry.this.mConnectCallback;
                    if (connectCallback2 != null) {
                        connectCallback2.onConnectResult(0);
                    }
                }
            });
        }
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final boolean connectionInfoMatches(WifiInfo wifiInfo) {
        if (wifiInfo.isCarrierMerged() && this.mSubscriptionId == wifiInfo.getSubscriptionId()) {
            return true;
        }
        return false;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final String getKey() {
        return this.mKey;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized String getSsid() {
        WifiInfo wifiInfo = this.mWifiInfo;
        if (wifiInfo != null) {
            return WifiInfo.sanitizeSsid(wifiInfo.getSSID());
        }
        return null;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final String getSummary(boolean z) {
        StringJoiner stringJoiner = new StringJoiner(this.mContext.getString(R.string.wifitrackerlib_summary_separator));
        String verboseLoggingDescription = Utils.getVerboseLoggingDescription(this, this.mSemFlags);
        if (!TextUtils.isEmpty(verboseLoggingDescription)) {
            stringJoiner.add(verboseLoggingDescription);
        }
        return stringJoiner.toString();
    }
}
