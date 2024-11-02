package com.samsung.android.media.imagecrop;

import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class NativeBuffer {
    public static native ByteBuffer allocNativeBuffer(long j);

    public static native void freeNativeBuffer(ByteBuffer byteBuffer);
}
