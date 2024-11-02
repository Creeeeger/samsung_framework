package com.samsung.context.sdk.samsunganalytics.internal.sender;

import android.content.Context;
import com.samsung.context.sdk.samsunganalytics.Configuration;
import com.samsung.context.sdk.samsunganalytics.internal.sender.DLS.DLSLogSender;
import com.samsung.context.sdk.samsunganalytics.internal.sender.DMA.DMALogSender;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Sender {
    public static BaseLogSender logSender;

    public static BaseLogSender get(Context context, int i, Configuration configuration) {
        if (logSender == null) {
            synchronized (Sender.class) {
                if (i != 0) {
                    if (i == 2 || i == 3) {
                        logSender = new DMALogSender(context, configuration);
                    }
                } else {
                    logSender = new DLSLogSender(context, configuration);
                }
            }
        }
        return logSender;
    }
}
