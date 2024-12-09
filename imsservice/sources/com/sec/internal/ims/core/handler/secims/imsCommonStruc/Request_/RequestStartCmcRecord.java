package com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_;

import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class RequestStartCmcRecord extends Table {
    public static RequestStartCmcRecord getRootAsRequestStartCmcRecord(ByteBuffer byteBuffer) {
        return getRootAsRequestStartCmcRecord(byteBuffer, new RequestStartCmcRecord());
    }

    public static RequestStartCmcRecord getRootAsRequestStartCmcRecord(ByteBuffer byteBuffer, RequestStartCmcRecord requestStartCmcRecord) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestStartCmcRecord.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        this.bb_pos = i;
        this.bb = byteBuffer;
    }

    public RequestStartCmcRecord __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public long handle() {
        if (__offset(4) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long session() {
        if (__offset(6) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long audioSource() {
        if (__offset(8) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long outputFormat() {
        if (__offset(10) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long maxFileSize() {
        int __offset = __offset(12);
        if (__offset != 0) {
            return this.bb.getLong(__offset + this.bb_pos);
        }
        return 0L;
    }

    public long maxDuration() {
        if (__offset(14) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public String outputPath() {
        int __offset = __offset(16);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer outputPathAsByteBuffer() {
        return __vector_as_bytebuffer(16, 1);
    }

    public long audioEncodingBr() {
        if (__offset(18) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long audioChannels() {
        if (__offset(20) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long audioSamplingRate() {
        if (__offset(22) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long audioEncoder() {
        if (__offset(24) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long durationInterval() {
        if (__offset(26) != 0) {
            return this.bb.getInt(r0 + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public long fileSizeInterval() {
        int __offset = __offset(28);
        if (__offset != 0) {
            return this.bb.getLong(__offset + this.bb_pos);
        }
        return 0L;
    }

    public String author() {
        int __offset = __offset(30);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer authorAsByteBuffer() {
        return __vector_as_bytebuffer(30, 1);
    }

    public static int createRequestStartCmcRecord(FlatBufferBuilder flatBufferBuilder, long j, long j2, long j3, long j4, long j5, long j6, int i, long j7, long j8, long j9, long j10, long j11, long j12, int i2) {
        flatBufferBuilder.startObject(14);
        addFileSizeInterval(flatBufferBuilder, j12);
        addMaxFileSize(flatBufferBuilder, j5);
        addAuthor(flatBufferBuilder, i2);
        addDurationInterval(flatBufferBuilder, j11);
        addAudioEncoder(flatBufferBuilder, j10);
        addAudioSamplingRate(flatBufferBuilder, j9);
        addAudioChannels(flatBufferBuilder, j8);
        addAudioEncodingBr(flatBufferBuilder, j7);
        addOutputPath(flatBufferBuilder, i);
        addMaxDuration(flatBufferBuilder, j6);
        addOutputFormat(flatBufferBuilder, j4);
        addAudioSource(flatBufferBuilder, j3);
        addSession(flatBufferBuilder, j2);
        addHandle(flatBufferBuilder, j);
        return endRequestStartCmcRecord(flatBufferBuilder);
    }

    public static void startRequestStartCmcRecord(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(14);
    }

    public static void addHandle(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(0, (int) j, 0);
    }

    public static void addSession(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(1, (int) j, 0);
    }

    public static void addAudioSource(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(2, (int) j, 0);
    }

    public static void addOutputFormat(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(3, (int) j, 0);
    }

    public static void addMaxFileSize(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addLong(4, j, 0L);
    }

    public static void addMaxDuration(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(5, (int) j, 0);
    }

    public static void addOutputPath(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(6, i, 0);
    }

    public static void addAudioEncodingBr(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(7, (int) j, 0);
    }

    public static void addAudioChannels(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(8, (int) j, 0);
    }

    public static void addAudioSamplingRate(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(9, (int) j, 0);
    }

    public static void addAudioEncoder(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(10, (int) j, 0);
    }

    public static void addDurationInterval(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addInt(11, (int) j, 0);
    }

    public static void addFileSizeInterval(FlatBufferBuilder flatBufferBuilder, long j) {
        flatBufferBuilder.addLong(12, j, 0L);
    }

    public static void addAuthor(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(13, i, 0);
    }

    public static int endRequestStartCmcRecord(FlatBufferBuilder flatBufferBuilder) {
        int endObject = flatBufferBuilder.endObject();
        flatBufferBuilder.required(endObject, 16);
        flatBufferBuilder.required(endObject, 30);
        return endObject;
    }
}
