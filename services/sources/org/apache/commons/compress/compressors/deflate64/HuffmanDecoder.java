package org.apache.commons.compress.compressors.deflate64;

import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.apache.commons.compress.utils.BitInputStream;

/* loaded from: classes2.dex */
public class HuffmanDecoder implements Closeable {
    public static final int[] FIXED_DISTANCE;
    public static final int[] FIXED_LITERALS;
    public boolean finalBlock = false;
    public final InputStream in;
    public final DecodingMemory memory;
    public BitInputStream reader;
    public DecoderState state;
    public static final short[] RUN_LENGTH_TABLE = {96, 128, 160, 192, 224, 256, 288, 320, 353, 417, 481, 545, 610, 738, 866, 994, 1123, 1379, 1635, 1891, 2148, 2660, 3172, 3684, 4197, 5221, 6245, 7269, 112};
    public static final int[] DISTANCE_TABLE = {16, 32, 48, 64, 81, 113, 146, 210, 275, 403, 532, 788, 1045, 1557, 2070, 3094, 4119, 6167, 8216, 12312, 16409, 24601, 32794, 49178, 65563, 98331, 131100, 196636, 262173, 393245, 524318, 786462};
    public static final int[] CODE_LENGTHS_ORDER = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};

    /* loaded from: classes2.dex */
    public abstract class DecoderState {
        public DecoderState() {
        }

        public abstract int available();

        public abstract boolean hasData();

        public abstract int read(byte[] bArr, int i, int i2);

        public abstract HuffmanState state();
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
        this.memory = new DecodingMemory();
        this.reader = new BitInputStream(inputStream, ByteOrder.LITTLE_ENDIAN);
        this.in = inputStream;
        this.state = new InitialState();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.state = new InitialState();
        this.reader = null;
    }

    public int decode(byte[] bArr, int i, int i2) {
        while (true) {
            if (this.finalBlock && !this.state.hasData()) {
                return -1;
            }
            if (this.state.state() == HuffmanState.INITIAL) {
                this.finalBlock = readBits(1) == 1;
                int readBits = (int) readBits(2);
                if (readBits == 0) {
                    switchToUncompressedState();
                } else if (readBits == 1) {
                    this.state = new HuffmanCodes(HuffmanState.FIXED_CODES, FIXED_LITERALS, FIXED_DISTANCE);
                } else if (readBits == 2) {
                    int[][] readDynamicTables = readDynamicTables();
                    this.state = new HuffmanCodes(HuffmanState.DYNAMIC_CODES, readDynamicTables[0], readDynamicTables[1]);
                } else {
                    throw new IllegalStateException("Unsupported compression: " + readBits);
                }
            } else {
                return this.state.read(bArr, i, i2);
            }
        }
    }

    public long getBytesRead() {
        return this.reader.getBytesRead();
    }

    public final void switchToUncompressedState() {
        this.reader.alignWithByteBoundary();
        long readBits = readBits(16);
        if ((65535 & (readBits ^ 65535)) != readBits(16)) {
            throw new IllegalStateException("Illegal LEN / NLEN values");
        }
        this.state = new UncompressedState(readBits);
    }

    public final int[][] readDynamicTables() {
        int[][] iArr = {new int[(int) (readBits(5) + 257)], new int[(int) (readBits(5) + 1)]};
        populateDynamicTables(this.reader, iArr[0], iArr[1]);
        return iArr;
    }

    public int available() {
        return this.state.available();
    }

    /* loaded from: classes2.dex */
    public class UncompressedState extends DecoderState {
        public final long blockLength;
        public long read;

        public UncompressedState(long j) {
            super();
            this.blockLength = j;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public HuffmanState state() {
            return this.read < this.blockLength ? HuffmanState.STORED : HuffmanState.INITIAL;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public int read(byte[] bArr, int i, int i2) {
            int read;
            int min = (int) Math.min(this.blockLength - this.read, i2);
            int i3 = 0;
            while (i3 < min) {
                if (HuffmanDecoder.this.reader.bitsCached() > 0) {
                    bArr[i + i3] = HuffmanDecoder.this.memory.add((byte) HuffmanDecoder.this.readBits(8));
                    read = 1;
                } else {
                    int i4 = i + i3;
                    read = HuffmanDecoder.this.in.read(bArr, i4, min - i3);
                    if (read != -1) {
                        HuffmanDecoder.this.memory.add(bArr, i4, read);
                    } else {
                        throw new EOFException("Truncated Deflate64 Stream");
                    }
                }
                this.read += read;
                i3 += read;
            }
            return min;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public boolean hasData() {
            return this.read < this.blockLength;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public int available() {
            return (int) Math.min(this.blockLength - this.read, HuffmanDecoder.this.reader.bitsAvailable() / 8);
        }
    }

    /* loaded from: classes2.dex */
    public class InitialState extends DecoderState {
        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public int available() {
            return 0;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public boolean hasData() {
            return false;
        }

        public InitialState() {
            super();
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public HuffmanState state() {
            return HuffmanState.INITIAL;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public int read(byte[] bArr, int i, int i2) {
            throw new IllegalStateException("Cannot read in this state");
        }
    }

    /* loaded from: classes2.dex */
    public class HuffmanCodes extends DecoderState {
        public final BinaryTreeNode distanceTree;
        public boolean endOfBlock;
        public final BinaryTreeNode lengthTree;
        public byte[] runBuffer;
        public int runBufferLength;
        public int runBufferPos;
        public final HuffmanState state;

        public HuffmanCodes(HuffmanState huffmanState, int[] iArr, int[] iArr2) {
            super();
            this.endOfBlock = false;
            this.runBufferPos = 0;
            this.runBuffer = new byte[0];
            this.runBufferLength = 0;
            this.state = huffmanState;
            this.lengthTree = HuffmanDecoder.buildTree(iArr);
            this.distanceTree = HuffmanDecoder.buildTree(iArr2);
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public HuffmanState state() {
            return this.endOfBlock ? HuffmanState.INITIAL : this.state;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public int read(byte[] bArr, int i, int i2) {
            return decodeNext(bArr, i, i2);
        }

        public final int decodeNext(byte[] bArr, int i, int i2) {
            if (this.endOfBlock) {
                return -1;
            }
            int copyFromRunBuffer = copyFromRunBuffer(bArr, i, i2);
            while (true) {
                if (copyFromRunBuffer < i2) {
                    int nextSymbol = HuffmanDecoder.nextSymbol(HuffmanDecoder.this.reader, this.lengthTree);
                    if (nextSymbol >= 256) {
                        if (nextSymbol > 256) {
                            int readBits = (int) ((r1 >>> 5) + HuffmanDecoder.this.readBits(HuffmanDecoder.RUN_LENGTH_TABLE[nextSymbol - 257] & 31));
                            int readBits2 = (int) ((r2 >>> 4) + HuffmanDecoder.this.readBits(HuffmanDecoder.DISTANCE_TABLE[HuffmanDecoder.nextSymbol(HuffmanDecoder.this.reader, this.distanceTree)] & 15));
                            if (this.runBuffer.length < readBits) {
                                this.runBuffer = new byte[readBits];
                            }
                            this.runBufferLength = readBits;
                            this.runBufferPos = 0;
                            HuffmanDecoder.this.memory.recordToBuffer(readBits2, readBits, this.runBuffer);
                            copyFromRunBuffer += copyFromRunBuffer(bArr, i + copyFromRunBuffer, i2 - copyFromRunBuffer);
                        } else {
                            this.endOfBlock = true;
                            break;
                        }
                    } else {
                        bArr[copyFromRunBuffer + i] = HuffmanDecoder.this.memory.add((byte) nextSymbol);
                        copyFromRunBuffer++;
                    }
                } else {
                    break;
                }
            }
            return copyFromRunBuffer;
        }

        public final int copyFromRunBuffer(byte[] bArr, int i, int i2) {
            int i3 = this.runBufferLength - this.runBufferPos;
            if (i3 <= 0) {
                return 0;
            }
            int min = Math.min(i2, i3);
            System.arraycopy(this.runBuffer, this.runBufferPos, bArr, i, min);
            this.runBufferPos += min;
            return min;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public boolean hasData() {
            return !this.endOfBlock;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        public int available() {
            return this.runBufferLength - this.runBufferPos;
        }
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

    public static void populateDynamicTables(BitInputStream bitInputStream, int[] iArr, int[] iArr2) {
        long readBits;
        int readBits2 = (int) (readBits(bitInputStream, 4) + 4);
        int[] iArr3 = new int[19];
        for (int i = 0; i < readBits2; i++) {
            iArr3[CODE_LENGTHS_ORDER[i]] = (int) readBits(bitInputStream, 3);
        }
        BinaryTreeNode buildTree = buildTree(iArr3);
        int length = iArr.length + iArr2.length;
        int[] iArr4 = new int[length];
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            if (i4 > 0) {
                iArr4[i3] = i2;
                i4--;
                i3++;
            } else {
                int nextSymbol = nextSymbol(bitInputStream, buildTree);
                if (nextSymbol < 16) {
                    iArr4[i3] = nextSymbol;
                    i3++;
                    i2 = nextSymbol;
                } else if (nextSymbol == 16) {
                    i4 = (int) (readBits(bitInputStream, 2) + 3);
                } else {
                    if (nextSymbol == 17) {
                        readBits = readBits(bitInputStream, 3) + 3;
                    } else if (nextSymbol == 18) {
                        readBits = readBits(bitInputStream, 7) + 11;
                    }
                    i4 = (int) readBits;
                    i2 = 0;
                }
            }
        }
        System.arraycopy(iArr4, 0, iArr, 0, iArr.length);
        System.arraycopy(iArr4, iArr.length, iArr2, 0, iArr2.length);
    }

    /* loaded from: classes2.dex */
    public class BinaryTreeNode {
        public final int bits;
        public BinaryTreeNode leftNode;
        public int literal;
        public BinaryTreeNode rightNode;

        public BinaryTreeNode(int i) {
            this.literal = -1;
            this.bits = i;
        }

        public void leaf(int i) {
            this.literal = i;
            this.leftNode = null;
            this.rightNode = null;
        }

        public BinaryTreeNode left() {
            if (this.leftNode == null && this.literal == -1) {
                this.leftNode = new BinaryTreeNode(this.bits + 1);
            }
            return this.leftNode;
        }

        public BinaryTreeNode right() {
            if (this.rightNode == null && this.literal == -1) {
                this.rightNode = new BinaryTreeNode(this.bits + 1);
            }
            return this.rightNode;
        }
    }

    public static BinaryTreeNode buildTree(int[] iArr) {
        int[] codes = getCodes(iArr);
        int i = 0;
        BinaryTreeNode binaryTreeNode = new BinaryTreeNode(i);
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 != 0) {
                int i3 = i2 - 1;
                int i4 = codes[i3];
                BinaryTreeNode binaryTreeNode2 = binaryTreeNode;
                for (int i5 = i3; i5 >= 0; i5--) {
                    binaryTreeNode2 = ((1 << i5) & i4) == 0 ? binaryTreeNode2.left() : binaryTreeNode2.right();
                }
                binaryTreeNode2.leaf(i);
                codes[i3] = codes[i3] + 1;
            }
            i++;
        }
        return binaryTreeNode;
    }

    public static int[] getCodes(int[] iArr) {
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
        return iArr3;
    }

    /* loaded from: classes2.dex */
    public class DecodingMemory {
        public final int mask;
        public final byte[] memory;
        public int wHead;
        public boolean wrappedAround;

        public DecodingMemory() {
            this(16);
        }

        public DecodingMemory(int i) {
            byte[] bArr = new byte[1 << i];
            this.memory = bArr;
            this.mask = bArr.length - 1;
        }

        public byte add(byte b) {
            byte[] bArr = this.memory;
            int i = this.wHead;
            bArr[i] = b;
            this.wHead = incCounter(i);
            return b;
        }

        public void add(byte[] bArr, int i, int i2) {
            for (int i3 = i; i3 < i + i2; i3++) {
                add(bArr[i3]);
            }
        }

        public void recordToBuffer(int i, int i2, byte[] bArr) {
            if (i > this.memory.length) {
                throw new IllegalStateException("Illegal distance parameter: " + i);
            }
            int i3 = this.wHead;
            int i4 = (i3 - i) & this.mask;
            if (!this.wrappedAround && i4 >= i3) {
                throw new IllegalStateException("Attempt to read beyond memory: dist=" + i);
            }
            int i5 = 0;
            while (i5 < i2) {
                bArr[i5] = add(this.memory[i4]);
                i5++;
                i4 = incCounter(i4);
            }
        }

        public final int incCounter(int i) {
            int i2 = (i + 1) & this.mask;
            if (!this.wrappedAround && i2 < i) {
                this.wrappedAround = true;
            }
            return i2;
        }
    }

    public final long readBits(int i) {
        return readBits(this.reader, i);
    }

    public static long readBits(BitInputStream bitInputStream, int i) {
        long readBits = bitInputStream.readBits(i);
        if (readBits != -1) {
            return readBits;
        }
        throw new EOFException("Truncated Deflate64 Stream");
    }
}
