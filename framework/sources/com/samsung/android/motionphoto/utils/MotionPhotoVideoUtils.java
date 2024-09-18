package com.samsung.android.motionphoto.utils;

import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.util.Log;
import android.util.Pair;
import com.samsung.android.media.SemExtendedFormat;
import com.samsung.android.motionphoto.utils.HEIFParser;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class MotionPhotoVideoUtils {
    private static final int JPEG_LENGTH_SIZE = 2;
    private static final int JPEG_MARKER_SIZE = 2;
    private static final String MOTION_PHOTO_V2_SIGNATURE = "mpv2";
    private static final int MOTION_PHOTO_V2_SIGNATURE_SIZE = 4;
    public static final int SEF_DATA_MOTION_PHOTO = 2608;
    private static final String TAG = "MotionPhotoVideoUtils";
    private static final int XMP_RESERVED_SIZE = 1280;
    private static boolean isJpeg;
    private static long xmpPosition;

    public MotionPhotoVideoUtils() {
        Log.i(TAG, TAG);
        isJpeg = false;
        xmpPosition = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f A[Catch: Exception -> 0x00a8, TryCatch #4 {Exception -> 0x00a8, blocks: (B:3:0x0009, B:5:0x0011, B:15:0x0073, B:35:0x009f, B:37:0x00a4, B:38:0x00a7, B:24:0x008f, B:26:0x0094), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a4 A[Catch: Exception -> 0x00a8, TryCatch #4 {Exception -> 0x00a8, blocks: (B:3:0x0009, B:5:0x0011, B:15:0x0073, B:35:0x009f, B:37:0x00a4, B:38:0x00a7, B:24:0x008f, B:26:0x0094), top: B:2:0x0009 }] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean saveVideo(java.io.File r12, java.io.File r13) {
        /*
            r11 = this;
            java.lang.String r0 = "MotionPhotoVideoUtils"
            java.lang.String r1 = "saveVideo"
            android.util.Log.i(r0, r1)
            r1 = 0
            java.lang.String r2 = "MotionPhoto_Data"
            com.samsung.android.motionphoto.utils.MotionPhotoVideoUtils$MotionPhotoInfo r2 = r11.getSEFDataPosition(r12, r2)     // Catch: java.lang.Exception -> La8
            if (r2 == 0) goto Lac
            long r3 = r2.getOffset()     // Catch: java.lang.Exception -> La8
            long r5 = r2.getLength()     // Catch: java.lang.Exception -> La8
            r2 = 0
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L85 java.io.IOException -> L88
            r7.<init>(r12)     // Catch: java.lang.Throwable -> L85 java.io.IOException -> L88
            java.nio.channels.FileChannel r12 = r7.getChannel()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            long r8 = r12.size()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            r12.<init>()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.lang.String r10 = "size = "
            java.lang.StringBuilder r12 = r12.append(r10)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.lang.StringBuilder r12 = r12.append(r8)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            android.util.Log.d(r0, r12)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.nio.channels.FileChannel r12 = r7.getChannel()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            r12.position(r3)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            int r12 = (int) r5     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            byte[] r3 = new byte[r12]     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            int r12 = r7.read(r3, r1, r12)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            r4.<init>()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.lang.String r5 = "mv data size : "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.lang.StringBuilder r4 = r4.append(r12)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            android.util.Log.i(r0, r4)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            r0.<init>(r13)     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L81
            r0.write(r3, r1, r12)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7d
            java.nio.channels.FileChannel r13 = r0.getChannel()     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7d
            long r2 = (long) r12     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7d
            r13.truncate(r2)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7d
            r7.close()     // Catch: java.lang.Exception -> La8
            r0.close()     // Catch: java.lang.Exception -> La8
            r1 = 1
            goto Lac
        L7b:
            r12 = move-exception
            goto L9a
        L7d:
            r12 = move-exception
            goto L83
        L7f:
            r12 = move-exception
            goto L9b
        L81:
            r12 = move-exception
            r0 = r2
        L83:
            r2 = r7
            goto L8a
        L85:
            r12 = move-exception
            r13 = r2
            goto L9d
        L88:
            r12 = move-exception
            r0 = r2
        L8a:
            r12.printStackTrace()     // Catch: java.lang.Throwable -> L98
            if (r2 == 0) goto L92
            r2.close()     // Catch: java.lang.Exception -> La8
        L92:
            if (r0 == 0) goto Lac
            r0.close()     // Catch: java.lang.Exception -> La8
            goto Lac
        L98:
            r12 = move-exception
            r7 = r2
        L9a:
            r2 = r0
        L9b:
            r13 = r2
            r2 = r7
        L9d:
            if (r2 == 0) goto La2
            r2.close()     // Catch: java.lang.Exception -> La8
        La2:
            if (r13 == 0) goto La7
            r13.close()     // Catch: java.lang.Exception -> La8
        La7:
            throw r12     // Catch: java.lang.Exception -> La8
        La8:
            r12 = move-exception
            r12.printStackTrace()
        Lac:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.motionphoto.utils.MotionPhotoVideoUtils.saveVideo(java.io.File, java.io.File):boolean");
    }

    public final boolean deleteVideo(File srcFile) {
        Log.i(TAG, "deleteVideo");
        try {
            MotionPhotoInfo sEFDataPosition = getSEFDataPosition(srcFile, SemExtendedFormat.KeyName.MOTION_PHOTO_DATA);
            if (sEFDataPosition != null) {
                long offset = sEFDataPosition.getOffset();
                long length = sEFDataPosition.getLength();
                boolean isMotionPhotoV2 = sEFDataPosition.isMotionPhotoV2();
                if (isMotionPhotoV2) {
                    Log.i(TAG, "MotionPhotoV2");
                    RandomAccessFile randomAccessFile = new RandomAccessFile(srcFile, "rw");
                    try {
                        try {
                            long j = length + offset;
                            long length2 = srcFile.length() - j;
                            ByteBuffer allocate = ByteBuffer.allocate((int) length2);
                            FileChannel channel = randomAccessFile.getChannel();
                            channel.read(allocate, j);
                            allocate.flip();
                            long j2 = offset - 8;
                            channel.write(allocate, j2);
                            channel.truncate(j2 + length2);
                            channel.close();
                        } finally {
                            randomAccessFile.close();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    randomAccessFile.close();
                } else {
                    Log.i(TAG, "Not MotionPhotoV2");
                }
                SemExtendedFormat.deleteData(srcFile, SemExtendedFormat.KeyName.MOTION_PHOTO_DATA);
                FileDescriptor fd = new RandomAccessFile(srcFile, "rw").getFD();
                boolean isJpeg2 = isJpeg(fd);
                isJpeg = isJpeg2;
                if (!isMotionPhotoV2 && !isJpeg2) {
                    Log.i(TAG, "There is no xmp");
                }
                removeXmp(fd);
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final boolean deleteVideo(File srcFile, File outFile) {
        Log.i(TAG, "deleteVideo");
        try {
            Files.copy(srcFile.toPath(), outFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
            MotionPhotoInfo sEFDataPosition = getSEFDataPosition(outFile, SemExtendedFormat.KeyName.MOTION_PHOTO_DATA);
            if (sEFDataPosition != null) {
                long offset = sEFDataPosition.getOffset();
                long length = sEFDataPosition.getLength();
                boolean isMotionPhotoV2 = sEFDataPosition.isMotionPhotoV2();
                if (isMotionPhotoV2) {
                    Log.i(TAG, "MotionPhotoV2");
                    RandomAccessFile randomAccessFile = new RandomAccessFile(outFile, "rw");
                    try {
                        try {
                            long j = length + offset;
                            long length2 = outFile.length() - j;
                            ByteBuffer allocate = ByteBuffer.allocate((int) length2);
                            FileChannel channel = randomAccessFile.getChannel();
                            channel.read(allocate, j);
                            allocate.flip();
                            long j2 = offset - 8;
                            channel.write(allocate, j2);
                            channel.truncate(j2 + length2);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        randomAccessFile.close();
                    } finally {
                        randomAccessFile.close();
                    }
                } else {
                    Log.i(TAG, "Not MotionPhotoV2");
                }
                SemExtendedFormat.deleteData(outFile, SemExtendedFormat.KeyName.MOTION_PHOTO_DATA);
                FileDescriptor fd = new RandomAccessFile(outFile, "rw").getFD();
                boolean isJpeg2 = isJpeg(fd);
                isJpeg = isJpeg2;
                if (!isMotionPhotoV2 && !isJpeg2) {
                    Log.i(TAG, "There is no xmp");
                }
                removeXmp(fd);
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private final boolean isJpeg(FileDescriptor fd) {
        FileInputStream fileInputStream = new FileInputStream(fd);
        boolean z = false;
        try {
            try {
                fileInputStream.getChannel().position(0L);
                byte[] bArr = new byte[2];
                fileInputStream.read(bArr, 0, 2);
                if ((bArr[0] & 255) == 255) {
                    if ((bArr[1] & 255) == 216) {
                        z = true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                fileInputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return z;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            throw th;
        }
    }

    public final long getXmpPosition() {
        return xmpPosition;
    }

    public final void setXmpPosition(long var1) {
        xmpPosition = var1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long seekToXmpStartPosition(FileDescriptor fd) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(fd);
        long j = 0;
        if (isJpeg) {
            Log.d(TAG, "//JPEG//");
            byte[] bArr = new byte[1024];
            try {
                fileInputStream.getChannel().position(0L);
                fileInputStream.read(bArr, 0, 2);
                while (fileInputStream.read(bArr, 0, 2) > 0) {
                    Pair pair = new Pair(Integer.valueOf(bArr[0] & 255), Integer.valueOf(bArr[1] & 255));
                    if (!(((Number) pair.first).intValue() == 255)) {
                        Log.i(TAG, "this is not valid markers");
                        return 0L;
                    }
                    if (208 > ((Number) pair.second).intValue() || 215 < ((Number) pair.second).intValue()) {
                        fileInputStream.read(bArr, 0, 2);
                        if (((Number) pair.second).intValue() != 221) {
                            fileInputStream.skip((((bArr[0] & 255) << 8) | (255 & bArr[1])) - 2);
                            if (((Number) pair.second).intValue() == 225) {
                                long position = fileInputStream.getChannel().position();
                                try {
                                    return position;
                                } catch (Exception e) {
                                    e = e;
                                    j = position;
                                    e.printStackTrace();
                                    return j;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception e2) {
                e = e2;
            }
        } else {
            Log.i(TAG, "//HEIF//");
            HEIFParser hEIFParser = new HEIFParser();
            try {
                try {
                    fileInputStream.getChannel().position(0L);
                    HEIFParser.XMPInformation coverImageXMPOffsetAndSize = hEIFParser.getCoverImageXMPOffsetAndSize(fileInputStream);
                    if (coverImageXMPOffsetAndSize != null) {
                        Log.i(TAG, "XMP " + coverImageXMPOffsetAndSize.offset + ", " + coverImageXMPOffsetAndSize.size);
                        j = coverImageXMPOffsetAndSize.offset;
                    } else {
                        Log.i(TAG, "Fail to get xmp information");
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } finally {
                fileInputStream.close();
            }
        }
        return j;
    }

    private final void removeXmp(FileDescriptor fd) throws IOException {
        Log.d(TAG, "removeXmp");
        xmpPosition = seekToXmpStartPosition(fd);
        if (isJpeg) {
            FileInputStream fileInputStream = new FileInputStream(fd);
            ByteBuffer byteBuffer = null;
            try {
                try {
                    byte[] bArr = new byte[2];
                    fileInputStream.read(bArr);
                    if ((bArr[0] & 255) == 255 && (bArr[1] & 255) == 225) {
                        byte[] bArr2 = new byte[2];
                        fileInputStream.getChannel().read(ByteBuffer.wrap(bArr2));
                        long j = ((bArr2[1] & 255) | ((bArr2[0] & 255) << 8)) + 2;
                        byteBuffer = ByteBuffer.allocateDirect((int) ((fileInputStream.getChannel().size() - xmpPosition) - j));
                        fileInputStream.getChannel().position(xmpPosition + j);
                        int read = fileInputStream.getChannel().read(byteBuffer);
                        if (!(read == byteBuffer.capacity())) {
                            Log.i(TAG, "read bytes(" + read + ") differ from buffer size(" + byteBuffer.capacity() + ')');
                        }
                        byteBuffer.rewind();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (byteBuffer != null) {
                    FileChannel channel = new FileOutputStream(fd).getChannel();
                    try {
                        channel.position(xmpPosition);
                        channel.write(byteBuffer);
                        channel.truncate(channel.size() - 1280);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                return;
            } finally {
                fileInputStream.close();
            }
        }
        ByteBuffer allocate = ByteBuffer.allocate(1280);
        if (allocate != null) {
            FileChannel channel2 = new FileOutputStream(fd).getChannel();
            try {
                channel2.position(xmpPosition);
                channel2.write(allocate);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class VideoInfo {
        private long videoLength;
        private long videoOffset;

        public final long getVideoOffset() {
            return this.videoOffset;
        }

        public final long getVideoLength() {
            return this.videoLength;
        }

        public VideoInfo(long videoOffset, long videoLength) {
            this.videoOffset = videoOffset;
            this.videoLength = videoLength;
        }

        public String toString() {
            return "VideoInfo(videoOffset=" + this.videoOffset + ", videoLength=" + this.videoLength + NavigationBarInflaterView.KEY_CODE_END;
        }
    }

    /* loaded from: classes5.dex */
    public static final class MotionPhotoInfo {
        private boolean isMotionPhotoV2;
        private long length;
        private long offset;

        public final long getOffset() {
            return this.offset;
        }

        public final long getLength() {
            return this.length;
        }

        public final boolean isMotionPhotoV2() {
            return this.isMotionPhotoV2;
        }

        public MotionPhotoInfo(long offset, long length, boolean isMotionPhotoV2) {
            this.offset = offset;
            this.length = length;
            this.isMotionPhotoV2 = isMotionPhotoV2;
        }

        public String toString() {
            return "MotionPhotoInfo(offset=" + this.offset + ", length=" + this.length + ", isMotionPhotoV2=" + this.isMotionPhotoV2 + NavigationBarInflaterView.KEY_CODE_END;
        }
    }

    public final VideoInfo getVideoDataPosition(File srcFile) {
        long j;
        long j2;
        try {
            MotionPhotoInfo sEFDataPosition = getSEFDataPosition(srcFile, SemExtendedFormat.KeyName.MOTION_PHOTO_DATA);
            if (sEFDataPosition == null) {
                j = 0;
                j2 = 0;
            } else {
                j = sEFDataPosition.getOffset();
                j2 = sEFDataPosition.getLength();
            }
            return new VideoInfo(j, j2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final MotionPhotoInfo getSEFDataPosition(File file, String tag) {
        boolean z;
        long j;
        long j2;
        boolean z2;
        long j3;
        long j4;
        long j5;
        long j6;
        try {
            SemExtendedFormat.DataPosition dataPosition = SemExtendedFormat.getDataPosition(file, tag);
            boolean z3 = false;
            if (dataPosition != null) {
                long j7 = dataPosition.offset;
                long j8 = dataPosition.length;
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    try {
                        fileInputStream.getChannel().position(j7);
                        byte[] bArr = new byte[4];
                        fileInputStream.read(bArr, 0, 4);
                        z2 = Arrays.equals(bArr, MOTION_PHOTO_V2_SIGNATURE.getBytes("utf-8"));
                        if (z2) {
                            try {
                                j6 = j7 + 4;
                                fileInputStream.getChannel().position(j6);
                                fileInputStream.read(bArr, 0, 4);
                                j4 = bArr[3] & 255;
                            } catch (Exception e) {
                                e = e;
                                z3 = z2;
                                j7 = 0;
                                z2 = z3;
                                j3 = 0;
                                e.printStackTrace();
                                long j9 = j3;
                                j4 = j7;
                                j5 = j9;
                                fileInputStream.close();
                                j2 = j5;
                                z = z2;
                                j = j4;
                                return new MotionPhotoInfo(j, j2, z);
                            }
                            try {
                                j4 = j4 | ((bArr[2] << 8) & 65280) | ((bArr[1] << 16) & 16711680) | (bArr[0] << 24);
                                fileInputStream.getChannel().position(j6 + 4);
                                fileInputStream.read(bArr, 0, 4);
                                long j10 = bArr[3] & 255;
                                try {
                                    j10 = j10 | ((bArr[2] << 8) & 65280) | ((bArr[1] << 16) & 16711680);
                                    j5 = j10 | (bArr[0] << 24);
                                    try {
                                        Log.d(TAG, "This file is a MotionPhoto V2 format - offset:" + j4 + " length:" + j5);
                                    } catch (Exception e2) {
                                        e = e2;
                                        j3 = j5;
                                        j7 = j4;
                                        e.printStackTrace();
                                        long j92 = j3;
                                        j4 = j7;
                                        j5 = j92;
                                        fileInputStream.close();
                                        j2 = j5;
                                        z = z2;
                                        j = j4;
                                        return new MotionPhotoInfo(j, j2, z);
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    j5 = j10;
                                }
                            } catch (Exception e4) {
                                e = e4;
                                j7 = j4;
                                z3 = z2;
                                z2 = z3;
                                j3 = 0;
                                e.printStackTrace();
                                long j922 = j3;
                                j4 = j7;
                                j5 = j922;
                                fileInputStream.close();
                                j2 = j5;
                                z = z2;
                                j = j4;
                                return new MotionPhotoInfo(j, j2, z);
                            }
                        } else {
                            try {
                                Log.d(TAG, "This file is not a MotionPhoto V2 format - offset:" + j7 + " length:" + j8);
                                j4 = j7;
                                j5 = j8;
                            } catch (Exception e5) {
                                e = e5;
                                j3 = j8;
                                e.printStackTrace();
                                long j9222 = j3;
                                j4 = j7;
                                j5 = j9222;
                                fileInputStream.close();
                                j2 = j5;
                                z = z2;
                                j = j4;
                                return new MotionPhotoInfo(j, j2, z);
                            }
                        }
                    } catch (Throwable th) {
                        fileInputStream.close();
                        throw th;
                    }
                } catch (Exception e6) {
                    e = e6;
                }
                fileInputStream.close();
                j2 = j5;
                z = z2;
                j = j4;
            } else {
                z = false;
                j = 0;
                j2 = 0;
            }
            return new MotionPhotoInfo(j, j2, z);
        } catch (Exception e7) {
            Log.d(TAG, "position is not valid");
            return null;
        }
    }
}
