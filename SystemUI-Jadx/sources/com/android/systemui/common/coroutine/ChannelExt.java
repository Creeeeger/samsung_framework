package com.android.systemui.common.coroutine;

import android.util.Log;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ChannelExt {
    public static final ChannelExt INSTANCE = new ChannelExt();

    private ChannelExt() {
    }

    public static void trySendWithFailureLogging(SendChannel sendChannel, Object obj, String str, String str2) {
        ChannelResult.Closed closed;
        Object mo2584trySendJP2dKIU = sendChannel.mo2584trySendJP2dKIU(obj);
        if (mo2584trySendJP2dKIU instanceof ChannelResult.Failed) {
            ChannelResult.Companion companion = ChannelResult.Companion;
            Throwable th = null;
            if (mo2584trySendJP2dKIU instanceof ChannelResult.Closed) {
                closed = (ChannelResult.Closed) mo2584trySendJP2dKIU;
            } else {
                closed = null;
            }
            if (closed != null) {
                th = closed.cause;
            }
            Log.e(str, "Failed to send " + str2 + " - downstream canceled or failed.", th);
        }
    }

    public static /* synthetic */ void trySendWithFailureLogging$default(ChannelExt channelExt, SendChannel sendChannel, Object obj, String str) {
        channelExt.getClass();
        trySendWithFailureLogging(sendChannel, obj, str, "updated state");
    }
}
