package com.android.systemui.bixby2.util;

import android.content.Context;
import android.media.AudioManager;
import android.view.KeyEvent;
import com.sec.ims.presence.ServiceTuple;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AudioManagerWrapper {
    private final AudioManager mAudioManager;

    public AudioManagerWrapper(Context context) {
        this.mAudioManager = (AudioManager) context.getSystemService(ServiceTuple.MEDIA_CAP_AUDIO);
    }

    private int getDefaultStream(Context context) {
        if (isMediaVolumeOn(context)) {
            return 3;
        }
        return 2;
    }

    private boolean isMediaVolumeOn(Context context) {
        if (!new SemSoundAssistantManagerWrapper(context).isAdjustMediaVolumeOnly() && !isMusicActive()) {
            return false;
        }
        return true;
    }

    private boolean isMusicActive() {
        return this.mAudioManager.isMusicActive();
    }

    private boolean isStreamValid(int i) {
        if (i == 2 || i == 3 || i == 5 || i == 1) {
            return true;
        }
        return false;
    }

    public void adjustStreamVolume(int i, int i2, int i3) {
        this.mAudioManager.adjustStreamVolume(i, i2, i3);
    }

    public void dispatchMediaKeyEvent(KeyEvent keyEvent) {
        this.mAudioManager.dispatchMediaKeyEvent(keyEvent);
    }

    public int getAdjustedStreamType(Context context) {
        int semGetActiveStreamType = AudioManager.semGetActiveStreamType();
        if (!isStreamValid(semGetActiveStreamType)) {
            return getDefaultStream(context);
        }
        return semGetActiveStreamType;
    }

    public int getRingerMode() {
        return this.mAudioManager.getRingerModeInternal();
    }

    public int getStreamMaxVolume(int i) {
        return this.mAudioManager.getStreamMaxVolume(i);
    }

    public int getStreamMinVolume(int i) {
        return this.mAudioManager.getStreamMinVolumeInt(i);
    }

    public int getStreamVolume(int i) {
        return this.mAudioManager.getStreamVolume(i);
    }

    public boolean isAllStreamMute() {
        if (getRingerMode() != 2 && isStreamMute(3) && isStreamMute(11)) {
            return true;
        }
        return false;
    }

    public boolean isCurrentDeviceTypeBluetooth() {
        if (this.mAudioManager.semGetCurrentDeviceType() == 8) {
            return true;
        }
        return false;
    }

    public boolean isInCall() {
        if (this.mAudioManager.getModeInternal() != 0) {
            return true;
        }
        return false;
    }

    public boolean isStreamMute(int i) {
        if (getStreamVolume(i) == getStreamMinVolume(i)) {
            return true;
        }
        return false;
    }

    public void setRingerMode(int i) {
        this.mAudioManager.setRingerMode(i);
    }

    public void setStreamVolume(int i, int i2, int i3) {
        this.mAudioManager.setStreamVolume(i, i2, i3);
    }

    public boolean shouldShowRingtoneVolume() {
        return this.mAudioManager.shouldShowRingtoneVolume();
    }
}
