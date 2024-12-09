package com.sec.internal.ims.core.handler;

import android.net.Network;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface;

/* loaded from: classes.dex */
public abstract class MediaHandler extends BaseHandler implements IMediaServiceInterface {
    protected final RegistrantList mMediaEventRegistrants;

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void bindToNetwork(Network network) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void deinitSurface(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void getCameraInfo(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public String getHwSupportedVideoCodecs(String str) {
        return str;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void getMaxZoom() {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void getZoom() {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void holdVideo(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void requestCallDataUsage() {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void resetCameraId() {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void restartEmoji(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void resumeVideo(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void sendGeneralBundleEvent(String str, Bundle bundle) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void sendGeneralEvent(int i, int i2, int i3, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void sendRtpStatsToStack(IMSMediaEvent.AudioRtpStats audioRtpStats) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void sendStillImage(int i, boolean z, String str, String str2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void setCamera(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void setCameraEffect(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void setDisplaySurface(int i, Object obj, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void setOrientation(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void setPreviewResolution(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void setPreviewSurface(int i, Object obj, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void setZoom(float f) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void startCamera(int i, int i2, int i3) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void startCamera(Surface surface) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void startEmoji(int i, int i2, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public int startLocalRingBackTone(int i, int i2, int i3) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void startRecord(int i, int i2, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void startRender(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void startVideoRenderer(Surface surface) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void stopCamera(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void stopEmoji(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public int stopLocalRingBackTone() {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void stopRecord(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void stopVideoRenderer() {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void swipeVideoSurface() {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void switchCamera() {
    }

    protected MediaHandler(Looper looper) {
        super(looper);
        this.mMediaEventRegistrants = new RegistrantList();
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void registerForMediaEvent(Handler handler, int i, Object obj) {
        this.mMediaEventRegistrants.addUnique(handler, i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface
    public void unregisterForMediaEvent(Handler handler) {
        this.mMediaEventRegistrants.remove(handler);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
