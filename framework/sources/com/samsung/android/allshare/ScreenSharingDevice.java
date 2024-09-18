package com.samsung.android.allshare;

import android.net.Uri;
import com.samsung.android.allshare.Device;

/* loaded from: classes5.dex */
public abstract class ScreenSharingDevice extends Device {

    /* loaded from: classes5.dex */
    public interface IScreenSharingActionResponseListner {
        void onConnectScreenSharingM2TV(String str, String str2, String str3);

        void onConnectScreenSharingTV2M(String str, String str2, String str3, String str4);
    }

    /* loaded from: classes5.dex */
    public interface IScreenSharingEventListener {
        void onEventReceived(String str, String str2, ERROR error);
    }

    public abstract void connectScreenSharingM2TV(String str, String str2, String str3, int i);

    public abstract void connectScreenSharingTV2M(String str, String str2, String str3);

    public abstract ERROR setEventListener(IScreenSharingEventListener iScreenSharingEventListener);

    public abstract void setResponseListener(IScreenSharingActionResponseListner iScreenSharingActionResponseListner);

    @Override // com.samsung.android.allshare.Device
    public Device.DeviceDomain getDeviceDomain() {
        return null;
    }

    @Override // com.samsung.android.allshare.Device
    public Device.DeviceType getDeviceType() {
        return null;
    }

    @Override // com.samsung.android.allshare.Device
    public String getID() {
        return null;
    }

    @Override // com.samsung.android.allshare.Device
    public String getIPAdress() {
        return null;
    }

    @Override // com.samsung.android.allshare.Device
    public String getIPAddress() {
        return null;
    }

    @Override // com.samsung.android.allshare.Device
    public Uri getIcon() {
        return null;
    }

    @Override // com.samsung.android.allshare.Device
    public String getModelName() {
        return null;
    }

    @Override // com.samsung.android.allshare.Device
    public String getName() {
        return null;
    }
}
