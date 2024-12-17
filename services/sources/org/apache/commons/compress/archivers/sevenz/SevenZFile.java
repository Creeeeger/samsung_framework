package org.apache.commons.compress.archivers.sevenz;

import android.frameworks.vibrator.VibrationParam$1$$ExternalSyntheticOutline0;
import com.android.server.BinaryTransparencyService$$ExternalSyntheticOutline0;
import com.att.iqi.lib.metrics.hw.HwConstants;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.LinkedList;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.CRC32VerifyingInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class SevenZFile implements Closeable {
    public static final byte[] sevenZSignature = {55, 122, -68, -81, 39, 28};
    public final Archive archive;
    public SeekableByteChannel channel;
    public int currentEntryIndex = -1;
    public int currentFolderIndex = -1;
    public InputStream currentFolderInputStream = null;
    public final ArrayList deferredBlockStreams = new ArrayList();
    public final String fileName = "unknown archive";
    public byte[] password;

    static {
        StandardCharsets.UTF_16LE.newEncoder();
    }

    /* JADX WARN: Code restructure failed: missing block: B:175:0x03f7, code lost:
    
        throw new java.io.IOException("Error parsing file names");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SevenZFile(org.apache.commons.compress.utils.SeekableInMemoryByteChannel r23) {
        /*
            Method dump skipped, instructions count: 1218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.sevenz.SevenZFile.<init>(org.apache.commons.compress.utils.SeekableInMemoryByteChannel):void");
    }

    public static BitSet readAllOrBits(ByteBuffer byteBuffer, int i) {
        if ((byteBuffer.get() & 255) == 0) {
            return readBits(byteBuffer, i);
        }
        BitSet bitSet = new BitSet(i);
        for (int i2 = 0; i2 < i; i2++) {
            bitSet.set(i2, true);
        }
        return bitSet;
    }

    public static BitSet readBits(ByteBuffer byteBuffer, int i) {
        BitSet bitSet = new BitSet(i);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            if (i2 == 0) {
                i3 = byteBuffer.get() & 255;
                i2 = 128;
            }
            bitSet.set(i4, (i3 & i2) != 0);
            i2 >>>= 1;
        }
        return bitSet;
    }

    public static void readStreamsInfo(ByteBuffer byteBuffer, Archive archive) {
        int i;
        Archive archive2;
        long j;
        int i2;
        int i3 = byteBuffer.get() & 255;
        if (i3 == 6) {
            archive.packPos = readUint64(byteBuffer);
            long readUint64 = readUint64(byteBuffer);
            int i4 = byteBuffer.get() & 255;
            if (i4 == 9) {
                archive.packSizes = new long[(int) readUint64];
                int i5 = 0;
                while (true) {
                    long[] jArr = archive.packSizes;
                    if (i5 >= jArr.length) {
                        break;
                    }
                    jArr[i5] = readUint64(byteBuffer);
                    i5++;
                }
                i4 = byteBuffer.get() & 255;
            }
            if (i4 == 10) {
                int i6 = (int) readUint64;
                archive.packCrcsDefined = readAllOrBits(byteBuffer, i6);
                archive.packCrcs = new long[i6];
                for (int i7 = 0; i7 < i6; i7++) {
                    if (archive.packCrcsDefined.get(i7)) {
                        archive.packCrcs[i7] = byteBuffer.getInt() & 4294967295L;
                    }
                }
                i4 = byteBuffer.get() & 255;
            }
            if (i4 != 0) {
                throw new IOException(BinaryTransparencyService$$ExternalSyntheticOutline0.m(i4, "Badly terminated PackInfo (", ")"));
            }
            i3 = byteBuffer.get() & 255;
        }
        if (i3 == 7) {
            int i8 = byteBuffer.get() & 255;
            if (i8 != 11) {
                throw new IOException(VibrationParam$1$$ExternalSyntheticOutline0.m(i8, "Expected kFolder, got "));
            }
            int readUint642 = (int) readUint64(byteBuffer);
            Folder[] folderArr = new Folder[readUint642];
            archive.folders = folderArr;
            if ((byteBuffer.get() & 255) != 0) {
                throw new IOException("External unsupported");
            }
            for (int i9 = 0; i9 < readUint642; i9++) {
                Folder folder = new Folder();
                int readUint643 = (int) readUint64(byteBuffer);
                Coder[] coderArr = new Coder[readUint643];
                int i10 = 0;
                long j2 = 0;
                long j3 = 0;
                while (i10 < readUint643) {
                    Coder coder = new Coder();
                    coder.properties = null;
                    coderArr[i10] = coder;
                    byte b = byteBuffer.get();
                    int i11 = b & 15;
                    boolean z = (b & HwConstants.IQ_CONFIG_POS_NETWORK_ENABLED) == 0;
                    boolean z2 = (b & HwConstants.IQ_CONFIG_POS_WIFI_ENABLED) != 0;
                    int i12 = readUint643;
                    boolean z3 = (b & 128) != 0;
                    byte[] bArr = new byte[i11];
                    coderArr[i10].decompressionMethodId = bArr;
                    byteBuffer.get(bArr);
                    if (z) {
                        Coder coder2 = coderArr[i10];
                        coder2.numInStreams = 1L;
                        coder2.numOutStreams = 1L;
                        readUint642 = readUint642;
                    } else {
                        coderArr[i10].numInStreams = readUint64(byteBuffer);
                        coderArr[i10].numOutStreams = readUint64(byteBuffer);
                    }
                    Coder coder3 = coderArr[i10];
                    j2 += coder3.numInStreams;
                    j3 += coder3.numOutStreams;
                    if (z2) {
                        byte[] bArr2 = new byte[(int) readUint64(byteBuffer)];
                        coderArr[i10].properties = bArr2;
                        byteBuffer.get(bArr2);
                    }
                    if (z3) {
                        throw new IOException("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
                    }
                    i10++;
                    readUint643 = i12;
                }
                folder.coders = coderArr;
                folder.totalInputStreams = j2;
                folder.totalOutputStreams = j3;
                if (j3 == 0) {
                    throw new IOException("Total output streams can't be 0");
                }
                long j4 = j3 - 1;
                int i13 = (int) j4;
                BindPair[] bindPairArr = new BindPair[i13];
                for (int i14 = 0; i14 < i13; i14++) {
                    BindPair bindPair = new BindPair();
                    bindPairArr[i14] = bindPair;
                    bindPair.inIndex = readUint64(byteBuffer);
                    bindPairArr[i14].outIndex = readUint64(byteBuffer);
                }
                folder.bindPairs = bindPairArr;
                if (j2 < j4) {
                    throw new IOException("Total input streams can't be less than the number of bind pairs");
                }
                long j5 = j2 - j4;
                int i15 = (int) j5;
                long[] jArr2 = new long[i15];
                if (j5 == 1) {
                    int i16 = 0;
                    while (true) {
                        i2 = (int) j2;
                        if (i16 >= i2) {
                            break;
                        }
                        int i17 = 0;
                        while (true) {
                            BindPair[] bindPairArr2 = folder.bindPairs;
                            if (i17 >= bindPairArr2.length) {
                                i17 = -1;
                                break;
                            } else if (bindPairArr2[i17].inIndex == i16) {
                                break;
                            } else {
                                i17++;
                            }
                        }
                        if (i17 < 0) {
                            break;
                        } else {
                            i16++;
                        }
                    }
                    if (i16 == i2) {
                        throw new IOException("Couldn't find stream's bind pair index");
                    }
                    jArr2[0] = i16;
                } else {
                    for (int i18 = 0; i18 < i15; i18++) {
                        jArr2[i18] = readUint64(byteBuffer);
                    }
                }
                folder.packedStreams = jArr2;
                folderArr[i9] = folder;
            }
            int i19 = byteBuffer.get() & 255;
            if (i19 != 12) {
                throw new IOException(VibrationParam$1$$ExternalSyntheticOutline0.m(i19, "Expected kCodersUnpackSize, got "));
            }
            for (int i20 = 0; i20 < readUint642; i20++) {
                Folder folder2 = folderArr[i20];
                folder2.unpackSizes = new long[(int) folder2.totalOutputStreams];
                for (int i21 = 0; i21 < folder2.totalOutputStreams; i21++) {
                    folder2.unpackSizes[i21] = readUint64(byteBuffer);
                }
            }
            int i22 = byteBuffer.get() & 255;
            if (i22 == 10) {
                BitSet readAllOrBits = readAllOrBits(byteBuffer, readUint642);
                for (int i23 = 0; i23 < readUint642; i23++) {
                    if (readAllOrBits.get(i23)) {
                        Folder folder3 = folderArr[i23];
                        folder3.hasCrc = true;
                        folder3.crc = byteBuffer.getInt() & 4294967295L;
                    } else {
                        folderArr[i23].hasCrc = false;
                    }
                }
                i22 = byteBuffer.get() & 255;
            }
            if (i22 != 0) {
                throw new IOException("Badly terminated UnpackInfo");
            }
            i3 = byteBuffer.get() & 255;
            archive2 = archive;
            i = 0;
        } else {
            i = 0;
            archive2 = archive;
            archive2.folders = new Folder[0];
        }
        if (i3 == 8) {
            Folder[] folderArr2 = archive2.folders;
            int length = folderArr2.length;
            for (int i24 = i; i24 < length; i24++) {
                folderArr2[i24].numUnpackSubStreams = 1;
            }
            int length2 = archive2.folders.length;
            int i25 = byteBuffer.get() & 255;
            if (i25 == 13) {
                Folder[] folderArr3 = archive2.folders;
                int length3 = folderArr3.length;
                int i26 = i;
                int i27 = i26;
                while (i26 < length3) {
                    Folder folder4 = folderArr3[i26];
                    long readUint644 = readUint64(byteBuffer);
                    folder4.numUnpackSubStreams = (int) readUint644;
                    i27 = (int) (i27 + readUint644);
                    i26++;
                }
                i25 = byteBuffer.get() & 255;
                length2 = i27;
            }
            SubStreamsInfo subStreamsInfo = new SubStreamsInfo();
            subStreamsInfo.unpackSizes = new long[length2];
            subStreamsInfo.hasCrc = new BitSet(length2);
            subStreamsInfo.crcs = new long[length2];
            Folder[] folderArr4 = archive2.folders;
            int length4 = folderArr4.length;
            int i28 = i;
            int i29 = i28;
            while (i28 < length4) {
                Folder folder5 = folderArr4[i28];
                if (folder5.numUnpackSubStreams != 0) {
                    if (i25 == 9) {
                        int i30 = i29;
                        j = 0;
                        int i31 = i;
                        while (i31 < folder5.numUnpackSubStreams - 1) {
                            long readUint645 = readUint64(byteBuffer);
                            subStreamsInfo.unpackSizes[i30] = readUint645;
                            j += readUint645;
                            i31++;
                            i30++;
                        }
                        i29 = i30;
                    } else {
                        j = 0;
                    }
                    subStreamsInfo.unpackSizes[i29] = folder5.getUnpackSize() - j;
                    i29++;
                }
                i28++;
            }
            if (i25 == 9) {
                i25 = byteBuffer.get() & 255;
            }
            Folder[] folderArr5 = archive2.folders;
            int length5 = folderArr5.length;
            int i32 = i;
            int i33 = i32;
            while (i32 < length5) {
                Folder folder6 = folderArr5[i32];
                int i34 = folder6.numUnpackSubStreams;
                if (i34 != 1 || !folder6.hasCrc) {
                    i33 += i34;
                }
                i32++;
            }
            if (i25 == 10) {
                BitSet readAllOrBits2 = readAllOrBits(byteBuffer, i33);
                long[] jArr3 = new long[i33];
                for (int i35 = i; i35 < i33; i35++) {
                    if (readAllOrBits2.get(i35)) {
                        jArr3[i35] = byteBuffer.getInt() & 4294967295L;
                    }
                }
                Folder[] folderArr6 = archive2.folders;
                int length6 = folderArr6.length;
                int i36 = i;
                int i37 = i36;
                int i38 = i37;
                while (i36 < length6) {
                    Folder folder7 = folderArr6[i36];
                    if (folder7.numUnpackSubStreams == 1 && folder7.hasCrc) {
                        subStreamsInfo.hasCrc.set(i37, true);
                        subStreamsInfo.crcs[i37] = folder7.crc;
                        i37++;
                    } else {
                        int i39 = i38;
                        int i40 = i37;
                        for (int i41 = i; i41 < folder7.numUnpackSubStreams; i41++) {
                            subStreamsInfo.hasCrc.set(i40, readAllOrBits2.get(i39));
                            subStreamsInfo.crcs[i40] = jArr3[i39];
                            i40++;
                            i39++;
                        }
                        i37 = i40;
                        i38 = i39;
                    }
                    i36++;
                }
                i25 = byteBuffer.get() & 255;
            }
            if (i25 != 0) {
                throw new IOException("Badly terminated SubStreamsInfo");
            }
            archive2.subStreamsInfo = subStreamsInfo;
            i3 = byteBuffer.get() & 255;
        }
        if (i3 != 0) {
            throw new IOException("Badly terminated StreamsInfo");
        }
    }

    public static long readUint64(ByteBuffer byteBuffer) {
        long j = byteBuffer.get() & 255;
        int i = 128;
        long j2 = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            if ((i & j) == 0) {
                return ((j & (i - 1)) << (i2 * 8)) | j2;
            }
            j2 |= (byteBuffer.get() & 255) << (i2 * 8);
            i >>>= 1;
        }
        return j2;
    }

    public static long skipBytesFully(long j, ByteBuffer byteBuffer) {
        if (j < 1) {
            return 0L;
        }
        int position = byteBuffer.position();
        long remaining = byteBuffer.remaining();
        if (remaining < j) {
            j = remaining;
        }
        byteBuffer.position(position + ((int) j));
        return j;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SeekableByteChannel seekableByteChannel = this.channel;
        if (seekableByteChannel != null) {
            try {
                seekableByteChannel.close();
            } finally {
                this.channel = null;
                byte[] bArr = this.password;
                if (bArr != null) {
                    Arrays.fill(bArr, (byte) 0);
                }
                this.password = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [org.apache.commons.compress.utils.CRC32VerifyingInputStream] */
    public final SevenZArchiveEntry getNextEntry() {
        long j;
        int i = this.currentEntryIndex;
        Archive archive = this.archive;
        SevenZArchiveEntry[] sevenZArchiveEntryArr = archive.files;
        if (i >= sevenZArchiveEntryArr.length - 1) {
            return null;
        }
        int i2 = i + 1;
        this.currentEntryIndex = i2;
        SevenZArchiveEntry sevenZArchiveEntry = sevenZArchiveEntryArr[i2];
        int i3 = archive.streamMap.fileFolderIndex[i2];
        if (i3 < 0) {
            this.deferredBlockStreams.clear();
        } else {
            if (this.currentFolderIndex == i3) {
                sevenZArchiveEntry.setContentMethods(sevenZArchiveEntryArr[i].contentMethods);
            } else {
                this.currentFolderIndex = i3;
                this.deferredBlockStreams.clear();
                InputStream inputStream = this.currentFolderInputStream;
                if (inputStream != null) {
                    inputStream.close();
                    this.currentFolderInputStream = null;
                }
                Archive archive2 = this.archive;
                Folder folder = archive2.folders[i3];
                StreamMap streamMap = archive2.streamMap;
                int i4 = streamMap.folderFirstPackStreamIndex[i3];
                this.channel.position(archive2.packPos + 32 + streamMap.packStreamOffsets[i4]);
                FilterInputStream filterInputStream = new FilterInputStream(new BufferedInputStream(new BoundedSeekableByteChannelInputStream(this.channel, this.archive.packSizes[i4]))) { // from class: org.apache.commons.compress.archivers.sevenz.SevenZFile.1
                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public final int read() {
                        int read = ((FilterInputStream) this).in.read();
                        if (read >= 0) {
                            SevenZFile.this.getClass();
                        }
                        return read;
                    }

                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public final int read(byte[] bArr) {
                        return read(bArr, 0, bArr.length);
                    }

                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public final int read(byte[] bArr, int i5, int i6) {
                        int read = ((FilterInputStream) this).in.read(bArr, i5, i6);
                        if (read >= 0) {
                            SevenZFile.this.getClass();
                        }
                        return read;
                    }
                };
                LinkedList linkedList = new LinkedList();
                InputStream inputStream2 = filterInputStream;
                for (Coder coder : folder.getOrderedCoders()) {
                    if (coder.numInStreams != 1 || coder.numOutStreams != 1) {
                        throw new IOException("Multi input/output stream coders are not yet supported");
                    }
                    SevenZMethod byId = SevenZMethod.byId(coder.decompressionMethodId);
                    String str = this.fileName;
                    if (folder.coders != null) {
                        int i5 = 0;
                        while (true) {
                            Coder[] coderArr = folder.coders;
                            if (i5 >= coderArr.length) {
                                break;
                            }
                            if (coderArr[i5] == coder) {
                                j = folder.unpackSizes[i5];
                                break;
                            }
                            i5++;
                        }
                        inputStream2 = Coders.addDecoder(str, inputStream2, j, coder, this.password);
                        linkedList.addFirst(new SevenZMethodConfiguration(byId, ((CoderBase) ((HashMap) Coders.CODER_MAP).get(byId)).getOptionsFromCoder(coder)));
                    }
                    j = 0;
                    inputStream2 = Coders.addDecoder(str, inputStream2, j, coder, this.password);
                    linkedList.addFirst(new SevenZMethodConfiguration(byId, ((CoderBase) ((HashMap) Coders.CODER_MAP).get(byId)).getOptionsFromCoder(coder)));
                }
                sevenZArchiveEntry.setContentMethods(linkedList);
                if (folder.hasCrc) {
                    inputStream2 = new CRC32VerifyingInputStream(inputStream2, folder.getUnpackSize(), folder.crc);
                }
                this.currentFolderInputStream = inputStream2;
            }
            BoundedInputStream boundedInputStream = new BoundedInputStream(this.currentFolderInputStream, sevenZArchiveEntry.size);
            if (sevenZArchiveEntry.hasCrc) {
                boundedInputStream = new CRC32VerifyingInputStream(boundedInputStream, sevenZArchiveEntry.size, sevenZArchiveEntry.crc);
            }
            this.deferredBlockStreams.add(boundedInputStream);
        }
        return sevenZArchiveEntry;
    }

    public final int read(int i, byte[] bArr) {
        InputStream inputStream;
        if (this.archive.files[this.currentEntryIndex].size == 0) {
            inputStream = new ByteArrayInputStream(new byte[0]);
        } else {
            if (this.deferredBlockStreams.isEmpty()) {
                throw new IllegalStateException("No current 7z entry (call getNextEntry() first).");
            }
            while (this.deferredBlockStreams.size() > 1) {
                InputStream inputStream2 = (InputStream) this.deferredBlockStreams.remove(0);
                long j = Long.MAX_VALUE;
                while (j > 0) {
                    try {
                        long skip = inputStream2.skip(j);
                        if (skip == 0) {
                            break;
                        }
                        j -= skip;
                    } finally {
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                    }
                }
                while (j > 0) {
                    byte[] bArr2 = IOUtils.SKIP_BUF;
                    int min = (int) Math.min(j, 4096L);
                    if (min < 0 || min > 4096) {
                        throw new IndexOutOfBoundsException();
                    }
                    int i2 = 0;
                    while (i2 != min) {
                        int read = inputStream2.read(bArr2, i2, min - i2);
                        if (read == -1) {
                            break;
                        }
                        i2 += read;
                    }
                    if (i2 >= 1) {
                        j -= i2;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
            }
            inputStream = (InputStream) this.deferredBlockStreams.get(0);
        }
        return inputStream.read(bArr, 0, i);
    }

    public final void readFully(ByteBuffer byteBuffer) {
        byteBuffer.rewind();
        SeekableByteChannel seekableByteChannel = this.channel;
        int remaining = byteBuffer.remaining();
        int i = 0;
        while (i < remaining) {
            int read = seekableByteChannel.read(byteBuffer);
            if (read <= 0) {
                break;
            } else {
                i += read;
            }
        }
        if (i < remaining) {
            throw new EOFException();
        }
        byteBuffer.flip();
    }

    public final String toString() {
        return this.archive.toString();
    }
}
