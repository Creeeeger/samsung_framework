package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RtpLossRateNoti extends Table {
    public static RtpLossRateNoti getRootAsRtpLossRateNoti(ByteBuffer byteBuffer) {
        return getRootAsRtpLossRateNoti(byteBuffer, new RtpLossRateNoti());
    }

    public static RtpLossRateNoti getRootAsRtpLossRateNoti(ByteBuffer byteBuffer, RtpLossRateNoti rtpLossRateNoti) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return rtpLossRateNoti.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RtpLossRateNoti __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long interval() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public float lossrate() {
        int __offset = __offset(6);
        if (__offset != 0) {
            return this.bb.getFloat(__offset + this.bb_pos);
        }
        return 0.0f;
    }

    public float jitter() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return this.bb.getFloat(__offset + this.bb_pos);
        }
        return 0.0f;
    }

    public long notification() {
        if (__offset(10) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public static int createRtpLossRateNoti(FlatBufferBuilder flatBufferBuilder, long j, float f, float f2, long j2) {
        flatBufferBuilder.startObject(4);
        addNotification(flatBufferBuilder, j2);
        addJitter(flatBufferBuilder, f2);
        addLossrate(flatBufferBuilder, f);
        addInterval(flatBufferBuilder, j);
        return endRtpLossRateNoti(flatBufferBuilder);
    }

    public static void startRtpLossRateNoti(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(4);
    }

    public static void addInterval(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addLossrate(FlatBufferBuilder flatBufferBuilder, float f) {
        flatBufferBuilder.addFloat(1, f, 0.0d);
    }

    public static void addJitter(FlatBufferBuilder flatBufferBuilder, float f) {
        flatBufferBuilder.addFloat(2, f, 0.0d);
    }

    public static void addNotification(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(3, (int) j, 0);
    }

    public static int endRtpLossRateNoti(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
