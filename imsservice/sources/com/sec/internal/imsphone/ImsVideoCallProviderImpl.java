package com.sec.internal.imsphone;

import android.net.Uri;
import android.os.RemoteException;
import android.telecom.VideoProfile;
import android.util.Log;
import android.view.Surface;
import com.android.ims.internal.IImsVideoCallCallback;
import com.android.ims.internal.IImsVideoCallProvider;
import com.sec.ims.volte2.IImsCallSession;
import com.sec.ims.volte2.IImsMediaCallProvider;
import com.sec.ims.volte2.IVideoServiceEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ImsVideoCallProviderImpl extends IImsVideoCallProvider.Stub {
    protected static final int EMOJI_START_FAILURE = 1201;
    protected static final int EMOJI_START_SUCCESS = 1200;
    protected static final int EMOJI_STOP_FAILURE = 1203;
    protected static final int EMOJI_STOP_SUCCESS = 1202;
    protected static final int IDC_SCREEN_SHARE_START = 1204;
    protected static final int IDC_SCREEN_SHARE_STOP = 1205;
    private static final String LOG_TAG = "ImsVTProviderImpl";
    protected static final int NOTIFY_DOWNGRADED = 1001;
    protected static final int NOTIFY_VIDEO_RESUMED = 1000;
    protected static final int RECORD_START_FAILURE = 1101;
    protected static final int RECORD_START_FAILURE_NO_SPACE = 1110;
    protected static final int RECORD_START_SUCCESS = 1100;
    protected static final int RECORD_STOP_FAILURE = 1103;
    protected static final int RECORD_STOP_NO_SPACE = 1111;
    protected static final int RECORD_STOP_SUCCESS = 1102;
    protected IImsMediaCallProvider mMediaController;
    protected List<IVideoServiceEventListener> mRelay;
    protected IImsCallSession mSession;
    private boolean mIsVideoPause = false;
    private boolean mIsDummyCamera = false;
    private long mModifyRequestTime = 0;

    private int convertQualityFromVideoProfile(int i) {
        if (i != 1) {
            return (i == 2 || i != 3) ? 13 : 12;
        }
        return 15;
    }

    public ImsVideoCallProviderImpl(IImsCallSession iImsCallSession) {
        this.mMediaController = null;
        this.mRelay = null;
        this.mSession = iImsCallSession;
        this.mRelay = new ArrayList();
        try {
            this.mMediaController = this.mSession.getMediaCallProvider();
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public synchronized void setCallback(IImsVideoCallCallback iImsVideoCallCallback) throws RemoteException {
        if (this.mSession != null && this.mMediaController != null) {
            if (iImsVideoCallCallback == null) {
                Iterator<IVideoServiceEventListener> it = this.mRelay.iterator();
                while (it.hasNext()) {
                    this.mMediaController.unregisterForVideoServiceEvent(it.next());
                }
                this.mRelay.clear();
                this.mSession = null;
                this.mMediaController = null;
                return;
            }
            IVideoServiceEventListener imsVideoCallEventListener = new ImsVideoCallEventListener(iImsVideoCallCallback);
            this.mRelay.add(imsVideoCallEventListener);
            this.mMediaController.registerForVideoServiceEvent(imsVideoCallEventListener);
        }
    }

    public void setCamera(String str, int i) throws RemoteException {
        synchronized (this) {
            if (this.mSession != null && this.mMediaController != null) {
                Log.i(LOG_TAG, "setCamera(" + this.mSession.getSessionId() + "): cameraId " + str);
                IMSLog.c(LogClass.VOLTE_SET_CAMERA, this.mSession.getPhoneId() + "," + this.mSession.getSessionId() + "," + str);
                if (str == null) {
                    this.mSession.stopCameraForProvider(this.mIsDummyCamera);
                    if (this.mIsDummyCamera) {
                        this.mIsDummyCamera = false;
                    }
                    return;
                }
                if (setCameraAdditionService(str)) {
                    return;
                }
                int defaultCameraId = this.mMediaController.getDefaultCameraId();
                int parseInt = Integer.parseInt(str);
                int sessionId = this.mSession.getSessionId();
                if (parseInt == -1) {
                    this.mIsDummyCamera = true;
                    this.mSession.startCameraForProvider(parseInt);
                } else if (defaultCameraId != parseInt && defaultCameraId != -1 && this.mSession.getUsingCamera()) {
                    this.mMediaController.switchCamera();
                } else {
                    if (this.mSession.getUsingCamera()) {
                        Iterator<IVideoServiceEventListener> it = this.mRelay.iterator();
                        while (it.hasNext()) {
                            it.next().onCameraState(sessionId, 1);
                        }
                    }
                    if (this.mSession.getSessionId() > 0) {
                        this.mSession.startCameraForProvider(parseInt);
                    }
                }
                notifyLocalVideoSize(sessionId);
            }
        }
    }

    private void notifyLocalVideoSize(int i) throws RemoteException {
        int width = this.mSession.getCallProfile().getMediaProfile().getWidth();
        int height = this.mSession.getCallProfile().getMediaProfile().getHeight();
        String videoSize = this.mSession.getCallProfile().getMediaProfile().getVideoSize();
        if (width == 0 && height == 0) {
            if (this.mSession.getCallProfile().getCallType() != 8) {
                Log.i(LOG_TAG, "Use updateCallProfile notification");
                return;
            } else {
                width = NSDSNamespaces.NSDSHttpResponseCode.TEMPORARILY_UNAVAILABLE;
                height = 640;
            }
        }
        Log.i(LOG_TAG, "Notify Local video width : " + width + " height : " + height + " videoSize : " + videoSize);
        for (IVideoServiceEventListener iVideoServiceEventListener : this.mRelay) {
            if (!this.mSession.getCallProfile().isVideoCRBT()) {
                if (videoSize.contains("LAND") && !videoSize.contains("QCIF")) {
                    iVideoServiceEventListener.changeCameraCapabilities(i, height, width);
                } else {
                    iVideoServiceEventListener.changeCameraCapabilities(i, width, height);
                }
            }
        }
    }

    private boolean setCameraAdditionService(String str) throws RemoteException {
        if (str.contains("effect,")) {
            try {
                this.mMediaController.setCameraEffect(Integer.parseInt(str.substring(7)));
            } catch (NumberFormatException unused) {
                Log.e(LOG_TAG, "Invalid effect Id : " + str);
            }
            return true;
        }
        if (str.contains("startRecord,")) {
            this.mMediaController.startRecord(str.substring(12));
            return true;
        }
        if (str.contains("stopRecord")) {
            this.mMediaController.stopRecord();
            return true;
        }
        if (str.contains("filter,0")) {
            this.mMediaController.stopEmoji(this.mSession.getSessionId());
            return true;
        }
        if (str.contains("filter")) {
            this.mMediaController.startEmoji(str);
            return true;
        }
        if (str.contains("StartScreenSharing")) {
            this.mMediaController.sendGeneralEvent(100, this.mSession.getSessionId(), 1, "");
            return true;
        }
        if (!str.contains("StopScreenSharing")) {
            return false;
        }
        this.mMediaController.sendGeneralEvent(100, this.mSession.getSessionId(), 0, "");
        return true;
    }

    public void setPreviewSurface(Surface surface) throws RemoteException {
        synchronized (this) {
            if (this.mSession != null && this.mMediaController != null) {
                Log.i(LOG_TAG, "setPreviewSurface(" + this.mSession.getSessionId() + "): " + surface);
                StringBuilder sb = new StringBuilder();
                sb.append(this.mSession.getPhoneId());
                sb.append(",");
                sb.append(this.mSession.getSessionId());
                sb.append(",");
                sb.append(surface == null ? "0" : "1");
                IMSLog.c(LogClass.VOLTE_SET_PREVIEW_SURFACE, sb.toString());
                this.mMediaController.setPreviewSurface(this.mSession.getSessionId(), surface);
            }
        }
    }

    public void setDisplaySurface(Surface surface) throws RemoteException {
        synchronized (this) {
            if (this.mSession != null && this.mMediaController != null) {
                Log.i(LOG_TAG, "setDisplaySurface(" + this.mSession.getSessionId() + "): " + surface);
                StringBuilder sb = new StringBuilder();
                sb.append(this.mSession.getPhoneId());
                sb.append(",");
                sb.append(this.mSession.getSessionId());
                sb.append(",");
                sb.append(surface == null ? "0" : "1");
                IMSLog.c(LogClass.VOLTE_SET_DISPLAY_SURFACE, sb.toString());
                this.mMediaController.setDisplaySurface(this.mSession.getSessionId(), surface);
            }
        }
    }

    public void setDeviceOrientation(int i) throws RemoteException {
        synchronized (this) {
            if (this.mSession != null && this.mMediaController != null) {
                Log.i(LOG_TAG, "setDeviceOrientation(" + this.mSession.getSessionId() + "): rotation " + i);
                IMSLog.c(LogClass.VOLTE_SET_ORIENTATION, this.mSession.getPhoneId() + "," + this.mSession.getSessionId() + "," + i);
                this.mMediaController.setDeviceOrientation(i);
            }
        }
    }

    public void setZoom(float f) throws RemoteException {
        IImsMediaCallProvider iImsMediaCallProvider;
        synchronized (this) {
            if (this.mSession != null && (iImsMediaCallProvider = this.mMediaController) != null) {
                iImsMediaCallProvider.setZoom(f);
            }
        }
    }

    public void sendSessionModifyRequest(VideoProfile videoProfile, VideoProfile videoProfile2) {
        synchronized (this) {
            if (videoProfile2 != null) {
                if (this.mSession != null) {
                    Log.i(LOG_TAG, "sendSessionModifyRequest from " + videoProfile.toString() + " to " + videoProfile2.toString());
                    CallProfile callProfile = new CallProfile();
                    callProfile.setCallType(0);
                    if (VideoProfile.isAudioOnly(videoProfile2.getVideoState())) {
                        callProfile.setCallType(1);
                    } else if (VideoProfile.isBidirectional(videoProfile2.getVideoState())) {
                        callProfile.setCallType(2);
                    } else if (VideoProfile.isTransmissionEnabled(videoProfile2.getVideoState())) {
                        callProfile.setCallType(3);
                    } else if (VideoProfile.isReceptionEnabled(videoProfile2.getVideoState())) {
                        callProfile.setCallType(4);
                    }
                    if (callProfile.getCallType() == 0) {
                        return;
                    }
                    callProfile.getMediaProfile().setVideoQuality(convertQualityFromVideoProfile(videoProfile2.getQuality()));
                    this.mIsDummyCamera = false;
                    this.mModifyRequestTime = System.currentTimeMillis();
                    try {
                        if (this.mSession.getCallProfile().getCallType() != callProfile.getCallType()) {
                            this.mSession.update(callProfile, 0, "");
                        } else if (VideoProfile.isPaused(videoProfile2.getVideoState())) {
                            this.mIsVideoPause = true;
                            this.mSession.holdVideo();
                        } else if (!VideoProfile.isPaused(videoProfile2.getVideoState()) && this.mIsVideoPause) {
                            this.mIsVideoPause = false;
                            this.mSession.resumeVideo();
                        }
                    } catch (RemoteException | NullPointerException e) {
                        Log.e(LOG_TAG, "Couldn't notify due to " + e.getMessage());
                    }
                }
            }
        }
    }

    public void sendSessionModifyResponse(VideoProfile videoProfile) throws RemoteException {
        if (videoProfile == null || this.mSession == null) {
            return;
        }
        Log.i(LOG_TAG, "sendSessionModifyResponse " + videoProfile.toString());
        CallProfile callProfile = new CallProfile();
        callProfile.setCallType(0);
        if (VideoProfile.isAudioOnly(videoProfile.getVideoState())) {
            if (this.mSession.getCallProfile().getCallType() == 5) {
                callProfile.setCallType(5);
            } else {
                callProfile.setCallType(1);
            }
            if (this.mIsVideoPause) {
                this.mIsVideoPause = false;
            }
        } else if (VideoProfile.isBidirectional(videoProfile.getVideoState())) {
            callProfile.setCallType(2);
        } else if (VideoProfile.isTransmissionEnabled(videoProfile.getVideoState())) {
            callProfile.setCallType(3);
        } else if (VideoProfile.isReceptionEnabled(videoProfile.getVideoState())) {
            callProfile.setCallType(4);
        }
        if (callProfile.getCallType() == 0) {
            return;
        }
        callProfile.getMediaProfile().setVideoQuality(convertQualityFromVideoProfile(videoProfile.getQuality()));
        try {
            if (this.mSession.getCallProfile().getCallType() == callProfile.getCallType()) {
                this.mSession.reject(0);
            } else {
                this.mSession.accept(callProfile);
            }
        } catch (RemoteException unused) {
        }
    }

    public void requestCameraCapabilities() throws RemoteException {
        int sessionId = this.mSession.getSessionId();
        int width = this.mSession.getCallProfile().getMediaProfile().getWidth();
        int height = this.mSession.getCallProfile().getMediaProfile().getHeight();
        String videoSize = this.mSession.getCallProfile().getMediaProfile().getVideoSize();
        Log.i(LOG_TAG, "requestCameraCapabilities() width : " + width + " height : " + height);
        for (IVideoServiceEventListener iVideoServiceEventListener : this.mRelay) {
            if (videoSize.contains("LAND") && !videoSize.contains("QCIF")) {
                iVideoServiceEventListener.changeCameraCapabilities(sessionId, height, width);
            } else {
                iVideoServiceEventListener.changeCameraCapabilities(sessionId, width, height);
            }
        }
    }

    public void requestCallDataUsage() throws RemoteException {
        IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            return;
        }
        iImsCallSession.requestCallDataUsage();
    }

    public void setPauseImage(Uri uri) throws RemoteException {
        if (this.mSession == null || this.mMediaController == null) {
            return;
        }
        IMSLog.c(LogClass.VOLTE_SET_PAUSE_IMAGE, this.mSession.getPhoneId() + "," + this.mSession.getSessionId());
        if (uri != null) {
            String uri2 = uri.toString();
            Log.d(LOG_TAG, "sendStillImage filePath " + uri2);
            this.mMediaController.sendStillImage(this.mSession.getSessionId(), uri2, 256, "VGA", 0);
            return;
        }
        if (!this.mSession.getUsingCamera() && this.mSession.getSessionId() > 0) {
            this.mSession.startCameraForProvider(-1);
        }
        this.mMediaController.sendLiveVideo(this.mSession.getSessionId());
    }

    private class ImsVideoCallEventListener extends IVideoServiceEventListener.Stub {
        private IImsVideoCallCallback mCallback;

        private int convertQualityToVideoProfile(int i) {
            if (i == 12) {
                return 3;
            }
            if (i != 13) {
                return i != 15 ? 4 : 1;
            }
            return 2;
        }

        private int convertStateToVideoProfile(int i) {
            if (i != 1) {
                if (i == 2) {
                    return 3;
                }
                if (i == 3) {
                    return 1;
                }
                if (i == 4) {
                    return 2;
                }
            }
            return 0;
        }

        public void onVideoOrientChanged(int i) throws RemoteException {
        }

        public ImsVideoCallEventListener(IImsVideoCallCallback iImsVideoCallCallback) {
            this.mCallback = iImsVideoCallCallback;
        }

        public IImsCallSession getSession() {
            return ImsVideoCallProviderImpl.this.mSession;
        }

        public void receiveSessionModifyRequest(int i, CallProfile callProfile) throws RemoteException {
            if (checkInvalidStatus(i)) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "receiveSessionModifyRequest()");
            VideoProfile convertCallProfileToVideoProfile = convertCallProfileToVideoProfile(callProfile);
            if (convertCallProfileToVideoProfile == null) {
                return;
            }
            try {
                this.mCallback.receiveSessionModifyRequest(convertCallProfileToVideoProfile);
            } catch (RemoteException unused) {
            }
        }

        public void receiveSessionModifyResponse(int i, int i2, CallProfile callProfile, CallProfile callProfile2) throws RemoteException {
            if (checkInvalidStatus(i)) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "receiveSessionModifyResponse()");
            VideoProfile convertCallProfileToVideoProfile = convertCallProfileToVideoProfile(callProfile);
            VideoProfile convertCallProfileToVideoProfile2 = convertCallProfileToVideoProfile(callProfile2);
            int i3 = 0;
            if (i2 == 200) {
                if (convertCallProfileToVideoProfile == null || convertCallProfileToVideoProfile2 == null) {
                    return;
                }
                if (callProfile2.getCallType() == 1) {
                    ImsVideoCallProviderImpl.this.mIsVideoPause = false;
                }
                IMSLog.i(ImsVideoCallProviderImpl.LOG_TAG, "#IMSCALL - Call Modify KPI - Success : " + ((System.currentTimeMillis() - ImsVideoCallProviderImpl.this.mModifyRequestTime) / 1000.0d));
                i3 = 1;
            } else if (i2 == ImsVideoCallProviderImpl.RECORD_START_FAILURE_NO_SPACE) {
                IMSLog.i(ImsVideoCallProviderImpl.LOG_TAG, "#IMSCALL - Call Modify KPI - Rejected : " + ((System.currentTimeMillis() - ImsVideoCallProviderImpl.this.mModifyRequestTime) / 1000.0d));
                i3 = 5;
            } else if (i2 == 1109 || i2 == 487) {
                IMSLog.i(ImsVideoCallProviderImpl.LOG_TAG, "#IMSCALL - Call Modify KPI - Failure : " + ((System.currentTimeMillis() - ImsVideoCallProviderImpl.this.mModifyRequestTime) / 1000.0d));
                i3 = 2;
            }
            try {
                this.mCallback.receiveSessionModifyResponse(i3, convertCallProfileToVideoProfile, convertCallProfileToVideoProfile2);
            } catch (RemoteException unused) {
            }
        }

        public void onCameraState(int i, int i2) throws RemoteException {
            if (checkInvalidStatus(i)) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "onCameraState() " + i2);
            IMSLog.c(LogClass.VOLTE_CHANGE_CAMERA_STATE, ImsVideoCallProviderImpl.this.mSession.getPhoneId() + "," + i + "," + i2);
            try {
                switch (i2) {
                    case 0:
                        this.mCallback.handleCallSessionEvent(3);
                        break;
                    case 1:
                    case 5:
                        this.mCallback.handleCallSessionEvent(6);
                        break;
                    case 2:
                    case 4:
                    case 6:
                    case 7:
                        this.mCallback.handleCallSessionEvent(5);
                        break;
                    case 3:
                        this.mCallback.handleCallSessionEvent(4);
                        break;
                    default:
                        return;
                }
            } catch (RemoteException unused) {
            }
        }

        public void onVideoState(int i, int i2) throws RemoteException {
            if (checkInvalidStatus(i)) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "onVideoState() " + i2);
            IMSLog.c(LogClass.VOLTE_CHANGE_VIDEO_STATE, ImsVideoCallProviderImpl.this.mSession.getPhoneId() + "," + i + "," + i2);
            try {
                if (i2 == 0) {
                    this.mCallback.handleCallSessionEvent(2);
                } else if (i2 == 1) {
                    this.mCallback.handleCallSessionEvent(1);
                } else if (i2 == 2) {
                    ImsVideoCallProviderImpl.this.mIsVideoPause = false;
                    this.mCallback.handleCallSessionEvent(1000);
                } else if (i2 != 3) {
                } else {
                    this.mCallback.handleCallSessionEvent(1001);
                }
            } catch (RemoteException unused) {
            }
        }

        public void onVideoQualityChanged(int i, int i2) throws RemoteException {
            if (checkInvalidStatus(i)) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "onVideoQualityChanged() " + i2);
            try {
                if (i2 == 0) {
                    this.mCallback.changeVideoQuality(3);
                } else if (i2 == 1) {
                    this.mCallback.changeVideoQuality(2);
                } else if (i2 != 2) {
                } else {
                    this.mCallback.changeVideoQuality(1);
                }
            } catch (RemoteException unused) {
            }
        }

        public void onChangePeerDimension(int i, int i2, int i3) throws RemoteException {
            if (checkInvalidStatus(i)) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "onChangePeerDimension() width : " + i2 + " height : " + i3);
            try {
                this.mCallback.changePeerDimensions(i2, i3);
            } catch (RemoteException unused) {
            }
        }

        public void setVideoPause(int i, boolean z) throws RemoteException {
            ImsVideoCallProviderImpl imsVideoCallProviderImpl = ImsVideoCallProviderImpl.this;
            IImsCallSession iImsCallSession = imsVideoCallProviderImpl.mSession;
            if (iImsCallSession == null || imsVideoCallProviderImpl.mMediaController == null || i != iImsCallSession.getSessionId()) {
                return;
            }
            ImsVideoCallProviderImpl.this.mIsVideoPause = z;
        }

        public void changeCameraCapabilities(int i, int i2, int i3) throws RemoteException {
            if (checkInvalidStatus(i)) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "changeCameraCapabilities() width : " + i2 + " height : " + i3);
            try {
                this.mCallback.changeCameraCapabilities(new VideoProfile.CameraCapabilities(i2, i3));
            } catch (RemoteException unused) {
            }
        }

        public void onRecordState(int i, int i2) throws RemoteException {
            ImsVideoCallProviderImpl imsVideoCallProviderImpl = ImsVideoCallProviderImpl.this;
            if (imsVideoCallProviderImpl.mSession == null || imsVideoCallProviderImpl.mMediaController == null || this.mCallback == null) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "onRecordState() " + i2);
            try {
                if (i2 == 0) {
                    this.mCallback.handleCallSessionEvent(1100);
                } else if (i2 == 1) {
                    this.mCallback.handleCallSessionEvent(1101);
                } else if (i2 == 2) {
                    this.mCallback.handleCallSessionEvent(ImsVideoCallProviderImpl.RECORD_START_FAILURE_NO_SPACE);
                } else if (i2 == 3) {
                    this.mCallback.handleCallSessionEvent(1102);
                } else if (i2 == 4) {
                    this.mCallback.handleCallSessionEvent(1103);
                } else if (i2 != 5) {
                } else {
                    this.mCallback.handleCallSessionEvent(1111);
                }
            } catch (RemoteException unused) {
            }
        }

        public void onEmojiState(int i, int i2) throws RemoteException {
            ImsVideoCallProviderImpl imsVideoCallProviderImpl = ImsVideoCallProviderImpl.this;
            if (imsVideoCallProviderImpl.mSession == null || imsVideoCallProviderImpl.mMediaController == null || this.mCallback == null) {
                return;
            }
            Log.i(ImsVideoCallProviderImpl.LOG_TAG, "onEmojiState() " + i2);
            try {
                if (i2 == 0) {
                    this.mCallback.handleCallSessionEvent(1200);
                } else if (i2 == 1) {
                    this.mCallback.handleCallSessionEvent(1201);
                } else if (i2 == 2) {
                    this.mCallback.handleCallSessionEvent(ImsVideoCallProviderImpl.EMOJI_STOP_SUCCESS);
                } else if (i2 != 3) {
                } else {
                    this.mCallback.handleCallSessionEvent(ImsVideoCallProviderImpl.EMOJI_STOP_FAILURE);
                }
            } catch (RemoteException unused) {
            }
        }

        public void onChangeCallDataUsage(int i, long j) throws RemoteException {
            if (checkInvalidStatus(i)) {
                return;
            }
            try {
                this.mCallback.changeCallDataUsage(j);
            } catch (RemoteException unused) {
            }
        }

        private boolean checkInvalidStatus(int i) throws RemoteException {
            ImsVideoCallProviderImpl imsVideoCallProviderImpl = ImsVideoCallProviderImpl.this;
            IImsCallSession iImsCallSession = imsVideoCallProviderImpl.mSession;
            return iImsCallSession == null || imsVideoCallProviderImpl.mMediaController == null || i != iImsCallSession.getSessionId() || this.mCallback == null;
        }

        private VideoProfile convertCallProfileToVideoProfile(CallProfile callProfile) {
            if (callProfile == null) {
                return null;
            }
            int convertStateToVideoProfile = convertStateToVideoProfile(callProfile.getCallType());
            if (callProfile.getMediaProfile().getVideoPause()) {
                convertStateToVideoProfile |= 4;
            }
            int convertQualityToVideoProfile = convertQualityToVideoProfile(callProfile.getMediaProfile().getVideoQuality());
            if (callProfile.getCallType() == 0) {
                return null;
            }
            return new VideoProfile(convertStateToVideoProfile, convertQualityToVideoProfile);
        }
    }
}
