package org.apache.commons.compress.archivers.sevenz;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.LinkedList;
import java.util.zip.CRC32;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.CRC32VerifyingInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes2.dex */
public class SevenZFile implements Closeable {
    public final Archive archive;
    public SeekableByteChannel channel;
    public long compressedBytesReadFromCurrentEntry;
    public int currentEntryIndex;
    public int currentFolderIndex;
    public InputStream currentFolderInputStream;
    public final ArrayList deferredBlockStreams;
    public final String fileName;
    public byte[] password;
    public long uncompressedBytesReadFromCurrentEntry;
    public static final byte[] sevenZSignature = {55, 122, -68, -81, 39, 28};
    public static final CharsetEncoder PASSWORD_ENCODER = StandardCharsets.UTF_16LE.newEncoder();

    public static /* synthetic */ long access$014(SevenZFile sevenZFile, long j) {
        long j2 = sevenZFile.compressedBytesReadFromCurrentEntry + j;
        sevenZFile.compressedBytesReadFromCurrentEntry = j2;
        return j2;
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel) {
        this(seekableByteChannel, "unknown archive", null);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, String str, char[] cArr) {
        this(seekableByteChannel, str, utf16Decode(cArr), false);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, String str, byte[] bArr, boolean z) {
        this.currentEntryIndex = -1;
        this.currentFolderIndex = -1;
        this.currentFolderInputStream = null;
        this.deferredBlockStreams = new ArrayList();
        this.channel = seekableByteChannel;
        this.fileName = str;
        try {
            this.archive = readHeaders(bArr);
            if (bArr != null) {
                this.password = Arrays.copyOf(bArr, bArr.length);
            } else {
                this.password = null;
            }
        } catch (Throwable th) {
            if (z) {
                this.channel.close();
            }
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
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

    public SevenZArchiveEntry getNextEntry() {
        int i = this.currentEntryIndex;
        SevenZArchiveEntry[] sevenZArchiveEntryArr = this.archive.files;
        if (i >= sevenZArchiveEntryArr.length - 1) {
            return null;
        }
        int i2 = i + 1;
        this.currentEntryIndex = i2;
        SevenZArchiveEntry sevenZArchiveEntry = sevenZArchiveEntryArr[i2];
        buildDecodingStream();
        this.compressedBytesReadFromCurrentEntry = 0L;
        this.uncompressedBytesReadFromCurrentEntry = 0L;
        return sevenZArchiveEntry;
    }

    public final Archive readHeaders(byte[] bArr) {
        ByteBuffer allocate = ByteBuffer.allocate(12);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        ByteBuffer order = allocate.order(byteOrder);
        readFully(order);
        byte[] bArr2 = new byte[6];
        order.get(bArr2);
        if (!Arrays.equals(bArr2, sevenZSignature)) {
            throw new IOException("Bad 7z signature");
        }
        byte b = order.get();
        byte b2 = order.get();
        if (b != 0) {
            throw new IOException(String.format("Unsupported 7z version (%d,%d)", Byte.valueOf(b), Byte.valueOf(b2)));
        }
        StartHeader readStartHeader = readStartHeader(order.getInt() & 4294967295L);
        long j = readStartHeader.nextHeaderSize;
        int i = (int) j;
        if (i != j) {
            throw new IOException("cannot handle nextHeaderSize " + readStartHeader.nextHeaderSize);
        }
        this.channel.position(readStartHeader.nextHeaderOffset + 32);
        ByteBuffer order2 = ByteBuffer.allocate(i).order(byteOrder);
        readFully(order2);
        CRC32 crc32 = new CRC32();
        crc32.update(order2.array());
        if (readStartHeader.nextHeaderCrc != crc32.getValue()) {
            throw new IOException("NextHeader CRC mismatch");
        }
        Archive archive = new Archive();
        int unsignedByte = getUnsignedByte(order2);
        if (unsignedByte == 23) {
            order2 = readEncodedHeader(order2, archive, bArr);
            archive = new Archive();
            unsignedByte = getUnsignedByte(order2);
        }
        if (unsignedByte == 1) {
            readHeader(order2, archive);
            return archive;
        }
        throw new IOException("Broken or unsupported archive: no Header");
    }

    public final StartHeader readStartHeader(long j) {
        StartHeader startHeader = new StartHeader();
        DataInputStream dataInputStream = new DataInputStream(new CRC32VerifyingInputStream(new BoundedSeekableByteChannelInputStream(this.channel, 20L), 20L, j));
        try {
            startHeader.nextHeaderOffset = Long.reverseBytes(dataInputStream.readLong());
            startHeader.nextHeaderSize = Long.reverseBytes(dataInputStream.readLong());
            startHeader.nextHeaderCrc = Integer.reverseBytes(dataInputStream.readInt()) & 4294967295L;
            dataInputStream.close();
            return startHeader;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void readHeader(ByteBuffer byteBuffer, Archive archive) {
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 2) {
            readArchiveProperties(byteBuffer);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 3) {
            throw new IOException("Additional streams unsupported");
        }
        if (unsignedByte == 4) {
            readStreamsInfo(byteBuffer, archive);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 5) {
            readFilesInfo(byteBuffer, archive);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 0) {
            return;
        }
        throw new IOException("Badly terminated header, found " + unsignedByte);
    }

    public final void readArchiveProperties(ByteBuffer byteBuffer) {
        int unsignedByte = getUnsignedByte(byteBuffer);
        while (unsignedByte != 0) {
            byteBuffer.get(new byte[(int) readUint64(byteBuffer)]);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
    }

    public final ByteBuffer readEncodedHeader(ByteBuffer byteBuffer, Archive archive, byte[] bArr) {
        readStreamsInfo(byteBuffer, archive);
        Folder folder = archive.folders[0];
        this.channel.position(archive.packPos + 32 + 0);
        BoundedSeekableByteChannelInputStream boundedSeekableByteChannelInputStream = new BoundedSeekableByteChannelInputStream(this.channel, archive.packSizes[0]);
        InputStream inputStream = boundedSeekableByteChannelInputStream;
        for (Coder coder : folder.getOrderedCoders()) {
            if (coder.numInStreams != 1 || coder.numOutStreams != 1) {
                throw new IOException("Multi input/output stream coders are not yet supported");
            }
            inputStream = Coders.addDecoder(this.fileName, inputStream, folder.getUnpackSizeForCoder(coder), coder, bArr);
        }
        if (folder.hasCrc) {
            inputStream = new CRC32VerifyingInputStream(inputStream, folder.getUnpackSize(), folder.crc);
        }
        byte[] bArr2 = new byte[(int) folder.getUnpackSize()];
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        try {
            dataInputStream.readFully(bArr2);
            dataInputStream.close();
            return ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void readStreamsInfo(ByteBuffer byteBuffer, Archive archive) {
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 6) {
            readPackInfo(byteBuffer, archive);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 7) {
            readUnpackInfo(byteBuffer, archive);
            unsignedByte = getUnsignedByte(byteBuffer);
        } else {
            archive.folders = new Folder[0];
        }
        if (unsignedByte == 8) {
            readSubStreamsInfo(byteBuffer, archive);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte != 0) {
            throw new IOException("Badly terminated StreamsInfo");
        }
    }

    public final void readPackInfo(ByteBuffer byteBuffer, Archive archive) {
        archive.packPos = readUint64(byteBuffer);
        long readUint64 = readUint64(byteBuffer);
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 9) {
            archive.packSizes = new long[(int) readUint64];
            int i = 0;
            while (true) {
                long[] jArr = archive.packSizes;
                if (i >= jArr.length) {
                    break;
                }
                jArr[i] = readUint64(byteBuffer);
                i++;
            }
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 10) {
            int i2 = (int) readUint64;
            archive.packCrcsDefined = readAllOrBits(byteBuffer, i2);
            archive.packCrcs = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                if (archive.packCrcsDefined.get(i3)) {
                    archive.packCrcs[i3] = byteBuffer.getInt() & 4294967295L;
                }
            }
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 0) {
            return;
        }
        throw new IOException("Badly terminated PackInfo (" + unsignedByte + ")");
    }

    public final void readUnpackInfo(ByteBuffer byteBuffer, Archive archive) {
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte != 11) {
            throw new IOException("Expected kFolder, got " + unsignedByte);
        }
        int readUint64 = (int) readUint64(byteBuffer);
        Folder[] folderArr = new Folder[readUint64];
        archive.folders = folderArr;
        if (getUnsignedByte(byteBuffer) != 0) {
            throw new IOException("External unsupported");
        }
        for (int i = 0; i < readUint64; i++) {
            folderArr[i] = readFolder(byteBuffer);
        }
        int unsignedByte2 = getUnsignedByte(byteBuffer);
        if (unsignedByte2 != 12) {
            throw new IOException("Expected kCodersUnpackSize, got " + unsignedByte2);
        }
        for (int i2 = 0; i2 < readUint64; i2++) {
            Folder folder = folderArr[i2];
            folder.unpackSizes = new long[(int) folder.totalOutputStreams];
            for (int i3 = 0; i3 < folder.totalOutputStreams; i3++) {
                folder.unpackSizes[i3] = readUint64(byteBuffer);
            }
        }
        int unsignedByte3 = getUnsignedByte(byteBuffer);
        if (unsignedByte3 == 10) {
            BitSet readAllOrBits = readAllOrBits(byteBuffer, readUint64);
            for (int i4 = 0; i4 < readUint64; i4++) {
                if (readAllOrBits.get(i4)) {
                    Folder folder2 = folderArr[i4];
                    folder2.hasCrc = true;
                    folder2.crc = byteBuffer.getInt() & 4294967295L;
                } else {
                    folderArr[i4].hasCrc = false;
                }
            }
            unsignedByte3 = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte3 != 0) {
            throw new IOException("Badly terminated UnpackInfo");
        }
    }

    public final void readSubStreamsInfo(ByteBuffer byteBuffer, Archive archive) {
        for (Folder folder : archive.folders) {
            folder.numUnpackSubStreams = 1;
        }
        int length = archive.folders.length;
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 13) {
            int i = 0;
            for (Folder folder2 : archive.folders) {
                long readUint64 = readUint64(byteBuffer);
                folder2.numUnpackSubStreams = (int) readUint64;
                i = (int) (i + readUint64);
            }
            unsignedByte = getUnsignedByte(byteBuffer);
            length = i;
        }
        SubStreamsInfo subStreamsInfo = new SubStreamsInfo();
        subStreamsInfo.unpackSizes = new long[length];
        subStreamsInfo.hasCrc = new BitSet(length);
        subStreamsInfo.crcs = new long[length];
        int i2 = 0;
        for (Folder folder3 : archive.folders) {
            if (folder3.numUnpackSubStreams != 0) {
                long j = 0;
                if (unsignedByte == 9) {
                    int i3 = 0;
                    while (i3 < folder3.numUnpackSubStreams - 1) {
                        long readUint642 = readUint64(byteBuffer);
                        subStreamsInfo.unpackSizes[i2] = readUint642;
                        j += readUint642;
                        i3++;
                        i2++;
                    }
                }
                subStreamsInfo.unpackSizes[i2] = folder3.getUnpackSize() - j;
                i2++;
            }
        }
        if (unsignedByte == 9) {
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        int i4 = 0;
        for (Folder folder4 : archive.folders) {
            int i5 = folder4.numUnpackSubStreams;
            if (i5 != 1 || !folder4.hasCrc) {
                i4 += i5;
            }
        }
        if (unsignedByte == 10) {
            BitSet readAllOrBits = readAllOrBits(byteBuffer, i4);
            long[] jArr = new long[i4];
            for (int i6 = 0; i6 < i4; i6++) {
                if (readAllOrBits.get(i6)) {
                    jArr[i6] = byteBuffer.getInt() & 4294967295L;
                }
            }
            int i7 = 0;
            int i8 = 0;
            for (Folder folder5 : archive.folders) {
                if (folder5.numUnpackSubStreams == 1 && folder5.hasCrc) {
                    subStreamsInfo.hasCrc.set(i7, true);
                    subStreamsInfo.crcs[i7] = folder5.crc;
                    i7++;
                } else {
                    for (int i9 = 0; i9 < folder5.numUnpackSubStreams; i9++) {
                        subStreamsInfo.hasCrc.set(i7, readAllOrBits.get(i8));
                        subStreamsInfo.crcs[i7] = jArr[i8];
                        i7++;
                        i8++;
                    }
                }
            }
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte != 0) {
            throw new IOException("Badly terminated SubStreamsInfo");
        }
        archive.subStreamsInfo = subStreamsInfo;
    }

    public final Folder readFolder(ByteBuffer byteBuffer) {
        int i;
        Folder folder = new Folder();
        int readUint64 = (int) readUint64(byteBuffer);
        Coder[] coderArr = new Coder[readUint64];
        long j = 0;
        long j2 = 0;
        for (int i2 = 0; i2 < readUint64; i2++) {
            coderArr[i2] = new Coder();
            int unsignedByte = getUnsignedByte(byteBuffer);
            int i3 = unsignedByte & 15;
            boolean z = (unsignedByte & 16) == 0;
            boolean z2 = (unsignedByte & 32) != 0;
            boolean z3 = (unsignedByte & 128) != 0;
            byte[] bArr = new byte[i3];
            coderArr[i2].decompressionMethodId = bArr;
            byteBuffer.get(bArr);
            if (z) {
                Coder coder = coderArr[i2];
                coder.numInStreams = 1L;
                coder.numOutStreams = 1L;
            } else {
                coderArr[i2].numInStreams = readUint64(byteBuffer);
                coderArr[i2].numOutStreams = readUint64(byteBuffer);
            }
            Coder coder2 = coderArr[i2];
            j += coder2.numInStreams;
            j2 += coder2.numOutStreams;
            if (z2) {
                byte[] bArr2 = new byte[(int) readUint64(byteBuffer)];
                coderArr[i2].properties = bArr2;
                byteBuffer.get(bArr2);
            }
            if (z3) {
                throw new IOException("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
            }
        }
        folder.coders = coderArr;
        folder.totalInputStreams = j;
        folder.totalOutputStreams = j2;
        if (j2 == 0) {
            throw new IOException("Total output streams can't be 0");
        }
        long j3 = j2 - 1;
        int i4 = (int) j3;
        BindPair[] bindPairArr = new BindPair[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            BindPair bindPair = new BindPair();
            bindPairArr[i5] = bindPair;
            bindPair.inIndex = readUint64(byteBuffer);
            bindPairArr[i5].outIndex = readUint64(byteBuffer);
        }
        folder.bindPairs = bindPairArr;
        if (j < j3) {
            throw new IOException("Total input streams can't be less than the number of bind pairs");
        }
        long j4 = j - j3;
        int i6 = (int) j4;
        long[] jArr = new long[i6];
        if (j4 == 1) {
            int i7 = 0;
            while (true) {
                i = (int) j;
                if (i7 >= i || folder.findBindPairForInStream(i7) < 0) {
                    break;
                }
                i7++;
            }
            if (i7 == i) {
                throw new IOException("Couldn't find stream's bind pair index");
            }
            jArr[0] = i7;
        } else {
            for (int i8 = 0; i8 < i6; i8++) {
                jArr[i8] = readUint64(byteBuffer);
            }
        }
        folder.packedStreams = jArr;
        return folder;
    }

    public final BitSet readAllOrBits(ByteBuffer byteBuffer, int i) {
        if (getUnsignedByte(byteBuffer) != 0) {
            BitSet bitSet = new BitSet(i);
            for (int i2 = 0; i2 < i; i2++) {
                bitSet.set(i2, true);
            }
            return bitSet;
        }
        return readBits(byteBuffer, i);
    }

    public final BitSet readBits(ByteBuffer byteBuffer, int i) {
        BitSet bitSet = new BitSet(i);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            if (i2 == 0) {
                i3 = getUnsignedByte(byteBuffer);
                i2 = 128;
            }
            bitSet.set(i4, (i3 & i2) != 0);
            i2 >>>= 1;
        }
        return bitSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e0, code lost:
    
        throw new java.io.IOException("Error parsing file names");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readFilesInfo(java.nio.ByteBuffer r17, org.apache.commons.compress.archivers.sevenz.Archive r18) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.sevenz.SevenZFile.readFilesInfo(java.nio.ByteBuffer, org.apache.commons.compress.archivers.sevenz.Archive):void");
    }

    public final void calculateStreamMap(Archive archive) {
        Folder[] folderArr;
        StreamMap streamMap = new StreamMap();
        Folder[] folderArr2 = archive.folders;
        int length = folderArr2 != null ? folderArr2.length : 0;
        streamMap.folderFirstPackStreamIndex = new int[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            streamMap.folderFirstPackStreamIndex[i2] = i;
            i += archive.folders[i2].packedStreams.length;
        }
        long[] jArr = archive.packSizes;
        int length2 = jArr != null ? jArr.length : 0;
        streamMap.packStreamOffsets = new long[length2];
        long j = 0;
        for (int i3 = 0; i3 < length2; i3++) {
            streamMap.packStreamOffsets[i3] = j;
            j += archive.packSizes[i3];
        }
        streamMap.folderFirstFileIndex = new int[length];
        streamMap.fileFolderIndex = new int[archive.files.length];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            SevenZArchiveEntry[] sevenZArchiveEntryArr = archive.files;
            if (i4 < sevenZArchiveEntryArr.length) {
                if (!sevenZArchiveEntryArr[i4].hasStream() && i5 == 0) {
                    streamMap.fileFolderIndex[i4] = -1;
                } else {
                    if (i5 == 0) {
                        while (true) {
                            folderArr = archive.folders;
                            if (i6 >= folderArr.length) {
                                break;
                            }
                            streamMap.folderFirstFileIndex[i6] = i4;
                            if (folderArr[i6].numUnpackSubStreams > 0) {
                                break;
                            } else {
                                i6++;
                            }
                        }
                        if (i6 >= folderArr.length) {
                            throw new IOException("Too few folders in archive");
                        }
                    }
                    streamMap.fileFolderIndex[i4] = i6;
                    if (archive.files[i4].hasStream() && (i5 = i5 + 1) >= archive.folders[i6].numUnpackSubStreams) {
                        i6++;
                        i5 = 0;
                    }
                }
                i4++;
            } else {
                archive.streamMap = streamMap;
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [org.apache.commons.compress.utils.CRC32VerifyingInputStream] */
    public final void buildDecodingStream() {
        Archive archive = this.archive;
        int[] iArr = archive.streamMap.fileFolderIndex;
        int i = this.currentEntryIndex;
        int i2 = iArr[i];
        if (i2 < 0) {
            this.deferredBlockStreams.clear();
            return;
        }
        SevenZArchiveEntry[] sevenZArchiveEntryArr = archive.files;
        SevenZArchiveEntry sevenZArchiveEntry = sevenZArchiveEntryArr[i];
        if (this.currentFolderIndex == i2) {
            sevenZArchiveEntry.setContentMethods(sevenZArchiveEntryArr[i - 1].getContentMethods());
        } else {
            this.currentFolderIndex = i2;
            this.deferredBlockStreams.clear();
            InputStream inputStream = this.currentFolderInputStream;
            if (inputStream != null) {
                inputStream.close();
                this.currentFolderInputStream = null;
            }
            Archive archive2 = this.archive;
            Folder folder = archive2.folders[i2];
            StreamMap streamMap = archive2.streamMap;
            int i3 = streamMap.folderFirstPackStreamIndex[i2];
            this.currentFolderInputStream = buildDecoderStack(folder, archive2.packPos + 32 + streamMap.packStreamOffsets[i3], i3, sevenZArchiveEntry);
        }
        BoundedInputStream boundedInputStream = new BoundedInputStream(this.currentFolderInputStream, sevenZArchiveEntry.getSize());
        if (sevenZArchiveEntry.getHasCrc()) {
            boundedInputStream = new CRC32VerifyingInputStream(boundedInputStream, sevenZArchiveEntry.getSize(), sevenZArchiveEntry.getCrcValue());
        }
        this.deferredBlockStreams.add(boundedInputStream);
    }

    public final InputStream buildDecoderStack(Folder folder, long j, int i, SevenZArchiveEntry sevenZArchiveEntry) {
        this.channel.position(j);
        FilterInputStream filterInputStream = new FilterInputStream(new BufferedInputStream(new BoundedSeekableByteChannelInputStream(this.channel, this.archive.packSizes[i]))) { // from class: org.apache.commons.compress.archivers.sevenz.SevenZFile.1
            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() {
                int read = ((FilterInputStream) this).in.read();
                if (read >= 0) {
                    count(1);
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr) {
                return read(bArr, 0, bArr.length);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i2, int i3) {
                int read = ((FilterInputStream) this).in.read(bArr, i2, i3);
                if (read >= 0) {
                    count(read);
                }
                return read;
            }

            public final void count(int i2) {
                SevenZFile.access$014(SevenZFile.this, i2);
            }
        };
        LinkedList linkedList = new LinkedList();
        InputStream inputStream = filterInputStream;
        for (Coder coder : folder.getOrderedCoders()) {
            if (coder.numInStreams != 1 || coder.numOutStreams != 1) {
                throw new IOException("Multi input/output stream coders are not yet supported");
            }
            SevenZMethod byId = SevenZMethod.byId(coder.decompressionMethodId);
            inputStream = Coders.addDecoder(this.fileName, inputStream, folder.getUnpackSizeForCoder(coder), coder, this.password);
            linkedList.addFirst(new SevenZMethodConfiguration(byId, Coders.findByMethod(byId).getOptionsFromCoder(coder, inputStream)));
        }
        sevenZArchiveEntry.setContentMethods(linkedList);
        return folder.hasCrc ? new CRC32VerifyingInputStream(inputStream, folder.getUnpackSize(), folder.crc) : inputStream;
    }

    public final InputStream getCurrentStream() {
        if (this.archive.files[this.currentEntryIndex].getSize() == 0) {
            return new ByteArrayInputStream(new byte[0]);
        }
        if (this.deferredBlockStreams.isEmpty()) {
            throw new IllegalStateException("No current 7z entry (call getNextEntry() first).");
        }
        while (this.deferredBlockStreams.size() > 1) {
            InputStream inputStream = (InputStream) this.deferredBlockStreams.remove(0);
            try {
                IOUtils.skip(inputStream, Long.MAX_VALUE);
                if (inputStream != null) {
                    inputStream.close();
                }
                this.compressedBytesReadFromCurrentEntry = 0L;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        return (InputStream) this.deferredBlockStreams.get(0);
    }

    public int read(byte[] bArr, int i, int i2) {
        int read = getCurrentStream().read(bArr, i, i2);
        if (read > 0) {
            this.uncompressedBytesReadFromCurrentEntry += read;
        }
        return read;
    }

    public static long readUint64(ByteBuffer byteBuffer) {
        long unsignedByte = getUnsignedByte(byteBuffer);
        int i = 128;
        long j = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            if ((i & unsignedByte) == 0) {
                return ((unsignedByte & (i - 1)) << (i2 * 8)) | j;
            }
            j |= getUnsignedByte(byteBuffer) << (i2 * 8);
            i >>>= 1;
        }
        return j;
    }

    public static int getUnsignedByte(ByteBuffer byteBuffer) {
        return byteBuffer.get() & 255;
    }

    public static long skipBytesFully(ByteBuffer byteBuffer, long j) {
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

    public final void readFully(ByteBuffer byteBuffer) {
        byteBuffer.rewind();
        IOUtils.readFully(this.channel, byteBuffer);
        byteBuffer.flip();
    }

    public String toString() {
        return this.archive.toString();
    }

    public static byte[] utf16Decode(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        ByteBuffer encode = PASSWORD_ENCODER.encode(CharBuffer.wrap(cArr));
        if (encode.hasArray()) {
            return encode.array();
        }
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }
}
