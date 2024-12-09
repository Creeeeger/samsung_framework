package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestClearAllCallInternal extends Table {
    public static RequestClearAllCallInternal getRootAsRequestClearAllCallInternal(ByteBuffer byteBuffer) {
        return getRootAsRequestClearAllCallInternal(byteBuffer, new RequestClearAllCallInternal());
    }

    public static RequestClearAllCallInternal getRootAsRequestClearAllCallInternal(ByteBuffer byteBuffer, RequestClearAllCallInternal requestClearAllCallInternal) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestClearAllCallInternal.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestClearAllCallInternal __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long cmcType() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public static int createRequestClearAllCallInternal(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.startObject(1);
        addCmcType(flatBufferBuilder, j);
        return endRequestClearAllCallInternal(flatBufferBuilder);
    }

    public static void startRequestClearAllCallInternal(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(1);
    }

    public static void addCmcType(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static int endRequestClearAllCallInternal(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
