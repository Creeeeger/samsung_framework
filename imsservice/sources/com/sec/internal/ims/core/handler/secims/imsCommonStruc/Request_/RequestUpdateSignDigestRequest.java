package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestUpdateSignDigestRequest extends Table {
    public static RequestUpdateSignDigestRequest getRootAsRequestUpdateSignDigestRequest(ByteBuffer byteBuffer) {
        return getRootAsRequestUpdateSignDigestRequest(byteBuffer, new RequestUpdateSignDigestRequest());
    }

    public static RequestUpdateSignDigestRequest getRootAsRequestUpdateSignDigestRequest(ByteBuffer byteBuffer, RequestUpdateSignDigestRequest requestUpdateSignDigestRequest) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestUpdateSignDigestRequest.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestUpdateSignDigestRequest __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long handle() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public String response() {
        int __offset = __offset(6);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer responseAsByteBuffer() {
        return __vector_as_bytebuffer(6, 1);
    }

    public static int createRequestUpdateSignDigestRequest(FlatBufferBuilder flatBufferBuilder, long j, int i) {
        flatBufferBuilder.startObject(2);
        addResponse(flatBufferBuilder, i);
        addHandle(flatBufferBuilder, j);
        return endRequestUpdateSignDigestRequest(flatBufferBuilder);
    }

    public static void startRequestUpdateSignDigestRequest(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(2);
    }

    public static void addHandle(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addResponse(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(1, i, 0);
    }

    public static int endRequestUpdateSignDigestRequest(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
