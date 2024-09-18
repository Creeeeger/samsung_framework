package com.samsung.android.media.imagecrop;

import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class NativeBuffer {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static native ByteBuffer allocNativeBuffer(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void freeNativeBuffer(ByteBuffer byteBuffer);
}
