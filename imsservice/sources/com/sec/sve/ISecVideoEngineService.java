package com.sec.sve;

import android.net.Network;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.Surface;
import com.sec.sve.ICmcMediaEventListener;
import com.sec.sve.IImsMediaEventListener;

/* loaded from: classes.dex */
public interface ISecVideoEngineService extends IInterface {
    public static final String DESCRIPTOR = "com.sec.sve.ISecVideoEngineService";

    public static class Default implements ISecVideoEngineService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void bindToNetwork(Network network) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int cpveStartInjection(String str, int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int cpveStopInjection() throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public boolean isSupportingCameraMotor() throws RemoteException {
            return false;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void notifyImsServiceReady(IBinder iBinder) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void onDestroy() throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void registerForCmcEventListener(ICmcMediaEventListener iCmcMediaEventListener) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void registerForMediaEventListener(IImsMediaEventListener iImsMediaEventListener) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeCreateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6, String str3, boolean z, boolean z2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeDeleteChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeGetAudioRxTrackId(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public TimeInfo saeGetLastPlayedVoiceTime(int i) throws RemoteException {
            return null;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeGetVersion(byte[] bArr, int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeHandleDtmf(int i, int i2, int i3, int i4) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void saeInitialize(int i, int i2, int i3) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeModifyChannel(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetAudioPath(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetDtmfCodecInfo(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetRtcpOnCall(int i, int i2, int i3) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetRtcpTimeout(int i, long j) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetRtpTimeout(int i, long j) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetTOS(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeSetVoicePlayDelay(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeStartChannel(int i, int i2, boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeStartRecording(int i, int i2, int i3, boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeStopChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeStopRecording(int i, boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void saeTerminate() throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int saeUpdateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void sendGeneralBundleEvent(String str, Bundle bundle) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void sendStillImage(int i, boolean z, String str, String str2) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void setCameraEffect(int i) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void setDisplaySurface(int i, Surface surface, int i2) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void setOrientation(int i) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void setPreviewResolution(int i, int i2) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void setPreviewSurface(int i, Surface surface, int i2) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void setZoom(float f) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreCreateRelayChannel(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreCreateStream(int i, int i2, int i3, String str, int i4, String str2, int i5, boolean z, boolean z2, int i6, int i7, String str3, boolean z3, boolean z4) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreDeleteRelayChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreDeleteStream(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public boolean sreGetMdmn(int i) throws RemoteException {
            return false;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public String sreGetVersion() throws RemoteException {
            return null;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreHoldRelayChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void sreInitialize() throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreResumeRelayChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i15) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetConnection(int i, String str, int i2, String str2, int i3, int i4, int i5, int i6) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetDtmfCodecInfo(int i, int i2, int i3, int i4, int i5, int i6) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetMdmn(int i, boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetNetId(int i, long j) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetRtcpOnCall(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetRtcpTimeout(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreSetRtpTimeout(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreStartRecording(int i, int i2, int i3) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreStartRelayChannel(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreStartStream(int i, int i2, int i3) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreStopRecording(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreStopRelayChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreUpdateRelayChannel(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sreUpdateStream(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steCreateChannel(int i, String str, int i2, String str2, int i3, int i4, int i5, String str3, boolean z, boolean z2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steDeleteChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void steInitialize() throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steModifyChannel(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSendText(int i, String str, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSetCallOptions(int i, boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSetNetId(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSetRtcpOnCall(int i, int i2, int i3) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSetRtcpTimeout(int i, long j) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSetRtpTimeout(int i, long j) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steSetSessionId(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steStartChannel(int i, int i2, boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steStopChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int steUpdateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveCmcRecorderCreate(int i, int i2, int i3, String str, int i4, int i5, long j, int i6, String str2, int i7, int i8, int i9, int i10, int i11, long j2, String str3) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveCreateChannel() throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public String sveGetCodecCapacity(int i) throws RemoteException {
            return null;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public TimeInfo sveGetLastPlayedVideoTime(int i) throws RemoteException {
            return null;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public TimeInfo sveGetRtcpTimeInfo(int i) throws RemoteException {
            return null;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveRecorderCreate(int i, String str, int i2, int i3, String str2, int i4) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveRecorderDelete(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveRecorderStart(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveRecorderStop(int i, boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void sveRestartEmoji(int i) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSendGeneralEvent(int i, int i2, int i3, String str) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSetCodecInfo(int i, int i2, int i3, int i4, int i5, int i6, String str, int i7, int i8, int i9, int i10, int i11, boolean z, int i12, boolean z2, int i13, int i14, int i15, int i16, int i17, byte[] bArr, byte[] bArr2, byte[] bArr3, int i18, int i19, int i20) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSetConnection(int i, String str, int i2, String str2, int i3, int i4, int i5, int i6, long j) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSetGcmSrtpParams(int i, int i2, int i3, int i4, char c, int i5, byte[] bArr, int i6, byte[] bArr2, int i7) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSetHeldInfo(int i, boolean z, boolean z2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSetMediaConfig(int i, boolean z, int i2, boolean z2, int i3, int i4, int i5, int i6) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSetNetworkQoS(int i, int i2, int i3, int i4) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSetSRTPParams(int i, String str, byte[] bArr, int i2, int i3, int i4, int i5, String str2, byte[] bArr2, int i6, int i7, int i8, int i9) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveSetVideoPlayDelay(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveStartCamera(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveStartChannel(int i, int i2, int i3) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void sveStartEmoji(int i, String str) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveStartRecording(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveStopCamera() throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveStopChannel(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void sveStopEmoji(int i) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public int sveStopRecording(int i) throws RemoteException {
            return 0;
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void switchCamera() throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void unregisterForCmcEventListener(ICmcMediaEventListener iCmcMediaEventListener) throws RemoteException {
        }

        @Override // com.sec.sve.ISecVideoEngineService
        public void unregisterForMediaEventListener(IImsMediaEventListener iImsMediaEventListener) throws RemoteException {
        }
    }

    void bindToNetwork(Network network) throws RemoteException;

    int cpveStartInjection(String str, int i) throws RemoteException;

    int cpveStopInjection() throws RemoteException;

    boolean isSupportingCameraMotor() throws RemoteException;

    void notifyImsServiceReady(IBinder iBinder) throws RemoteException;

    void onDestroy() throws RemoteException;

    void registerForCmcEventListener(ICmcMediaEventListener iCmcMediaEventListener) throws RemoteException;

    void registerForMediaEventListener(IImsMediaEventListener iImsMediaEventListener) throws RemoteException;

    int saeCreateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6, String str3, boolean z, boolean z2) throws RemoteException;

    int saeDeleteChannel(int i) throws RemoteException;

    int saeEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException;

    int saeGetAudioRxTrackId(int i) throws RemoteException;

    TimeInfo saeGetLastPlayedVoiceTime(int i) throws RemoteException;

    int saeGetVersion(byte[] bArr, int i) throws RemoteException;

    int saeHandleDtmf(int i, int i2, int i3, int i4) throws RemoteException;

    void saeInitialize(int i, int i2, int i3) throws RemoteException;

    int saeModifyChannel(int i, int i2) throws RemoteException;

    int saeSetAudioPath(int i, int i2) throws RemoteException;

    int saeSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) throws RemoteException;

    int saeSetDtmfCodecInfo(int i, int i2, int i3, int i4, int i5) throws RemoteException;

    int saeSetRtcpOnCall(int i, int i2, int i3) throws RemoteException;

    int saeSetRtcpTimeout(int i, long j) throws RemoteException;

    int saeSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException;

    int saeSetRtpTimeout(int i, long j) throws RemoteException;

    int saeSetTOS(int i, int i2) throws RemoteException;

    int saeSetVoicePlayDelay(int i, int i2) throws RemoteException;

    int saeStartChannel(int i, int i2, boolean z) throws RemoteException;

    int saeStartRecording(int i, int i2, int i3, boolean z) throws RemoteException;

    int saeStopChannel(int i) throws RemoteException;

    int saeStopRecording(int i, boolean z) throws RemoteException;

    void saeTerminate() throws RemoteException;

    int saeUpdateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6) throws RemoteException;

    void sendGeneralBundleEvent(String str, Bundle bundle) throws RemoteException;

    void sendStillImage(int i, boolean z, String str, String str2) throws RemoteException;

    void setCameraEffect(int i) throws RemoteException;

    void setDisplaySurface(int i, Surface surface, int i2) throws RemoteException;

    void setOrientation(int i) throws RemoteException;

    void setPreviewResolution(int i, int i2) throws RemoteException;

    void setPreviewSurface(int i, Surface surface, int i2) throws RemoteException;

    void setZoom(float f) throws RemoteException;

    int sreCreateRelayChannel(int i, int i2) throws RemoteException;

    int sreCreateStream(int i, int i2, int i3, String str, int i4, String str2, int i5, boolean z, boolean z2, int i6, int i7, String str3, boolean z3, boolean z4) throws RemoteException;

    int sreDeleteRelayChannel(int i) throws RemoteException;

    int sreDeleteStream(int i) throws RemoteException;

    int sreEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException;

    boolean sreGetMdmn(int i) throws RemoteException;

    String sreGetVersion() throws RemoteException;

    int sreHoldRelayChannel(int i) throws RemoteException;

    void sreInitialize() throws RemoteException;

    int sreResumeRelayChannel(int i) throws RemoteException;

    int sreSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i15) throws RemoteException;

    int sreSetConnection(int i, String str, int i2, String str2, int i3, int i4, int i5, int i6) throws RemoteException;

    int sreSetDtmfCodecInfo(int i, int i2, int i3, int i4, int i5, int i6) throws RemoteException;

    int sreSetMdmn(int i, boolean z) throws RemoteException;

    int sreSetNetId(int i, long j) throws RemoteException;

    int sreSetRtcpOnCall(int i, int i2, int i3, int i4, int i5) throws RemoteException;

    int sreSetRtcpTimeout(int i, int i2) throws RemoteException;

    int sreSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException;

    int sreSetRtpTimeout(int i, int i2) throws RemoteException;

    int sreStartRecording(int i, int i2, int i3) throws RemoteException;

    int sreStartRelayChannel(int i, int i2) throws RemoteException;

    int sreStartStream(int i, int i2, int i3) throws RemoteException;

    int sreStopRecording(int i, int i2) throws RemoteException;

    int sreStopRelayChannel(int i) throws RemoteException;

    int sreUpdateRelayChannel(int i, int i2) throws RemoteException;

    int sreUpdateStream(int i) throws RemoteException;

    int steCreateChannel(int i, String str, int i2, String str2, int i3, int i4, int i5, String str3, boolean z, boolean z2) throws RemoteException;

    int steDeleteChannel(int i) throws RemoteException;

    int steEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException;

    void steInitialize() throws RemoteException;

    int steModifyChannel(int i, int i2) throws RemoteException;

    int steSendText(int i, String str, int i2) throws RemoteException;

    int steSetCallOptions(int i, boolean z) throws RemoteException;

    int steSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) throws RemoteException;

    int steSetNetId(int i, int i2) throws RemoteException;

    int steSetRtcpOnCall(int i, int i2, int i3) throws RemoteException;

    int steSetRtcpTimeout(int i, long j) throws RemoteException;

    int steSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException;

    int steSetRtpTimeout(int i, long j) throws RemoteException;

    int steSetSessionId(int i, int i2) throws RemoteException;

    int steStartChannel(int i, int i2, boolean z) throws RemoteException;

    int steStopChannel(int i) throws RemoteException;

    int steUpdateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6) throws RemoteException;

    int sveCmcRecorderCreate(int i, int i2, int i3, String str, int i4, int i5, long j, int i6, String str2, int i7, int i8, int i9, int i10, int i11, long j2, String str3) throws RemoteException;

    int sveCreateChannel() throws RemoteException;

    String sveGetCodecCapacity(int i) throws RemoteException;

    TimeInfo sveGetLastPlayedVideoTime(int i) throws RemoteException;

    TimeInfo sveGetRtcpTimeInfo(int i) throws RemoteException;

    int sveRecorderCreate(int i, String str, int i2, int i3, String str2, int i4) throws RemoteException;

    int sveRecorderDelete(int i) throws RemoteException;

    int sveRecorderStart(int i) throws RemoteException;

    int sveRecorderStop(int i, boolean z) throws RemoteException;

    void sveRestartEmoji(int i) throws RemoteException;

    int sveSendGeneralEvent(int i, int i2, int i3, String str) throws RemoteException;

    int sveSetCodecInfo(int i, int i2, int i3, int i4, int i5, int i6, String str, int i7, int i8, int i9, int i10, int i11, boolean z, int i12, boolean z2, int i13, int i14, int i15, int i16, int i17, byte[] bArr, byte[] bArr2, byte[] bArr3, int i18, int i19, int i20) throws RemoteException;

    int sveSetConnection(int i, String str, int i2, String str2, int i3, int i4, int i5, int i6, long j) throws RemoteException;

    int sveSetGcmSrtpParams(int i, int i2, int i3, int i4, char c, int i5, byte[] bArr, int i6, byte[] bArr2, int i7) throws RemoteException;

    int sveSetHeldInfo(int i, boolean z, boolean z2) throws RemoteException;

    int sveSetMediaConfig(int i, boolean z, int i2, boolean z2, int i3, int i4, int i5, int i6) throws RemoteException;

    int sveSetNetworkQoS(int i, int i2, int i3, int i4) throws RemoteException;

    int sveSetSRTPParams(int i, String str, byte[] bArr, int i2, int i3, int i4, int i5, String str2, byte[] bArr2, int i6, int i7, int i8, int i9) throws RemoteException;

    int sveSetVideoPlayDelay(int i, int i2) throws RemoteException;

    int sveStartCamera(int i, int i2) throws RemoteException;

    int sveStartChannel(int i, int i2, int i3) throws RemoteException;

    void sveStartEmoji(int i, String str) throws RemoteException;

    int sveStartRecording(int i, int i2) throws RemoteException;

    int sveStopCamera() throws RemoteException;

    int sveStopChannel(int i) throws RemoteException;

    void sveStopEmoji(int i) throws RemoteException;

    int sveStopRecording(int i) throws RemoteException;

    void switchCamera() throws RemoteException;

    void unregisterForCmcEventListener(ICmcMediaEventListener iCmcMediaEventListener) throws RemoteException;

    void unregisterForMediaEventListener(IImsMediaEventListener iImsMediaEventListener) throws RemoteException;

    public static abstract class Stub extends Binder implements ISecVideoEngineService {
        static final int TRANSACTION_bindToNetwork = 10;
        static final int TRANSACTION_cpveStartInjection = 107;
        static final int TRANSACTION_cpveStopInjection = 108;
        static final int TRANSACTION_isSupportingCameraMotor = 97;
        static final int TRANSACTION_notifyImsServiceReady = 113;
        static final int TRANSACTION_onDestroy = 1;
        static final int TRANSACTION_registerForCmcEventListener = 111;
        static final int TRANSACTION_registerForMediaEventListener = 109;
        static final int TRANSACTION_saeCreateChannel = 15;
        static final int TRANSACTION_saeDeleteChannel = 20;
        static final int TRANSACTION_saeEnableSRTP = 23;
        static final int TRANSACTION_saeGetAudioRxTrackId = 32;
        static final int TRANSACTION_saeGetLastPlayedVoiceTime = 28;
        static final int TRANSACTION_saeGetVersion = 31;
        static final int TRANSACTION_saeHandleDtmf = 21;
        static final int TRANSACTION_saeInitialize = 12;
        static final int TRANSACTION_saeModifyChannel = 19;
        static final int TRANSACTION_saeSetAudioPath = 33;
        static final int TRANSACTION_saeSetCodecInfo = 14;
        static final int TRANSACTION_saeSetDtmfCodecInfo = 22;
        static final int TRANSACTION_saeSetRtcpOnCall = 24;
        static final int TRANSACTION_saeSetRtcpTimeout = 26;
        static final int TRANSACTION_saeSetRtcpXr = 27;
        static final int TRANSACTION_saeSetRtpTimeout = 25;
        static final int TRANSACTION_saeSetTOS = 30;
        static final int TRANSACTION_saeSetVoicePlayDelay = 29;
        static final int TRANSACTION_saeStartChannel = 16;
        static final int TRANSACTION_saeStartRecording = 103;
        static final int TRANSACTION_saeStopChannel = 18;
        static final int TRANSACTION_saeStopRecording = 104;
        static final int TRANSACTION_saeTerminate = 13;
        static final int TRANSACTION_saeUpdateChannel = 17;
        static final int TRANSACTION_sendGeneralBundleEvent = 11;
        static final int TRANSACTION_sendStillImage = 7;
        static final int TRANSACTION_setCameraEffect = 8;
        static final int TRANSACTION_setDisplaySurface = 3;
        static final int TRANSACTION_setOrientation = 4;
        static final int TRANSACTION_setPreviewResolution = 9;
        static final int TRANSACTION_setPreviewSurface = 2;
        static final int TRANSACTION_setZoom = 5;
        static final int TRANSACTION_sreCreateRelayChannel = 80;
        static final int TRANSACTION_sreCreateStream = 76;
        static final int TRANSACTION_sreDeleteRelayChannel = 81;
        static final int TRANSACTION_sreDeleteStream = 78;
        static final int TRANSACTION_sreEnableSRTP = 88;
        static final int TRANSACTION_sreGetMdmn = 74;
        static final int TRANSACTION_sreGetVersion = 72;
        static final int TRANSACTION_sreHoldRelayChannel = 84;
        static final int TRANSACTION_sreInitialize = 71;
        static final int TRANSACTION_sreResumeRelayChannel = 85;
        static final int TRANSACTION_sreSetCodecInfo = 93;
        static final int TRANSACTION_sreSetConnection = 87;
        static final int TRANSACTION_sreSetDtmfCodecInfo = 94;
        static final int TRANSACTION_sreSetMdmn = 73;
        static final int TRANSACTION_sreSetNetId = 75;
        static final int TRANSACTION_sreSetRtcpOnCall = 89;
        static final int TRANSACTION_sreSetRtcpTimeout = 91;
        static final int TRANSACTION_sreSetRtcpXr = 92;
        static final int TRANSACTION_sreSetRtpTimeout = 90;
        static final int TRANSACTION_sreStartRecording = 95;
        static final int TRANSACTION_sreStartRelayChannel = 82;
        static final int TRANSACTION_sreStartStream = 77;
        static final int TRANSACTION_sreStopRecording = 96;
        static final int TRANSACTION_sreStopRelayChannel = 83;
        static final int TRANSACTION_sreUpdateRelayChannel = 86;
        static final int TRANSACTION_sreUpdateStream = 79;
        static final int TRANSACTION_steCreateChannel = 56;
        static final int TRANSACTION_steDeleteChannel = 61;
        static final int TRANSACTION_steEnableSRTP = 63;
        static final int TRANSACTION_steInitialize = 54;
        static final int TRANSACTION_steModifyChannel = 60;
        static final int TRANSACTION_steSendText = 62;
        static final int TRANSACTION_steSetCallOptions = 68;
        static final int TRANSACTION_steSetCodecInfo = 55;
        static final int TRANSACTION_steSetNetId = 69;
        static final int TRANSACTION_steSetRtcpOnCall = 64;
        static final int TRANSACTION_steSetRtcpTimeout = 66;
        static final int TRANSACTION_steSetRtcpXr = 67;
        static final int TRANSACTION_steSetRtpTimeout = 65;
        static final int TRANSACTION_steSetSessionId = 70;
        static final int TRANSACTION_steStartChannel = 57;
        static final int TRANSACTION_steStopChannel = 59;
        static final int TRANSACTION_steUpdateChannel = 58;
        static final int TRANSACTION_sveCmcRecorderCreate = 99;
        static final int TRANSACTION_sveCreateChannel = 34;
        static final int TRANSACTION_sveGetCodecCapacity = 53;
        static final int TRANSACTION_sveGetLastPlayedVideoTime = 48;
        static final int TRANSACTION_sveGetRtcpTimeInfo = 52;
        static final int TRANSACTION_sveRecorderCreate = 98;
        static final int TRANSACTION_sveRecorderDelete = 100;
        static final int TRANSACTION_sveRecorderStart = 101;
        static final int TRANSACTION_sveRecorderStop = 102;
        static final int TRANSACTION_sveRestartEmoji = 46;
        static final int TRANSACTION_sveSendGeneralEvent = 51;
        static final int TRANSACTION_sveSetCodecInfo = 38;
        static final int TRANSACTION_sveSetConnection = 37;
        static final int TRANSACTION_sveSetGcmSrtpParams = 40;
        static final int TRANSACTION_sveSetHeldInfo = 47;
        static final int TRANSACTION_sveSetMediaConfig = 41;
        static final int TRANSACTION_sveSetNetworkQoS = 50;
        static final int TRANSACTION_sveSetSRTPParams = 39;
        static final int TRANSACTION_sveSetVideoPlayDelay = 49;
        static final int TRANSACTION_sveStartCamera = 42;
        static final int TRANSACTION_sveStartChannel = 35;
        static final int TRANSACTION_sveStartEmoji = 44;
        static final int TRANSACTION_sveStartRecording = 105;
        static final int TRANSACTION_sveStopCamera = 43;
        static final int TRANSACTION_sveStopChannel = 36;
        static final int TRANSACTION_sveStopEmoji = 45;
        static final int TRANSACTION_sveStopRecording = 106;
        static final int TRANSACTION_switchCamera = 6;
        static final int TRANSACTION_unregisterForCmcEventListener = 112;
        static final int TRANSACTION_unregisterForMediaEventListener = 110;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ISecVideoEngineService.DESCRIPTOR);
        }

        public static ISecVideoEngineService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ISecVideoEngineService.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISecVideoEngineService)) {
                return (ISecVideoEngineService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z;
            boolean z2 = true;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ISecVideoEngineService.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(ISecVideoEngineService.DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    onDestroy();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    int readInt = parcel.readInt();
                    Surface surface = (Surface) parcel.readTypedObject(Surface.CREATOR);
                    int readInt2 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setPreviewSurface(readInt, surface, readInt2);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    int readInt3 = parcel.readInt();
                    Surface surface2 = (Surface) parcel.readTypedObject(Surface.CREATOR);
                    int readInt4 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setDisplaySurface(readInt3, surface2, readInt4);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    int readInt5 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setOrientation(readInt5);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    float readFloat = parcel.readFloat();
                    parcel.enforceNoDataAvail();
                    setZoom(readFloat);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    switchCamera();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    int readInt6 = parcel.readInt();
                    boolean readBoolean = parcel.readBoolean();
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    sendStillImage(readInt6, readBoolean, readString, readString2);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    int readInt7 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setCameraEffect(readInt7);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    int readInt8 = parcel.readInt();
                    int readInt9 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setPreviewResolution(readInt8, readInt9);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    Network network = (Network) parcel.readTypedObject(Network.CREATOR);
                    parcel.enforceNoDataAvail();
                    bindToNetwork(network);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    String readString3 = parcel.readString();
                    Bundle bundle = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                    parcel.enforceNoDataAvail();
                    sendGeneralBundleEvent(readString3, bundle);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    int readInt10 = parcel.readInt();
                    int readInt11 = parcel.readInt();
                    int readInt12 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    saeInitialize(readInt10, readInt11, readInt12);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    saeTerminate();
                    parcel2.writeNoException();
                    return true;
                case 14:
                    int readInt13 = parcel.readInt();
                    String readString4 = parcel.readString();
                    int readInt14 = parcel.readInt();
                    int readInt15 = parcel.readInt();
                    int readInt16 = parcel.readInt();
                    int readInt17 = parcel.readInt();
                    int readInt18 = parcel.readInt();
                    int readInt19 = parcel.readInt();
                    boolean readBoolean2 = parcel.readBoolean();
                    int readInt20 = parcel.readInt();
                    int readInt21 = parcel.readInt();
                    int readInt22 = parcel.readInt();
                    int readInt23 = parcel.readInt();
                    int readInt24 = parcel.readInt();
                    char readInt25 = (char) parcel.readInt();
                    char readInt26 = (char) parcel.readInt();
                    char readInt27 = (char) parcel.readInt();
                    char readInt28 = (char) parcel.readInt();
                    char readInt29 = (char) parcel.readInt();
                    char readInt30 = (char) parcel.readInt();
                    int readInt31 = parcel.readInt();
                    int readInt32 = parcel.readInt();
                    String readString5 = parcel.readString();
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    String readString12 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int saeSetCodecInfo = saeSetCodecInfo(readInt13, readString4, readInt14, readInt15, readInt16, readInt17, readInt18, readInt19, readBoolean2, readInt20, readInt21, readInt22, readInt23, readInt24, readInt25, readInt26, readInt27, readInt28, readInt29, readInt30, readInt31, readInt32, readString5, readString6, readString7, readString8, readString9, readString10, readString11, readString12);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetCodecInfo);
                    return true;
                case 15:
                    z = true;
                    int readInt33 = parcel.readInt();
                    int readInt34 = parcel.readInt();
                    String readString13 = parcel.readString();
                    int readInt35 = parcel.readInt();
                    String readString14 = parcel.readString();
                    int readInt36 = parcel.readInt();
                    int readInt37 = parcel.readInt();
                    int readInt38 = parcel.readInt();
                    String readString15 = parcel.readString();
                    boolean readBoolean3 = parcel.readBoolean();
                    boolean readBoolean4 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int saeCreateChannel = saeCreateChannel(readInt33, readInt34, readString13, readInt35, readString14, readInt36, readInt37, readInt38, readString15, readBoolean3, readBoolean4);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeCreateChannel);
                    return z;
                case 16:
                    z = true;
                    int readInt39 = parcel.readInt();
                    int readInt40 = parcel.readInt();
                    boolean readBoolean5 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int saeStartChannel = saeStartChannel(readInt39, readInt40, readBoolean5);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeStartChannel);
                    return z;
                case 17:
                    z = true;
                    int readInt41 = parcel.readInt();
                    int readInt42 = parcel.readInt();
                    String readString16 = parcel.readString();
                    int readInt43 = parcel.readInt();
                    String readString17 = parcel.readString();
                    int readInt44 = parcel.readInt();
                    int readInt45 = parcel.readInt();
                    int readInt46 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeUpdateChannel = saeUpdateChannel(readInt41, readInt42, readString16, readInt43, readString17, readInt44, readInt45, readInt46);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeUpdateChannel);
                    return z;
                case 18:
                    z = true;
                    int readInt47 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeStopChannel = saeStopChannel(readInt47);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeStopChannel);
                    return z;
                case 19:
                    z = true;
                    int readInt48 = parcel.readInt();
                    int readInt49 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeModifyChannel = saeModifyChannel(readInt48, readInt49);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeModifyChannel);
                    return z;
                case 20:
                    z = true;
                    int readInt50 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeDeleteChannel = saeDeleteChannel(readInt50);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeDeleteChannel);
                    return z;
                case 21:
                    z = true;
                    int readInt51 = parcel.readInt();
                    int readInt52 = parcel.readInt();
                    int readInt53 = parcel.readInt();
                    int readInt54 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeHandleDtmf = saeHandleDtmf(readInt51, readInt52, readInt53, readInt54);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeHandleDtmf);
                    return z;
                case 22:
                    z = true;
                    int readInt55 = parcel.readInt();
                    int readInt56 = parcel.readInt();
                    int readInt57 = parcel.readInt();
                    int readInt58 = parcel.readInt();
                    int readInt59 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeSetDtmfCodecInfo = saeSetDtmfCodecInfo(readInt55, readInt56, readInt57, readInt58, readInt59);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetDtmfCodecInfo);
                    return z;
                case 23:
                    z = true;
                    int readInt60 = parcel.readInt();
                    int readInt61 = parcel.readInt();
                    int readInt62 = parcel.readInt();
                    byte[] createByteArray = parcel.createByteArray();
                    int readInt63 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeEnableSRTP = saeEnableSRTP(readInt60, readInt61, readInt62, createByteArray, readInt63);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeEnableSRTP);
                    return z;
                case 24:
                    z = true;
                    int readInt64 = parcel.readInt();
                    int readInt65 = parcel.readInt();
                    int readInt66 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeSetRtcpOnCall = saeSetRtcpOnCall(readInt64, readInt65, readInt66);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetRtcpOnCall);
                    return z;
                case 25:
                    z = true;
                    int readInt67 = parcel.readInt();
                    long readLong = parcel.readLong();
                    parcel.enforceNoDataAvail();
                    int saeSetRtpTimeout = saeSetRtpTimeout(readInt67, readLong);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetRtpTimeout);
                    return z;
                case 26:
                    z = true;
                    int readInt68 = parcel.readInt();
                    long readLong2 = parcel.readLong();
                    parcel.enforceNoDataAvail();
                    int saeSetRtcpTimeout = saeSetRtcpTimeout(readInt68, readLong2);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetRtcpTimeout);
                    return z;
                case 27:
                    z = true;
                    int readInt69 = parcel.readInt();
                    int readInt70 = parcel.readInt();
                    int readInt71 = parcel.readInt();
                    int readInt72 = parcel.readInt();
                    int readInt73 = parcel.readInt();
                    int[] createIntArray = parcel.createIntArray();
                    parcel.enforceNoDataAvail();
                    int saeSetRtcpXr = saeSetRtcpXr(readInt69, readInt70, readInt71, readInt72, readInt73, createIntArray);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetRtcpXr);
                    return z;
                case 28:
                    int readInt74 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    TimeInfo saeGetLastPlayedVoiceTime = saeGetLastPlayedVoiceTime(readInt74);
                    parcel2.writeNoException();
                    z = true;
                    parcel2.writeTypedObject(saeGetLastPlayedVoiceTime, 1);
                    return z;
                case 29:
                    int readInt75 = parcel.readInt();
                    int readInt76 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeSetVoicePlayDelay = saeSetVoicePlayDelay(readInt75, readInt76);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetVoicePlayDelay);
                    return true;
                case 30:
                    int readInt77 = parcel.readInt();
                    int readInt78 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeSetTOS = saeSetTOS(readInt77, readInt78);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetTOS);
                    return true;
                case 31:
                    byte[] createByteArray2 = parcel.createByteArray();
                    int readInt79 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeGetVersion = saeGetVersion(createByteArray2, readInt79);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeGetVersion);
                    return true;
                case 32:
                    int readInt80 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeGetAudioRxTrackId = saeGetAudioRxTrackId(readInt80);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeGetAudioRxTrackId);
                    return true;
                case 33:
                    int readInt81 = parcel.readInt();
                    int readInt82 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int saeSetAudioPath = saeSetAudioPath(readInt81, readInt82);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeSetAudioPath);
                    return true;
                case 34:
                    int sveCreateChannel = sveCreateChannel();
                    parcel2.writeNoException();
                    parcel2.writeInt(sveCreateChannel);
                    return true;
                case 35:
                    int readInt83 = parcel.readInt();
                    int readInt84 = parcel.readInt();
                    int readInt85 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveStartChannel = sveStartChannel(readInt83, readInt84, readInt85);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveStartChannel);
                    return true;
                case 36:
                    int readInt86 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveStopChannel = sveStopChannel(readInt86);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveStopChannel);
                    return true;
                case 37:
                    int readInt87 = parcel.readInt();
                    String readString18 = parcel.readString();
                    int readInt88 = parcel.readInt();
                    String readString19 = parcel.readString();
                    int readInt89 = parcel.readInt();
                    int readInt90 = parcel.readInt();
                    int readInt91 = parcel.readInt();
                    int readInt92 = parcel.readInt();
                    long readLong3 = parcel.readLong();
                    parcel.enforceNoDataAvail();
                    int sveSetConnection = sveSetConnection(readInt87, readString18, readInt88, readString19, readInt89, readInt90, readInt91, readInt92, readLong3);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSetConnection);
                    return true;
                case 38:
                    int readInt93 = parcel.readInt();
                    int readInt94 = parcel.readInt();
                    int readInt95 = parcel.readInt();
                    int readInt96 = parcel.readInt();
                    int readInt97 = parcel.readInt();
                    int readInt98 = parcel.readInt();
                    String readString20 = parcel.readString();
                    int readInt99 = parcel.readInt();
                    int readInt100 = parcel.readInt();
                    int readInt101 = parcel.readInt();
                    int readInt102 = parcel.readInt();
                    int readInt103 = parcel.readInt();
                    boolean readBoolean6 = parcel.readBoolean();
                    int readInt104 = parcel.readInt();
                    boolean readBoolean7 = parcel.readBoolean();
                    int readInt105 = parcel.readInt();
                    int readInt106 = parcel.readInt();
                    int readInt107 = parcel.readInt();
                    int readInt108 = parcel.readInt();
                    int readInt109 = parcel.readInt();
                    byte[] createByteArray3 = parcel.createByteArray();
                    byte[] createByteArray4 = parcel.createByteArray();
                    byte[] createByteArray5 = parcel.createByteArray();
                    int readInt110 = parcel.readInt();
                    int readInt111 = parcel.readInt();
                    int readInt112 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveSetCodecInfo = sveSetCodecInfo(readInt93, readInt94, readInt95, readInt96, readInt97, readInt98, readString20, readInt99, readInt100, readInt101, readInt102, readInt103, readBoolean6, readInt104, readBoolean7, readInt105, readInt106, readInt107, readInt108, readInt109, createByteArray3, createByteArray4, createByteArray5, readInt110, readInt111, readInt112);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSetCodecInfo);
                    return true;
                case 39:
                    int readInt113 = parcel.readInt();
                    String readString21 = parcel.readString();
                    byte[] createByteArray6 = parcel.createByteArray();
                    int readInt114 = parcel.readInt();
                    int readInt115 = parcel.readInt();
                    int readInt116 = parcel.readInt();
                    int readInt117 = parcel.readInt();
                    String readString22 = parcel.readString();
                    byte[] createByteArray7 = parcel.createByteArray();
                    int readInt118 = parcel.readInt();
                    int readInt119 = parcel.readInt();
                    int readInt120 = parcel.readInt();
                    int readInt121 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    z = true;
                    int sveSetSRTPParams = sveSetSRTPParams(readInt113, readString21, createByteArray6, readInt114, readInt115, readInt116, readInt117, readString22, createByteArray7, readInt118, readInt119, readInt120, readInt121);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSetSRTPParams);
                    return z;
                case 40:
                    int readInt122 = parcel.readInt();
                    int readInt123 = parcel.readInt();
                    int readInt124 = parcel.readInt();
                    int readInt125 = parcel.readInt();
                    char readInt126 = (char) parcel.readInt();
                    int readInt127 = parcel.readInt();
                    byte[] createByteArray8 = parcel.createByteArray();
                    int readInt128 = parcel.readInt();
                    byte[] createByteArray9 = parcel.createByteArray();
                    int readInt129 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveSetGcmSrtpParams = sveSetGcmSrtpParams(readInt122, readInt123, readInt124, readInt125, readInt126, readInt127, createByteArray8, readInt128, createByteArray9, readInt129);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSetGcmSrtpParams);
                    return z2;
                case 41:
                    int readInt130 = parcel.readInt();
                    boolean readBoolean8 = parcel.readBoolean();
                    int readInt131 = parcel.readInt();
                    boolean readBoolean9 = parcel.readBoolean();
                    int readInt132 = parcel.readInt();
                    int readInt133 = parcel.readInt();
                    int readInt134 = parcel.readInt();
                    int readInt135 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveSetMediaConfig = sveSetMediaConfig(readInt130, readBoolean8, readInt131, readBoolean9, readInt132, readInt133, readInt134, readInt135);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSetMediaConfig);
                    return z2;
                case 42:
                    int readInt136 = parcel.readInt();
                    int readInt137 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveStartCamera = sveStartCamera(readInt136, readInt137);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveStartCamera);
                    return z2;
                case 43:
                    int sveStopCamera = sveStopCamera();
                    parcel2.writeNoException();
                    parcel2.writeInt(sveStopCamera);
                    return z2;
                case 44:
                    int readInt138 = parcel.readInt();
                    String readString23 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    sveStartEmoji(readInt138, readString23);
                    parcel2.writeNoException();
                    return z2;
                case 45:
                    int readInt139 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    sveStopEmoji(readInt139);
                    parcel2.writeNoException();
                    return z2;
                case 46:
                    int readInt140 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    sveRestartEmoji(readInt140);
                    parcel2.writeNoException();
                    return z2;
                case 47:
                    int readInt141 = parcel.readInt();
                    boolean readBoolean10 = parcel.readBoolean();
                    boolean readBoolean11 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int sveSetHeldInfo = sveSetHeldInfo(readInt141, readBoolean10, readBoolean11);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSetHeldInfo);
                    return z2;
                case 48:
                    int readInt142 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    TimeInfo sveGetLastPlayedVideoTime = sveGetLastPlayedVideoTime(readInt142);
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(sveGetLastPlayedVideoTime, 1);
                    return z2;
                case 49:
                    int readInt143 = parcel.readInt();
                    int readInt144 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveSetVideoPlayDelay = sveSetVideoPlayDelay(readInt143, readInt144);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSetVideoPlayDelay);
                    return z2;
                case 50:
                    int readInt145 = parcel.readInt();
                    int readInt146 = parcel.readInt();
                    int readInt147 = parcel.readInt();
                    int readInt148 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveSetNetworkQoS = sveSetNetworkQoS(readInt145, readInt146, readInt147, readInt148);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSetNetworkQoS);
                    return z2;
                case 51:
                    int readInt149 = parcel.readInt();
                    int readInt150 = parcel.readInt();
                    int readInt151 = parcel.readInt();
                    String readString24 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int sveSendGeneralEvent = sveSendGeneralEvent(readInt149, readInt150, readInt151, readString24);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveSendGeneralEvent);
                    return z2;
                case 52:
                    int readInt152 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    TimeInfo sveGetRtcpTimeInfo = sveGetRtcpTimeInfo(readInt152);
                    parcel2.writeNoException();
                    z2 = true;
                    parcel2.writeTypedObject(sveGetRtcpTimeInfo, 1);
                    return z2;
                case 53:
                    int readInt153 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    String sveGetCodecCapacity = sveGetCodecCapacity(readInt153);
                    parcel2.writeNoException();
                    parcel2.writeString(sveGetCodecCapacity);
                    return true;
                case 54:
                    steInitialize();
                    parcel2.writeNoException();
                    return true;
                case 55:
                    int readInt154 = parcel.readInt();
                    String readString25 = parcel.readString();
                    int readInt155 = parcel.readInt();
                    int readInt156 = parcel.readInt();
                    int readInt157 = parcel.readInt();
                    int readInt158 = parcel.readInt();
                    int readInt159 = parcel.readInt();
                    int readInt160 = parcel.readInt();
                    boolean readBoolean12 = parcel.readBoolean();
                    int readInt161 = parcel.readInt();
                    int readInt162 = parcel.readInt();
                    int readInt163 = parcel.readInt();
                    int readInt164 = parcel.readInt();
                    int readInt165 = parcel.readInt();
                    char readInt166 = (char) parcel.readInt();
                    char readInt167 = (char) parcel.readInt();
                    char readInt168 = (char) parcel.readInt();
                    char readInt169 = (char) parcel.readInt();
                    char readInt170 = (char) parcel.readInt();
                    char readInt171 = (char) parcel.readInt();
                    int readInt172 = parcel.readInt();
                    int readInt173 = parcel.readInt();
                    String readString26 = parcel.readString();
                    String readString27 = parcel.readString();
                    String readString28 = parcel.readString();
                    String readString29 = parcel.readString();
                    String readString30 = parcel.readString();
                    String readString31 = parcel.readString();
                    String readString32 = parcel.readString();
                    String readString33 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int steSetCodecInfo = steSetCodecInfo(readInt154, readString25, readInt155, readInt156, readInt157, readInt158, readInt159, readInt160, readBoolean12, readInt161, readInt162, readInt163, readInt164, readInt165, readInt166, readInt167, readInt168, readInt169, readInt170, readInt171, readInt172, readInt173, readString26, readString27, readString28, readString29, readString30, readString31, readString32, readString33);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSetCodecInfo);
                    return true;
                case 56:
                    int readInt174 = parcel.readInt();
                    String readString34 = parcel.readString();
                    int readInt175 = parcel.readInt();
                    String readString35 = parcel.readString();
                    int readInt176 = parcel.readInt();
                    int readInt177 = parcel.readInt();
                    int readInt178 = parcel.readInt();
                    String readString36 = parcel.readString();
                    boolean readBoolean13 = parcel.readBoolean();
                    boolean readBoolean14 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int steCreateChannel = steCreateChannel(readInt174, readString34, readInt175, readString35, readInt176, readInt177, readInt178, readString36, readBoolean13, readBoolean14);
                    parcel2.writeNoException();
                    parcel2.writeInt(steCreateChannel);
                    return true;
                case 57:
                    int readInt179 = parcel.readInt();
                    int readInt180 = parcel.readInt();
                    boolean readBoolean15 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int steStartChannel = steStartChannel(readInt179, readInt180, readBoolean15);
                    parcel2.writeNoException();
                    parcel2.writeInt(steStartChannel);
                    return true;
                case 58:
                    int readInt181 = parcel.readInt();
                    int readInt182 = parcel.readInt();
                    String readString37 = parcel.readString();
                    int readInt183 = parcel.readInt();
                    String readString38 = parcel.readString();
                    int readInt184 = parcel.readInt();
                    int readInt185 = parcel.readInt();
                    int readInt186 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steUpdateChannel = steUpdateChannel(readInt181, readInt182, readString37, readInt183, readString38, readInt184, readInt185, readInt186);
                    parcel2.writeNoException();
                    parcel2.writeInt(steUpdateChannel);
                    return true;
                case 59:
                    int readInt187 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steStopChannel = steStopChannel(readInt187);
                    parcel2.writeNoException();
                    parcel2.writeInt(steStopChannel);
                    return true;
                case 60:
                    int readInt188 = parcel.readInt();
                    int readInt189 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steModifyChannel = steModifyChannel(readInt188, readInt189);
                    parcel2.writeNoException();
                    parcel2.writeInt(steModifyChannel);
                    return true;
                case 61:
                    int readInt190 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steDeleteChannel = steDeleteChannel(readInt190);
                    parcel2.writeNoException();
                    parcel2.writeInt(steDeleteChannel);
                    return true;
                case 62:
                    int readInt191 = parcel.readInt();
                    String readString39 = parcel.readString();
                    int readInt192 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steSendText = steSendText(readInt191, readString39, readInt192);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSendText);
                    return true;
                case 63:
                    int readInt193 = parcel.readInt();
                    int readInt194 = parcel.readInt();
                    int readInt195 = parcel.readInt();
                    byte[] createByteArray10 = parcel.createByteArray();
                    int readInt196 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steEnableSRTP = steEnableSRTP(readInt193, readInt194, readInt195, createByteArray10, readInt196);
                    parcel2.writeNoException();
                    parcel2.writeInt(steEnableSRTP);
                    return true;
                case 64:
                    int readInt197 = parcel.readInt();
                    int readInt198 = parcel.readInt();
                    int readInt199 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steSetRtcpOnCall = steSetRtcpOnCall(readInt197, readInt198, readInt199);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSetRtcpOnCall);
                    return true;
                case 65:
                    int readInt200 = parcel.readInt();
                    long readLong4 = parcel.readLong();
                    parcel.enforceNoDataAvail();
                    int steSetRtpTimeout = steSetRtpTimeout(readInt200, readLong4);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSetRtpTimeout);
                    return true;
                case 66:
                    int readInt201 = parcel.readInt();
                    long readLong5 = parcel.readLong();
                    parcel.enforceNoDataAvail();
                    int steSetRtcpTimeout = steSetRtcpTimeout(readInt201, readLong5);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSetRtcpTimeout);
                    return true;
                case 67:
                    int readInt202 = parcel.readInt();
                    int readInt203 = parcel.readInt();
                    int readInt204 = parcel.readInt();
                    int readInt205 = parcel.readInt();
                    int readInt206 = parcel.readInt();
                    int[] createIntArray2 = parcel.createIntArray();
                    parcel.enforceNoDataAvail();
                    int steSetRtcpXr = steSetRtcpXr(readInt202, readInt203, readInt204, readInt205, readInt206, createIntArray2);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSetRtcpXr);
                    return true;
                case 68:
                    int readInt207 = parcel.readInt();
                    boolean readBoolean16 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int steSetCallOptions = steSetCallOptions(readInt207, readBoolean16);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSetCallOptions);
                    return true;
                case 69:
                    int readInt208 = parcel.readInt();
                    int readInt209 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steSetNetId = steSetNetId(readInt208, readInt209);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSetNetId);
                    return true;
                case 70:
                    int readInt210 = parcel.readInt();
                    int readInt211 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int steSetSessionId = steSetSessionId(readInt210, readInt211);
                    parcel2.writeNoException();
                    parcel2.writeInt(steSetSessionId);
                    return true;
                case 71:
                    sreInitialize();
                    parcel2.writeNoException();
                    return true;
                case 72:
                    String sreGetVersion = sreGetVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(sreGetVersion);
                    return true;
                case 73:
                    int readInt212 = parcel.readInt();
                    boolean readBoolean17 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int sreSetMdmn = sreSetMdmn(readInt212, readBoolean17);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetMdmn);
                    return true;
                case 74:
                    int readInt213 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    boolean sreGetMdmn = sreGetMdmn(readInt213);
                    parcel2.writeNoException();
                    parcel2.writeBoolean(sreGetMdmn);
                    return true;
                case 75:
                    int readInt214 = parcel.readInt();
                    long readLong6 = parcel.readLong();
                    parcel.enforceNoDataAvail();
                    int sreSetNetId = sreSetNetId(readInt214, readLong6);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetNetId);
                    return true;
                case 76:
                    int readInt215 = parcel.readInt();
                    int readInt216 = parcel.readInt();
                    int readInt217 = parcel.readInt();
                    String readString40 = parcel.readString();
                    int readInt218 = parcel.readInt();
                    String readString41 = parcel.readString();
                    int readInt219 = parcel.readInt();
                    boolean readBoolean18 = parcel.readBoolean();
                    boolean readBoolean19 = parcel.readBoolean();
                    int readInt220 = parcel.readInt();
                    int readInt221 = parcel.readInt();
                    String readString42 = parcel.readString();
                    boolean readBoolean20 = parcel.readBoolean();
                    boolean readBoolean21 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int sreCreateStream = sreCreateStream(readInt215, readInt216, readInt217, readString40, readInt218, readString41, readInt219, readBoolean18, readBoolean19, readInt220, readInt221, readString42, readBoolean20, readBoolean21);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreCreateStream);
                    return true;
                case 77:
                    int readInt222 = parcel.readInt();
                    int readInt223 = parcel.readInt();
                    int readInt224 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreStartStream = sreStartStream(readInt222, readInt223, readInt224);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreStartStream);
                    return true;
                case 78:
                    int readInt225 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreDeleteStream = sreDeleteStream(readInt225);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreDeleteStream);
                    return true;
                case 79:
                    int readInt226 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreUpdateStream = sreUpdateStream(readInt226);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreUpdateStream);
                    return true;
                case 80:
                    int readInt227 = parcel.readInt();
                    int readInt228 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreCreateRelayChannel = sreCreateRelayChannel(readInt227, readInt228);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreCreateRelayChannel);
                    return true;
                case 81:
                    int readInt229 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreDeleteRelayChannel = sreDeleteRelayChannel(readInt229);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreDeleteRelayChannel);
                    return true;
                case 82:
                    int readInt230 = parcel.readInt();
                    int readInt231 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreStartRelayChannel = sreStartRelayChannel(readInt230, readInt231);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreStartRelayChannel);
                    return true;
                case 83:
                    int readInt232 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreStopRelayChannel = sreStopRelayChannel(readInt232);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreStopRelayChannel);
                    return true;
                case 84:
                    int readInt233 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreHoldRelayChannel = sreHoldRelayChannel(readInt233);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreHoldRelayChannel);
                    return true;
                case 85:
                    int readInt234 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreResumeRelayChannel = sreResumeRelayChannel(readInt234);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreResumeRelayChannel);
                    return true;
                case 86:
                    int readInt235 = parcel.readInt();
                    int readInt236 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreUpdateRelayChannel = sreUpdateRelayChannel(readInt235, readInt236);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreUpdateRelayChannel);
                    return true;
                case 87:
                    int readInt237 = parcel.readInt();
                    String readString43 = parcel.readString();
                    int readInt238 = parcel.readInt();
                    String readString44 = parcel.readString();
                    int readInt239 = parcel.readInt();
                    int readInt240 = parcel.readInt();
                    int readInt241 = parcel.readInt();
                    int readInt242 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreSetConnection = sreSetConnection(readInt237, readString43, readInt238, readString44, readInt239, readInt240, readInt241, readInt242);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetConnection);
                    return true;
                case 88:
                    int readInt243 = parcel.readInt();
                    int readInt244 = parcel.readInt();
                    int readInt245 = parcel.readInt();
                    byte[] createByteArray11 = parcel.createByteArray();
                    int readInt246 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreEnableSRTP = sreEnableSRTP(readInt243, readInt244, readInt245, createByteArray11, readInt246);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreEnableSRTP);
                    return true;
                case 89:
                    int readInt247 = parcel.readInt();
                    int readInt248 = parcel.readInt();
                    int readInt249 = parcel.readInt();
                    int readInt250 = parcel.readInt();
                    int readInt251 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreSetRtcpOnCall = sreSetRtcpOnCall(readInt247, readInt248, readInt249, readInt250, readInt251);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetRtcpOnCall);
                    return true;
                case 90:
                    int readInt252 = parcel.readInt();
                    int readInt253 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreSetRtpTimeout = sreSetRtpTimeout(readInt252, readInt253);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetRtpTimeout);
                    return true;
                case 91:
                    int readInt254 = parcel.readInt();
                    int readInt255 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreSetRtcpTimeout = sreSetRtcpTimeout(readInt254, readInt255);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetRtcpTimeout);
                    return true;
                case 92:
                    int readInt256 = parcel.readInt();
                    int readInt257 = parcel.readInt();
                    int readInt258 = parcel.readInt();
                    int readInt259 = parcel.readInt();
                    int readInt260 = parcel.readInt();
                    int[] createIntArray3 = parcel.createIntArray();
                    parcel.enforceNoDataAvail();
                    int sreSetRtcpXr = sreSetRtcpXr(readInt256, readInt257, readInt258, readInt259, readInt260, createIntArray3);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetRtcpXr);
                    return true;
                case 93:
                    int readInt261 = parcel.readInt();
                    String readString45 = parcel.readString();
                    int readInt262 = parcel.readInt();
                    int readInt263 = parcel.readInt();
                    int readInt264 = parcel.readInt();
                    int readInt265 = parcel.readInt();
                    int readInt266 = parcel.readInt();
                    int readInt267 = parcel.readInt();
                    boolean readBoolean22 = parcel.readBoolean();
                    int readInt268 = parcel.readInt();
                    int readInt269 = parcel.readInt();
                    int readInt270 = parcel.readInt();
                    int readInt271 = parcel.readInt();
                    int readInt272 = parcel.readInt();
                    char readInt273 = (char) parcel.readInt();
                    char readInt274 = (char) parcel.readInt();
                    char readInt275 = (char) parcel.readInt();
                    char readInt276 = (char) parcel.readInt();
                    char readInt277 = (char) parcel.readInt();
                    char readInt278 = (char) parcel.readInt();
                    int readInt279 = parcel.readInt();
                    int readInt280 = parcel.readInt();
                    String readString46 = parcel.readString();
                    String readString47 = parcel.readString();
                    String readString48 = parcel.readString();
                    String readString49 = parcel.readString();
                    String readString50 = parcel.readString();
                    String readString51 = parcel.readString();
                    String readString52 = parcel.readString();
                    String readString53 = parcel.readString();
                    int readInt281 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreSetCodecInfo = sreSetCodecInfo(readInt261, readString45, readInt262, readInt263, readInt264, readInt265, readInt266, readInt267, readBoolean22, readInt268, readInt269, readInt270, readInt271, readInt272, readInt273, readInt274, readInt275, readInt276, readInt277, readInt278, readInt279, readInt280, readString46, readString47, readString48, readString49, readString50, readString51, readString52, readString53, readInt281);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetCodecInfo);
                    return true;
                case 94:
                    int readInt282 = parcel.readInt();
                    int readInt283 = parcel.readInt();
                    int readInt284 = parcel.readInt();
                    int readInt285 = parcel.readInt();
                    int readInt286 = parcel.readInt();
                    int readInt287 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreSetDtmfCodecInfo = sreSetDtmfCodecInfo(readInt282, readInt283, readInt284, readInt285, readInt286, readInt287);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreSetDtmfCodecInfo);
                    return true;
                case 95:
                    int readInt288 = parcel.readInt();
                    int readInt289 = parcel.readInt();
                    int readInt290 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreStartRecording = sreStartRecording(readInt288, readInt289, readInt290);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreStartRecording);
                    return true;
                case 96:
                    int readInt291 = parcel.readInt();
                    int readInt292 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sreStopRecording = sreStopRecording(readInt291, readInt292);
                    parcel2.writeNoException();
                    parcel2.writeInt(sreStopRecording);
                    return true;
                case 97:
                    boolean isSupportingCameraMotor = isSupportingCameraMotor();
                    parcel2.writeNoException();
                    parcel2.writeBoolean(isSupportingCameraMotor);
                    return true;
                case 98:
                    int readInt293 = parcel.readInt();
                    String readString54 = parcel.readString();
                    int readInt294 = parcel.readInt();
                    int readInt295 = parcel.readInt();
                    String readString55 = parcel.readString();
                    int readInt296 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveRecorderCreate = sveRecorderCreate(readInt293, readString54, readInt294, readInt295, readString55, readInt296);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveRecorderCreate);
                    return true;
                case 99:
                    int readInt297 = parcel.readInt();
                    int readInt298 = parcel.readInt();
                    int readInt299 = parcel.readInt();
                    String readString56 = parcel.readString();
                    int readInt300 = parcel.readInt();
                    int readInt301 = parcel.readInt();
                    long readLong7 = parcel.readLong();
                    int readInt302 = parcel.readInt();
                    String readString57 = parcel.readString();
                    int readInt303 = parcel.readInt();
                    int readInt304 = parcel.readInt();
                    int readInt305 = parcel.readInt();
                    int readInt306 = parcel.readInt();
                    int readInt307 = parcel.readInt();
                    long readLong8 = parcel.readLong();
                    String readString58 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int sveCmcRecorderCreate = sveCmcRecorderCreate(readInt297, readInt298, readInt299, readString56, readInt300, readInt301, readLong7, readInt302, readString57, readInt303, readInt304, readInt305, readInt306, readInt307, readLong8, readString58);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveCmcRecorderCreate);
                    return true;
                case 100:
                    int readInt308 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveRecorderDelete = sveRecorderDelete(readInt308);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveRecorderDelete);
                    return z2;
                case 101:
                    int readInt309 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveRecorderStart = sveRecorderStart(readInt309);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveRecorderStart);
                    return z2;
                case 102:
                    int readInt310 = parcel.readInt();
                    boolean readBoolean23 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int sveRecorderStop = sveRecorderStop(readInt310, readBoolean23);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveRecorderStop);
                    return z2;
                case 103:
                    int readInt311 = parcel.readInt();
                    int readInt312 = parcel.readInt();
                    int readInt313 = parcel.readInt();
                    boolean readBoolean24 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int saeStartRecording = saeStartRecording(readInt311, readInt312, readInt313, readBoolean24);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeStartRecording);
                    return z2;
                case 104:
                    int readInt314 = parcel.readInt();
                    boolean readBoolean25 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int saeStopRecording = saeStopRecording(readInt314, readBoolean25);
                    parcel2.writeNoException();
                    parcel2.writeInt(saeStopRecording);
                    return z2;
                case 105:
                    int readInt315 = parcel.readInt();
                    int readInt316 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveStartRecording = sveStartRecording(readInt315, readInt316);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveStartRecording);
                    return z2;
                case 106:
                    int readInt317 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int sveStopRecording = sveStopRecording(readInt317);
                    parcel2.writeNoException();
                    parcel2.writeInt(sveStopRecording);
                    return z2;
                case 107:
                    String readString59 = parcel.readString();
                    int readInt318 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int cpveStartInjection = cpveStartInjection(readString59, readInt318);
                    parcel2.writeNoException();
                    parcel2.writeInt(cpveStartInjection);
                    return z2;
                case 108:
                    int cpveStopInjection = cpveStopInjection();
                    parcel2.writeNoException();
                    parcel2.writeInt(cpveStopInjection);
                    return z2;
                case 109:
                    IImsMediaEventListener asInterface = IImsMediaEventListener.Stub.asInterface(parcel.readStrongBinder());
                    parcel.enforceNoDataAvail();
                    registerForMediaEventListener(asInterface);
                    parcel2.writeNoException();
                    return z2;
                case 110:
                    IImsMediaEventListener asInterface2 = IImsMediaEventListener.Stub.asInterface(parcel.readStrongBinder());
                    parcel.enforceNoDataAvail();
                    unregisterForMediaEventListener(asInterface2);
                    parcel2.writeNoException();
                    return z2;
                case 111:
                    ICmcMediaEventListener asInterface3 = ICmcMediaEventListener.Stub.asInterface(parcel.readStrongBinder());
                    parcel.enforceNoDataAvail();
                    registerForCmcEventListener(asInterface3);
                    parcel2.writeNoException();
                    return z2;
                case 112:
                    ICmcMediaEventListener asInterface4 = ICmcMediaEventListener.Stub.asInterface(parcel.readStrongBinder());
                    parcel.enforceNoDataAvail();
                    unregisterForCmcEventListener(asInterface4);
                    parcel2.writeNoException();
                    return z2;
                case 113:
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    parcel.enforceNoDataAvail();
                    notifyImsServiceReady(readStrongBinder);
                    parcel2.writeNoException();
                    return z2;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements ISecVideoEngineService {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return ISecVideoEngineService.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void onDestroy() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void setPreviewSurface(int i, Surface surface, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedObject(surface, 0);
                    obtain.writeInt(i2);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void setDisplaySurface(int i, Surface surface, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedObject(surface, 0);
                    obtain.writeInt(i2);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void setOrientation(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void setZoom(float f) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeFloat(f);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void switchCamera() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void sendStillImage(int i, boolean z, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void setCameraEffect(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void setPreviewResolution(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void bindToNetwork(Network network) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeTypedObject(network, 0);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void sendGeneralBundleEvent(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeTypedObject(bundle, 0);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void saeInitialize(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void saeTerminate() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    obtain.writeInt(i7);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i8);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeInt(i12);
                    obtain.writeInt(c);
                    obtain.writeInt(c2);
                    obtain.writeInt(c3);
                    obtain.writeInt(c4);
                    obtain.writeInt(c5);
                    obtain.writeInt(c6);
                    obtain.writeInt(i13);
                    obtain.writeInt(i14);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    obtain.writeString(str5);
                    obtain.writeString(str6);
                    obtain.writeString(str7);
                    obtain.writeString(str8);
                    obtain.writeString(str9);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeCreateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6, String str3, boolean z, boolean z2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    obtain.writeInt(i3);
                    obtain.writeString(str2);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    obtain.writeString(str3);
                    obtain.writeBoolean(z);
                    obtain.writeBoolean(z2);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeStartChannel(int i, int i2, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeUpdateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    obtain.writeInt(i3);
                    obtain.writeString(str2);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeStopChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeModifyChannel(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeDeleteChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeHandleDtmf(int i, int i2, int i3, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetDtmfCodecInfo(int i, int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i4);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetRtcpOnCall(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetRtpTimeout(int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetRtcpTimeout(int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeIntArray(iArr);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public TimeInfo saeGetLastPlayedVoiceTime(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TimeInfo) obtain2.readTypedObject(TimeInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetVoicePlayDelay(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetTOS(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeGetVersion(byte[] bArr, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeGetAudioRxTrackId(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeSetAudioPath(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveCreateChannel() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveStartChannel(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveStopChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSetConnection(int i, String str, int i2, String str2, int i3, int i4, int i5, int i6, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeString(str2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    obtain.writeLong(j);
                    this.mRemote.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSetCodecInfo(int i, int i2, int i3, int i4, int i5, int i6, String str, int i7, int i8, int i9, int i10, int i11, boolean z, int i12, boolean z2, int i13, int i14, int i15, int i16, int i17, byte[] bArr, byte[] bArr2, byte[] bArr3, int i18, int i19, int i20) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    obtain.writeString(str);
                    obtain.writeInt(i7);
                    obtain.writeInt(i8);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i12);
                    obtain.writeBoolean(z2);
                    obtain.writeInt(i13);
                    obtain.writeInt(i14);
                    obtain.writeInt(i15);
                    obtain.writeInt(i16);
                    obtain.writeInt(i17);
                    obtain.writeByteArray(bArr);
                    obtain.writeByteArray(bArr2);
                    obtain.writeByteArray(bArr3);
                    obtain.writeInt(i18);
                    obtain.writeInt(i19);
                    obtain.writeInt(i20);
                    this.mRemote.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSetSRTPParams(int i, String str, byte[] bArr, int i2, int i3, int i4, int i5, String str2, byte[] bArr2, int i6, int i7, int i8, int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeString(str2);
                    obtain.writeByteArray(bArr2);
                    obtain.writeInt(i6);
                    obtain.writeInt(i7);
                    obtain.writeInt(i8);
                    obtain.writeInt(i9);
                    this.mRemote.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSetGcmSrtpParams(int i, int i2, int i3, int i4, char c, int i5, byte[] bArr, int i6, byte[] bArr2, int i7) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(c);
                    obtain.writeInt(i5);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i6);
                    obtain.writeByteArray(bArr2);
                    obtain.writeInt(i7);
                    this.mRemote.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSetMediaConfig(int i, boolean z, int i2, boolean z2, int i3, int i4, int i5, int i6) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i2);
                    obtain.writeBoolean(z2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    this.mRemote.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveStartCamera(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveStopCamera() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void sveStartEmoji(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void sveStopEmoji(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void sveRestartEmoji(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSetHeldInfo(int i, boolean z, boolean z2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    obtain.writeBoolean(z2);
                    this.mRemote.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public TimeInfo sveGetLastPlayedVideoTime(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TimeInfo) obtain2.readTypedObject(TimeInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSetVideoPlayDelay(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSetNetworkQoS(int i, int i2, int i3, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    this.mRemote.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveSendGeneralEvent(int i, int i2, int i3, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeString(str);
                    this.mRemote.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public TimeInfo sveGetRtcpTimeInfo(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TimeInfo) obtain2.readTypedObject(TimeInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public String sveGetCodecCapacity(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(53, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void steInitialize() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(54, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    obtain.writeInt(i7);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i8);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeInt(i12);
                    obtain.writeInt(c);
                    obtain.writeInt(c2);
                    obtain.writeInt(c3);
                    obtain.writeInt(c4);
                    obtain.writeInt(c5);
                    obtain.writeInt(c6);
                    obtain.writeInt(i13);
                    obtain.writeInt(i14);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    obtain.writeString(str5);
                    obtain.writeString(str6);
                    obtain.writeString(str7);
                    obtain.writeString(str8);
                    obtain.writeString(str9);
                    this.mRemote.transact(55, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steCreateChannel(int i, String str, int i2, String str2, int i3, int i4, int i5, String str3, boolean z, boolean z2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeString(str2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeString(str3);
                    obtain.writeBoolean(z);
                    obtain.writeBoolean(z2);
                    this.mRemote.transact(56, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steStartChannel(int i, int i2, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(57, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steUpdateChannel(int i, int i2, String str, int i3, String str2, int i4, int i5, int i6) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    obtain.writeInt(i3);
                    obtain.writeString(str2);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    this.mRemote.transact(58, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steStopChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(59, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steModifyChannel(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(60, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steDeleteChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(61, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSendText(int i, String str, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    this.mRemote.transact(62, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i4);
                    this.mRemote.transact(63, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSetRtcpOnCall(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(64, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSetRtpTimeout(int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.mRemote.transact(65, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSetRtcpTimeout(int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.mRemote.transact(66, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeIntArray(iArr);
                    this.mRemote.transact(67, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSetCallOptions(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(68, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSetNetId(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(69, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int steSetSessionId(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(70, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void sreInitialize() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(71, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public String sreGetVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(72, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetMdmn(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(73, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public boolean sreGetMdmn(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(74, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readBoolean();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetNetId(int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.mRemote.transact(75, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreCreateStream(int i, int i2, int i3, String str, int i4, String str2, int i5, boolean z, boolean z2, int i6, int i7, String str3, boolean z3, boolean z4) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeString(str);
                    obtain.writeInt(i4);
                    obtain.writeString(str2);
                    obtain.writeInt(i5);
                    obtain.writeBoolean(z);
                    obtain.writeBoolean(z2);
                    obtain.writeInt(i6);
                    obtain.writeInt(i7);
                    obtain.writeString(str3);
                    obtain.writeBoolean(z3);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(76, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreStartStream(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(77, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreDeleteStream(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(78, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreUpdateStream(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(79, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreCreateRelayChannel(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(80, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreDeleteRelayChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(81, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreStartRelayChannel(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(82, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreStopRelayChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(83, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreHoldRelayChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(84, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreResumeRelayChannel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(85, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreUpdateRelayChannel(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(86, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetConnection(int i, String str, int i2, String str2, int i3, int i4, int i5, int i6) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeString(str2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    this.mRemote.transact(87, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreEnableSRTP(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i4);
                    this.mRemote.transact(88, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetRtcpOnCall(int i, int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    this.mRemote.transact(89, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetRtpTimeout(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(90, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetRtcpTimeout(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(91, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetRtcpXr(int i, int i2, int i3, int i4, int i5, int[] iArr) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeIntArray(iArr);
                    this.mRemote.transact(92, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetCodecInfo(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, int i9, int i10, int i11, int i12, char c, char c2, char c3, char c4, char c5, char c6, int i13, int i14, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i15) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    obtain.writeInt(i7);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i8);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeInt(i12);
                    obtain.writeInt(c);
                    obtain.writeInt(c2);
                    obtain.writeInt(c3);
                    obtain.writeInt(c4);
                    obtain.writeInt(c5);
                    obtain.writeInt(c6);
                    obtain.writeInt(i13);
                    obtain.writeInt(i14);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    obtain.writeString(str5);
                    obtain.writeString(str6);
                    obtain.writeString(str7);
                    obtain.writeString(str8);
                    obtain.writeString(str9);
                    obtain.writeInt(i15);
                    this.mRemote.transact(93, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreSetDtmfCodecInfo(int i, int i2, int i3, int i4, int i5, int i6) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    this.mRemote.transact(94, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreStartRecording(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(95, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sreStopRecording(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(96, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public boolean isSupportingCameraMotor() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(97, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readBoolean();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveRecorderCreate(int i, String str, int i2, int i3, String str2, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeString(str2);
                    obtain.writeInt(i4);
                    this.mRemote.transact(98, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveCmcRecorderCreate(int i, int i2, int i3, String str, int i4, int i5, long j, int i6, String str2, int i7, int i8, int i9, int i10, int i11, long j2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeString(str);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeLong(j);
                    obtain.writeInt(i6);
                    obtain.writeString(str2);
                    obtain.writeInt(i7);
                    obtain.writeInt(i8);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeLong(j2);
                    obtain.writeString(str3);
                    this.mRemote.transact(99, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveRecorderDelete(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(100, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveRecorderStart(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(101, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveRecorderStop(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(102, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeStartRecording(int i, int i2, int i3, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(103, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int saeStopRecording(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(104, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveStartRecording(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(105, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int sveStopRecording(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(106, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int cpveStartInjection(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(107, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public int cpveStopInjection() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    this.mRemote.transact(108, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void registerForMediaEventListener(IImsMediaEventListener iImsMediaEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeStrongInterface(iImsMediaEventListener);
                    this.mRemote.transact(109, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void unregisterForMediaEventListener(IImsMediaEventListener iImsMediaEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeStrongInterface(iImsMediaEventListener);
                    this.mRemote.transact(110, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void registerForCmcEventListener(ICmcMediaEventListener iCmcMediaEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeStrongInterface(iCmcMediaEventListener);
                    this.mRemote.transact(111, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void unregisterForCmcEventListener(ICmcMediaEventListener iCmcMediaEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeStrongInterface(iCmcMediaEventListener);
                    this.mRemote.transact(112, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.sve.ISecVideoEngineService
            public void notifyImsServiceReady(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISecVideoEngineService.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(113, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
