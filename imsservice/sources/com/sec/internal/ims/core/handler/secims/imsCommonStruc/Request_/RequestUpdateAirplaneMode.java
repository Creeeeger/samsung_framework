package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestUpdateAirplaneMode extends Table {
    public static RequestUpdateAirplaneMode getRootAsRequestUpdateAirplaneMode(ByteBuffer byteBuffer) {
        return getRootAsRequestUpdateAirplaneMode(byteBuffer, new RequestUpdateAirplaneMode());
    }

    public static RequestUpdateAirplaneMode getRootAsRequestUpdateAirplaneMode(ByteBuffer byteBuffer, RequestUpdateAirplaneMode requestUpdateAirplaneMode) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestUpdateAirplaneMode.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestUpdateAirplaneMode __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public boolean isOn() {
        int __offset = __offset(4);
        return (__offset == 0 || this.bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public static int createRequestUpdateAirplaneMode(FlatBufferBuilder flatBufferBuilder, boolean z) {
        flatBufferBuilder.startObject(1);
        addIsOn(flatBufferBuilder, z);
        return endRequestUpdateAirplaneMode(flatBufferBuilder);
    }

    public static void startRequestUpdateAirplaneMode(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(1);
    }

    public static void addIsOn(FlatBufferBuilder flatBufferBuilder, boolean z) {
        flatBufferBuilder.addBoolean(0, z, false);
    }

    public static int endRequestUpdateAirplaneMode(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
