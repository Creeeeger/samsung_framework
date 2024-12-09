package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestUpdateConfCall extends Table {
    public static RequestUpdateConfCall getRootAsRequestUpdateConfCall(ByteBuffer byteBuffer) {
        return getRootAsRequestUpdateConfCall(byteBuffer, new RequestUpdateConfCall());
    }

    public static RequestUpdateConfCall getRootAsRequestUpdateConfCall(ByteBuffer byteBuffer, RequestUpdateConfCall requestUpdateConfCall) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestUpdateConfCall.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestUpdateConfCall __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long session() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long cmd() {
        if (__offset(6) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long participantId() {
        if (__offset(8) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public String participant() {
        int __offset = __offset(10);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer participantAsByteBuffer() {
        return __vector_as_bytebuffer(10, 1);
    }

    public static int createRequestUpdateConfCall(FlatBufferBuilder flatBufferBuilder, long j, long j2, long j3, int i) {
        flatBufferBuilder.startObject(4);
        addParticipant(flatBufferBuilder, i);
        addParticipantId(flatBufferBuilder, j3);
        addCmd(flatBufferBuilder, j2);
        addSession(flatBufferBuilder, j);
        return endRequestUpdateConfCall(flatBufferBuilder);
    }

    public static void startRequestUpdateConfCall(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(4);
    }

    public static void addSession(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addCmd(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(1, (int) j, 0);
    }

    public static void addParticipantId(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(2, (int) j, 0);
    }

    public static void addParticipant(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(3, i, 0);
    }

    public static int endRequestUpdateConfCall(FlatBufferBuilder flatBufferBuilder) {
        int endObject = flatBufferBuilder.endObject();
        flatBufferBuilder.required(endObject, 10);
        return endObject;
    }
}
