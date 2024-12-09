package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUACreation_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class CmcConfig extends Table {
    public static CmcConfig getRootAsCmcConfig(ByteBuffer byteBuffer) {
        return getRootAsCmcConfig(byteBuffer, new CmcConfig());
    }

    public static CmcConfig getRootAsCmcConfig(ByteBuffer byteBuffer, CmcConfig cmcConfig) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return cmcConfig.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public CmcConfig __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long cmcType() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public String cmcRelayType() {
        int __offset = __offset(6);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer cmcRelayTypeAsByteBuffer() {
        return __vector_as_bytebuffer(6, 1);
    }

    public String cmcEmergencyNumbers() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer cmcEmergencyNumbersAsByteBuffer() {
        return __vector_as_bytebuffer(8, 1);
    }

    public boolean supportDualSimCmc() {
        int __offset = __offset(10);
        return (__offset == 0 || this.bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public String hotspotAddresses(int i) {
        int __offset = __offset(12);
        if (__offset != 0) {
            return __string(__vector(__offset) + (i * 4));
        }
        return null;
    }

    public int hotspotAddressesLength() {
        int __offset = __offset(12);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public static int createCmcConfig(FlatBufferBuilder flatBufferBuilder, long j, int i, int i2, boolean z, int i3) {
        flatBufferBuilder.startObject(5);
        addHotspotAddresses(flatBufferBuilder, i3);
        addCmcEmergencyNumbers(flatBufferBuilder, i2);
        addCmcRelayType(flatBufferBuilder, i);
        addCmcType(flatBufferBuilder, j);
        addSupportDualSimCmc(flatBufferBuilder, z);
        return endCmcConfig(flatBufferBuilder);
    }

    public static void startCmcConfig(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(5);
    }

    public static void addCmcType(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addCmcRelayType(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(1, i, 0);
    }

    public static void addCmcEmergencyNumbers(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(2, i, 0);
    }

    public static void addSupportDualSimCmc(FlatBufferBuilder flatBufferBuilder, boolean z) {
        flatBufferBuilder.addBoolean(3, z, false);
    }

    public static void addHotspotAddresses(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(4, i, 0);
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

    public static int endCmcConfig(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }
}
