package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class DTMFDataEvent extends Table {
    public static DTMFDataEvent getRootAsDTMFDataEvent(ByteBuffer byteBuffer) {
        return getRootAsDTMFDataEvent(byteBuffer, new DTMFDataEvent());
    }

    public static DTMFDataEvent getRootAsDTMFDataEvent(ByteBuffer byteBuffer, DTMFDataEvent dTMFDataEvent) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return dTMFDataEvent.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public DTMFDataEvent __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long event() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long volume() {
        if (__offset(6) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long duration() {
        if (__offset(8) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long endbit() {
        if (__offset(10) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public static int createDTMFDataEvent(FlatBufferBuilder flatBufferBuilder, long j, long j2, long j3, long j4) {
        flatBufferBuilder.startObject(4);
        addEndbit(flatBufferBuilder, j4);
        addDuration(flatBufferBuilder, j3);
        addVolume(flatBufferBuilder, j2);
        addEvent(flatBufferBuilder, j);
        return endDTMFDataEvent(flatBufferBuilder);
    }

    public static void startDTMFDataEvent(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(4);
    }

    public static void addEvent(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addVolume(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(1, (int) j, 0);
    }

    public static void addDuration(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(2, (int) j, 0);
    }

    public static void addEndbit(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(3, (int) j, 0);
    }

    public static int endDTMFDataEvent(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
