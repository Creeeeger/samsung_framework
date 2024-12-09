package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class AlarmWakeUp extends Table {
    public static AlarmWakeUp getRootAsAlarmWakeUp(ByteBuffer byteBuffer) {
        return getRootAsAlarmWakeUp(byteBuffer, new AlarmWakeUp());
    }

    public static AlarmWakeUp getRootAsAlarmWakeUp(ByteBuffer byteBuffer, AlarmWakeUp alarmWakeUp) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return alarmWakeUp.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public AlarmWakeUp __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long id() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long delay() {
        if (__offset(6) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public static int createAlarmWakeUp(FlatBufferBuilder flatBufferBuilder, long j, long j2) {
        flatBufferBuilder.startObject(2);
        addDelay(flatBufferBuilder, j2);
        addId(flatBufferBuilder, j);
        return endAlarmWakeUp(flatBufferBuilder);
    }

    public static void startAlarmWakeUp(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(2);
    }

    public static void addId(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addDelay(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(1, (int) j, 0);
    }

    public static int endAlarmWakeUp(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
