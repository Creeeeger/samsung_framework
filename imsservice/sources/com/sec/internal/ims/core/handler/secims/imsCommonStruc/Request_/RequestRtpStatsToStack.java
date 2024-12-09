package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestRtpStatsToStack extends Table {
    public static RequestRtpStatsToStack getRootAsRequestRtpStatsToStack(ByteBuffer byteBuffer) {
        return getRootAsRequestRtpStatsToStack(byteBuffer, new RequestRtpStatsToStack());
    }

    public static RequestRtpStatsToStack getRootAsRequestRtpStatsToStack(ByteBuffer byteBuffer, RequestRtpStatsToStack requestRtpStatsToStack) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestRtpStatsToStack.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestRtpStatsToStack __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long channelid() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long lossrate() {
        if (__offset(6) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long delay() {
        if (__offset(8) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long jitter() {
        if (__offset(10) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long measuredperiod() {
        if (__offset(12) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long direction() {
        if (__offset(14) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public static int createRequestRtpStatsToStack(FlatBufferBuilder flatBufferBuilder, long j, long j2, long j3, long j4, long j5, long j6) {
        flatBufferBuilder.startObject(6);
        addDirection(flatBufferBuilder, j6);
        addMeasuredperiod(flatBufferBuilder, j5);
        addJitter(flatBufferBuilder, j4);
        addDelay(flatBufferBuilder, j3);
        addLossrate(flatBufferBuilder, j2);
        addChannelid(flatBufferBuilder, j);
        return endRequestRtpStatsToStack(flatBufferBuilder);
    }

    public static void startRequestRtpStatsToStack(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(6);
    }

    public static void addChannelid(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addLossrate(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(1, (int) j, 0);
    }

    public static void addDelay(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(2, (int) j, 0);
    }

    public static void addJitter(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(3, (int) j, 0);
    }

    public static void addMeasuredperiod(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(4, (int) j, 0);
    }

    public static void addDirection(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(5, (int) j, 0);
    }

    public static int endRequestRtpStatsToStack(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
