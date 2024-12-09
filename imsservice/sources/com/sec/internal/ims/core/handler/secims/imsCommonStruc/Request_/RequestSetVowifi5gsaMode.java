package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestSetVowifi5gsaMode extends Table {
    public static RequestSetVowifi5gsaMode getRootAsRequestSetVowifi5gsaMode(ByteBuffer byteBuffer) {
        return getRootAsRequestSetVowifi5gsaMode(byteBuffer, new RequestSetVowifi5gsaMode());
    }

    public static RequestSetVowifi5gsaMode getRootAsRequestSetVowifi5gsaMode(ByteBuffer byteBuffer, RequestSetVowifi5gsaMode requestSetVowifi5gsaMode) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestSetVowifi5gsaMode.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestSetVowifi5gsaMode __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long handle() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long vowifi5gsaMode() {
        if (__offset(6) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public static int createRequestSetVowifi5gsaMode(FlatBufferBuilder flatBufferBuilder, long j, long j2) {
        flatBufferBuilder.startObject(2);
        addVowifi5gsaMode(flatBufferBuilder, j2);
        addHandle(flatBufferBuilder, j);
        return endRequestSetVowifi5gsaMode(flatBufferBuilder);
    }

    public static void startRequestSetVowifi5gsaMode(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(2);
    }

    public static void addHandle(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addVowifi5gsaMode(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(1, (int) j, 0);
    }

    public static int endRequestSetVowifi5gsaMode(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
