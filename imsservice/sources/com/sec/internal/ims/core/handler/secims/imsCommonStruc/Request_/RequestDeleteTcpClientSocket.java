package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestDeleteTcpClientSocket extends Table {
    public static RequestDeleteTcpClientSocket getRootAsRequestDeleteTcpClientSocket(ByteBuffer byteBuffer) {
        return getRootAsRequestDeleteTcpClientSocket(byteBuffer, new RequestDeleteTcpClientSocket());
    }

    public static RequestDeleteTcpClientSocket getRootAsRequestDeleteTcpClientSocket(ByteBuffer byteBuffer, RequestDeleteTcpClientSocket requestDeleteTcpClientSocket) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestDeleteTcpClientSocket.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestDeleteTcpClientSocket __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long handle() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public static int createRequestDeleteTcpClientSocket(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.startObject(1);
        addHandle(flatBufferBuilder, j);
        return endRequestDeleteTcpClientSocket(flatBufferBuilder);
    }

    public static void startRequestDeleteTcpClientSocket(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(1);
    }

    public static void addHandle(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static int endRequestDeleteTcpClientSocket(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
