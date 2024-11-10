package com.android.net.module.util;

import android.net.INetdUnsolicitedEventListener;

/* loaded from: classes.dex */
public class BaseNetdUnsolicitedEventListener extends INetdUnsolicitedEventListener.Stub {
    @Override // android.net.INetdUnsolicitedEventListener
    public String getInterfaceHash() {
        return "38614f80a23b92603d4851177e57c460aec1b606";
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public int getInterfaceVersion() {
        return 13;
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onInterfaceAdded(String str) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onInterfaceAddressRemoved(String str, String str2, int i, int i2) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onInterfaceAddressUpdated(String str, String str2, int i, int i2) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onInterfaceChanged(String str, boolean z) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onInterfaceClassActivityChanged(boolean z, int i, long j, int i2) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onInterfaceDnsServerInfo(String str, long j, String[] strArr) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onInterfaceLinkStateChanged(String str, boolean z) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onInterfaceRemoved(String str) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onQuotaLimitReached(String str, String str2) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onRouteChanged(boolean z, String str, String str2, String str3) {
    }

    @Override // android.net.INetdUnsolicitedEventListener
    public void onStrictCleartextDetected(int i, String str) {
    }
}
