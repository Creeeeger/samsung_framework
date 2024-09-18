package com.samsung.android.mocca;

import java.util.Arrays;

/* loaded from: classes5.dex */
public class SemMdContextEvent {
    public final byte[] data;
    public final long timestamp;
    public final String type;

    /* JADX INFO: Access modifiers changed from: protected */
    public SemMdContextEvent(long timestamp, String type, byte[] data) {
        this.timestamp = timestamp;
        this.type = type;
        this.data = Arrays.copyOf(data, data.length);
    }
}
