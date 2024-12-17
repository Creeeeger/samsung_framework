package org.apache.commons.compress.compressors.deflate64;

import android.frameworks.vibrator.VibrationParam$1$$ExternalSyntheticOutline0;
import com.android.server.location.gnss.hal.GnssNative;
import com.samsung.android.knox.zt.devicetrust.EndpointMonitorConst;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.apache.commons.compress.utils.BitInputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class HuffmanDecoder implements Closeable {
    public static final int[] FIXED_DISTANCE;
    public static final int[] FIXED_LITERALS;
    public final InputStream in;
    public BitInputStream reader;
    public static final short[] RUN_LENGTH_TABLE = {96, 128, 160, 192, 224, 256, 288, 320, 353, 417, 481, 545, 610, 738, 866, 994, 1123, 1379, 1635, 1891, 2148, 2660, 3172, 3684, 4197, 5221, 6245, 7269, 112};
    public static final int[] DISTANCE_TABLE = {16, 32, 48, 64, 81, 113, 146, 210, 275, 403, 532, 788, 1045, 1557, 2070, 3094, 4119, 6167, 8216, 12312, 16409, 24601, 32794, 49178, 65563, 98331, 131100, 196636, 262173, 393245, 524318, 786462};
    public static final int[] CODE_LENGTHS_ORDER = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    public boolean finalBlock = false;
    public final DecodingMemory memory = new DecodingMemory();
    public DecoderState state = new InitialState();

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class BinaryTreeNode {
        public final int bits;
        public BinaryTreeNode leftNode;
        public int literal = -1;
        public BinaryTreeNode rightNode;

        public BinaryTreeNode(int i) {
            this.bits = i;
        }
    }

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public abstract class DecoderState {
        public abstract int available();

        public abstract boolean hasData();

        public abstract int read(byte[] bArr, int i, int i2);

        public abstract HuffmanState state();
    }

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class DecodingMemory {
        public final byte[] memory = new byte[EndpointMonitorConst.FLAG_TRACING_NETWORK_EVENT_ABNORMAL_PKT];
        public int wHead;
        public boolean wrappedAround;
    }

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class HuffmanCodes extends DecoderState {
        public final BinaryTreeNode distanceTree;
        public final BinaryTreeNode lengthTree;
        public final HuffmanState state;
        public boolean endOfBlock = false;
        public int runBufferPos = 0;
        public byte[] runBuffer = new byte[0];
        public int runBufferLength = 0;

        public HuffmanCodes(HuffmanState huffmanState, int[] iArr, int[] iArr2) {
            this.state = huffmanState;
            this.lengthTree = HuffmanDecoder.buildTree(iArr);
            this.distanceTree = HuffmanDecoder.buildTree(iArr2);
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final int available() {
            return this.runBufferLength - this.runBufferPos;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final boolean hasData() {
            return !this.endOfBlock;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final int read(byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            if (this.endOfBlock) {
                return -1;
            }
            int i5 = this.runBufferLength - this.runBufferPos;
            int i6 = 0;
            if (i5 > 0) {
                i3 = Math.min(i2, i5);
                System.arraycopy(this.runBuffer, this.runBufferPos, bArr, i, i3);
                this.runBufferPos += i3;
            } else {
                i3 = 0;
            }
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                HuffmanDecoder huffmanDecoder = HuffmanDecoder.this;
                int nextSymbol = HuffmanDecoder.nextSymbol(huffmanDecoder.reader, this.lengthTree);
                int i7 = GnssNative.GNSS_AIDING_TYPE_ALL;
                if (nextSymbol >= 256) {
                    if (nextSymbol <= 256) {
                        this.endOfBlock = true;
                        break;
                    }
                    int readBits = (int) (HuffmanDecoder.readBits(huffmanDecoder.reader, HuffmanDecoder.RUN_LENGTH_TABLE[nextSymbol - 257] & 31) + (r7 >>> 5));
                    int readBits2 = (int) (HuffmanDecoder.readBits(huffmanDecoder.reader, HuffmanDecoder.DISTANCE_TABLE[HuffmanDecoder.nextSymbol(huffmanDecoder.reader, this.distanceTree)] & 15) + (r10 >>> 4));
                    if (this.runBuffer.length < readBits) {
                        this.runBuffer = new byte[readBits];
                    }
                    this.runBufferLength = readBits;
                    this.runBufferPos = i6;
                    DecodingMemory decodingMemory = huffmanDecoder.memory;
                    byte[] bArr2 = this.runBuffer;
                    byte[] bArr3 = decodingMemory.memory;
                    if (readBits2 > bArr3.length) {
                        throw new IllegalStateException(VibrationParam$1$$ExternalSyntheticOutline0.m(readBits2, "Illegal distance parameter: "));
                    }
                    int i8 = decodingMemory.wHead;
                    int i9 = (i8 - readBits2) & GnssNative.GNSS_AIDING_TYPE_ALL;
                    if (!decodingMemory.wrappedAround && i9 >= i8) {
                        throw new IllegalStateException(VibrationParam$1$$ExternalSyntheticOutline0.m(readBits2, "Attempt to read beyond memory: dist="));
                    }
                    int i10 = i6;
                    while (i10 < readBits) {
                        byte b = bArr3[i9];
                        int i11 = decodingMemory.wHead;
                        decodingMemory.memory[i11] = b;
                        int i12 = (i11 + 1) & i7;
                        if (!decodingMemory.wrappedAround && i12 < i11) {
                            decodingMemory.wrappedAround = true;
                        }
                        decodingMemory.wHead = i12;
                        bArr2[i10] = b;
                        i10++;
                        i7 = GnssNative.GNSS_AIDING_TYPE_ALL;
                        int i13 = (i9 + 1) & GnssNative.GNSS_AIDING_TYPE_ALL;
                        if (!decodingMemory.wrappedAround && i13 < i9) {
                            decodingMemory.wrappedAround = true;
                        }
                        i9 = i13;
                    }
                    int i14 = i + i3;
                    int i15 = i2 - i3;
                    int i16 = this.runBufferLength - this.runBufferPos;
                    if (i16 > 0) {
                        i4 = Math.min(i15, i16);
                        System.arraycopy(this.runBuffer, this.runBufferPos, bArr, i14, i4);
                        this.runBufferPos += i4;
                    } else {
                        i4 = 0;
                    }
                    i3 = i4 + i3;
                } else {
                    int i17 = i3 + 1;
                    int i18 = i3 + i;
                    DecodingMemory decodingMemory2 = huffmanDecoder.memory;
                    byte b2 = (byte) nextSymbol;
                    int i19 = decodingMemory2.wHead;
                    decodingMemory2.memory[i19] = b2;
                    int i20 = 65535 & (i19 + 1);
                    if (!decodingMemory2.wrappedAround && i20 < i19) {
                        decodingMemory2.wrappedAround = true;
                    }
                    decodingMemory2.wHead = i20;
                    bArr[i18] = b2;
                    i3 = i17;
                }
                i6 = 0;
            }
            return i3;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final HuffmanState state() {
            return this.endOfBlock ? HuffmanState.INITIAL : this.state;
        }
    }

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class InitialState extends DecoderState {
        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final int available() {
            return 0;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final boolean hasData() {
            return false;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final int read(byte[] bArr, int i, int i2) {
            throw new IllegalStateException("Cannot read in this state");
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final HuffmanState state() {
            return HuffmanState.INITIAL;
        }
    }

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public final class UncompressedState extends DecoderState {
        public final long blockLength;
        public long read;

        public UncompressedState(long j) {
            this.blockLength = j;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final int available() {
            long j = this.blockLength - this.read;
            BitInputStream bitInputStream = HuffmanDecoder.this.reader;
            return (int) Math.min(j, ((bitInputStream.in.available() * 8) + bitInputStream.bitsCachedSize) / 8);
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final boolean hasData() {
            return this.read < this.blockLength;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final int read(byte[] bArr, int i, int i2) {
            int min = (int) Math.min(this.blockLength - this.read, i2);
            int i3 = 0;
            while (i3 < min) {
                HuffmanDecoder huffmanDecoder = HuffmanDecoder.this;
                int i4 = 1;
                if (huffmanDecoder.reader.bitsCachedSize > 0) {
                    byte readBits = (byte) HuffmanDecoder.readBits(r2, 8);
                    int i5 = i + i3;
                    DecodingMemory decodingMemory = huffmanDecoder.memory;
                    int i6 = decodingMemory.wHead;
                    decodingMemory.memory[i6] = readBits;
                    int i7 = 65535 & (i6 + 1);
                    if (!decodingMemory.wrappedAround && i7 < i6) {
                        decodingMemory.wrappedAround = true;
                    }
                    decodingMemory.wHead = i7;
                    bArr[i5] = readBits;
                } else {
                    int i8 = i + i3;
                    int read = huffmanDecoder.in.read(bArr, i8, min - i3);
                    if (read == -1) {
                        throw new EOFException("Truncated Deflate64 Stream");
                    }
                    DecodingMemory decodingMemory2 = huffmanDecoder.memory;
                    decodingMemory2.getClass();
                    for (int i9 = i8; i9 < i8 + read; i9++) {
                        byte b = bArr[i9];
                        int i10 = decodingMemory2.wHead;
                        decodingMemory2.memory[i10] = b;
                        int i11 = (i10 + 1) & GnssNative.GNSS_AIDING_TYPE_ALL;
                        if (!decodingMemory2.wrappedAround && i11 < i10) {
                            decodingMemory2.wrappedAround = true;
                        }
                        decodingMemory2.wHead = i11;
                    }
                    i4 = read;
                }
                this.read += i4;
                i3 += i4;
            }
            return min;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public final HuffmanState state() {
            return this.read < this.blockLength ? HuffmanState.STORED : HuffmanState.INITIAL;
        }
    }

    static {
        int[] iArr = new int[288];
        FIXED_LITERALS = iArr;
        Arrays.fill(iArr, 0, 144, 8);
        Arrays.fill(iArr, 144, 256, 9);
        Arrays.fill(iArr, 256, 280, 7);
        Arrays.fill(iArr, 280, 288, 8);
        int[] iArr2 = new int[32];
        FIXED_DISTANCE = iArr2;
        Arrays.fill(iArr2, 5);
    }

    public HuffmanDecoder(InputStream inputStream) {
        this.reader = new BitInputStream(inputStream, ByteOrder.LITTLE_ENDIAN);
        this.in = inputStream;
    }

    public static BinaryTreeNode buildTree(int[] iArr) {
        int[] iArr2 = new int[65];
        int i = 0;
        for (int i2 : iArr) {
            i = Math.max(i, i2);
            iArr2[i2] = iArr2[i2] + 1;
        }
        int i3 = i + 1;
        int[] copyOf = Arrays.copyOf(iArr2, i3);
        int[] iArr3 = new int[i3];
        int i4 = 0;
        for (int i5 = 0; i5 <= i; i5++) {
            i4 = (i4 + copyOf[i5]) << 1;
            iArr3[i5] = i4;
        }
        BinaryTreeNode binaryTreeNode = new BinaryTreeNode(0);
        for (int i6 = 0; i6 < iArr.length; i6++) {
            int i7 = iArr[i6];
            if (i7 != 0) {
                int i8 = i7 - 1;
                int i9 = iArr3[i8];
                BinaryTreeNode binaryTreeNode2 = binaryTreeNode;
                for (int i10 = i8; i10 >= 0; i10--) {
                    if (((1 << i10) & i9) == 0) {
                        if (binaryTreeNode2.leftNode == null && binaryTreeNode2.literal == -1) {
                            binaryTreeNode2.leftNode = new BinaryTreeNode(binaryTreeNode2.bits + 1);
                        }
                        binaryTreeNode2 = binaryTreeNode2.leftNode;
                    } else {
                        if (binaryTreeNode2.rightNode == null && binaryTreeNode2.literal == -1) {
                            binaryTreeNode2.rightNode = new BinaryTreeNode(binaryTreeNode2.bits + 1);
                        }
                        binaryTreeNode2 = binaryTreeNode2.rightNode;
                    }
                }
                binaryTreeNode2.literal = i6;
                binaryTreeNode2.leftNode = null;
                binaryTreeNode2.rightNode = null;
                iArr3[i8] = iArr3[i8] + 1;
            }
        }
        return binaryTreeNode;
    }

    public static int nextSymbol(BitInputStream bitInputStream, BinaryTreeNode binaryTreeNode) {
        while (binaryTreeNode != null && binaryTreeNode.literal == -1) {
            binaryTreeNode = readBits(bitInputStream, 1) == 0 ? binaryTreeNode.leftNode : binaryTreeNode.rightNode;
        }
        if (binaryTreeNode != null) {
            return binaryTreeNode.literal;
        }
        return -1;
    }

    public static long readBits(BitInputStream bitInputStream, int i) {
        long readBits = bitInputStream.readBits(i);
        if (readBits != -1) {
            return readBits;
        }
        throw new EOFException("Truncated Deflate64 Stream");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.state = new InitialState();
        this.reader = null;
    }
}
