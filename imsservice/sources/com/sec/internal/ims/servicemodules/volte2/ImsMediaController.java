package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.net.Network;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import com.sec.ims.volte2.IImsMediaCallProvider;
import com.sec.ims.volte2.IVideoServiceEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.ImsGeneralEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.servicemodules.volte2.data.DtmfInfo;
import com.sec.internal.ims.servicemodules.volte2.data.TextInfo;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface;
import com.sec.internal.log.IMSLog;
import com.sec.sve.generalevent.VcidEvent;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ImsMediaController extends IImsMediaCallProvider.Stub implements IImsMediaController {
    public static final int CAMERA_ID_DEFAULT = 2;
    public static final int CAMERA_ID_FRONT = 1;
    public static final int CAMERA_ID_REAR = 0;
    private static final int EVENT_IMS_MEDIA_EVENT = 1;
    private static final String LOG_TAG = ImsMediaController.class.getSimpleName();
    private List<ImsCallSession> mCallSessions;
    private final Context mContext;
    private SimpleEventLog mEventLog;
    private Handler mMediaEventHandler;
    private IMediaServiceInterface mMediaSvcIntf;
    private IVolteServiceModuleInternal mVolteServiceModule;
    private final RemoteCallbackList<IVideoServiceEventListener> mCallbacks = new RemoteCallbackList<>();
    private int mDefaultCameraId = -1;
    private int mPendingCameraRequestor = -1;
    private int mPendingCameraId = -1;
    private boolean mIsUsingCamera = false;

    public ImsMediaController(IVolteServiceModuleInternal iVolteServiceModuleInternal, Looper looper, Context context, SimpleEventLog simpleEventLog) {
        this.mCallSessions = null;
        this.mMediaSvcIntf = null;
        this.mMediaEventHandler = null;
        this.mVolteServiceModule = null;
        this.mEventLog = simpleEventLog;
        this.mCallSessions = new ArrayList();
        this.mVolteServiceModule = iVolteServiceModuleInternal;
        this.mMediaSvcIntf = iVolteServiceModuleInternal.getMediaSvcIntf();
        this.mContext = context;
        this.mMediaEventHandler = new Handler(looper) { // from class: com.sec.internal.ims.servicemodules.volte2.ImsMediaController.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                AsyncResult asyncResult = (AsyncResult) message.obj;
                if (message.what != 1) {
                    return;
                }
                ImsMediaController.this.onImsMediaEvent((IMSMediaEvent) asyncResult.result);
            }
        };
        init();
    }

    public void init() {
        this.mMediaSvcIntf.registerForMediaEvent(this.mMediaEventHandler, 1, null);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void registerForMediaEvent(ImsCallSession imsCallSession) {
        if (imsCallSession != null) {
            Log.i(LOG_TAG, "registerForMediaEvent: session " + imsCallSession.getSessionId());
            synchronized (this.mCallSessions) {
                this.mCallSessions.add(imsCallSession);
            }
            return;
        }
        Log.e(LOG_TAG, "registerForMediaEvent: session null!!!");
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void unregisterForMediaEvent(ImsCallSession imsCallSession) {
        if (imsCallSession != null) {
            Log.i(LOG_TAG, "unregisterForMediaEvent: session " + imsCallSession.getSessionId());
            synchronized (this.mCallSessions) {
                this.mCallSessions.remove(imsCallSession);
            }
            return;
        }
        Log.e(LOG_TAG, "unregisterForMediaEvent: session null!!!");
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void registerForVideoServiceEvent(IVideoServiceEventListener iVideoServiceEventListener) {
        Log.i(LOG_TAG, "registerForVideoServiceEvent");
        this.mCallbacks.register(iVideoServiceEventListener);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void unregisterForVideoServiceEvent(IVideoServiceEventListener iVideoServiceEventListener) {
        Log.i(LOG_TAG, "unregisterForVideoServiceEvent");
        this.mCallbacks.unregister(iVideoServiceEventListener);
    }

    public void setCamera(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            this.mDefaultCameraId = parseInt;
            this.mMediaSvcIntf.setCamera(parseInt);
        } catch (NumberFormatException unused) {
            Log.i(LOG_TAG, "Invalid for ImsVideoCall : setCamera- " + str);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void setPreviewSurface(int i, Surface surface) {
        this.mMediaSvcIntf.setPreviewSurface(i, surface, 0);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void setDisplaySurface(int i, Surface surface) {
        ImsCallSession session = getSession(i);
        if (session != null) {
            session.setDisplaySurface(surface);
            if (session.getCallProfile().getCallType() == 6 && session.getCallProfile().getConfSessionId() > 0) {
                i = session.getCallProfile().getConfSessionId();
                Log.i(LOG_TAG, "setDisplaySurface sessionId changed to " + i);
            }
        }
        this.mMediaSvcIntf.setDisplaySurface(i, surface, 0);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void setDeviceOrientation(int i) {
        this.mMediaSvcIntf.setOrientation(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void setZoom(float f) {
        this.mMediaSvcIntf.setZoom(f);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void requestCallDataUsage() {
        this.mMediaSvcIntf.requestCallDataUsage();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void holdVideo(int i) {
        Log.i(LOG_TAG, "holdVideo: sessionId=" + i);
        ImsCallSession session = getSession(i);
        int phoneId = (session == null || session.getCallState() == null) ? 0 : session.getPhoneId();
        IMSLog.c(LogClass.VOLTE_HOLD_VIDEO, phoneId + "," + i);
        this.mMediaSvcIntf.holdVideo(phoneId, i);
        setVideoPause(i, true);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void resumeVideo(int i) {
        Log.i(LOG_TAG, "resumeVideo: sessionId=" + i);
        ImsCallSession session = getSession(i);
        int phoneId = (session == null || session.getCallState() == null) ? 0 : session.getPhoneId();
        IMSLog.c(LogClass.VOLTE_RESUME_VIDEO, phoneId + "," + i);
        this.mMediaSvcIntf.resumeVideo(phoneId, i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void setPreviewResolution(int i, int i2) {
        Log.i(LOG_TAG, "setPreviewResolution width : " + i + " height : " + i2);
        this.mMediaSvcIntf.setPreviewResolution(i, i2);
    }

    private synchronized void logCamera(boolean z, int i, int i2, boolean z2) {
        ImsCallSession session;
        if (this.mIsUsingCamera != z) {
            String str = "null";
            if (i >= 0 && (session = getSession(i)) != null && session.getCallState() != null) {
                str = session.getCallState().name();
            }
            SimpleEventLog simpleEventLog = this.mEventLog;
            StringBuilder sb = new StringBuilder();
            sb.append(z ? "start" : VcidEvent.BUNDLE_VALUE_ACTION_STOP);
            sb.append("Camera: sessionId=");
            sb.append(i);
            sb.append(" (");
            sb.append(str);
            sb.append("), camera=");
            sb.append(i2);
            sb.append(" noti=");
            sb.append(z2);
            simpleEventLog.add(sb.toString());
            this.mIsUsingCamera = z;
        }
    }

    public void startCamera(Surface surface) {
        Log.i(LOG_TAG, "startCamera:");
        logCamera(true, -1, -1, false);
        this.mMediaSvcIntf.startCamera(surface);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void startCamera(int i, int i2) {
        ImsCallSession activeCall;
        String str = LOG_TAG;
        Log.i(str, "startCamera: sessionId=" + i + " camera=" + i2);
        ImsCallSession session = getSession(i);
        if (i < 0 && (activeCall = getActiveCall()) != null) {
            i = activeCall.getSessionId();
            Log.i(str, "startCamera: using active sessionId=" + i + " camera=" + i2);
        }
        ImsCallSession cameraUsingSession = getCameraUsingSession();
        if (cameraUsingSession != null) {
            if (cameraUsingSession.getSessionId() == i) {
                Log.i(str, "startCamera: camera already active for session " + i);
                if (this.mDefaultCameraId == -1) {
                    this.mDefaultCameraId = i2;
                    return;
                }
                return;
            }
            if (cameraUsingSession.getCallState() == CallConstants.STATE.VideoHeld) {
                cameraUsingSession.stopCamera();
            } else {
                Log.i(str, "startCamera: camera in use. pending sesssion " + i);
                this.mPendingCameraRequestor = i;
                this.mPendingCameraId = i2;
                if (session != null) {
                    session.setUsingCamera(false);
                    return;
                }
                return;
            }
        }
        this.mPendingCameraRequestor = -1;
        this.mPendingCameraId = -1;
        if (i2 != 2 && i2 >= 0) {
            this.mDefaultCameraId = i2;
        }
        if (session != null) {
            session.setUsingCamera(true);
        }
        ImsCallSession session2 = getSession(i);
        int phoneId = session2 != null ? session2.getPhoneId() : 0;
        IMSLog.c(LogClass.VOLTE_START_CAMERA, phoneId + "," + i + "," + i2);
        logCamera(true, i, i2, false);
        this.mMediaSvcIntf.startCamera(phoneId, i, this.mDefaultCameraId);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void startCameraForActiveExcept(int i) {
        String str = LOG_TAG;
        Log.i(str, "startCameraForActiveExcept: " + i);
        ImsCallSession activeExcept = getActiveExcept(i);
        if (activeExcept != null) {
            Log.i(str, "active VT session found");
            activeExcept.startLastUsedCamera();
        }
    }

    public void stopCamera() {
        int i = 0;
        for (ImsCallSession imsCallSession : this.mCallSessions) {
            imsCallSession.setUsingCamera(false);
            i = imsCallSession.getPhoneId();
        }
        Log.i(LOG_TAG, "stopCamera:");
        logCamera(false, -1, -1, false);
        IMSLog.c(LogClass.VOLTE_STOP_CAMERA, "" + i);
        this.mMediaSvcIntf.stopCamera(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void stopActiveCamera() {
        String str = LOG_TAG;
        Log.i(str, "stopActiveCamera:");
        ImsCallSession cameraUsingSession = getCameraUsingSession();
        if (cameraUsingSession != null) {
            Log.i(str, "active VT session found");
            cameraUsingSession.stopCamera();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void stopCamera(int i) {
        String str = LOG_TAG;
        Log.i(str, "stopCamera: sessionId=" + i);
        ImsCallSession session = getSession(i);
        if (session != null && !session.getUsingCamera()) {
            Log.i(str, "Do not call stopCamera multiple times");
            return;
        }
        if (this.mPendingCameraRequestor == i) {
            this.mPendingCameraRequestor = -1;
            ImsCallSession cameraUsingSession = getCameraUsingSession();
            if (cameraUsingSession != null && cameraUsingSession.getSessionId() != i) {
                Log.i(str, "stopCamera: cancel pending camera.");
                return;
            }
        }
        int i2 = 0;
        for (ImsCallSession imsCallSession : this.mCallSessions) {
            imsCallSession.setUsingCamera(false);
            if (imsCallSession.getSessionId() == i) {
                i2 = imsCallSession.getPhoneId();
            }
        }
        logCamera(false, i, -1, false);
        this.mMediaSvcIntf.stopCamera(i2);
        if (this.mPendingCameraRequestor > 0) {
            Log.i(LOG_TAG, "stopCamera: start camera for pending session " + this.mPendingCameraRequestor);
            ImsCallSession session2 = getSession(this.mPendingCameraRequestor);
            if (session2 != null && session2.getCallState() != CallConstants.STATE.ReadyToCall) {
                logCamera(true, this.mPendingCameraRequestor, this.mPendingCameraId, false);
                this.mMediaSvcIntf.startCamera(session2.getPhoneId(), this.mPendingCameraRequestor, this.mPendingCameraId);
                session2.setUsingCamera(true);
            }
            this.mPendingCameraRequestor = -1;
            this.mPendingCameraId = -1;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void switchCamera() {
        String str = LOG_TAG;
        Log.i(str, "switchCamera: current camera " + this.mDefaultCameraId);
        ImsCallSession cameraUsingSession = getCameraUsingSession();
        if (cameraUsingSession != null && cameraUsingSession.getCallState() != CallConstants.STATE.IncomingCall) {
            if (this.mDefaultCameraId == 1) {
                this.mDefaultCameraId = 0;
            } else {
                this.mDefaultCameraId = 1;
            }
            this.mMediaSvcIntf.switchCamera();
            return;
        }
        Log.i(str, "switchCamera: skip because incoming vtcall state");
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void resetCameraId() {
        Log.i(LOG_TAG, "resetCameraId:");
        this.mDefaultCameraId = -1;
        this.mMediaSvcIntf.resetCameraId();
    }

    public void getCameraInfo(int i) {
        this.mMediaSvcIntf.getCameraInfo(i);
    }

    public void startRender(boolean z) {
        this.mMediaSvcIntf.startRender(z);
    }

    public void startVideoRenderer(Surface surface) {
        this.mMediaSvcIntf.startVideoRenderer(surface);
    }

    public void stopVideoRenderer() {
        this.mMediaSvcIntf.stopVideoRenderer();
    }

    public void swipeVideoSurface() {
        this.mMediaSvcIntf.swipeVideoSurface();
    }

    public void deinitSurface(boolean z) {
        this.mMediaSvcIntf.deinitSurface(z);
    }

    public void getMaxZoom() {
        this.mMediaSvcIntf.getMaxZoom();
    }

    public void getZoom() {
        this.mMediaSvcIntf.getZoom();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public int getDefaultCameraId() {
        return this.mDefaultCameraId;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void startRecord(String str) {
        ImsCallSession activeCall = getActiveCall();
        if (activeCall == null) {
            IMSMediaEvent iMSMediaEvent = new IMSMediaEvent();
            iMSMediaEvent.setState(IMSMediaEvent.MEDIA_STATE.RECORD_START_FAILURE);
            onRecordEvent(iMSMediaEvent);
        } else {
            if (TextUtils.isEmpty(str)) {
                Log.i(LOG_TAG, "invalid filepath=" + str);
                return;
            }
            File file = new File(str);
            new File(file.isDirectory() ? file.getPath() : file.getParent()).mkdirs();
            this.mMediaSvcIntf.startRecord(activeCall.getPhoneId(), activeCall.getSessionId(), str);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void stopRecord() {
        ImsCallSession activeCall = getActiveCall();
        if (activeCall != null) {
            this.mMediaSvcIntf.stopRecord(activeCall.getPhoneId(), activeCall.getSessionId());
        } else {
            IMSMediaEvent iMSMediaEvent = new IMSMediaEvent();
            iMSMediaEvent.setState(IMSMediaEvent.MEDIA_STATE.RECORD_STOP_FAILURE);
            onRecordEvent(iMSMediaEvent);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void startEmoji(String str) {
        ImsCallSession activeCall = getActiveCall();
        if (activeCall != null) {
            this.mMediaSvcIntf.startEmoji(activeCall.getPhoneId(), activeCall.getSessionId(), str);
        } else {
            IMSMediaEvent iMSMediaEvent = new IMSMediaEvent();
            iMSMediaEvent.setState(IMSMediaEvent.MEDIA_STATE.EMOJI_START_FAILURE);
            onEmojiEvent(iMSMediaEvent);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void stopEmoji(int i) {
        Log.i(LOG_TAG, "stopEmoji : " + i);
        this.mMediaSvcIntf.stopEmoji(0, i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void sendGeneralEvent(int i, int i2, int i3, String str) {
        if (getActiveCall() != null) {
            Log.i(LOG_TAG, "sendGeneralEvent - event: " + i + ", arg1: " + i2 + ", arg2:" + i3 + ", arg3:" + str);
            this.mMediaSvcIntf.sendGeneralEvent(i, i2, i3, str);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void sendGeneralBundleEvent(String str, Bundle bundle) {
        if (hasActiveCall()) {
            Log.i(LOG_TAG, "sendGeneralBundleEvent - event: " + str + ", extras: " + bundle.toString());
            this.mMediaSvcIntf.sendGeneralBundleEvent(str, bundle);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void sendLiveVideo(int i) {
        Log.i(LOG_TAG, "sendStillImage() disable");
        this.mMediaSvcIntf.sendStillImage(i, false, null, null);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void sendStillImage(int i, String str, int i2, String str2, int i3) {
        Log.i(LOG_TAG, "sendStillImage() enable filePath: " + str + " frameSize: " + str2);
        this.mMediaSvcIntf.sendStillImage(i, true, str, str2);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void setCameraEffect(int i) {
        Log.i(LOG_TAG, "setCameraEffect() value: " + i);
        this.mMediaSvcIntf.setCameraEffect(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public void bindToNetwork(Network network) {
        Log.i(LOG_TAG, "bindToNetwork() " + network);
        this.mMediaSvcIntf.bindToNetwork(network);
    }

    private String getFrameSize() {
        ImsCallSession activeCall = getActiveCall();
        return activeCall != null ? activeCall.getCallProfile().getMediaProfile().getVideoSize() : "VGA";
    }

    private ImsCallSession getCameraUsingSession() {
        for (ImsCallSession imsCallSession : this.mCallSessions) {
            if (imsCallSession.getUsingCamera()) {
                return imsCallSession;
            }
        }
        return null;
    }

    private ImsCallSession getActiveExcept(int i) {
        for (ImsCallSession imsCallSession : this.mCallSessions) {
            if (imsCallSession != null && imsCallSession.getSessionId() != i && imsCallSession.getCallState() == CallConstants.STATE.IncomingCall && ImsCallUtil.isVideoCall(imsCallSession.getCallProfile().getCallType())) {
                return imsCallSession;
            }
        }
        for (ImsCallSession imsCallSession2 : this.mCallSessions) {
            if (imsCallSession2 != null && imsCallSession2.getSessionId() != i && imsCallSession2.getCallState() == CallConstants.STATE.InCall && ImsCallUtil.isCameraUsingCall(imsCallSession2.getCallProfile().getCallType())) {
                return imsCallSession2;
            }
        }
        for (ImsCallSession imsCallSession3 : this.mCallSessions) {
            if (imsCallSession3 != null) {
                if (!SimUtil.getSimMno(imsCallSession3.getPhoneId()).isChn()) {
                    return null;
                }
                if (imsCallSession3.getSessionId() != i && imsCallSession3.getCallState() == CallConstants.STATE.ModifyingCall && imsCallSession3.getCallProfile().getCallType() == 1) {
                    return imsCallSession3;
                }
            }
        }
        return null;
    }

    private ImsCallSession getActiveCall() {
        for (ImsCallSession imsCallSession : this.mCallSessions) {
            if (imsCallSession != null && imsCallSession.getCallState() == CallConstants.STATE.InCall) {
                return imsCallSession;
            }
        }
        return null;
    }

    private boolean hasActiveCall() {
        for (ImsCallSession imsCallSession : this.mCallSessions) {
            if (imsCallSession != null && imsCallSession.getCallState() != CallConstants.STATE.Idle && imsCallSession.getCallState() != CallConstants.STATE.EndingCall && imsCallSession.getCallState() != CallConstants.STATE.EndedCall) {
                return true;
            }
        }
        return false;
    }

    private void onCaptureEvent(IMSMediaEvent iMSMediaEvent, boolean z) {
        Log.i(LOG_TAG, "onCaptureEvent: success=" + z);
    }

    private synchronized void onCameraEvent(IMSMediaEvent iMSMediaEvent) {
        String str = LOG_TAG;
        Log.i(str, "onCameraEvent " + iMSMediaEvent.getState());
        int i = iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.CAMERA_START_SUCCESS ? 1 : -1;
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.CAMERA_STOP_SUCCESS) {
            i = 3;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.CAMERA_START_FAIL) {
            i = 2;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.CAMERA_SWITCH_SUCCESS) {
            i = 5;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.CAMERA_SWITCH_FAIL) {
            i = 6;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.CAMERA_DISABLED_ERROR) {
            i = 7;
        }
        if (i == -1) {
            Log.i(str, "camera state not supported");
            return;
        }
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mCallbacks.getBroadcastItem(i2).onCameraState(iMSMediaEvent.getSessionID(), i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private synchronized void onVideoQuality(IMSMediaEvent iMSMediaEvent) {
        String str = LOG_TAG;
        Log.i(str, "onVideoQuality " + iMSMediaEvent.getState());
        int i = iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.VIDEO_VERYPOOR_QUALITY ? 0 : -1;
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.VIDEO_POOR_QUALITY) {
            i = 0;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.VIDEO_FAIR_QUALITY) {
            i = 1;
        }
        int i2 = 2;
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.VIDEO_GOOD_QUALITY) {
            i = 2;
        }
        if (iMSMediaEvent.getState() != IMSMediaEvent.MEDIA_STATE.VIDEO_MAX_QUALITY) {
            i2 = i;
        }
        if (i2 == -1) {
            Log.i(str, "video quality not supported");
            return;
        }
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i3 = 0; i3 < beginBroadcast; i3++) {
            try {
                this.mCallbacks.getBroadcastItem(i3).onVideoQualityChanged(iMSMediaEvent.getSessionID(), i2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private synchronized void onRecordEvent(IMSMediaEvent iMSMediaEvent) {
        String str = LOG_TAG;
        Log.i(str, "onRecordEvent " + iMSMediaEvent.getState());
        int i = iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.RECORD_START_SUCCESS ? 0 : -1;
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.RECORD_START_FAILURE) {
            i = 1;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.RECORD_START_FAILURE_NO_SPACE) {
            i = 2;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.RECORD_STOP_SUCCESS) {
            i = 3;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.RECORD_STOP_FAILURE) {
            i = 4;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.RECORD_STOP_NO_SPACE) {
            i = 5;
        }
        if (i == -1) {
            Log.i(str, "unknwon record event");
            return;
        }
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mCallbacks.getBroadcastItem(i2).onRecordState(iMSMediaEvent.getSessionID(), i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private synchronized void onEmojiEvent(IMSMediaEvent iMSMediaEvent) {
        String str = LOG_TAG;
        Log.i(str, "onEmojiEvent " + iMSMediaEvent.getState());
        int i = iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.EMOJI_START_SUCCESS ? 0 : -1;
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.EMOJI_START_FAILURE) {
            i = 1;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.EMOJI_STOP_SUCCESS) {
            i = 2;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.EMOJI_STOP_FAILURE) {
            i = 3;
        }
        if (iMSMediaEvent.getState() == IMSMediaEvent.MEDIA_STATE.EMOJI_INFO_CHANGE) {
            this.mMediaSvcIntf.restartEmoji(0, iMSMediaEvent.getSessionID());
            return;
        }
        if (i == -1) {
            Log.i(str, "unknown emoji event");
            return;
        }
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mCallbacks.getBroadcastItem(i2).onEmojiState(iMSMediaEvent.getSessionID(), i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private synchronized void onGeneralEvent(IMSMediaEvent iMSMediaEvent) {
        ImsGeneralEvent imsGeneralEvent;
        String str = LOG_TAG;
        Log.i(str, "onGeneralEvent " + iMSMediaEvent.getState());
        int i = AnonymousClass3.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[iMSMediaEvent.getState().ordinal()];
        if (i == 1) {
            imsGeneralEvent = ImsGeneralEvent.VCID_FAILURE;
        } else if (i == 2) {
            imsGeneralEvent = ImsGeneralEvent.IDC_SCREEN_SHARE_START;
        } else if (i == 3) {
            imsGeneralEvent = ImsGeneralEvent.IDC_SCREEN_SHARE_STOP;
        } else if (i == 4) {
            imsGeneralEvent = ImsGeneralEvent.IDC_ARCALL_START;
        } else if (i == 5) {
            imsGeneralEvent = ImsGeneralEvent.IDC_ARCALL_STOP;
        } else {
            Log.e(str, "unknown event " + iMSMediaEvent.getState());
            return;
        }
        ImsCallSession sessionByIMSMediaEvent = getSessionByIMSMediaEvent(iMSMediaEvent);
        if (sessionByIMSMediaEvent != null) {
            sessionByIMSMediaEvent.notifyImsGeneralEvent(imsGeneralEvent, new Bundle());
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.volte2.ImsMediaController$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE;

        static {
            int[] iArr = new int[IMSMediaEvent.MEDIA_STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE = iArr;
            try {
                iArr[IMSMediaEvent.MEDIA_STATE.GENERAL_EVENT_VCID_FAILURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.GENERAL_EVENT_IDC_SCREEN_SHARE_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.GENERAL_EVENT_IDC_SCREEN_SHARE_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.GENERAL_EVENT_IDC_ARCALL_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.GENERAL_EVENT_IDC_ARCALL_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAPTURE_SUCCEEDED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAPTURE_FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_HELD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_RESUMED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_AVAILABLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_ORIENTATION.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.NO_FAR_FRAME.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_FIRST_FRAME_READY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_START_SUCCESS.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_STOP_SUCCESS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_START_FAIL.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_SWITCH_SUCCESS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_EVENT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_SWITCH_FAIL.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_DISABLED_ERROR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CHANGE_PEER_DIMENSION.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.CAMERA_CAPABILITY.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_VERYPOOR_QUALITY.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_POOR_QUALITY.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_FAIR_QUALITY.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_GOOD_QUALITY.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_MAX_QUALITY.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_START_SUCCESS.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_START_FAILURE.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_START_FAILURE_NO_SPACE.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_STOP_SUCCESS.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_STOP_FAILURE.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.RECORD_STOP_NO_SPACE.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.EMOJI_START_SUCCESS.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.EMOJI_START_FAILURE.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.EMOJI_STOP_SUCCESS.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.EMOJI_STOP_FAILURE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.EMOJI_INFO_CHANGE.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
        }
    }

    private synchronized void onVideoHold(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "onVideoHold or no far frame");
        if (iMSMediaEvent.isHeldCall()) {
            return;
        }
        ImsCallSession session = getSession(iMSMediaEvent.getSessionID());
        if (session == null || session.getCallState() != CallConstants.STATE.HoldingVideo) {
            int beginBroadcast = this.mCallbacks.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mCallbacks.getBroadcastItem(i).onVideoState(iMSMediaEvent.getSessionID(), 1);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mCallbacks.finishBroadcast();
        }
    }

    private synchronized void onVideoResumed(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "onVideoResumed or far frame ready");
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mCallbacks.getBroadcastItem(i).onVideoState(iMSMediaEvent.getSessionID(), 2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private synchronized void onVideoAvailable(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "onVideoAvailable");
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mCallbacks.getBroadcastItem(i).onVideoState(iMSMediaEvent.getSessionID(), 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void onCallDowngraded(IMSMediaEvent iMSMediaEvent) {
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mCallbacks.getBroadcastItem(i).onVideoState(iMSMediaEvent.getSessionID(), 3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private synchronized void onVideoOrientationChanged(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "onVideoOrientationChanged");
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mCallbacks.getBroadcastItem(i).onVideoOrientChanged(iMSMediaEvent.getSessionID());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private synchronized void onCameraFirstFrameReady(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "onCameraFirstFrameReady");
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mCallbacks.getBroadcastItem(i).onCameraState(iMSMediaEvent.getSessionID(), 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private void onClearUsingCamera() {
        synchronized (this.mCallSessions) {
            for (ImsCallSession imsCallSession : this.mCallSessions) {
                if (imsCallSession != null) {
                    imsCallSession.setUsingCamera(false);
                }
            }
        }
    }

    private void onCameraStopSuccess() {
        if (this.mPendingCameraRequestor > 0) {
            Log.i(LOG_TAG, "CAMERA_STOP_SUCCESS: start camera for pending session " + this.mPendingCameraRequestor);
            ImsCallSession session = getSession(this.mPendingCameraRequestor);
            if (session != null && session.getCallState() != CallConstants.STATE.ReadyToCall) {
                logCamera(true, this.mPendingCameraRequestor, this.mPendingCameraId, false);
                this.mMediaSvcIntf.startCamera(session.getPhoneId(), this.mPendingCameraRequestor, this.mPendingCameraId);
                session.setUsingCamera(true);
            }
            this.mPendingCameraRequestor = -1;
            this.mPendingCameraId = -1;
        }
    }

    private synchronized void onChangePeerDimension(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "onChangePeerDimension");
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mCallbacks.getBroadcastItem(i).onChangePeerDimension(iMSMediaEvent.getSessionID(), iMSMediaEvent.getWidth(), iMSMediaEvent.getHeight());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void changeCameraCapabilities(int i, int i2, int i3) {
        Log.i(LOG_TAG, "changeCameraCapabilities");
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i4 = 0; i4 < beginBroadcast; i4++) {
            try {
                this.mCallbacks.getBroadcastItem(i4).changeCameraCapabilities(i, i2, i3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void receiveSessionModifyRequest(int i, CallProfile callProfile) {
        Log.i(LOG_TAG, "receiveSessionModifyRequest");
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mCallbacks.getBroadcastItem(i2).receiveSessionModifyRequest(i, callProfile);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void receiveSessionModifyResponse(int i, int i2, CallProfile callProfile, CallProfile callProfile2) {
        Log.i(LOG_TAG, "receiveSessionModifyResponse");
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i3 = 0; i3 < beginBroadcast; i3++) {
            try {
                this.mCallbacks.getBroadcastItem(i3).receiveSessionModifyResponse(i, i2, callProfile, callProfile2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void setVideoPause(int i, boolean z) {
        Log.i(LOG_TAG, "setVideoPause : " + z);
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mCallbacks.getBroadcastItem(i2).setVideoPause(i, z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IImsMediaController
    public synchronized void onChangeCallDataUsage(int i, long j) {
        Log.i(LOG_TAG, "onChangeCallDataUsage : " + j);
        int beginBroadcast = this.mCallbacks.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mCallbacks.getBroadcastItem(i2).onChangeCallDataUsage(i, j);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mCallbacks.finishBroadcast();
    }

    private ImsCallSession getSession(int i) {
        synchronized (this.mCallSessions) {
            for (ImsCallSession imsCallSession : this.mCallSessions) {
                if (imsCallSession != null && imsCallSession.getSessionId() == i) {
                    return imsCallSession;
                }
            }
            return null;
        }
    }

    private void onHandleAudioEvent(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "handling Audio Event");
        int audioEvent = iMSMediaEvent.getAudioEvent();
        if (audioEvent != 18 && audioEvent != 61) {
            if (audioEvent == 78) {
                IVolteServiceModuleInternal iVolteServiceModuleInternal = this.mVolteServiceModule;
                if (iVolteServiceModuleInternal != null) {
                    iVolteServiceModuleInternal.sendRtpLossRate(iMSMediaEvent.getPhoneId(), iMSMediaEvent.getRtpLossRate());
                    return;
                }
                return;
            }
            if (audioEvent != 28 && audioEvent != 29 && audioEvent != 31) {
                if (audioEvent != 32) {
                    return;
                }
                this.mMediaSvcIntf.sendRtpStatsToStack(iMSMediaEvent.getAudioRtpStats());
                return;
            }
        }
        this.mMediaSvcIntf.sendMediaEvent(iMSMediaEvent.getPhoneId(), iMSMediaEvent.getChannelId(), iMSMediaEvent.getAudioEvent(), 0);
    }

    private void onHandleTextEvent(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "handling Text Event");
        int textEvent = iMSMediaEvent.getTextEvent();
        if (textEvent != 1) {
            if (textEvent != 2) {
                return;
            }
            this.mMediaSvcIntf.sendMediaEvent(iMSMediaEvent.getPhoneId(), iMSMediaEvent.getChannelId(), iMSMediaEvent.getTextEvent(), 2);
        } else if (this.mVolteServiceModule != null) {
            this.mVolteServiceModule.onTextReceived(new TextInfo(iMSMediaEvent.getSessionID(), iMSMediaEvent.getRttText(), iMSMediaEvent.getRttTextLen()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x006e, code lost:
    
        if (r7.getSessionID() != 1) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean onHandleVideoEvent(com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent r7) {
        /*
            r6 = this;
            java.lang.String r0 = com.sec.internal.ims.servicemodules.volte2.ImsMediaController.LOG_TAG
            java.lang.String r1 = "handling Video Event"
            android.util.Log.i(r0, r1)
            int r1 = r7.getVideoEvent()
            r2 = 16
            r3 = 0
            r4 = 1
            if (r1 == r2) goto L64
            r2 = 17
            if (r1 == r2) goto L1e
            r0 = 117(0x75, float:1.64E-43)
            if (r1 == r0) goto L71
            switch(r1) {
                case 20: goto L71;
                case 21: goto L71;
                case 22: goto L71;
                case 23: goto L71;
                default: goto L1c;
            }
        L1c:
            goto L93
        L1e:
            java.util.List<com.sec.internal.ims.servicemodules.volte2.ImsCallSession> r1 = r6.mCallSessions
            monitor-enter(r1)
            com.sec.internal.ims.servicemodules.volte2.ImsCallSession r2 = r6.getSessionByIMSMediaEvent(r7)     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L5e
            com.sec.ims.volte2.data.CallProfile r5 = r2.getCallProfile()     // Catch: java.lang.Throwable -> L61
            boolean r5 = r5.getDelayRinging()     // Catch: java.lang.Throwable -> L61
            if (r5 == 0) goto L5e
            java.lang.String r5 = "MT CRT 1st RTP got, set delay ringing false & notify Ringing"
            android.util.Log.i(r0, r5)     // Catch: java.lang.Throwable -> L61
            com.sec.ims.volte2.data.CallProfile r0 = r2.getCallProfile()     // Catch: java.lang.Throwable -> L61
            r0.setDelayRinging(r3)     // Catch: java.lang.Throwable -> L61
            com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal r0 = r6.mVolteServiceModule     // Catch: java.lang.Throwable -> L61
            if (r0 == 0) goto L4c
            int r5 = r2.getPhoneId()     // Catch: java.lang.Throwable -> L61
            int r2 = r2.getCallId()     // Catch: java.lang.Throwable -> L61
            r0.notifyOnIncomingCall(r5, r2)     // Catch: java.lang.Throwable -> L61
        L4c:
            com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface r6 = r6.mMediaSvcIntf     // Catch: java.lang.Throwable -> L61
            int r0 = r7.getPhoneId()     // Catch: java.lang.Throwable -> L61
            int r2 = r7.getSessionID()     // Catch: java.lang.Throwable -> L61
            int r7 = r7.getVideoEvent()     // Catch: java.lang.Throwable -> L61
            r6.sendMediaEvent(r0, r2, r7, r4)     // Catch: java.lang.Throwable -> L61
            goto L5f
        L5e:
            r3 = r4
        L5f:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L61
            return r3
        L61:
            r6 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L61
            throw r6
        L64:
            int r0 = r7.getSessionID()
            if (r0 == 0) goto L71
            int r0 = r7.getSessionID()
            if (r0 == r4) goto L71
            goto L93
        L71:
            com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface r6 = r6.mMediaSvcIntf
            int r0 = r7.getPhoneId()
            int r1 = r7.getSessionID()
            int r2 = r7.getVideoEvent()
            r6.sendMediaEvent(r0, r1, r2, r4)
            int r6 = r7.getVideoEvent()
            r0 = 20
            if (r6 == r0) goto L93
            int r6 = r7.getVideoEvent()
            r7 = 21
            if (r6 == r7) goto L93
            return r3
        L93:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.ImsMediaController.onHandleVideoEvent(com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent):boolean");
    }

    private void onHandleDtmfEvent(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "handling DTMF Event");
        if (iMSMediaEvent.getDtmfEvent() == 0 && this.mVolteServiceModule != null) {
            this.mVolteServiceModule.getCmcServiceHelper().onCmcDtmfInfo(new DtmfInfo(iMSMediaEvent.getDtmfKey(), -1, -1, -1));
        }
    }

    private ImsCallSession getSessionByIMSMediaEvent(IMSMediaEvent iMSMediaEvent) {
        for (ImsCallSession imsCallSession : this.mCallSessions) {
            if (imsCallSession != null) {
                Mno simMno = SimUtil.getSimMno(imsCallSession.getPhoneId());
                int callType = imsCallSession.getCallProfile().getCallType();
                if (simMno == Mno.SKT && callType == 6) {
                    Log.i(LOG_TAG, "Find conference call session : " + imsCallSession.getSessionId());
                    return imsCallSession;
                }
                if (imsCallSession.getSessionId() == iMSMediaEvent.getSessionID()) {
                    return imsCallSession;
                }
            }
        }
        return null;
    }

    private void onNotifyIMSMediaEvent(ImsCallSession imsCallSession, IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "onImsMediaEvent: state=" + iMSMediaEvent.getState() + " phoneId=" + imsCallSession.getPhoneId());
        switch (AnonymousClass3.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[iMSMediaEvent.getState().ordinal()]) {
            case 6:
                iMSMediaEvent.setIsNearEnd(false);
                iMSMediaEvent.setFileName(null);
                onCaptureEvent(iMSMediaEvent, true);
                break;
            case 7:
                onCaptureEvent(iMSMediaEvent, false);
                break;
            case 8:
                onVideoHold(iMSMediaEvent);
                break;
            case 9:
                onVideoResumed(iMSMediaEvent);
                break;
            case 10:
                onVideoAvailable(iMSMediaEvent);
                break;
            case 11:
                onVideoOrientationChanged(iMSMediaEvent);
                break;
            case 12:
                onVideoHold(iMSMediaEvent);
                break;
            case 13:
                onCameraFirstFrameReady(iMSMediaEvent);
                break;
            case 14:
                onClearUsingCamera();
                imsCallSession.setUsingCamera(true);
                imsCallSession.setStartCameraState(true);
                logCamera(true, -1, -1, true);
                onCameraEvent(iMSMediaEvent);
                break;
            case 15:
                onClearUsingCamera();
                onCameraStopSuccess();
                logCamera(false, -1, -1, true);
                final int sessionId = imsCallSession.getSessionId();
                IVolteServiceModuleInternal iVolteServiceModuleInternal = this.mVolteServiceModule;
                if (iVolteServiceModuleInternal != null) {
                    iVolteServiceModuleInternal.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsMediaController.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ImsMediaController.this.startCameraForActiveExcept(sessionId);
                        }
                    });
                }
                onCameraEvent(iMSMediaEvent);
                break;
            case 16:
                onClearUsingCamera();
                imsCallSession.setStartCameraState(false);
                onCameraEvent(iMSMediaEvent);
                break;
            case 17:
                imsCallSession.onSwitchCamera();
                onCameraEvent(iMSMediaEvent);
                break;
            case 18:
            case 19:
            case 20:
                onCameraEvent(iMSMediaEvent);
                break;
            case 21:
                onChangePeerDimension(iMSMediaEvent);
                break;
            case 22:
                imsCallSession.getCallProfile().getMediaProfile().setVideoSize(iMSMediaEvent.getWidth(), iMSMediaEvent.getHeight());
                changeCameraCapabilities(imsCallSession.getSessionId(), iMSMediaEvent.getWidth(), iMSMediaEvent.getHeight());
                break;
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
                onVideoQuality(iMSMediaEvent);
                break;
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
                onRecordEvent(iMSMediaEvent);
                break;
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
                onEmojiEvent(iMSMediaEvent);
                break;
        }
        imsCallSession.notifyImsMediaEvent(iMSMediaEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onImsMediaEvent(IMSMediaEvent iMSMediaEvent) {
        ImsCallSession sessionByIMSMediaEvent;
        if (iMSMediaEvent.isAudioEvent()) {
            onHandleAudioEvent(iMSMediaEvent);
            return;
        }
        if (iMSMediaEvent.isTextEvent()) {
            onHandleTextEvent(iMSMediaEvent);
            return;
        }
        if (iMSMediaEvent.isGeneralEvent()) {
            onGeneralEvent(iMSMediaEvent);
            return;
        }
        if (iMSMediaEvent.isVideoEvent()) {
            if (!onHandleVideoEvent(iMSMediaEvent)) {
                return;
            }
        } else if (iMSMediaEvent.isDtmfEvent()) {
            onHandleDtmfEvent(iMSMediaEvent);
            return;
        }
        synchronized (this.mCallSessions) {
            sessionByIMSMediaEvent = getSessionByIMSMediaEvent(iMSMediaEvent);
        }
        if (sessionByIMSMediaEvent == null) {
            Log.i(LOG_TAG, "onImsMediaEvent: session " + iMSMediaEvent.getSessionID() + " not found.");
            if (iMSMediaEvent.getSessionID() == 0 || iMSMediaEvent.getSessionID() == 1 || iMSMediaEvent.getState() != IMSMediaEvent.MEDIA_STATE.CAMERA_START_SUCCESS) {
                return;
            }
            stopCamera(iMSMediaEvent.getSessionID());
            return;
        }
        iMSMediaEvent.setSessionID(sessionByIMSMediaEvent.getSessionId());
        iMSMediaEvent.setPhoneId(sessionByIMSMediaEvent.getPhoneId());
        onNotifyIMSMediaEvent(sessionByIMSMediaEvent, iMSMediaEvent);
    }
}
