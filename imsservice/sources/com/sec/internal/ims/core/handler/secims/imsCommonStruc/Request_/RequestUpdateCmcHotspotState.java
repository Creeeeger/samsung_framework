package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestUpdateCmcHotspotState extends Table {
    public static RequestUpdateCmcHotspotState getRootAsRequestUpdateCmcHotspotState(ByteBuffer byteBuffer) {
        return getRootAsRequestUpdateCmcHotspotState(byteBuffer, new RequestUpdateCmcHotspotState());
    }

    public static RequestUpdateCmcHotspotState getRootAsRequestUpdateCmcHotspotState(ByteBuffer byteBuffer, RequestUpdateCmcHotspotState requestUpdateCmcHotspotState) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestUpdateCmcHotspotState.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestUpdateCmcHotspotState __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long session() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public String hotspotAddresses(int i) {
        int __offset = __offset(6);
        if (__offset != 0) {
            return __string(__vector(__offset) + (i * 4));
        }
        return null;
    }

    public int hotspotAddressesLength() {
        int __offset = __offset(6);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public static int createRequestUpdateCmcHotspotState(FlatBufferBuilder flatBufferBuilder, long j, int i) {
        flatBufferBuilder.startObject(2);
        addHotspotAddresses(flatBufferBuilder, i);
        addSession(flatBufferBuilder, j);
        return endRequestUpdateCmcHotspotState(flatBufferBuilder);
    }

    public static void startRequestUpdateCmcHotspotState(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(2);
    }

    public static void addSession(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addHotspotAddresses(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(1, i, 0);
    }

    public static int createHotspotAddressesVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static void startHotspotAddressesVector(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.startVector(4, i, 4);
    }

    public static int endRequestUpdateCmcHotspotState(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
