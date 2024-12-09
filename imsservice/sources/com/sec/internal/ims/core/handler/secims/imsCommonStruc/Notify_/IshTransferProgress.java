package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class IshTransferProgress extends Table {
    public static IshTransferProgress getRootAsIshTransferProgress(ByteBuffer byteBuffer) {
        return getRootAsIshTransferProgress(byteBuffer, new IshTransferProgress());
    }

    public static IshTransferProgress getRootAsIshTransferProgress(ByteBuffer byteBuffer, IshTransferProgress ishTransferProgress) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return ishTransferProgress.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public IshTransferProgress __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long sessionId() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long total() {
        if (__offset(6) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long transferred() {
        if (__offset(8) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public static int createIshTransferProgress(FlatBufferBuilder flatBufferBuilder, long j, long j2, long j3) {
        flatBufferBuilder.startObject(3);
        addTransferred(flatBufferBuilder, j3);
        addTotal(flatBufferBuilder, j2);
        addSessionId(flatBufferBuilder, j);
        return endIshTransferProgress(flatBufferBuilder);
    }

    public static void startIshTransferProgress(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(3);
    }

    public static void addSessionId(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addTotal(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(1, (int) j, 0);
    }

    public static void addTransferred(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(2, (int) j, 0);
    }

    public static int endIshTransferProgress(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
