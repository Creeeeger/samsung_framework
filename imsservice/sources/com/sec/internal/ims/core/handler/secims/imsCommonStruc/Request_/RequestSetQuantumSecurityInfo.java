package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestSetQuantumSecurityInfo extends Table {
    public static RequestSetQuantumSecurityInfo getRootAsRequestSetQuantumSecurityInfo(ByteBuffer byteBuffer) {
        return getRootAsRequestSetQuantumSecurityInfo(byteBuffer, new RequestSetQuantumSecurityInfo());
    }

    public static RequestSetQuantumSecurityInfo getRootAsRequestSetQuantumSecurityInfo(ByteBuffer byteBuffer, RequestSetQuantumSecurityInfo requestSetQuantumSecurityInfo) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestSetQuantumSecurityInfo.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestSetQuantumSecurityInfo __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long session() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long callDirection() {
        if (__offset(6) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long cryptoMode() {
        if (__offset(8) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public String qtSessionId() {
        int __offset = __offset(10);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer qtSessionIdAsByteBuffer() {
        return __vector_as_bytebuffer(10, 1);
    }

    public String sessionKey() {
        int __offset = __offset(12);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer sessionKeyAsByteBuffer() {
        return __vector_as_bytebuffer(12, 1);
    }

    public static int createRequestSetQuantumSecurityInfo(FlatBufferBuilder flatBufferBuilder, long j, long j2, long j3, int i, int i2) {
        flatBufferBuilder.startObject(5);
        addSessionKey(flatBufferBuilder, i2);
        addQtSessionId(flatBufferBuilder, i);
        addCryptoMode(flatBufferBuilder, j3);
        addCallDirection(flatBufferBuilder, j2);
        addSession(flatBufferBuilder, j);
        return endRequestSetQuantumSecurityInfo(flatBufferBuilder);
    }

    public static void startRequestSetQuantumSecurityInfo(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(5);
    }

    public static void addSession(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addCallDirection(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(1, (int) j, 0);
    }

    public static void addCryptoMode(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(2, (int) j, 0);
    }

    public static void addQtSessionId(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(3, i, 0);
    }

    public static void addSessionKey(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(4, i, 0);
    }

    public static int endRequestSetQuantumSecurityInfo(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
