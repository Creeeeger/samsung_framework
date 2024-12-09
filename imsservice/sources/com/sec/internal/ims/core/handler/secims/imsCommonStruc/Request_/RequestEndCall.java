package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestEndCall_.EndReason;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestEndCall extends Table {
    public static RequestEndCall getRootAsRequestEndCall(ByteBuffer byteBuffer) {
        return getRootAsRequestEndCall(byteBuffer, new RequestEndCall());
    }

    public static RequestEndCall getRootAsRequestEndCall(ByteBuffer byteBuffer, RequestEndCall requestEndCall) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestEndCall.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestEndCall __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long session() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public EndReason endReason() {
        return endReason(new EndReason());
    }

    public EndReason endReason(EndReason endReason) {
        int __offset = __offset(6);
        if (__offset != 0) {
            return endReason.__assign(__indirect(__offset + this.bb_pos), this.bb);
        }
        return null;
    }

    public static int createRequestEndCall(FlatBufferBuilder flatBufferBuilder, long j, int i) {
        flatBufferBuilder.startObject(2);
        addEndReason(flatBufferBuilder, i);
        addSession(flatBufferBuilder, j);
        return endRequestEndCall(flatBufferBuilder);
    }

    public static void startRequestEndCall(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(2);
    }

    public static void addSession(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addEndReason(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(1, i, 0);
    }

    public static int endRequestEndCall(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
