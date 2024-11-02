package com.samsung.systemui.splugins.volume;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class VolumePanelValues {
    public static final int DEVICE_BLUETOOTH = 8;
    public static final int DEVICE_NONE = 0;
    public static final int FLAG_CONTENT_CONTROLS = 4;
    public static final int FLAG_CONTENT_TEXT = 2;
    public static final int FLAG_DISMISS_UI_WARNINGS = 134217728;
    public static final int FLAG_SHOW_CSD_100_WARNINGS = 1073741824;
    public static final VolumePanelValues INSTANCE = new VolumePanelValues();
    public static final int RINGER_MODE_NORMAL = 2;
    public static final int RINGER_MODE_SILENT = 0;
    public static final int RINGER_MODE_VIBRATE = 1;
    public static final int STREAM_ACCESSIBILITY = 10;
    public static final int STREAM_ALARM = 4;
    public static final int STREAM_AUDIO_SHARING = 23;
    public static final int STREAM_BIXBY_VOICE = 11;
    public static final int STREAM_BLUETOOTH_SCO = 6;
    public static final int STREAM_DUAL_AUDIO = 22;
    public static final int STREAM_MULTI_SOUND = 21;
    public static final int STREAM_MUSIC = 3;
    public static final int STREAM_NONE = -1;
    public static final int STREAM_NOTIFICATION = 5;
    public static final int STREAM_RING = 2;
    public static final int STREAM_SMART_VIEW = 20;
    public static final int STREAM_SYSTEM = 1;
    public static final int STREAM_VOICE_CALL = 0;
    public static final int TYPE_CLEAR_CAMERA_VIEW_COVER = 17;
    public static final int TYPE_CLEAR_COVER = 8;
    public static final int TYPE_CLEAR_SIDE_VIEW_COVER = 15;
    public static final int TYPE_MINI_SVIEW_WALLET_COVER = 16;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface AccessibilityContentFlags {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ActionFlags {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface CoverTypes {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface RingerModes {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface StreamTypes {
    }

    private VolumePanelValues() {
    }

    public static final boolean isAccessibility(int i) {
        if (i == 10) {
            return true;
        }
        return false;
    }

    public static final boolean isAlarm(int i) {
        if (i == 4) {
            return true;
        }
        return false;
    }

    public static final boolean isAudioSharing(int i) {
        if (i == 23) {
            return true;
        }
        return false;
    }

    public static final boolean isBixbyVoice(int i) {
        if (i == 11) {
            return true;
        }
        return false;
    }

    public static final boolean isBluetoothSco(int i) {
        if (i == 6) {
            return true;
        }
        return false;
    }

    public static final boolean isDualAudio(int i) {
        if (i == 22) {
            return true;
        }
        return false;
    }

    public static final boolean isMediaStream(int i) {
        if (!isMusic(i) && !isDualAudio(i) && !isMultiSound(i)) {
            return false;
        }
        return true;
    }

    public static final boolean isMultiSound(int i) {
        if (i == 21) {
            return true;
        }
        return false;
    }

    public static final boolean isMusic(int i) {
        if (i == 3) {
            return true;
        }
        return false;
    }

    public static final boolean isNone(int i) {
        if (i == -1) {
            return true;
        }
        return false;
    }

    public static final boolean isNormal(int i) {
        if (i == 2) {
            return true;
        }
        return false;
    }

    public static final boolean isNotification(int i) {
        if (i == 5) {
            return true;
        }
        return false;
    }

    public static final boolean isRing(int i) {
        if (i == 2) {
            return true;
        }
        return false;
    }

    public static final boolean isSilent(int i) {
        if (i == 0) {
            return true;
        }
        return false;
    }

    public static final boolean isSmartView(int i) {
        if (i == 20) {
            return true;
        }
        return false;
    }

    public static final boolean isSystem(int i) {
        if (i == 1) {
            return true;
        }
        return false;
    }

    public static final boolean isVibrate(int i) {
        if (i == 1) {
            return true;
        }
        return false;
    }

    public static final boolean isVoiceCall(int i) {
        if (i == 0) {
            return true;
        }
        return false;
    }

    public final String rowStreamTypeToString(int i) {
        if (i != 10) {
            if (i != 11) {
                switch (i) {
                    case -1:
                        return "STREAM_NONE";
                    case 0:
                        return "STREAM_VOICE_CALL";
                    case 1:
                        return "STREAM_SYSTEM";
                    case 2:
                        return "STREAM_RING";
                    case 3:
                        return "STREAM_MUSIC";
                    case 4:
                        return "STREAM_ALARM";
                    case 5:
                        return "STREAM_NOTIFICATION";
                    case 6:
                        return "STREAM_BLUETOOTH_SCO";
                    default:
                        switch (i) {
                            case 20:
                                return "STREAM_SMART_VIEW";
                            case 21:
                                return "STREAM_MULTI_SOUND";
                            case 22:
                                return "STREAM_DUAL_AUDIO";
                            case 23:
                                return "STREAM_AUDIO_SHARING";
                            default:
                                return "";
                        }
                }
            }
            return "STREAM_BIXBY_VOICE";
        }
        return "STREAM_ACCESSIBILITY";
    }
}
