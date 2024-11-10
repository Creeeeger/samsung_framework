package com.android.server.hdmi;

import android.hardware.hdmi.IHdmiControlCallback;
import android.os.RemoteException;
import android.util.Slog;

/* loaded from: classes2.dex */
public class SelectRequestBuffer {
    public static final SelectRequestBuffer EMPTY_BUFFER = new SelectRequestBuffer() { // from class: com.android.server.hdmi.SelectRequestBuffer.1
        @Override // com.android.server.hdmi.SelectRequestBuffer
        public void process() {
        }
    };
    public SelectRequest mRequest;

    /* renamed from: com.android.server.hdmi.SelectRequestBuffer$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends SelectRequestBuffer {
        @Override // com.android.server.hdmi.SelectRequestBuffer
        public void process() {
        }
    }

    /* loaded from: classes2.dex */
    public abstract class SelectRequest {
        public final IHdmiControlCallback mCallback;
        public final int mId;
        public final HdmiControlService mService;

        public abstract void process();

        public SelectRequest(HdmiControlService hdmiControlService, int i, IHdmiControlCallback iHdmiControlCallback) {
            this.mService = hdmiControlService;
            this.mId = i;
            this.mCallback = iHdmiControlCallback;
        }

        public HdmiCecLocalDeviceTv tv() {
            return this.mService.tv();
        }

        public HdmiCecLocalDeviceAudioSystem audioSystem() {
            return this.mService.audioSystem();
        }

        public boolean isLocalDeviceReady() {
            if (tv() != null) {
                return true;
            }
            Slog.e("SelectRequestBuffer", "Local tv device not available");
            invokeCallback(2);
            return false;
        }

        public final void invokeCallback(int i) {
            try {
                IHdmiControlCallback iHdmiControlCallback = this.mCallback;
                if (iHdmiControlCallback != null) {
                    iHdmiControlCallback.onComplete(i);
                }
            } catch (RemoteException e) {
                Slog.e("SelectRequestBuffer", "Invoking callback failed:" + e);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class DeviceSelectRequest extends SelectRequest {
        public /* synthetic */ DeviceSelectRequest(HdmiControlService hdmiControlService, int i, IHdmiControlCallback iHdmiControlCallback, DeviceSelectRequestIA deviceSelectRequestIA) {
            this(hdmiControlService, i, iHdmiControlCallback);
        }

        public DeviceSelectRequest(HdmiControlService hdmiControlService, int i, IHdmiControlCallback iHdmiControlCallback) {
            super(hdmiControlService, i, iHdmiControlCallback);
        }

        @Override // com.android.server.hdmi.SelectRequestBuffer.SelectRequest
        public void process() {
            if (isLocalDeviceReady()) {
                Slog.v("SelectRequestBuffer", "calling delayed deviceSelect id:" + this.mId);
                tv().deviceSelect(this.mId, this.mCallback);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class PortSelectRequest extends SelectRequest {
        public /* synthetic */ PortSelectRequest(HdmiControlService hdmiControlService, int i, IHdmiControlCallback iHdmiControlCallback, PortSelectRequestIA portSelectRequestIA) {
            this(hdmiControlService, i, iHdmiControlCallback);
        }

        public PortSelectRequest(HdmiControlService hdmiControlService, int i, IHdmiControlCallback iHdmiControlCallback) {
            super(hdmiControlService, i, iHdmiControlCallback);
        }

        @Override // com.android.server.hdmi.SelectRequestBuffer.SelectRequest
        public void process() {
            if (isLocalDeviceReady()) {
                Slog.v("SelectRequestBuffer", "calling delayed portSelect id:" + this.mId);
                HdmiCecLocalDeviceTv tv = tv();
                if (tv != null) {
                    tv.doManualPortSwitching(this.mId, this.mCallback);
                    return;
                }
                HdmiCecLocalDeviceAudioSystem audioSystem = audioSystem();
                if (audioSystem != null) {
                    audioSystem.doManualPortSwitching(this.mId, this.mCallback);
                }
            }
        }
    }

    public static DeviceSelectRequest newDeviceSelect(HdmiControlService hdmiControlService, int i, IHdmiControlCallback iHdmiControlCallback) {
        return new DeviceSelectRequest(hdmiControlService, i, iHdmiControlCallback);
    }

    public static PortSelectRequest newPortSelect(HdmiControlService hdmiControlService, int i, IHdmiControlCallback iHdmiControlCallback) {
        return new PortSelectRequest(hdmiControlService, i, iHdmiControlCallback);
    }

    public void set(SelectRequest selectRequest) {
        this.mRequest = selectRequest;
    }

    public void process() {
        SelectRequest selectRequest = this.mRequest;
        if (selectRequest != null) {
            selectRequest.process();
            clear();
        }
    }

    public void clear() {
        this.mRequest = null;
    }
}
