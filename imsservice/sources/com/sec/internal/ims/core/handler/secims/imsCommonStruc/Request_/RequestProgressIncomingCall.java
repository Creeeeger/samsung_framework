package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ExtraHeader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestProgressIncomingCall extends Table {
    public static RequestProgressIncomingCall getRootAsRequestProgressIncomingCall(ByteBuffer byteBuffer) {
        return getRootAsRequestProgressIncomingCall(byteBuffer, new RequestProgressIncomingCall());
    }

    public static RequestProgressIncomingCall getRootAsRequestProgressIncomingCall(ByteBuffer byteBuffer, RequestProgressIncomingCall requestProgressIncomingCall) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestProgressIncomingCall.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestProgressIncomingCall __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long session() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public boolean blocked() {
        int __offset = __offset(6);
        return (__offset == 0 || this.bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public ExtraHeader extraHeader() {
        return extraHeader(new ExtraHeader());
    }

    public ExtraHeader extraHeader(ExtraHeader extraHeader) {
        int __offset = __offset(8);
        if (__offset != 0) {
            return extraHeader.__assign(__indirect(__offset + this.bb_pos), this.bb);
        }
        return null;
    }

    public String idcExtra() {
        int __offset = __offset(10);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer idcExtraAsByteBuffer() {
        return __vector_as_bytebuffer(10, 1);
    }

    public static int createRequestProgressIncomingCall(FlatBufferBuilder flatBufferBuilder, long j, boolean z, int i, int i2) {
        flatBufferBuilder.startObject(4);
        addIdcExtra(flatBufferBuilder, i2);
        addExtraHeader(flatBufferBuilder, i);
        addSession(flatBufferBuilder, j);
        addBlocked(flatBufferBuilder, z);
        return endRequestProgressIncomingCall(flatBufferBuilder);
    }

    public static void startRequestProgressIncomingCall(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(4);
    }

    public static void addSession(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addBlocked(FlatBufferBuilder flatBufferBuilder, boolean z) {
        flatBufferBuilder.addBoolean(1, z, false);
    }

    public static void addExtraHeader(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(2, i, 0);
    }

    public static void addIdcExtra(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(3, i, 0);
    }

    public static int endRequestProgressIncomingCall(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
