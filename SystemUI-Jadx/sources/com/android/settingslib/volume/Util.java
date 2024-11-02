package com.android.settingslib.volume;

import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class Util {
    public static final int[] AUDIO_MANAGER_FLAGS = {1, 16, 4, 2, 8, 2048, 128, 4096, 1024};
    public static final String[] AUDIO_MANAGER_FLAG_NAMES = {"SHOW_UI", "VIBRATE", "PLAY_SOUND", "ALLOW_RINGER_MODES", "REMOVE_SOUND_AND_VIBRATE", "SHOW_VIBRATE_HINT", "SHOW_SILENT_HINT", "FROM_KEY", "SHOW_UI_WARNINGS"};

    public static String bitFieldToString(int i, String[] strArr, int[] iArr) {
        if (i == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if ((iArr[i2] & i) != 0) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(strArr[i2]);
            }
            i &= ~iArr[i2];
        }
        if (i != 0) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append("UNKNOWN_");
            sb.append(i);
        }
        return sb.toString();
    }

    public static String playbackInfoToString(MediaController.PlaybackInfo playbackInfo) {
        String str;
        String str2;
        if (playbackInfo == null) {
            return null;
        }
        int playbackType = playbackInfo.getPlaybackType();
        if (playbackType != 1) {
            if (playbackType != 2) {
                str = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("UNKNOWN_", playbackType);
            } else {
                str = "REMOTE";
            }
        } else {
            str = "LOCAL";
        }
        int volumeControl = playbackInfo.getVolumeControl();
        if (volumeControl != 0) {
            if (volumeControl != 1) {
                if (volumeControl != 2) {
                    str2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("VOLUME_CONTROL_UNKNOWN_", volumeControl);
                } else {
                    str2 = "VOLUME_CONTROL_ABSOLUTE";
                }
            } else {
                str2 = "VOLUME_CONTROL_RELATIVE";
            }
        } else {
            str2 = "VOLUME_CONTROL_FIXED";
        }
        return String.format("PlaybackInfo[vol=%s,max=%s,type=%s,vc=%s],atts=%s", Integer.valueOf(playbackInfo.getCurrentVolume()), Integer.valueOf(playbackInfo.getMaxVolume()), str, str2, playbackInfo.getAudioAttributes());
    }

    public static String playbackStateToString(PlaybackState playbackState) {
        String str;
        if (playbackState == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int state = playbackState.getState();
        if (state != 0) {
            if (state != 1) {
                if (state != 2) {
                    if (state != 3) {
                        str = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("UNKNOWN_", state);
                    } else {
                        str = "STATE_PLAYING";
                    }
                } else {
                    str = "STATE_PAUSED";
                }
            } else {
                str = "STATE_STOPPED";
            }
        } else {
            str = "STATE_NONE";
        }
        sb.append(str);
        sb.append(" ");
        sb.append(playbackState);
        return sb.toString();
    }
}
