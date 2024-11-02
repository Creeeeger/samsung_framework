package android.hardware.hdmi;

import android.annotation.SystemApi;
import android.hardware.hdmi.IHdmiControlCallback;
import android.os.RemoteException;
import android.util.Log;

@SystemApi
/* loaded from: classes2.dex */
public final class HdmiPlaybackClient extends HdmiClient {
    private static final int ADDR_TV = 0;
    private static final String TAG = "HdmiPlaybackClient";

    /* loaded from: classes2.dex */
    public interface DisplayStatusCallback {
        void onComplete(int i);
    }

    /* loaded from: classes2.dex */
    public interface OneTouchPlayCallback {
        void onComplete(int i);
    }

    public HdmiPlaybackClient(IHdmiControlService service) {
        super(service);
    }

    public void oneTouchPlay(OneTouchPlayCallback callback) {
        try {
            this.mService.oneTouchPlay(getCallbackWrapper(callback));
        } catch (RemoteException e) {
            Log.e(TAG, "oneTouchPlay threw exception ", e);
        }
    }

    @Override // android.hardware.hdmi.HdmiClient
    public int getDeviceType() {
        return 4;
    }

    public void queryDisplayStatus(DisplayStatusCallback callback) {
        try {
            this.mService.queryDisplayStatus(getCallbackWrapper(callback));
        } catch (RemoteException e) {
            Log.e(TAG, "queryDisplayStatus threw exception ", e);
        }
    }

    public void sendStandby() {
        try {
            this.mService.sendStandby(getDeviceType(), HdmiDeviceInfo.idForCecDevice(0));
        } catch (RemoteException e) {
            Log.e(TAG, "sendStandby threw exception ", e);
        }
    }

    private IHdmiControlCallback getCallbackWrapper(OneTouchPlayCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("OneTouchPlayCallback cannot be null.");
        }
        return new IHdmiControlCallback.Stub() { // from class: android.hardware.hdmi.HdmiPlaybackClient.1
            final /* synthetic */ OneTouchPlayCallback val$callback;

            AnonymousClass1(OneTouchPlayCallback callback2) {
                callback = callback2;
            }

            @Override // android.hardware.hdmi.IHdmiControlCallback
            public void onComplete(int result) {
                callback.onComplete(result);
            }
        };
    }

    /* renamed from: android.hardware.hdmi.HdmiPlaybackClient$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends IHdmiControlCallback.Stub {
        final /* synthetic */ OneTouchPlayCallback val$callback;

        AnonymousClass1(OneTouchPlayCallback callback2) {
            callback = callback2;
        }

        @Override // android.hardware.hdmi.IHdmiControlCallback
        public void onComplete(int result) {
            callback.onComplete(result);
        }
    }

    private IHdmiControlCallback getCallbackWrapper(DisplayStatusCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("DisplayStatusCallback cannot be null.");
        }
        return new IHdmiControlCallback.Stub() { // from class: android.hardware.hdmi.HdmiPlaybackClient.2
            final /* synthetic */ DisplayStatusCallback val$callback;

            AnonymousClass2(DisplayStatusCallback callback2) {
                callback = callback2;
            }

            @Override // android.hardware.hdmi.IHdmiControlCallback
            public void onComplete(int status) {
                callback.onComplete(status);
            }
        };
    }

    /* renamed from: android.hardware.hdmi.HdmiPlaybackClient$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 extends IHdmiControlCallback.Stub {
        final /* synthetic */ DisplayStatusCallback val$callback;

        AnonymousClass2(DisplayStatusCallback callback2) {
            callback = callback2;
        }

        @Override // android.hardware.hdmi.IHdmiControlCallback
        public void onComplete(int status) {
            callback.onComplete(status);
        }
    }
}
