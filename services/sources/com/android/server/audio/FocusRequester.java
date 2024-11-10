package com.android.server.audio;

import android.media.AudioAttributes;
import android.media.AudioFocusInfo;
import android.media.IAudioFocusDispatcher;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.android.server.audio.MediaFocusControl;
import java.io.PrintWriter;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class FocusRequester {
    public final AudioAttributes mAttributes;
    public final int mCallingUid;
    public final String mClientId;
    public MediaFocusControl.AudioFocusDeathHandler mDeathHandler;
    public final MediaFocusControl mFocusController;
    public IAudioFocusDispatcher mFocusDispatcher;
    public final int mFocusGainRequest;
    public final int mGrantFlags;
    public final String mPackageName;
    public final int mSdkTarget;
    public final IBinder mSourceRef;
    public int mDevice = 0;
    public int mFocusLossReceived = 0;
    public boolean mFocusLossWasNotified = true;
    public boolean mFocusLossFadeLimbo = false;

    public FocusRequester(AudioAttributes audioAttributes, int i, int i2, IAudioFocusDispatcher iAudioFocusDispatcher, IBinder iBinder, String str, MediaFocusControl.AudioFocusDeathHandler audioFocusDeathHandler, String str2, int i3, MediaFocusControl mediaFocusControl, int i4) {
        this.mAttributes = audioAttributes;
        this.mFocusDispatcher = iAudioFocusDispatcher;
        this.mSourceRef = iBinder;
        this.mClientId = str;
        this.mDeathHandler = audioFocusDeathHandler;
        this.mPackageName = str2;
        this.mCallingUid = i3;
        this.mFocusGainRequest = i;
        this.mGrantFlags = i2;
        this.mFocusController = mediaFocusControl;
        this.mSdkTarget = i4;
    }

    public FocusRequester(AudioFocusInfo audioFocusInfo, IAudioFocusDispatcher iAudioFocusDispatcher, IBinder iBinder, MediaFocusControl.AudioFocusDeathHandler audioFocusDeathHandler, MediaFocusControl mediaFocusControl) {
        this.mAttributes = audioFocusInfo.getAttributes();
        this.mClientId = audioFocusInfo.getClientId();
        this.mPackageName = audioFocusInfo.getPackageName();
        this.mCallingUid = audioFocusInfo.getClientUid();
        this.mFocusGainRequest = audioFocusInfo.getGainRequest();
        this.mGrantFlags = audioFocusInfo.getFlags();
        this.mSdkTarget = audioFocusInfo.getSdkTarget();
        this.mFocusDispatcher = iAudioFocusDispatcher;
        this.mSourceRef = iBinder;
        this.mDeathHandler = audioFocusDeathHandler;
        this.mFocusController = mediaFocusControl;
    }

    public boolean hasSameClient(String str) {
        return this.mClientId.compareTo(str) == 0;
    }

    public boolean isLockedFocusOwner() {
        return (this.mGrantFlags & 4) != 0;
    }

    public boolean isInFocusLossLimbo() {
        return this.mFocusLossFadeLimbo;
    }

    public boolean hasSameBinder(IBinder iBinder) {
        IBinder iBinder2 = this.mSourceRef;
        return iBinder2 != null && iBinder2.equals(iBinder);
    }

    public boolean hasSameDispatcher(IAudioFocusDispatcher iAudioFocusDispatcher) {
        IAudioFocusDispatcher iAudioFocusDispatcher2 = this.mFocusDispatcher;
        return iAudioFocusDispatcher2 != null && iAudioFocusDispatcher2.equals(iAudioFocusDispatcher);
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public boolean hasSamePackage(String str) {
        return this.mPackageName.compareTo(str) == 0;
    }

    public boolean hasSameUid(int i) {
        return this.mCallingUid == i;
    }

    public int getClientUid() {
        return this.mCallingUid;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public int getGainRequest() {
        return this.mFocusGainRequest;
    }

    public int getGrantFlags() {
        return this.mGrantFlags;
    }

    public AudioAttributes getAudioAttributes() {
        return this.mAttributes;
    }

    public int getSdkTarget() {
        return this.mSdkTarget;
    }

    public static String focusChangeToString(int i) {
        switch (i) {
            case -3:
                return "LOSS_TRANSIENT_CAN_DUCK";
            case -2:
                return "LOSS_TRANSIENT";
            case -1:
                return "LOSS";
            case 0:
                return "none";
            case 1:
                return "GAIN";
            case 2:
                return "GAIN_TRANSIENT";
            case 3:
                return "GAIN_TRANSIENT_MAY_DUCK";
            case 4:
                return "GAIN_TRANSIENT_EXCLUSIVE";
            default:
                return "[invalid focus change" + i + "]";
        }
    }

    public final String focusGainToString() {
        return focusChangeToString(this.mFocusGainRequest);
    }

    public final String focusLossToString() {
        return focusChangeToString(this.mFocusLossReceived);
    }

    public static String flagsToString(int i) {
        String str = new String();
        if ((i & 1) != 0) {
            str = str + "DELAY_OK";
        }
        if ((i & 4) != 0) {
            if (!str.isEmpty()) {
                str = str + "|";
            }
            str = str + "LOCK";
        }
        if ((i & 2) == 0) {
            return str;
        }
        if (!str.isEmpty()) {
            str = str + "|";
        }
        return str + "PAUSES_ON_DUCKABLE_LOSS";
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("  source:" + this.mSourceRef + " -- pack: " + this.mPackageName + " -- client: " + this.mClientId + " -- gain: " + focusGainToString() + " -- flags: " + flagsToString(this.mGrantFlags) + " -- loss: " + focusLossToString() + " -- notified: " + this.mFocusLossWasNotified + " -- limbo" + this.mFocusLossFadeLimbo + " -- uid: " + this.mCallingUid + " -- attr: " + this.mAttributes + " -- device: " + Integer.toHexString(this.mDevice) + " -- sdk:" + this.mSdkTarget);
    }

    public void maybeRelease() {
        if (this.mFocusLossFadeLimbo) {
            return;
        }
        release();
    }

    public void release() {
        IBinder iBinder = this.mSourceRef;
        MediaFocusControl.AudioFocusDeathHandler audioFocusDeathHandler = this.mDeathHandler;
        if (iBinder != null && audioFocusDeathHandler != null) {
            try {
                iBinder.unlinkToDeath(audioFocusDeathHandler, 0);
            } catch (NoSuchElementException unused) {
            }
        }
        this.mDeathHandler = null;
        this.mFocusDispatcher = null;
    }

    public void finalize() {
        release();
        super.finalize();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0045, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        if (r4 != 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0022, code lost:
    
        if (r0 != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
    
        if (r5 != 4) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
    
        android.util.Log.e("MediaFocusControl", "focusLossForGainRequest() for invalid focus request " + r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int focusLossForGainRequest(int r5) {
        /*
            r4 = this;
            r0 = 1
            r1 = -3
            r2 = -2
            r3 = -1
            if (r5 == r0) goto L10
            r0 = 2
            if (r5 == r0) goto L1a
            r0 = 3
            if (r5 == r0) goto L24
            r0 = 4
            if (r5 == r0) goto L1a
            goto L2e
        L10:
            int r0 = r4.mFocusLossReceived
            if (r0 == r1) goto L4b
            if (r0 == r2) goto L4b
            if (r0 == r3) goto L4b
            if (r0 == 0) goto L4b
        L1a:
            int r0 = r4.mFocusLossReceived
            if (r0 == r1) goto L4a
            if (r0 == r2) goto L4a
            if (r0 == r3) goto L49
            if (r0 == 0) goto L4a
        L24:
            int r4 = r4.mFocusLossReceived
            if (r4 == r1) goto L48
            if (r4 == r2) goto L47
            if (r4 == r3) goto L46
            if (r4 == 0) goto L48
        L2e:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = "focusLossForGainRequest() for invalid focus request "
            r4.append(r0)
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            java.lang.String r5 = "MediaFocusControl"
            android.util.Log.e(r5, r4)
            r4 = 0
            return r4
        L46:
            return r3
        L47:
            return r2
        L48:
            return r1
        L49:
            return r3
        L4a:
            return r2
        L4b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.audio.FocusRequester.focusLossForGainRequest(int):int");
    }

    public boolean handleFocusLossFromGain(int i, FocusRequester focusRequester, boolean z) {
        int focusLossForGainRequest = focusLossForGainRequest(i);
        if (focusLossForGainRequest == -1 && this.mFocusController.isDelayLossApp(this.mPackageName) && focusRequester != null && !"com.android.bluetooth".equals(focusRequester.getPackageName()) && !"com.samsung.android.mcfds".equals(focusRequester.getPackageName())) {
            this.mFocusController.postDelayedForLossAudioFocus(this);
            focusLossForGainRequest = -2;
        }
        handleFocusLoss(focusLossForGainRequest, focusRequester, z);
        return focusLossForGainRequest == -1;
    }

    public void handleFocusGain(int i) {
        try {
            this.mFocusLossReceived = 0;
            this.mFocusLossFadeLimbo = false;
            this.mFocusController.notifyExtPolicyFocusGrant_syncAf(toAudioFocusInfo(), 1);
            IAudioFocusDispatcher iAudioFocusDispatcher = this.mFocusDispatcher;
            if (iAudioFocusDispatcher != null && this.mFocusLossWasNotified) {
                iAudioFocusDispatcher.dispatchAudioFocusChange(i, this.mClientId);
            }
            this.mFocusController.restoreVShapedPlayers(this);
        } catch (RemoteException e) {
            Log.e("MediaFocusControl", "Failure to signal gain of audio focus due to: ", e);
        }
    }

    public void handleFocusGainFromRequest(int i) {
        if (i == 1) {
            this.mFocusController.restoreVShapedPlayers(this);
        }
    }

    public void handleFocusLoss(int i, FocusRequester focusRequester, boolean z) {
        try {
            if (i != this.mFocusLossReceived) {
                this.mFocusLossReceived = i;
                this.mFocusLossWasNotified = false;
                if (!this.mFocusController.mustNotifyFocusOwnerOnDuck() && this.mFocusLossReceived == -3 && (this.mGrantFlags & 2) == 0) {
                    this.mFocusController.notifyExtPolicyFocusLoss_syncAf(toAudioFocusInfo(), false);
                    return;
                }
                if (focusRequester != null ? frameworkHandleFocusLoss(i, focusRequester, z) : false) {
                    this.mFocusController.notifyExtPolicyFocusLoss_syncAf(toAudioFocusInfo(), false);
                    return;
                }
                IAudioFocusDispatcher iAudioFocusDispatcher = this.mFocusDispatcher;
                if (iAudioFocusDispatcher != null) {
                    this.mFocusController.notifyExtPolicyFocusLoss_syncAf(toAudioFocusInfo(), true);
                    this.mFocusLossWasNotified = true;
                    iAudioFocusDispatcher.dispatchAudioFocusChange(this.mFocusLossReceived, this.mClientId);
                }
            }
        } catch (RemoteException e) {
            Log.e("MediaFocusControl", "Failure to signal loss of audio focus due to:", e);
        }
    }

    public final boolean frameworkHandleFocusLoss(int i, FocusRequester focusRequester, boolean z) {
        if (focusRequester.mCallingUid == this.mCallingUid || i != -3) {
            return false;
        }
        if (!z && (this.mGrantFlags & 2) != 0) {
            Log.v("MediaFocusControl", "not ducking uid " + this.mCallingUid + " - flags");
            return false;
        }
        if (!z && getSdkTarget() <= 25) {
            Log.v("MediaFocusControl", "not ducking uid " + this.mCallingUid + " - old SDK");
            return false;
        }
        return this.mFocusController.duckPlayers(focusRequester, this, z);
    }

    public int dispatchFocusChange(int i) {
        IAudioFocusDispatcher iAudioFocusDispatcher = this.mFocusDispatcher;
        if (iAudioFocusDispatcher == null || i == 0) {
            return 0;
        }
        if ((i == 3 || i == 4 || i == 2 || i == 1) && this.mFocusGainRequest != i) {
            Log.w("MediaFocusControl", "focus gain was requested with " + this.mFocusGainRequest + ", dispatching " + i);
        } else if (i == -3 || i == -2 || i == -1) {
            this.mFocusLossReceived = i;
        }
        try {
            iAudioFocusDispatcher.dispatchAudioFocusChange(i, this.mClientId);
            return 1;
        } catch (RemoteException e) {
            Log.e("MediaFocusControl", "dispatchFocusChange: error talking to focus listener " + this.mClientId, e);
            return 0;
        }
    }

    public void dispatchFocusResultFromExtPolicy(int i) {
        IAudioFocusDispatcher iAudioFocusDispatcher = this.mFocusDispatcher;
        if (iAudioFocusDispatcher == null) {
            return;
        }
        try {
            iAudioFocusDispatcher.dispatchFocusResultFromExtPolicy(i, this.mClientId);
        } catch (RemoteException e) {
            Log.e("MediaFocusControl", "dispatchFocusResultFromExtPolicy: error talking to focus listener" + this.mClientId, e);
        }
    }

    public AudioFocusInfo toAudioFocusInfo() {
        return new AudioFocusInfo(this.mAttributes, this.mCallingUid, this.mClientId, this.mPackageName, this.mFocusGainRequest, this.mFocusLossReceived, this.mGrantFlags, this.mSdkTarget);
    }

    public void resetFocusLossReceived() {
        this.mFocusLossReceived = 0;
    }

    public int getDevice() {
        return this.mDevice;
    }

    public void setDevice(int i) {
        this.mDevice = i;
    }

    public int getCallingUid() {
        return this.mCallingUid;
    }
}
