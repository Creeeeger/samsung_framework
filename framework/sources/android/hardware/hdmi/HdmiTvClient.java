package android.hardware.hdmi;

import android.annotation.SystemApi;
import android.hardware.hdmi.HdmiRecordListener;
import android.hardware.hdmi.HdmiRecordSources;
import android.hardware.hdmi.HdmiTimerRecordSources;
import android.hardware.hdmi.IHdmiControlCallback;
import android.hardware.hdmi.IHdmiInputChangeListener;
import android.hardware.hdmi.IHdmiMhlVendorCommandListener;
import android.hardware.hdmi.IHdmiRecordListener;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collections;
import java.util.List;
import libcore.util.EmptyArray;

@SystemApi
/* loaded from: classes2.dex */
public final class HdmiTvClient extends HdmiClient {
    private static final String TAG = "HdmiTvClient";
    public static final int VENDOR_DATA_SIZE = 16;

    /* loaded from: classes2.dex */
    public interface HdmiMhlVendorCommandListener {
        void onReceived(int i, int i2, int i3, byte[] bArr);
    }

    /* loaded from: classes2.dex */
    public interface InputChangeListener {
        void onChanged(HdmiDeviceInfo hdmiDeviceInfo);
    }

    /* loaded from: classes2.dex */
    public interface SelectCallback {
        void onComplete(int i);
    }

    public HdmiTvClient(IHdmiControlService service) {
        super(service);
    }

    static HdmiTvClient create(IHdmiControlService service) {
        return new HdmiTvClient(service);
    }

    @Override // android.hardware.hdmi.HdmiClient
    public int getDeviceType() {
        return 0;
    }

    @Deprecated
    public void deviceSelect(int logicalAddress, SelectCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null.");
        }
        try {
            this.mService.deviceSelect(logicalAddress, getCallbackWrapper(callback));
        } catch (RemoteException e) {
            Log.e(TAG, "failed to select device: ", e);
        }
    }

    /* renamed from: android.hardware.hdmi.HdmiTvClient$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends IHdmiControlCallback.Stub {
        AnonymousClass1() {
        }

        @Override // android.hardware.hdmi.IHdmiControlCallback
        public void onComplete(int result) {
            SelectCallback.this.onComplete(result);
        }
    }

    private static IHdmiControlCallback getCallbackWrapper(SelectCallback callback) {
        return new IHdmiControlCallback.Stub() { // from class: android.hardware.hdmi.HdmiTvClient.1
            AnonymousClass1() {
            }

            @Override // android.hardware.hdmi.IHdmiControlCallback
            public void onComplete(int result) {
                SelectCallback.this.onComplete(result);
            }
        };
    }

    public void portSelect(int portId, SelectCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        try {
            this.mService.portSelect(portId, getCallbackWrapper(callback));
        } catch (RemoteException e) {
            Log.e(TAG, "failed to select port: ", e);
        }
    }

    public void setInputChangeListener(InputChangeListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        try {
            this.mService.setInputChangeListener(getListenerWrapper(listener));
        } catch (RemoteException e) {
            Log.e("TAG", "Failed to set InputChangeListener:", e);
        }
    }

    /* renamed from: android.hardware.hdmi.HdmiTvClient$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 extends IHdmiInputChangeListener.Stub {
        AnonymousClass2() {
        }

        @Override // android.hardware.hdmi.IHdmiInputChangeListener
        public void onChanged(HdmiDeviceInfo info) {
            InputChangeListener.this.onChanged(info);
        }
    }

    private static IHdmiInputChangeListener getListenerWrapper(InputChangeListener listener) {
        return new IHdmiInputChangeListener.Stub() { // from class: android.hardware.hdmi.HdmiTvClient.2
            AnonymousClass2() {
            }

            @Override // android.hardware.hdmi.IHdmiInputChangeListener
            public void onChanged(HdmiDeviceInfo info) {
                InputChangeListener.this.onChanged(info);
            }
        };
    }

    @Deprecated
    public List<HdmiDeviceInfo> getDeviceList() {
        try {
            return this.mService.getDeviceList();
        } catch (RemoteException e) {
            Log.e("TAG", "Failed to call getDeviceList():", e);
            return Collections.emptyList();
        }
    }

    public void setSystemAudioMode(boolean enabled, SelectCallback callback) {
        try {
            this.mService.setSystemAudioMode(enabled, getCallbackWrapper(callback));
        } catch (RemoteException e) {
            Log.e(TAG, "failed to set system audio mode:", e);
        }
    }

    public void setSystemAudioVolume(int oldIndex, int newIndex, int maxIndex) {
        try {
            this.mService.setSystemAudioVolume(oldIndex, newIndex, maxIndex);
        } catch (RemoteException e) {
            Log.e(TAG, "failed to set volume: ", e);
        }
    }

    public void setSystemAudioMute(boolean mute) {
        try {
            this.mService.setSystemAudioMute(mute);
        } catch (RemoteException e) {
            Log.e(TAG, "failed to set mute: ", e);
        }
    }

    public void setRecordListener(HdmiRecordListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        try {
            this.mService.setHdmiRecordListener(getListenerWrapper(listener));
        } catch (RemoteException e) {
            Log.e(TAG, "failed to set record listener.", e);
        }
    }

    public void sendStandby(int deviceId) {
        try {
            this.mService.sendStandby(getDeviceType(), deviceId);
        } catch (RemoteException e) {
            Log.e(TAG, "sendStandby threw exception ", e);
        }
    }

    /* renamed from: android.hardware.hdmi.HdmiTvClient$3 */
    /* loaded from: classes2.dex */
    public class AnonymousClass3 extends IHdmiRecordListener.Stub {
        AnonymousClass3() {
        }

        @Override // android.hardware.hdmi.IHdmiRecordListener
        public byte[] getOneTouchRecordSource(int recorderAddress) {
            HdmiRecordSources.RecordSource source = HdmiRecordListener.this.onOneTouchRecordSourceRequested(recorderAddress);
            if (source == null) {
                return EmptyArray.BYTE;
            }
            byte[] data = new byte[source.getDataSize(true)];
            source.toByteArray(true, data, 0);
            return data;
        }

        @Override // android.hardware.hdmi.IHdmiRecordListener
        public void onOneTouchRecordResult(int recorderAddress, int result) {
            HdmiRecordListener.this.onOneTouchRecordResult(recorderAddress, result);
        }

        @Override // android.hardware.hdmi.IHdmiRecordListener
        public void onTimerRecordingResult(int recorderAddress, int result) {
            HdmiRecordListener.this.onTimerRecordingResult(recorderAddress, HdmiRecordListener.TimerStatusData.parseFrom(result));
        }

        @Override // android.hardware.hdmi.IHdmiRecordListener
        public void onClearTimerRecordingResult(int recorderAddress, int result) {
            HdmiRecordListener.this.onClearTimerRecordingResult(recorderAddress, result);
        }
    }

    private static IHdmiRecordListener getListenerWrapper(HdmiRecordListener callback) {
        return new IHdmiRecordListener.Stub() { // from class: android.hardware.hdmi.HdmiTvClient.3
            AnonymousClass3() {
            }

            @Override // android.hardware.hdmi.IHdmiRecordListener
            public byte[] getOneTouchRecordSource(int recorderAddress) {
                HdmiRecordSources.RecordSource source = HdmiRecordListener.this.onOneTouchRecordSourceRequested(recorderAddress);
                if (source == null) {
                    return EmptyArray.BYTE;
                }
                byte[] data = new byte[source.getDataSize(true)];
                source.toByteArray(true, data, 0);
                return data;
            }

            @Override // android.hardware.hdmi.IHdmiRecordListener
            public void onOneTouchRecordResult(int recorderAddress, int result) {
                HdmiRecordListener.this.onOneTouchRecordResult(recorderAddress, result);
            }

            @Override // android.hardware.hdmi.IHdmiRecordListener
            public void onTimerRecordingResult(int recorderAddress, int result) {
                HdmiRecordListener.this.onTimerRecordingResult(recorderAddress, HdmiRecordListener.TimerStatusData.parseFrom(result));
            }

            @Override // android.hardware.hdmi.IHdmiRecordListener
            public void onClearTimerRecordingResult(int recorderAddress, int result) {
                HdmiRecordListener.this.onClearTimerRecordingResult(recorderAddress, result);
            }
        };
    }

    public void startOneTouchRecord(int recorderAddress, HdmiRecordSources.RecordSource source) {
        if (source == null) {
            throw new IllegalArgumentException("source must not be null.");
        }
        try {
            byte[] data = new byte[source.getDataSize(true)];
            source.toByteArray(true, data, 0);
            this.mService.startOneTouchRecord(recorderAddress, data);
        } catch (RemoteException e) {
            Log.e(TAG, "failed to start record: ", e);
        }
    }

    public void stopOneTouchRecord(int recorderAddress) {
        try {
            this.mService.stopOneTouchRecord(recorderAddress);
        } catch (RemoteException e) {
            Log.e(TAG, "failed to stop record: ", e);
        }
    }

    public void startTimerRecording(int recorderAddress, int sourceType, HdmiTimerRecordSources.TimerRecordSource source) {
        if (source == null) {
            throw new IllegalArgumentException("source must not be null.");
        }
        checkTimerRecordingSourceType(sourceType);
        try {
            byte[] data = new byte[source.getDataSize()];
            source.toByteArray(data, 0);
            this.mService.startTimerRecording(recorderAddress, sourceType, data);
        } catch (RemoteException e) {
            Log.e(TAG, "failed to start record: ", e);
        }
    }

    private void checkTimerRecordingSourceType(int sourceType) {
        switch (sourceType) {
            case 1:
            case 2:
            case 3:
                return;
            default:
                throw new IllegalArgumentException("Invalid source type:" + sourceType);
        }
    }

    public void clearTimerRecording(int recorderAddress, int sourceType, HdmiTimerRecordSources.TimerRecordSource source) {
        if (source == null) {
            throw new IllegalArgumentException("source must not be null.");
        }
        checkTimerRecordingSourceType(sourceType);
        try {
            byte[] data = new byte[source.getDataSize()];
            source.toByteArray(data, 0);
            this.mService.clearTimerRecording(recorderAddress, sourceType, data);
        } catch (RemoteException e) {
            Log.e(TAG, "failed to start record: ", e);
        }
    }

    public void setHdmiMhlVendorCommandListener(HdmiMhlVendorCommandListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        try {
            this.mService.addHdmiMhlVendorCommandListener(getListenerWrapper(listener));
        } catch (RemoteException e) {
            Log.e(TAG, "failed to set hdmi mhl vendor command listener: ", e);
        }
    }

    /* renamed from: android.hardware.hdmi.HdmiTvClient$4 */
    /* loaded from: classes2.dex */
    public class AnonymousClass4 extends IHdmiMhlVendorCommandListener.Stub {
        final /* synthetic */ HdmiMhlVendorCommandListener val$listener;

        AnonymousClass4(HdmiMhlVendorCommandListener hdmiMhlVendorCommandListener) {
            listener = hdmiMhlVendorCommandListener;
        }

        @Override // android.hardware.hdmi.IHdmiMhlVendorCommandListener
        public void onReceived(int portId, int offset, int length, byte[] data) {
            listener.onReceived(portId, offset, length, data);
        }
    }

    private IHdmiMhlVendorCommandListener getListenerWrapper(HdmiMhlVendorCommandListener listener) {
        return new IHdmiMhlVendorCommandListener.Stub() { // from class: android.hardware.hdmi.HdmiTvClient.4
            final /* synthetic */ HdmiMhlVendorCommandListener val$listener;

            AnonymousClass4(HdmiMhlVendorCommandListener listener2) {
                listener = listener2;
            }

            @Override // android.hardware.hdmi.IHdmiMhlVendorCommandListener
            public void onReceived(int portId, int offset, int length, byte[] data) {
                listener.onReceived(portId, offset, length, data);
            }
        };
    }

    public void sendMhlVendorCommand(int portId, int offset, int length, byte[] data) {
        if (data == null || data.length != 16) {
            throw new IllegalArgumentException("Invalid vendor command data.");
        }
        if (offset < 0 || offset >= 16) {
            throw new IllegalArgumentException("Invalid offset:" + offset);
        }
        if (length < 0 || offset + length > 16) {
            throw new IllegalArgumentException("Invalid length:" + length);
        }
        try {
            this.mService.sendMhlVendorCommand(portId, offset, length, data);
        } catch (RemoteException e) {
            Log.e(TAG, "failed to send vendor command: ", e);
        }
    }
}
