package androidx.emoji2.text;

import androidx.emoji2.text.flatbuffer.MetadataList;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MetadataListReader {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ByteBufferReader {
        public final ByteBuffer mByteBuffer;

        public ByteBufferReader(ByteBuffer byteBuffer) {
            this.mByteBuffer = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public final long readUnsignedInt() {
            return this.mByteBuffer.getInt() & 4294967295L;
        }

        public final void skip(int i) {
            ByteBuffer byteBuffer = this.mByteBuffer;
            byteBuffer.position(byteBuffer.position() + i);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OffsetInfo {
        public final long mStartOffset;

        public OffsetInfo(long j, long j2) {
            this.mStartOffset = j;
        }
    }

    private MetadataListReader() {
    }

    public static MetadataList read(ByteBuffer byteBuffer) {
        long j;
        ByteBuffer duplicate = byteBuffer.duplicate();
        ByteBufferReader byteBufferReader = new ByteBufferReader(duplicate);
        byteBufferReader.skip(4);
        ByteBuffer byteBuffer2 = byteBufferReader.mByteBuffer;
        int i = byteBuffer2.getShort() & 65535;
        if (i <= 100) {
            byteBufferReader.skip(6);
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    int i3 = byteBuffer2.getInt();
                    byteBufferReader.skip(4);
                    j = byteBufferReader.readUnsignedInt();
                    byteBufferReader.skip(4);
                    if (1835365473 == i3) {
                        break;
                    }
                    i2++;
                } else {
                    j = -1;
                    break;
                }
            }
            if (j != -1) {
                byteBufferReader.skip((int) (j - byteBuffer2.position()));
                byteBufferReader.skip(12);
                long readUnsignedInt = byteBufferReader.readUnsignedInt();
                for (int i4 = 0; i4 < readUnsignedInt; i4++) {
                    int i5 = byteBuffer2.getInt();
                    long readUnsignedInt2 = byteBufferReader.readUnsignedInt();
                    long readUnsignedInt3 = byteBufferReader.readUnsignedInt();
                    if (1164798569 == i5 || 1701669481 == i5) {
                        duplicate.position((int) new OffsetInfo(readUnsignedInt2 + j, readUnsignedInt3).mStartOffset);
                        MetadataList metadataList = new MetadataList();
                        duplicate.order(ByteOrder.LITTLE_ENDIAN);
                        metadataList.__reset(duplicate.position() + duplicate.getInt(duplicate.position()), duplicate);
                        return metadataList;
                    }
                }
            }
            throw new IOException("Cannot read metadata.");
        }
        throw new IOException("Cannot read metadata.");
    }
}
