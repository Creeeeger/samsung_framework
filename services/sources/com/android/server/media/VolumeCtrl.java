package com.android.server.media;

import android.media.AudioSystem;

/* loaded from: classes2.dex */
public abstract class VolumeCtrl {
    public static final String USAGE = new String("the options are as follows: \n\t\t--stream STREAM selects the stream to control, see AudioManager.STREAM_*\n\t\t                controls AudioManager.STREAM_MUSIC if no stream is specified\n\t\t--set INDEX     sets the volume index value\n\t\t--adj DIRECTION adjusts the volume, use raise|same|lower for the direction\n\t\t--get           outputs the current volume\n\t\t--show          shows the UI during the volume change\n\texamples:\n\t\tadb shell media_session volume --show --stream 3 --set 11\n\t\tadb shell media_session volume --stream 0 --adj lower\n\t\tadb shell media_session volume --stream 3 --get\n\n\t\tSamsung custom options are as follows: \n\t\t--setfine INDEX sets the fine volume index value\n\t\t--getfine       outputs the current fine volume\n\texamples:\n\t\tadb shell media_session volume --show --setfine 127\n\t\tadb shell media_session volume --getfine\n");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void run(com.android.server.media.MediaShellCommand r19) {
        /*
            Method dump skipped, instructions count: 814
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.media.VolumeCtrl.run(com.android.server.media.MediaShellCommand):void");
    }

    public static String streamName(int i) {
        try {
            return AudioSystem.STREAM_NAMES[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            return "invalid stream";
        }
    }
}
