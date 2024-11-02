package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import android.util.Pair;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.knox.ex.peripheral.PeripheralBarcodeConstants;
import com.samsung.android.knox.license.KnoxEnterpriseLicenseManager;
import com.samsung.android.knox.net.vpn.VpnErrorValues;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ExifInterface {
    public static final Charset ASCII;
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_2;
    public static final int[] BITS_PER_SAMPLE_RGB;
    public static final Pattern DATETIME_PRIMARY_FORMAT_PATTERN;
    public static final Pattern DATETIME_SECONDARY_FORMAT_PATTERN;
    public static final boolean DEBUG = Log.isLoggable("ExifInterface", 3);
    public static final byte[] EXIF_ASCII_PREFIX;
    public static final ExifTag[] EXIF_POINTER_TAGS;
    public static final ExifTag[][] EXIF_TAGS;
    public static final Pattern GPS_TIMESTAMP_PATTERN;
    public static final byte[] HEIF_BRAND_HEIC;
    public static final byte[] HEIF_BRAND_MIF1;
    public static final byte[] HEIF_TYPE_FTYP;
    public static final byte[] IDENTIFIER_EXIF_APP1;
    public static final byte[] IDENTIFIER_XMP_APP1;
    public static final int[] IFD_FORMAT_BYTES_PER_FORMAT;
    public static final String[] IFD_FORMAT_NAMES;
    public static final byte[] JPEG_SIGNATURE;
    public static final byte[] ORF_MAKER_NOTE_HEADER_1;
    public static final byte[] ORF_MAKER_NOTE_HEADER_2;
    public static final byte[] PNG_CHUNK_TYPE_EXIF;
    public static final byte[] PNG_CHUNK_TYPE_IEND;
    public static final byte[] PNG_CHUNK_TYPE_IHDR;
    public static final byte[] PNG_SIGNATURE;
    public static final ExifTag TAG_RAF_IMAGE_SIZE;
    public static final byte[] WEBP_CHUNK_TYPE_ANIM;
    public static final byte[] WEBP_CHUNK_TYPE_ANMF;
    public static final byte[] WEBP_CHUNK_TYPE_EXIF;
    public static final byte[] WEBP_CHUNK_TYPE_VP8;
    public static final byte[] WEBP_CHUNK_TYPE_VP8L;
    public static final byte[] WEBP_CHUNK_TYPE_VP8X;
    public static final byte[] WEBP_SIGNATURE_1;
    public static final byte[] WEBP_SIGNATURE_2;
    public static final byte[] WEBP_VP8_SIGNATURE;
    public static final HashMap sExifPointerTagMap;
    public static final HashMap[] sExifTagMapsForReading;
    public static final HashMap[] sExifTagMapsForWriting;
    public static final HashSet sTagSetForCompatibility;
    public boolean mAreThumbnailStripsConsecutive;
    public AssetManager.AssetInputStream mAssetInputStream;
    public final HashMap[] mAttributes;
    public final Set mAttributesOffsets;
    public ByteOrder mExifByteOrder;
    public String mFilename;
    public boolean mHasThumbnail;
    public boolean mHasThumbnailStrips;
    public final boolean mIsExifDataOnly;
    public int mMimeType;
    public int mOffsetToExifData;
    public int mOrfMakerNoteOffset;
    public int mOrfThumbnailLength;
    public int mOrfThumbnailOffset;
    public FileDescriptor mSeekableFileDescriptor;
    public byte[] mThumbnailBytes;
    public int mThumbnailCompression;
    public int mThumbnailLength;
    public int mThumbnailOffset;
    public boolean mXmpIsFromSeparateMarker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ByteOrderedDataOutputStream extends FilterOutputStream {
        public ByteOrder mByteOrder;
        public final OutputStream mOutputStream;

        public ByteOrderedDataOutputStream(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.mOutputStream = outputStream;
            this.mByteOrder = byteOrder;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr) {
            this.mOutputStream.write(bArr);
        }

        public final void writeByte(int i) {
            this.mOutputStream.write(i);
        }

        public final void writeInt(int i) {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write((i >>> 0) & 255);
                this.mOutputStream.write((i >>> 8) & 255);
                this.mOutputStream.write((i >>> 16) & 255);
                this.mOutputStream.write((i >>> 24) & 255);
                return;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((i >>> 24) & 255);
                this.mOutputStream.write((i >>> 16) & 255);
                this.mOutputStream.write((i >>> 8) & 255);
                this.mOutputStream.write((i >>> 0) & 255);
            }
        }

        public final void writeShort(short s) {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write((s >>> 0) & 255);
                this.mOutputStream.write((s >>> 8) & 255);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((s >>> 8) & 255);
                this.mOutputStream.write((s >>> 0) & 255);
            }
        }

        public final void writeUnsignedInt(long j) {
            if (j <= 4294967295L) {
                writeInt((int) j);
                return;
            }
            throw new IllegalArgumentException("val is larger than the maximum value of a 32-bit unsigned integer");
        }

        public final void writeUnsignedShort(int i) {
            if (i <= 65535) {
                writeShort((short) i);
                return;
            }
            throw new IllegalArgumentException("val is larger than the maximum value of a 16-bit unsigned integer");
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            this.mOutputStream.write(bArr, i, i2);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ExifAttribute {
        public final byte[] bytes;
        public final long bytesOffset;
        public final int format;
        public final int numberOfComponents;

        public ExifAttribute(int i, int i2, byte[] bArr) {
            this(i, i2, -1L, bArr);
        }

        public static ExifAttribute createString(String str) {
            byte[] bytes = str.concat("\u0000").getBytes(ExifInterface.ASCII);
            return new ExifAttribute(2, bytes.length, bytes);
        }

        public static ExifAttribute createULong(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j : jArr) {
                wrap.putInt((int) j);
            }
            return new ExifAttribute(4, jArr.length, wrap.array());
        }

        public static ExifAttribute createURational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[5] * rationalArr.length]);
            wrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                wrap.putInt((int) rational.numerator);
                wrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(5, rationalArr.length, wrap.array());
        }

        public static ExifAttribute createUShort(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i : iArr) {
                wrap.putShort((short) i);
            }
            return new ExifAttribute(3, iArr.length, wrap.array());
        }

        public final double getDoubleValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value != null) {
                if (value instanceof String) {
                    return Double.parseDouble((String) value);
                }
                if (value instanceof long[]) {
                    if (((long[]) value).length == 1) {
                        return r3[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (value instanceof int[]) {
                    if (((int[]) value).length == 1) {
                        return r3[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (value instanceof double[]) {
                    double[] dArr = (double[]) value;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (value instanceof Rational[]) {
                    Rational[] rationalArr = (Rational[]) value;
                    if (rationalArr.length == 1) {
                        Rational rational = rationalArr[0];
                        return rational.numerator / rational.denominator;
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a double value");
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        public final int getIntValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value != null) {
                if (value instanceof String) {
                    return Integer.parseInt((String) value);
                }
                if (value instanceof long[]) {
                    long[] jArr = (long[]) value;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (value instanceof int[]) {
                    int[] iArr = (int[]) value;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a integer value");
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        public final String getStringValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value == null) {
                return null;
            }
            if (value instanceof String) {
                return (String) value;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                while (i < jArr.length) {
                    sb.append(jArr[i]);
                    i++;
                    if (i != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (value instanceof int[]) {
                int[] iArr = (int[]) value;
                while (i < iArr.length) {
                    sb.append(iArr[i]);
                    i++;
                    if (i != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (value instanceof double[]) {
                double[] dArr = (double[]) value;
                while (i < dArr.length) {
                    sb.append(dArr[i]);
                    i++;
                    if (i != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (!(value instanceof Rational[])) {
                return null;
            }
            Rational[] rationalArr = (Rational[]) value;
            while (i < rationalArr.length) {
                sb.append(rationalArr[i].numerator);
                sb.append('/');
                sb.append(rationalArr[i].denominator);
                i++;
                if (i != rationalArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:89|(3:91|(2:92|(1:101)(2:94|(2:97|98)(1:96)))|(1:100))|102|(2:104|(6:113|114|115|116|117|118)(3:106|(2:108|109)(2:111|112)|110))|122|115|116|117|118) */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x012a, code lost:
        
            r14 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x012b, code lost:
        
            android.util.Log.e("ExifInterface", "IOException occurred while closing InputStream", r14);
         */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0167: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]) (LINE:360), block:B:159:0x0167 */
        /* JADX WARN: Removed duplicated region for block: B:162:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object getValue(java.nio.ByteOrder r14) {
            /*
                Method dump skipped, instructions count: 420
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.ExifAttribute.getValue(java.nio.ByteOrder):java.lang.Object");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("(");
            sb.append(ExifInterface.IFD_FORMAT_NAMES[this.format]);
            sb.append(", data length:");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.bytes.length, ")");
        }

        public ExifAttribute(int i, int i2, long j, byte[] bArr) {
            this.format = i;
            this.numberOfComponents = i2;
            this.bytesOffset = j;
            this.bytes = bArr;
        }

        public static ExifAttribute createULong(long j, ByteOrder byteOrder) {
            return createULong(new long[]{j}, byteOrder);
        }

        public static ExifAttribute createUShort(int i, ByteOrder byteOrder) {
            return createUShort(new int[]{i}, byteOrder);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Rational {
        public final long denominator;
        public final long numerator;

        public Rational(double d) {
            this((long) (d * 10000.0d), 10000L);
        }

        public final String toString() {
            return this.numerator + "/" + this.denominator;
        }

        public Rational(long j, long j2) {
            if (j2 == 0) {
                this.numerator = 0L;
                this.denominator = 1L;
            } else {
                this.numerator = j;
                this.denominator = j2;
            }
        }
    }

    static {
        Arrays.asList(1, 6, 3, 8);
        Arrays.asList(2, 7, 4, 5);
        BITS_PER_SAMPLE_RGB = new int[]{8, 8, 8};
        BITS_PER_SAMPLE_GREYSCALE_2 = new int[]{8};
        JPEG_SIGNATURE = new byte[]{-1, -40, -1};
        HEIF_TYPE_FTYP = new byte[]{102, 116, 121, 112};
        HEIF_BRAND_MIF1 = new byte[]{109, 105, 102, 49};
        HEIF_BRAND_HEIC = new byte[]{104, 101, 105, 99};
        ORF_MAKER_NOTE_HEADER_1 = new byte[]{79, 76, 89, 77, 80, 0};
        ORF_MAKER_NOTE_HEADER_2 = new byte[]{79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
        PNG_SIGNATURE = new byte[]{-119, 80, 78, 71, 13, 10, 26, 10};
        PNG_CHUNK_TYPE_EXIF = new byte[]{101, 88, 73, 102};
        PNG_CHUNK_TYPE_IHDR = new byte[]{73, 72, 68, 82};
        PNG_CHUNK_TYPE_IEND = new byte[]{73, 69, 78, 68};
        WEBP_SIGNATURE_1 = new byte[]{82, 73, 70, 70};
        WEBP_SIGNATURE_2 = new byte[]{87, 69, 66, 80};
        WEBP_CHUNK_TYPE_EXIF = new byte[]{69, 88, 73, 70};
        WEBP_VP8_SIGNATURE = new byte[]{-99, 1, 42};
        WEBP_CHUNK_TYPE_VP8X = "VP8X".getBytes(Charset.defaultCharset());
        WEBP_CHUNK_TYPE_VP8L = "VP8L".getBytes(Charset.defaultCharset());
        WEBP_CHUNK_TYPE_VP8 = "VP8 ".getBytes(Charset.defaultCharset());
        WEBP_CHUNK_TYPE_ANIM = "ANIM".getBytes(Charset.defaultCharset());
        WEBP_CHUNK_TYPE_ANMF = "ANMF".getBytes(Charset.defaultCharset());
        IFD_FORMAT_NAMES = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", PeripheralBarcodeConstants.Symbology.UNDEFINED, "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        IFD_FORMAT_BYTES_PER_FORMAT = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        EXIF_ASCII_PREFIX = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        ExifTag[] exifTagArr = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ImageWidth", 256, 3, 4), new ExifTag("ImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", IKnoxCustomManager.Stub.TRANSACTION_setHardKeyIntentBroadcastExternal, 3, 4), new ExifTag("Orientation", IKnoxCustomManager.Stub.TRANSACTION_setHardKeyIntentBroadcastInternal, 3), new ExifTag("SamplesPerPixel", IKnoxCustomManager.Stub.TRANSACTION_clearForcedDisplaySizeDensity, 3), new ExifTag("RowsPerStrip", IKnoxCustomManager.Stub.TRANSACTION_startSmartView, 3, 4), new ExifTag("StripByteCounts", IKnoxCustomManager.Stub.TRANSACTION_setForceSingleView, 3, 4), new ExifTag("XResolution", IKnoxCustomManager.Stub.TRANSACTION_setShuttingDownAnimationSub, 5), new ExifTag("YResolution", IKnoxCustomManager.Stub.TRANSACTION_getLoadingLogoPath, 5), new ExifTag("PlanarConfiguration", IKnoxCustomManager.Stub.TRANSACTION_registerSystemUiCallback, 3), new ExifTag("ResolutionUnit", IKnoxCustomManager.Stub.TRANSACTION_setApplicationRestrictionsInternal, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", VpnErrorValues.ERROR_STOPPING_CONNECTION_BEFORE_REMOVING, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("SensorTopBorder", 4, 4), new ExifTag("SensorLeftBorder", 5, 4), new ExifTag("SensorBottomBorder", 6, 4), new ExifTag("SensorRightBorder", 7, 4), new ExifTag("ISO", 23, 3), new ExifTag("JpgFromRaw", 46, 7), new ExifTag("Xmp", KnoxEnterpriseLicenseManager.ERROR_LICENSE_DEACTIVATED, 1)};
        ExifTag[] exifTagArr2 = {new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("SpectralSensitivity", 34852, 2), new ExifTag("PhotographicSensitivity", 34855, 3), new ExifTag("OECF", 34856, 7), new ExifTag("SensitivityType", 34864, 3), new ExifTag("StandardOutputSensitivity", 34865, 4), new ExifTag("RecommendedExposureIndex", 34866, 4), new ExifTag("ISOSpeed", 34867, 4), new ExifTag("ISOSpeedLatitudeyyy", 34868, 4), new ExifTag("ISOSpeedLatitudezzz", 34869, 4), new ExifTag("ExifVersion", 36864, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("OffsetTime", 36880, 2), new ExifTag("OffsetTimeOriginal", 36881, 2), new ExifTag("OffsetTimeDigitized", 36882, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("CompressedBitsPerPixel", 37122, 5), new ExifTag("ShutterSpeedValue", 37377, 10), new ExifTag("ApertureValue", 37378, 5), new ExifTag("BrightnessValue", 37379, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("SubjectDistance", 37382, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubjectArea", 37396, 3), new ExifTag("MakerNote", 37500, 7), new ExifTag("UserComment", 37510, 7), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", 40960, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962, 3, 4), new ExifTag("PixelYDimension", 40963, 3, 4), new ExifTag("RelatedSoundFile", 40964, 2), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("FlashEnergy", 41483, 5), new ExifTag("SpatialFrequencyResponse", 41484, 7), new ExifTag("FocalPlaneXResolution", 41486, 5), new ExifTag("FocalPlaneYResolution", 41487, 5), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SubjectLocation", 41492, 3), new ExifTag("ExposureIndex", 41493, 5), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CFAPattern", 41730, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("DigitalZoomRatio", 41988, 5), new ExifTag("FocalLengthIn35mmFilm", 41989, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("GainControl", 41991, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3), new ExifTag("DeviceSettingDescription", 41995, 7), new ExifTag("SubjectDistanceRange", 41996, 3), new ExifTag("ImageUniqueID", 42016, 2), new ExifTag("CameraOwnerName", 42032, 2), new ExifTag("BodySerialNumber", 42033, 2), new ExifTag("LensSpecification", 42034, 5), new ExifTag("LensMake", 42035, 2), new ExifTag("LensModel", 42036, 2), new ExifTag("Gamma", 42240, 5), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        ExifTag[] exifTagArr3 = {new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5, 10), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5, 10), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSatellites", 8, 2), new ExifTag("GPSStatus", 9, 2), new ExifTag("GPSMeasureMode", 10, 2), new ExifTag("GPSDOP", 11, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSSpeed", 13, 5), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSTrack", 15, 5), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSImgDirection", 17, 5), new ExifTag("GPSMapDatum", 18, 2), new ExifTag("GPSDestLatitudeRef", 19, 2), new ExifTag("GPSDestLatitude", 20, 5), new ExifTag("GPSDestLongitudeRef", 21, 2), new ExifTag("GPSDestLongitude", 22, 5), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestBearing", 24, 5), new ExifTag("GPSDestDistanceRef", 25, 2), new ExifTag("GPSDestDistance", 26, 5), new ExifTag("GPSProcessingMethod", 27, 7), new ExifTag("GPSAreaInformation", 28, 7), new ExifTag("GPSDateStamp", 29, 2), new ExifTag("GPSDifferential", 30, 3), new ExifTag("GPSHPositioningError", 31, 5)};
        ExifTag[] exifTagArr4 = {new ExifTag("InteroperabilityIndex", 1, 2)};
        ExifTag[] exifTagArr5 = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ThumbnailImageWidth", 256, 3, 4), new ExifTag("ThumbnailImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", IKnoxCustomManager.Stub.TRANSACTION_setHardKeyIntentBroadcastExternal, 3, 4), new ExifTag("ThumbnailOrientation", IKnoxCustomManager.Stub.TRANSACTION_setHardKeyIntentBroadcastInternal, 3), new ExifTag("SamplesPerPixel", IKnoxCustomManager.Stub.TRANSACTION_clearForcedDisplaySizeDensity, 3), new ExifTag("RowsPerStrip", IKnoxCustomManager.Stub.TRANSACTION_startSmartView, 3, 4), new ExifTag("StripByteCounts", IKnoxCustomManager.Stub.TRANSACTION_setForceSingleView, 3, 4), new ExifTag("XResolution", IKnoxCustomManager.Stub.TRANSACTION_setShuttingDownAnimationSub, 5), new ExifTag("YResolution", IKnoxCustomManager.Stub.TRANSACTION_getLoadingLogoPath, 5), new ExifTag("PlanarConfiguration", IKnoxCustomManager.Stub.TRANSACTION_registerSystemUiCallback, 3), new ExifTag("ResolutionUnit", IKnoxCustomManager.Stub.TRANSACTION_setApplicationRestrictionsInternal, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", VpnErrorValues.ERROR_STOPPING_CONNECTION_BEFORE_REMOVING, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        TAG_RAF_IMAGE_SIZE = new ExifTag("StripOffsets", IKnoxCustomManager.Stub.TRANSACTION_setHardKeyIntentBroadcastExternal, 3);
        EXIF_TAGS = new ExifTag[][]{exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4, exifTagArr5, exifTagArr, new ExifTag[]{new ExifTag("ThumbnailImage", 256, 7), new ExifTag("CameraSettingsIFDPointer", 8224, 4), new ExifTag("ImageProcessingIFDPointer", 8256, 4)}, new ExifTag[]{new ExifTag("PreviewImageStart", 257, 4), new ExifTag("PreviewImageLength", 258, 4)}, new ExifTag[]{new ExifTag("AspectFrame", 4371, 3)}, new ExifTag[]{new ExifTag("ColorSpace", 55, 3)}};
        EXIF_POINTER_TAGS = new ExifTag[]{new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("CameraSettingsIFDPointer", 8224, 1), new ExifTag("ImageProcessingIFDPointer", 8256, 1)};
        sExifTagMapsForReading = new HashMap[10];
        sExifTagMapsForWriting = new HashMap[10];
        sTagSetForCompatibility = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        sExifPointerTagMap = new HashMap();
        Charset forName = Charset.forName("US-ASCII");
        ASCII = forName;
        IDENTIFIER_EXIF_APP1 = "Exif\u0000\u0000".getBytes(forName);
        IDENTIFIER_XMP_APP1 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            ExifTag[][] exifTagArr6 = EXIF_TAGS;
            if (i < exifTagArr6.length) {
                sExifTagMapsForReading[i] = new HashMap();
                sExifTagMapsForWriting[i] = new HashMap();
                for (ExifTag exifTag : exifTagArr6[i]) {
                    sExifTagMapsForReading[i].put(Integer.valueOf(exifTag.number), exifTag);
                    sExifTagMapsForWriting[i].put(exifTag.name, exifTag);
                }
                i++;
            } else {
                HashMap hashMap = sExifPointerTagMap;
                ExifTag[] exifTagArr7 = EXIF_POINTER_TAGS;
                hashMap.put(Integer.valueOf(exifTagArr7[0].number), 5);
                hashMap.put(Integer.valueOf(exifTagArr7[1].number), 1);
                hashMap.put(Integer.valueOf(exifTagArr7[2].number), 2);
                hashMap.put(Integer.valueOf(exifTagArr7[3].number), 3);
                hashMap.put(Integer.valueOf(exifTagArr7[4].number), 7);
                hashMap.put(Integer.valueOf(exifTagArr7[5].number), 8);
                Pattern.compile(".*[1-9].*");
                GPS_TIMESTAMP_PATTERN = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                DATETIME_PRIMARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                DATETIME_SECONDARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
        }
    }

    public ExifInterface(File file) {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (file != null) {
            initForFilename(file.getAbsolutePath());
            return;
        }
        throw new NullPointerException("file cannot be null");
    }

    public static Pair guessDataFormat(String str) {
        int intValue;
        int i;
        if (str.contains(",")) {
            String[] split = str.split(",", -1);
            Pair guessDataFormat = guessDataFormat(split[0]);
            if (((Integer) guessDataFormat.first).intValue() == 2) {
                return guessDataFormat;
            }
            for (int i2 = 1; i2 < split.length; i2++) {
                Pair guessDataFormat2 = guessDataFormat(split[i2]);
                if (!((Integer) guessDataFormat2.first).equals(guessDataFormat.first) && !((Integer) guessDataFormat2.second).equals(guessDataFormat.first)) {
                    intValue = -1;
                } else {
                    intValue = ((Integer) guessDataFormat.first).intValue();
                }
                if (((Integer) guessDataFormat.second).intValue() != -1 && (((Integer) guessDataFormat2.first).equals(guessDataFormat.second) || ((Integer) guessDataFormat2.second).equals(guessDataFormat.second))) {
                    i = ((Integer) guessDataFormat.second).intValue();
                } else {
                    i = -1;
                }
                if (intValue == -1 && i == -1) {
                    return new Pair(2, -1);
                }
                if (intValue == -1) {
                    guessDataFormat = new Pair(Integer.valueOf(i), -1);
                } else if (i == -1) {
                    guessDataFormat = new Pair(Integer.valueOf(intValue), -1);
                }
            }
            return guessDataFormat;
        }
        if (str.contains("/")) {
            String[] split2 = str.split("/", -1);
            if (split2.length == 2) {
                try {
                    long parseDouble = (long) Double.parseDouble(split2[0]);
                    long parseDouble2 = (long) Double.parseDouble(split2[1]);
                    if (parseDouble >= 0 && parseDouble2 >= 0) {
                        if (parseDouble <= 2147483647L && parseDouble2 <= 2147483647L) {
                            return new Pair(10, 5);
                        }
                        return new Pair(5, -1);
                    }
                    return new Pair(10, -1);
                } catch (NumberFormatException unused) {
                }
            }
            return new Pair(2, -1);
        }
        try {
            try {
                Long valueOf = Long.valueOf(Long.parseLong(str));
                if (valueOf.longValue() >= 0 && valueOf.longValue() <= 65535) {
                    return new Pair(3, 4);
                }
                if (valueOf.longValue() < 0) {
                    return new Pair(9, -1);
                }
                return new Pair(4, -1);
            } catch (NumberFormatException unused2) {
                Double.parseDouble(str);
                return new Pair(12, -1);
            }
        } catch (NumberFormatException unused3) {
            return new Pair(2, -1);
        }
    }

    public static boolean isSeekableFD(FileDescriptor fileDescriptor) {
        try {
            Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (Exception unused) {
            if (DEBUG) {
                Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                return false;
            }
            return false;
        }
    }

    public static ByteOrder readByteOrder(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        short readShort = byteOrderedDataInputStream.readShort();
        boolean z = DEBUG;
        if (readShort != 18761) {
            if (readShort == 19789) {
                if (z) {
                    Log.d("ExifInterface", "readExifSegment: Byte Align MM");
                }
                return ByteOrder.BIG_ENDIAN;
            }
            throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
        }
        if (z) {
            Log.d("ExifInterface", "readExifSegment: Byte Align II");
        }
        return ByteOrder.LITTLE_ENDIAN;
    }

    public final void addDefaultValuesForCompatibility() {
        String attribute = getAttribute("DateTimeOriginal");
        HashMap[] hashMapArr = this.mAttributes;
        if (attribute != null && getAttribute("DateTime") == null) {
            hashMapArr[0].put("DateTime", ExifAttribute.createString(attribute));
        }
        if (getAttribute("ImageWidth") == null) {
            hashMapArr[0].put("ImageWidth", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("ImageLength") == null) {
            hashMapArr[0].put("ImageLength", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("Orientation") == null) {
            hashMapArr[0].put("Orientation", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("LightSource") == null) {
            hashMapArr[1].put("LightSource", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
    }

    public final String getAttribute(String str) {
        String str2;
        ExifAttribute exifAttribute;
        if ("ISOSpeedRatings".equals(str)) {
            if (DEBUG) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str2 = "PhotographicSensitivity";
        } else {
            str2 = str;
        }
        int i = 0;
        while (true) {
            if (i < EXIF_TAGS.length) {
                exifAttribute = (ExifAttribute) this.mAttributes[i].get(str2);
                if (exifAttribute != null) {
                    break;
                }
                i++;
            } else {
                exifAttribute = null;
                break;
            }
        }
        if (exifAttribute != null) {
            if (!sTagSetForCompatibility.contains(str)) {
                return exifAttribute.getStringValue(this.mExifByteOrder);
            }
            if (str.equals("GPSTimeStamp")) {
                int i2 = exifAttribute.format;
                if (i2 != 5 && i2 != 10) {
                    IconCompat$$ExternalSyntheticOutline0.m("GPS Timestamp format is not rational. format=", i2, "ExifInterface");
                    return null;
                }
                Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
                if (rationalArr != null && rationalArr.length == 3) {
                    Rational rational = rationalArr[0];
                    Integer valueOf = Integer.valueOf((int) (((float) rational.numerator) / ((float) rational.denominator)));
                    Rational rational2 = rationalArr[1];
                    Integer valueOf2 = Integer.valueOf((int) (((float) rational2.numerator) / ((float) rational2.denominator)));
                    Rational rational3 = rationalArr[2];
                    return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (((float) rational3.numerator) / ((float) rational3.denominator))));
                }
                Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(rationalArr));
                return null;
            }
            try {
                return Double.toString(exifAttribute.getDoubleValue(this.mExifByteOrder));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final void getHeifAttributes(final SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        String str;
        String str2;
        String str3;
        int i;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(new MediaDataSource(this) { // from class: androidx.exifinterface.media.ExifInterface.1
                    public long mPosition;

                    @Override // android.media.MediaDataSource
                    public final long getSize() {
                        return -1L;
                    }

                    @Override // android.media.MediaDataSource
                    public final int readAt(long j, byte[] bArr, int i2, int i3) {
                        if (i3 == 0) {
                            return 0;
                        }
                        if (j < 0) {
                            return -1;
                        }
                        try {
                            long j2 = this.mPosition;
                            if (j2 != j) {
                                if (j2 >= 0 && j >= j2 + seekableByteOrderedDataInputStream.available()) {
                                    return -1;
                                }
                                seekableByteOrderedDataInputStream.seek(j);
                                this.mPosition = j;
                            }
                            if (i3 > seekableByteOrderedDataInputStream.available()) {
                                i3 = seekableByteOrderedDataInputStream.available();
                            }
                            int read = seekableByteOrderedDataInputStream.read(bArr, i2, i3);
                            if (read >= 0) {
                                this.mPosition += read;
                                return read;
                            }
                        } catch (IOException unused) {
                        }
                        this.mPosition = -1L;
                        return -1;
                    }

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                });
                String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
                String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
                String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
                String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(extractMetadata3)) {
                    str = mediaMetadataRetriever.extractMetadata(29);
                    str2 = mediaMetadataRetriever.extractMetadata(30);
                    str3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(extractMetadata4)) {
                    str = mediaMetadataRetriever.extractMetadata(18);
                    str2 = mediaMetadataRetriever.extractMetadata(19);
                    str3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                }
                HashMap[] hashMapArr = this.mAttributes;
                if (str != null) {
                    hashMapArr[0].put("ImageWidth", ExifAttribute.createUShort(Integer.parseInt(str), this.mExifByteOrder));
                }
                if (str2 != null) {
                    hashMapArr[0].put("ImageLength", ExifAttribute.createUShort(Integer.parseInt(str2), this.mExifByteOrder));
                }
                if (str3 != null) {
                    int parseInt = Integer.parseInt(str3);
                    if (parseInt != 90) {
                        if (parseInt != 180) {
                            if (parseInt != 270) {
                                i = 1;
                            } else {
                                i = 8;
                            }
                        } else {
                            i = 3;
                        }
                    } else {
                        i = 6;
                    }
                    hashMapArr[0].put("Orientation", ExifAttribute.createUShort(i, this.mExifByteOrder));
                }
                if (extractMetadata != null && extractMetadata2 != null) {
                    int parseInt2 = Integer.parseInt(extractMetadata);
                    int parseInt3 = Integer.parseInt(extractMetadata2);
                    if (parseInt3 > 6) {
                        seekableByteOrderedDataInputStream.seek(parseInt2);
                        byte[] bArr = new byte[6];
                        seekableByteOrderedDataInputStream.readFully(bArr);
                        int i2 = parseInt2 + 6;
                        int i3 = parseInt3 - 6;
                        if (Arrays.equals(bArr, IDENTIFIER_EXIF_APP1)) {
                            byte[] bArr2 = new byte[i3];
                            seekableByteOrderedDataInputStream.readFully(bArr2);
                            this.mOffsetToExifData = i2;
                            readExifSegment(0, bArr2);
                        } else {
                            throw new IOException("Invalid identifier");
                        }
                    } else {
                        throw new IOException("Invalid exif length");
                    }
                }
                String extractMetadata5 = mediaMetadataRetriever.extractMetadata(41);
                String extractMetadata6 = mediaMetadataRetriever.extractMetadata(42);
                if (extractMetadata5 != null && extractMetadata6 != null) {
                    int parseInt4 = Integer.parseInt(extractMetadata5);
                    int parseInt5 = Integer.parseInt(extractMetadata6);
                    long j = parseInt4;
                    seekableByteOrderedDataInputStream.seek(j);
                    byte[] bArr3 = new byte[parseInt5];
                    seekableByteOrderedDataInputStream.readFully(bArr3);
                    if (getAttribute("Xmp") == null) {
                        hashMapArr[0].put("Xmp", new ExifAttribute(1, parseInt5, j, bArr3));
                    }
                }
                if (DEBUG) {
                    Log.d("ExifInterface", "Heif meta: " + str + "x" + str2 + ", rotation " + str3);
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (IOException unused) {
                }
            } catch (RuntimeException unused2) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
            } catch (IOException unused3) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0184 A[LOOP:0: B:9:0x0034->B:32:0x0184, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x018c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0158  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getJpegAttributes(androidx.exifinterface.media.ExifInterface.ByteOrderedDataInputStream r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.getJpegAttributes(androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:162:0x00ca, code lost:
    
        if (r8 != null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0177, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getMimeType(java.io.BufferedInputStream r18) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.getMimeType(java.io.BufferedInputStream):int");
    }

    public final void getOrfAttributes(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        int i;
        int i2;
        getRawAttributes(seekableByteOrderedDataInputStream);
        HashMap[] hashMapArr = this.mAttributes;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("MakerNote");
        if (exifAttribute != null) {
            SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.bytes);
            seekableByteOrderedDataInputStream2.mByteOrder = this.mExifByteOrder;
            byte[] bArr = ORF_MAKER_NOTE_HEADER_1;
            byte[] bArr2 = new byte[bArr.length];
            seekableByteOrderedDataInputStream2.readFully(bArr2);
            seekableByteOrderedDataInputStream2.seek(0L);
            byte[] bArr3 = ORF_MAKER_NOTE_HEADER_2;
            byte[] bArr4 = new byte[bArr3.length];
            seekableByteOrderedDataInputStream2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                seekableByteOrderedDataInputStream2.seek(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                seekableByteOrderedDataInputStream2.seek(12L);
            }
            readImageFileDirectory(seekableByteOrderedDataInputStream2, 6);
            ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[7].get("PreviewImageStart");
            ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[7].get("PreviewImageLength");
            if (exifAttribute2 != null && exifAttribute3 != null) {
                hashMapArr[5].put("JPEGInterchangeFormat", exifAttribute2);
                hashMapArr[5].put("JPEGInterchangeFormatLength", exifAttribute3);
            }
            ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[8].get("AspectFrame");
            if (exifAttribute4 != null) {
                int[] iArr = (int[]) exifAttribute4.getValue(this.mExifByteOrder);
                if (iArr != null && iArr.length == 4) {
                    int i3 = iArr[2];
                    int i4 = iArr[0];
                    if (i3 > i4 && (i = iArr[3]) > (i2 = iArr[1])) {
                        int i5 = (i3 - i4) + 1;
                        int i6 = (i - i2) + 1;
                        if (i5 < i6) {
                            int i7 = i5 + i6;
                            i6 = i7 - i6;
                            i5 = i7 - i6;
                        }
                        ExifAttribute createUShort = ExifAttribute.createUShort(i5, this.mExifByteOrder);
                        ExifAttribute createUShort2 = ExifAttribute.createUShort(i6, this.mExifByteOrder);
                        hashMapArr[0].put("ImageWidth", createUShort);
                        hashMapArr[0].put("ImageLength", createUShort2);
                        return;
                    }
                    return;
                }
                Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
            }
        }
    }

    public final void getPngAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        if (DEBUG) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.mByteOrder = ByteOrder.BIG_ENDIAN;
        byte[] bArr = PNG_SIGNATURE;
        byteOrderedDataInputStream.skipFully(bArr.length);
        int length = bArr.length + 0;
        while (true) {
            try {
                int readInt = byteOrderedDataInputStream.readInt();
                byte[] bArr2 = new byte[4];
                byteOrderedDataInputStream.readFully(bArr2);
                int i = length + 4 + 4;
                if (i == 16 && !Arrays.equals(bArr2, PNG_CHUNK_TYPE_IHDR)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (!Arrays.equals(bArr2, PNG_CHUNK_TYPE_IEND)) {
                    if (Arrays.equals(bArr2, PNG_CHUNK_TYPE_EXIF)) {
                        byte[] bArr3 = new byte[readInt];
                        byteOrderedDataInputStream.readFully(bArr3);
                        int readInt2 = byteOrderedDataInputStream.readInt();
                        CRC32 crc32 = new CRC32();
                        crc32.update(bArr2);
                        crc32.update(bArr3);
                        if (((int) crc32.getValue()) == readInt2) {
                            this.mOffsetToExifData = i;
                            readExifSegment(0, bArr3);
                            validateImages();
                            setThumbnailData(new ByteOrderedDataInputStream(bArr3));
                            return;
                        }
                        throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                    }
                    int i2 = readInt + 4;
                    byteOrderedDataInputStream.skipFully(i2);
                    length = i + i2;
                } else {
                    return;
                }
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    public final void getRafAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        boolean z = DEBUG;
        if (z) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.skipFully(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        byteOrderedDataInputStream.readFully(bArr);
        byteOrderedDataInputStream.readFully(bArr2);
        byteOrderedDataInputStream.readFully(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        byteOrderedDataInputStream.skipFully(i - byteOrderedDataInputStream.mPosition);
        byteOrderedDataInputStream.readFully(bArr4);
        getJpegAttributes(new ByteOrderedDataInputStream(bArr4), i, 5);
        byteOrderedDataInputStream.skipFully(i3 - byteOrderedDataInputStream.mPosition);
        byteOrderedDataInputStream.mByteOrder = ByteOrder.BIG_ENDIAN;
        int readInt = byteOrderedDataInputStream.readInt();
        if (z) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("numberOfDirectoryEntry: ", readInt, "ExifInterface");
        }
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (readUnsignedShort == TAG_RAF_IMAGE_SIZE.number) {
                short readShort = byteOrderedDataInputStream.readShort();
                short readShort2 = byteOrderedDataInputStream.readShort();
                ExifAttribute createUShort = ExifAttribute.createUShort(readShort, this.mExifByteOrder);
                ExifAttribute createUShort2 = ExifAttribute.createUShort(readShort2, this.mExifByteOrder);
                HashMap[] hashMapArr = this.mAttributes;
                hashMapArr[0].put("ImageLength", createUShort);
                hashMapArr[0].put("ImageWidth", createUShort2);
                if (z) {
                    SuggestionsAdapter$$ExternalSyntheticOutline0.m("Updated to length: ", readShort, ", width: ", readShort2, "ExifInterface");
                    return;
                }
                return;
            }
            byteOrderedDataInputStream.skipFully(readUnsignedShort2);
        }
    }

    public final void getRawAttributes(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        parseTiffHeaders(seekableByteOrderedDataInputStream);
        readImageFileDirectory(seekableByteOrderedDataInputStream, 0);
        updateImageSizeValues(seekableByteOrderedDataInputStream, 0);
        updateImageSizeValues(seekableByteOrderedDataInputStream, 5);
        updateImageSizeValues(seekableByteOrderedDataInputStream, 4);
        validateImages();
        if (this.mMimeType == 8) {
            HashMap[] hashMapArr = this.mAttributes;
            ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("MakerNote");
            if (exifAttribute != null) {
                SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.bytes);
                seekableByteOrderedDataInputStream2.mByteOrder = this.mExifByteOrder;
                seekableByteOrderedDataInputStream2.skipFully(6);
                readImageFileDirectory(seekableByteOrderedDataInputStream2, 9);
                ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[9].get("ColorSpace");
                if (exifAttribute2 != null) {
                    hashMapArr[1].put("ColorSpace", exifAttribute2);
                }
            }
        }
    }

    public final void getRw2Attributes(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        if (DEBUG) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + seekableByteOrderedDataInputStream);
        }
        getRawAttributes(seekableByteOrderedDataInputStream);
        HashMap[] hashMapArr = this.mAttributes;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[0].get("JpgFromRaw");
        if (exifAttribute != null) {
            getJpegAttributes(new ByteOrderedDataInputStream(exifAttribute.bytes), (int) exifAttribute.bytesOffset, 5);
        }
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[0].get("ISO");
        ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[1].get("PhotographicSensitivity");
        if (exifAttribute2 != null && exifAttribute3 == null) {
            hashMapArr[1].put("PhotographicSensitivity", exifAttribute2);
        }
    }

    public final boolean getStandaloneAttributes(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        byte[] bArr = IDENTIFIER_EXIF_APP1;
        byte[] bArr2 = new byte[bArr.length];
        seekableByteOrderedDataInputStream.readFully(bArr2);
        if (!Arrays.equals(bArr2, bArr)) {
            Log.w("ExifInterface", "Given data is not EXIF-only.");
            return false;
        }
        byte[] bArr3 = new byte[1024];
        int i = 0;
        while (true) {
            if (i == bArr3.length) {
                bArr3 = Arrays.copyOf(bArr3, bArr3.length * 2);
            }
            int read = seekableByteOrderedDataInputStream.mDataInputStream.read(bArr3, i, bArr3.length - i);
            if (read != -1) {
                i += read;
                seekableByteOrderedDataInputStream.mPosition += read;
            } else {
                byte[] copyOf = Arrays.copyOf(bArr3, i);
                this.mOffsetToExifData = bArr.length;
                readExifSegment(0, copyOf);
                return true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final byte[] getThumbnailBytes() {
        /*
            r8 = this;
            java.lang.String r0 = "ExifInterface"
            boolean r1 = r8.mHasThumbnail
            r2 = 0
            if (r1 != 0) goto L8
            return r2
        L8:
            byte[] r1 = r8.mThumbnailBytes
            if (r1 == 0) goto Ld
            return r1
        Ld:
            android.content.res.AssetManager$AssetInputStream r1 = r8.mAssetInputStream     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            if (r1 == 0) goto L2c
            boolean r3 = r1.markSupported()     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
            if (r3 == 0) goto L1c
            r1.reset()     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
        L1a:
            r3 = r2
            goto L4d
        L1c:
            java.lang.String r8 = "Cannot read thumbnail from inputstream without mark/reset support"
            android.util.Log.d(r0, r8)     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
            androidx.exifinterface.media.ExifInterfaceUtils.closeQuietly(r1)
            return r2
        L25:
            r8 = move-exception
            r3 = r2
            goto L8a
        L29:
            r8 = move-exception
            r3 = r2
            goto L7b
        L2c:
            java.lang.String r1 = r8.mFilename     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            if (r1 == 0) goto L38
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            java.lang.String r3 = r8.mFilename     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            goto L1a
        L38:
            java.io.FileDescriptor r1 = r8.mSeekableFileDescriptor     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            java.io.FileDescriptor r1 = android.system.Os.dup(r1)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            int r3 = android.system.OsConstants.SEEK_SET     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L71
            r4 = 0
            android.system.Os.lseek(r1, r4, r3)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L71
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L71
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L71
            r7 = r3
            r3 = r1
            r1 = r7
        L4d:
            androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream r4 = new androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            r4.<init>(r1)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            int r5 = r8.mThumbnailOffset     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            int r6 = r8.mOffsetToExifData     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            int r5 = r5 + r6
            r4.skipFully(r5)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            int r5 = r8.mThumbnailLength     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            byte[] r5 = new byte[r5]     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            r4.readFully(r5)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            r8.mThumbnailBytes = r5     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L89
            androidx.exifinterface.media.ExifInterfaceUtils.closeQuietly(r1)
            if (r3 == 0) goto L6b
            androidx.exifinterface.media.ExifInterfaceUtils.closeFileDescriptor(r3)
        L6b:
            return r5
        L6c:
            r8 = move-exception
            goto L7b
        L6e:
            r8 = move-exception
            r3 = r1
            goto L8b
        L71:
            r8 = move-exception
            r3 = r1
            r1 = r2
            goto L7b
        L75:
            r8 = move-exception
            r3 = r2
            goto L8b
        L78:
            r8 = move-exception
            r1 = r2
            r3 = r1
        L7b:
            java.lang.String r4 = "Encountered exception while getting thumbnail"
            android.util.Log.d(r0, r4, r8)     // Catch: java.lang.Throwable -> L89
            androidx.exifinterface.media.ExifInterfaceUtils.closeQuietly(r1)
            if (r3 == 0) goto L88
            androidx.exifinterface.media.ExifInterfaceUtils.closeFileDescriptor(r3)
        L88:
            return r2
        L89:
            r8 = move-exception
        L8a:
            r2 = r1
        L8b:
            androidx.exifinterface.media.ExifInterfaceUtils.closeQuietly(r2)
            if (r3 == 0) goto L93
            androidx.exifinterface.media.ExifInterfaceUtils.closeFileDescriptor(r3)
        L93:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.getThumbnailBytes():byte[]");
    }

    public final void getWebpAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        if (DEBUG) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.mByteOrder = ByteOrder.LITTLE_ENDIAN;
        byteOrderedDataInputStream.skipFully(WEBP_SIGNATURE_1.length);
        int readInt = byteOrderedDataInputStream.readInt() + 8;
        byte[] bArr = WEBP_SIGNATURE_2;
        byteOrderedDataInputStream.skipFully(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                byteOrderedDataInputStream.readFully(bArr2);
                int readInt2 = byteOrderedDataInputStream.readInt();
                int i = length + 4 + 4;
                if (Arrays.equals(WEBP_CHUNK_TYPE_EXIF, bArr2)) {
                    byte[] bArr3 = new byte[readInt2];
                    byteOrderedDataInputStream.readFully(bArr3);
                    this.mOffsetToExifData = i;
                    readExifSegment(0, bArr3);
                    setThumbnailData(new ByteOrderedDataInputStream(bArr3));
                    return;
                }
                if (readInt2 % 2 == 1) {
                    readInt2++;
                }
                length = i + readInt2;
                if (length == readInt) {
                    return;
                }
                if (length <= readInt) {
                    byteOrderedDataInputStream.skipFully(readInt2);
                } else {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    public final void handleThumbnailFromJfif(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("JPEGInterchangeFormat");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("JPEGInterchangeFormatLength");
        if (exifAttribute != null && exifAttribute2 != null) {
            int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
            int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
            if (this.mMimeType == 7) {
                intValue += this.mOrfMakerNoteOffset;
            }
            if (intValue > 0 && intValue2 > 0) {
                this.mHasThumbnail = true;
                if (this.mFilename == null && this.mAssetInputStream == null && this.mSeekableFileDescriptor == null) {
                    byte[] bArr = new byte[intValue2];
                    byteOrderedDataInputStream.skipFully(intValue);
                    byteOrderedDataInputStream.readFully(bArr);
                    this.mThumbnailBytes = bArr;
                }
                this.mThumbnailOffset = intValue;
                this.mThumbnailLength = intValue2;
            }
            if (DEBUG) {
                SuggestionsAdapter$$ExternalSyntheticOutline0.m("Setting thumbnail attributes with offset: ", intValue, ", length: ", intValue2, "ExifInterface");
            }
        }
    }

    public final void initForFilename(String str) {
        FileInputStream fileInputStream;
        if (str != null) {
            FileInputStream fileInputStream2 = null;
            this.mAssetInputStream = null;
            this.mFilename = str;
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (isSeekableFD(fileInputStream.getFD())) {
                    this.mSeekableFileDescriptor = fileInputStream.getFD();
                } else {
                    this.mSeekableFileDescriptor = null;
                }
                loadAttributes(fileInputStream);
                ExifInterfaceUtils.closeQuietly(fileInputStream);
                return;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                ExifInterfaceUtils.closeQuietly(fileInputStream2);
                throw th;
            }
        }
        throw new NullPointerException("filename cannot be null");
    }

    public final boolean isThumbnail(HashMap hashMap) {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("ImageLength");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("ImageWidth");
        if (exifAttribute != null && exifAttribute2 != null) {
            int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
            int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
            if (intValue <= 512 && intValue2 <= 512) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003e A[Catch: all -> 0x009e, IOException | UnsupportedOperationException -> 0x00a0, IOException | UnsupportedOperationException -> 0x00a0, TryCatch #0 {IOException | UnsupportedOperationException -> 0x00a0, blocks: (B:3:0x0004, B:5:0x0009, B:10:0x0019, B:10:0x0019, B:11:0x0027, B:11:0x0027, B:19:0x003e, B:19:0x003e, B:21:0x0045, B:21:0x0045, B:29:0x0070, B:29:0x0070, B:35:0x0054, B:35:0x0054, B:37:0x005a, B:37:0x005a, B:40:0x0061, B:40:0x0061, B:43:0x0069, B:43:0x0069, B:44:0x006d, B:44:0x006d, B:45:0x007a, B:45:0x007a, B:47:0x0083, B:47:0x0083, B:49:0x0089, B:49:0x0089, B:51:0x008f, B:51:0x008f, B:53:0x0095, B:53:0x0095), top: B:2:0x0004, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007a A[Catch: all -> 0x009e, IOException | UnsupportedOperationException -> 0x00a0, IOException | UnsupportedOperationException -> 0x00a0, TryCatch #0 {IOException | UnsupportedOperationException -> 0x00a0, blocks: (B:3:0x0004, B:5:0x0009, B:10:0x0019, B:10:0x0019, B:11:0x0027, B:11:0x0027, B:19:0x003e, B:19:0x003e, B:21:0x0045, B:21:0x0045, B:29:0x0070, B:29:0x0070, B:35:0x0054, B:35:0x0054, B:37:0x005a, B:37:0x005a, B:40:0x0061, B:40:0x0061, B:43:0x0069, B:43:0x0069, B:44:0x006d, B:44:0x006d, B:45:0x007a, B:45:0x007a, B:47:0x0083, B:47:0x0083, B:49:0x0089, B:49:0x0089, B:51:0x008f, B:51:0x008f, B:53:0x0095, B:53:0x0095), top: B:2:0x0004, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void loadAttributes(java.io.InputStream r9) {
        /*
            r8 = this;
            boolean r0 = androidx.exifinterface.media.ExifInterface.DEBUG
            r1 = 0
            r2 = r1
        L4:
            androidx.exifinterface.media.ExifInterface$ExifTag[][] r3 = androidx.exifinterface.media.ExifInterface.EXIF_TAGS     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0
            int r3 = r3.length     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0
            if (r2 >= r3) goto L15
            java.util.HashMap[] r3 = r8.mAttributes     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0
            java.util.HashMap r4 = new java.util.HashMap     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0
            r4.<init>()     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0
            r3[r2] = r4     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0
            int r2 = r2 + 1
            goto L4
        L15:
            boolean r2 = r8.mIsExifDataOnly
            if (r2 != 0) goto L27
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r4 = 5000(0x1388, float:7.006E-42)
            r3.<init>(r9, r4)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            int r9 = r8.getMimeType(r3)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r8.mMimeType = r9     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r9 = r3
        L27:
            int r3 = r8.mMimeType     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r4 = 14
            r5 = 13
            r6 = 9
            r7 = 4
            if (r3 == r7) goto L3b
            if (r3 == r6) goto L3b
            if (r3 == r5) goto L3b
            if (r3 != r4) goto L39
            goto L3b
        L39:
            r3 = 1
            goto L3c
        L3b:
            r3 = r1
        L3c:
            if (r3 == 0) goto L7a
            androidx.exifinterface.media.ExifInterface$SeekableByteOrderedDataInputStream r1 = new androidx.exifinterface.media.ExifInterface$SeekableByteOrderedDataInputStream     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            if (r2 == 0) goto L54
            boolean r9 = r8.getStandaloneAttributes(r1)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            if (r9 != 0) goto L70
            r8.addDefaultValuesForCompatibility()
            if (r0 == 0) goto L53
            r8.printAttributes()
        L53:
            return
        L54:
            int r9 = r8.mMimeType     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r2 = 12
            if (r9 != r2) goto L5e
            r8.getHeifAttributes(r1)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            goto L70
        L5e:
            r2 = 7
            if (r9 != r2) goto L65
            r8.getOrfAttributes(r1)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            goto L70
        L65:
            r2 = 10
            if (r9 != r2) goto L6d
            r8.getRw2Attributes(r1)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            goto L70
        L6d:
            r8.getRawAttributes(r1)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
        L70:
            int r9 = r8.mOffsetToExifData     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            long r2 = (long) r9     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r1.seek(r2)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r8.setThumbnailData(r1)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            goto L98
        L7a:
            androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream r2 = new androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            int r9 = r8.mMimeType     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            if (r9 != r7) goto L87
            r8.getJpegAttributes(r2, r1, r1)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            goto L98
        L87:
            if (r9 != r5) goto L8d
            r8.getPngAttributes(r2)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            goto L98
        L8d:
            if (r9 != r6) goto L93
            r8.getRafAttributes(r2)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
            goto L98
        L93:
            if (r9 != r4) goto L98
            r8.getWebpAttributes(r2)     // Catch: java.lang.Throwable -> L9e java.lang.Throwable -> La0 java.lang.Throwable -> La0
        L98:
            r8.addDefaultValuesForCompatibility()
            if (r0 == 0) goto Lbc
            goto Lb9
        L9e:
            r9 = move-exception
            goto Lab
        La0:
            r9 = move-exception
            if (r0 == 0) goto Lb4
            java.lang.String r1 = "ExifInterface"
            java.lang.String r2 = "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."
            android.util.Log.w(r1, r2, r9)     // Catch: java.lang.Throwable -> L9e
            goto Lb4
        Lab:
            r8.addDefaultValuesForCompatibility()
            if (r0 == 0) goto Lb3
            r8.printAttributes()
        Lb3:
            throw r9
        Lb4:
            r8.addDefaultValuesForCompatibility()
            if (r0 == 0) goto Lbc
        Lb9:
            r8.printAttributes()
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.loadAttributes(java.io.InputStream):void");
    }

    public final void parseTiffHeaders(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        ByteOrder readByteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = readByteOrder;
        byteOrderedDataInputStream.mByteOrder = readByteOrder;
        int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
        int i = this.mMimeType;
        if (i != 7 && i != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = byteOrderedDataInputStream.readInt();
        if (readInt >= 8) {
            int i2 = readInt - 8;
            if (i2 > 0) {
                byteOrderedDataInputStream.skipFully(i2);
                return;
            }
            return;
        }
        throw new IOException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Invalid first Ifd offset: ", readInt));
    }

    public final void printAttributes() {
        int i = 0;
        while (true) {
            HashMap[] hashMapArr = this.mAttributes;
            if (i < hashMapArr.length) {
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("The size of tag group[", i, "]: ");
                m.append(hashMapArr[i].size());
                Log.d("ExifInterface", m.toString());
                for (Map.Entry entry : hashMapArr[i].entrySet()) {
                    ExifAttribute exifAttribute = (ExifAttribute) entry.getValue();
                    Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + exifAttribute.toString() + ", tagValue: '" + exifAttribute.getStringValue(this.mExifByteOrder) + "'");
                }
                i++;
            } else {
                return;
            }
        }
    }

    public final void readExifSegment(int i, byte[] bArr) {
        SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream = new SeekableByteOrderedDataInputStream(bArr);
        parseTiffHeaders(seekableByteOrderedDataInputStream);
        readImageFileDirectory(seekableByteOrderedDataInputStream, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x026e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readImageFileDirectory(androidx.exifinterface.media.ExifInterface.SeekableByteOrderedDataInputStream r26, int r27) {
        /*
            Method dump skipped, instructions count: 883
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.readImageFileDirectory(androidx.exifinterface.media.ExifInterface$SeekableByteOrderedDataInputStream, int):void");
    }

    public final void removeAttribute(String str) {
        for (int i = 0; i < EXIF_TAGS.length; i++) {
            this.mAttributes[i].remove(str);
        }
    }

    public final void replaceInvalidTags(int i, String str, String str2) {
        HashMap[] hashMapArr = this.mAttributes;
        if (!hashMapArr[i].isEmpty() && hashMapArr[i].get(str) != null) {
            HashMap hashMap = hashMapArr[i];
            hashMap.put(str2, (ExifAttribute) hashMap.get(str));
            hashMapArr[i].remove(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ee A[Catch: all -> 0x0116, Exception -> 0x0119, TryCatch #15 {Exception -> 0x0119, all -> 0x0116, blocks: (B:64:0x00ea, B:66:0x00ee, B:67:0x0104, B:71:0x00fd), top: B:63:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fd A[Catch: all -> 0x0116, Exception -> 0x0119, TryCatch #15 {Exception -> 0x0119, all -> 0x0116, blocks: (B:64:0x00ea, B:66:0x00ee, B:67:0x0104, B:71:0x00fd), top: B:63:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0148  */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.io.OutputStream, java.io.Closeable, java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void saveAttributes() {
        /*
            Method dump skipped, instructions count: 375
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.saveAttributes():void");
    }

    public final void saveJpegAttributes(InputStream inputStream, OutputStream outputStream) {
        ExifAttribute exifAttribute;
        if (DEBUG) {
            Log.d("ExifInterface", "saveJpegAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(inputStream);
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream, ByteOrder.BIG_ENDIAN);
        if (byteOrderedDataInputStream.readByte() == -1) {
            byteOrderedDataOutputStream.writeByte(-1);
            if (byteOrderedDataInputStream.readByte() == -40) {
                byteOrderedDataOutputStream.writeByte(-40);
                String attribute = getAttribute("Xmp");
                HashMap[] hashMapArr = this.mAttributes;
                if (attribute != null && this.mXmpIsFromSeparateMarker) {
                    exifAttribute = (ExifAttribute) hashMapArr[0].remove("Xmp");
                } else {
                    exifAttribute = null;
                }
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(-31);
                writeExifSegment(byteOrderedDataOutputStream);
                if (exifAttribute != null) {
                    hashMapArr[0].put("Xmp", exifAttribute);
                }
                byte[] bArr = new byte[4096];
                while (byteOrderedDataInputStream.readByte() == -1) {
                    byte readByte = byteOrderedDataInputStream.readByte();
                    if (readByte != -39 && readByte != -38) {
                        if (readByte != -31) {
                            byteOrderedDataOutputStream.writeByte(-1);
                            byteOrderedDataOutputStream.writeByte(readByte);
                            int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                            byteOrderedDataOutputStream.writeUnsignedShort(readUnsignedShort);
                            int i = readUnsignedShort - 2;
                            if (i >= 0) {
                                while (i > 0) {
                                    int read = byteOrderedDataInputStream.read(bArr, 0, Math.min(i, 4096));
                                    if (read >= 0) {
                                        byteOrderedDataOutputStream.write(bArr, 0, read);
                                        i -= read;
                                    }
                                }
                            } else {
                                throw new IOException("Invalid length");
                            }
                        } else {
                            int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort() - 2;
                            if (readUnsignedShort2 >= 0) {
                                byte[] bArr2 = new byte[6];
                                if (readUnsignedShort2 >= 6) {
                                    byteOrderedDataInputStream.readFully(bArr2);
                                    if (Arrays.equals(bArr2, IDENTIFIER_EXIF_APP1)) {
                                        byteOrderedDataInputStream.skipFully(readUnsignedShort2 - 6);
                                    }
                                }
                                byteOrderedDataOutputStream.writeByte(-1);
                                byteOrderedDataOutputStream.writeByte(readByte);
                                byteOrderedDataOutputStream.writeUnsignedShort(readUnsignedShort2 + 2);
                                if (readUnsignedShort2 >= 6) {
                                    readUnsignedShort2 -= 6;
                                    byteOrderedDataOutputStream.write(bArr2);
                                }
                                while (readUnsignedShort2 > 0) {
                                    int read2 = byteOrderedDataInputStream.read(bArr, 0, Math.min(readUnsignedShort2, 4096));
                                    if (read2 >= 0) {
                                        byteOrderedDataOutputStream.write(bArr, 0, read2);
                                        readUnsignedShort2 -= read2;
                                    }
                                }
                            } else {
                                throw new IOException("Invalid length");
                            }
                        }
                    } else {
                        byteOrderedDataOutputStream.writeByte(-1);
                        byteOrderedDataOutputStream.writeByte(readByte);
                        ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream);
                        return;
                    }
                }
                throw new IOException("Invalid marker");
            }
            throw new IOException("Invalid marker");
        }
        throw new IOException("Invalid marker");
    }

    public final void savePngAttributes(InputStream inputStream, OutputStream outputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        if (DEBUG) {
            Log.d("ExifInterface", "savePngAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(inputStream);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream, byteOrder);
        byte[] bArr = PNG_SIGNATURE;
        ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream, bArr.length);
        int i = this.mOffsetToExifData;
        if (i == 0) {
            int readInt = byteOrderedDataInputStream.readInt();
            byteOrderedDataOutputStream.writeInt(readInt);
            ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream, readInt + 4 + 4);
        } else {
            ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream, ((i - bArr.length) - 4) - 4);
            byteOrderedDataInputStream.skipFully(byteOrderedDataInputStream.readInt() + 4 + 4);
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Throwable th) {
            th = th;
            byteArrayOutputStream = null;
        }
        try {
            ByteOrderedDataOutputStream byteOrderedDataOutputStream2 = new ByteOrderedDataOutputStream(byteArrayOutputStream, byteOrder);
            writeExifSegment(byteOrderedDataOutputStream2);
            byte[] byteArray = ((ByteArrayOutputStream) byteOrderedDataOutputStream2.mOutputStream).toByteArray();
            byteOrderedDataOutputStream.write(byteArray);
            CRC32 crc32 = new CRC32();
            crc32.update(byteArray, 4, byteArray.length - 4);
            byteOrderedDataOutputStream.writeInt((int) crc32.getValue());
            ExifInterfaceUtils.closeQuietly(byteArrayOutputStream);
            ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream);
        } catch (Throwable th2) {
            th = th2;
            ExifInterfaceUtils.closeQuietly(byteArrayOutputStream);
            throw th;
        }
    }

    public final void saveWebpAttributes(InputStream inputStream, OutputStream outputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        ByteOrderedDataOutputStream byteOrderedDataOutputStream;
        byte[] bArr;
        int i5;
        byte[] bArr2;
        boolean z2;
        if (DEBUG) {
            Log.d("ExifInterface", "saveWebpAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(inputStream, byteOrder);
        ByteOrderedDataOutputStream byteOrderedDataOutputStream2 = new ByteOrderedDataOutputStream(outputStream, byteOrder);
        byte[] bArr3 = WEBP_SIGNATURE_1;
        ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream2, bArr3.length);
        byte[] bArr4 = WEBP_SIGNATURE_2;
        byteOrderedDataInputStream.skipFully(bArr4.length + 4);
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ByteOrderedDataOutputStream byteOrderedDataOutputStream3 = new ByteOrderedDataOutputStream(byteArrayOutputStream, byteOrder);
                    int i6 = this.mOffsetToExifData;
                    if (i6 != 0) {
                        ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream3, ((i6 - ((bArr3.length + 4) + bArr4.length)) - 4) - 4);
                        byteOrderedDataInputStream.skipFully(4);
                        int readInt = byteOrderedDataInputStream.readInt();
                        if (readInt % 2 != 0) {
                            readInt++;
                        }
                        byteOrderedDataInputStream.skipFully(readInt);
                        writeExifSegment(byteOrderedDataOutputStream3);
                    } else {
                        byte[] bArr5 = new byte[4];
                        byteOrderedDataInputStream.readFully(bArr5);
                        byte[] bArr6 = WEBP_CHUNK_TYPE_VP8X;
                        boolean equals = Arrays.equals(bArr5, bArr6);
                        boolean z3 = false;
                        byte[] bArr7 = WEBP_CHUNK_TYPE_VP8;
                        byte[] bArr8 = WEBP_CHUNK_TYPE_VP8L;
                        if (equals) {
                            int readInt2 = byteOrderedDataInputStream.readInt();
                            if (readInt2 % 2 == 1) {
                                i5 = readInt2 + 1;
                            } else {
                                i5 = readInt2;
                            }
                            byte[] bArr9 = new byte[i5];
                            byteOrderedDataInputStream.readFully(bArr9);
                            byte b = (byte) (8 | bArr9[0]);
                            bArr9[0] = b;
                            if (((b >> 1) & 1) == 1) {
                                z3 = true;
                            }
                            byteOrderedDataOutputStream3.write(bArr6);
                            byteOrderedDataOutputStream3.writeInt(readInt2);
                            byteOrderedDataOutputStream3.write(bArr9);
                            if (z3) {
                                byte[] bArr10 = WEBP_CHUNK_TYPE_ANIM;
                                do {
                                    bArr2 = new byte[4];
                                    byteOrderedDataInputStream.readFully(bArr2);
                                    int readInt3 = byteOrderedDataInputStream.readInt();
                                    byteOrderedDataOutputStream3.write(bArr2);
                                    byteOrderedDataOutputStream3.writeInt(readInt3);
                                    if (readInt3 % 2 == 1) {
                                        readInt3++;
                                    }
                                    ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream3, readInt3);
                                } while (!Arrays.equals(bArr2, bArr10));
                                while (true) {
                                    byte[] bArr11 = new byte[4];
                                    try {
                                        byteOrderedDataInputStream.readFully(bArr11);
                                        z2 = !Arrays.equals(bArr11, WEBP_CHUNK_TYPE_ANMF);
                                    } catch (EOFException unused) {
                                        z2 = true;
                                    }
                                    if (z2) {
                                        break;
                                    }
                                    int readInt4 = byteOrderedDataInputStream.readInt();
                                    byteOrderedDataOutputStream3.write(bArr11);
                                    byteOrderedDataOutputStream3.writeInt(readInt4);
                                    if (readInt4 % 2 == 1) {
                                        readInt4++;
                                    }
                                    ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream3, readInt4);
                                }
                                writeExifSegment(byteOrderedDataOutputStream3);
                            } else {
                                while (true) {
                                    byte[] bArr12 = new byte[4];
                                    byteOrderedDataInputStream.readFully(bArr12);
                                    int readInt5 = byteOrderedDataInputStream.readInt();
                                    byteOrderedDataOutputStream3.write(bArr12);
                                    byteOrderedDataOutputStream3.writeInt(readInt5);
                                    if (readInt5 % 2 == 1) {
                                        readInt5++;
                                    }
                                    ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream3, readInt5);
                                    if (Arrays.equals(bArr12, bArr7) || (bArr8 != null && Arrays.equals(bArr12, bArr8))) {
                                        break;
                                    }
                                }
                                writeExifSegment(byteOrderedDataOutputStream3);
                            }
                        } else {
                            if (!Arrays.equals(bArr5, bArr7)) {
                                if (Arrays.equals(bArr5, bArr8)) {
                                }
                            }
                            int readInt6 = byteOrderedDataInputStream.readInt();
                            if (readInt6 % 2 == 1) {
                                i = readInt6 + 1;
                            } else {
                                i = readInt6;
                            }
                            byte[] bArr13 = new byte[3];
                            boolean equals2 = Arrays.equals(bArr5, bArr7);
                            byte[] bArr14 = WEBP_VP8_SIGNATURE;
                            if (equals2) {
                                byteOrderedDataInputStream.readFully(bArr13);
                                byte[] bArr15 = new byte[3];
                                byteOrderedDataInputStream.readFully(bArr15);
                                if (Arrays.equals(bArr14, bArr15)) {
                                    i2 = byteOrderedDataInputStream.readInt();
                                    i -= 10;
                                    i3 = (i2 << 18) >> 18;
                                    i4 = (i2 << 2) >> 18;
                                    z = false;
                                } else {
                                    throw new IOException("Error checking VP8 signature");
                                }
                            } else if (Arrays.equals(bArr5, bArr8)) {
                                if (byteOrderedDataInputStream.readByte() == 47) {
                                    i2 = byteOrderedDataInputStream.readInt();
                                    z = true;
                                    i3 = (i2 & 16383) + 1;
                                    i4 = ((i2 & 268419072) >>> 14) + 1;
                                    if ((i2 & QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE) == 0) {
                                        z = false;
                                    }
                                    i -= 5;
                                } else {
                                    throw new IOException("Error checking VP8L signature");
                                }
                            } else {
                                i2 = 0;
                                i3 = 0;
                                z = false;
                                i4 = 0;
                            }
                            byteOrderedDataOutputStream3.write(bArr6);
                            byteOrderedDataOutputStream3.writeInt(10);
                            byte[] bArr16 = new byte[10];
                            if (z) {
                                byteOrderedDataOutputStream = byteOrderedDataOutputStream2;
                                bArr16[0] = (byte) (bArr16[0] | 16);
                            } else {
                                byteOrderedDataOutputStream = byteOrderedDataOutputStream2;
                            }
                            bArr = bArr4;
                            bArr16[0] = (byte) (bArr16[0] | 8);
                            int i7 = i3 - 1;
                            int i8 = i4 - 1;
                            bArr16[4] = (byte) i7;
                            bArr16[5] = (byte) (i7 >> 8);
                            bArr16[6] = (byte) (i7 >> 16);
                            bArr16[7] = (byte) i8;
                            bArr16[8] = (byte) (i8 >> 8);
                            bArr16[9] = (byte) (i8 >> 16);
                            byteOrderedDataOutputStream3.write(bArr16);
                            byteOrderedDataOutputStream3.write(bArr5);
                            byteOrderedDataOutputStream3.writeInt(readInt6);
                            if (Arrays.equals(bArr5, bArr7)) {
                                byteOrderedDataOutputStream3.write(bArr13);
                                byteOrderedDataOutputStream3.write(bArr14);
                                byteOrderedDataOutputStream3.writeInt(i2);
                            } else if (Arrays.equals(bArr5, bArr8)) {
                                byteOrderedDataOutputStream3.write(47);
                                byteOrderedDataOutputStream3.writeInt(i2);
                            }
                            ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream3, i);
                            writeExifSegment(byteOrderedDataOutputStream3);
                            ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream3);
                            byte[] bArr17 = bArr;
                            ByteOrderedDataOutputStream byteOrderedDataOutputStream4 = byteOrderedDataOutputStream;
                            byteOrderedDataOutputStream4.writeInt(byteArrayOutputStream.size() + bArr17.length);
                            byteOrderedDataOutputStream4.write(bArr17);
                            byteArrayOutputStream.writeTo(byteOrderedDataOutputStream4);
                            ExifInterfaceUtils.closeQuietly(byteArrayOutputStream);
                        }
                    }
                    byteOrderedDataOutputStream = byteOrderedDataOutputStream2;
                    bArr = bArr4;
                    ExifInterfaceUtils.copy(byteOrderedDataInputStream, byteOrderedDataOutputStream3);
                    byte[] bArr172 = bArr;
                    ByteOrderedDataOutputStream byteOrderedDataOutputStream42 = byteOrderedDataOutputStream;
                    byteOrderedDataOutputStream42.writeInt(byteArrayOutputStream.size() + bArr172.length);
                    byteOrderedDataOutputStream42.write(bArr172);
                    byteArrayOutputStream.writeTo(byteOrderedDataOutputStream42);
                    ExifInterfaceUtils.closeQuietly(byteArrayOutputStream);
                } catch (Exception e) {
                    e = e;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    throw new IOException("Failed to save WebP file", e);
                } catch (Throwable th) {
                    th = th;
                    ExifInterfaceUtils.closeQuietly(byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = byteArrayOutputStream2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:69:0x01df. Please report as an issue. */
    public final void setAttribute(String str, String str2) {
        ExifTag exifTag;
        String str3;
        boolean z;
        ExifAttribute exifAttribute;
        String str4;
        String str5;
        String str6 = str;
        String str7 = str2;
        String str8 = "ExifInterface";
        if (("DateTime".equals(str6) || "DateTimeOriginal".equals(str6) || "DateTimeDigitized".equals(str6)) && str7 != null) {
            boolean find = DATETIME_PRIMARY_FORMAT_PATTERN.matcher(str7).find();
            boolean find2 = DATETIME_SECONDARY_FORMAT_PATTERN.matcher(str7).find();
            if (str2.length() == 19 && (find || find2)) {
                if (find2) {
                    str7 = str7.replaceAll("-", ":");
                }
            } else {
                Log.w("ExifInterface", "Invalid value for " + str6 + " : " + str7);
                return;
            }
        }
        boolean equals = "ISOSpeedRatings".equals(str6);
        boolean z2 = DEBUG;
        if (equals) {
            if (z2) {
                Log.d("ExifInterface", "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str6 = "PhotographicSensitivity";
        }
        int i = 2;
        int i2 = 1;
        if (str7 != null && sTagSetForCompatibility.contains(str6)) {
            if (str6.equals("GPSTimeStamp")) {
                Matcher matcher = GPS_TIMESTAMP_PATTERN.matcher(str7);
                if (!matcher.find()) {
                    Log.w("ExifInterface", "Invalid value for " + str6 + " : " + str7);
                    return;
                }
                str7 = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
            } else {
                try {
                    str7 = new Rational(Double.parseDouble(str7)).toString();
                } catch (NumberFormatException unused) {
                    Log.w("ExifInterface", "Invalid value for " + str6 + " : " + str7);
                    return;
                }
            }
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < EXIF_TAGS.length) {
            if ((i3 != 4 || this.mHasThumbnail) && (exifTag = (ExifTag) sExifTagMapsForWriting[i3].get(str6)) != null) {
                HashMap[] hashMapArr = this.mAttributes;
                if (str7 == null) {
                    hashMapArr[i3].remove(str6);
                } else {
                    Pair guessDataFormat = guessDataFormat(str7);
                    int intValue = ((Integer) guessDataFormat.first).intValue();
                    int i5 = -1;
                    int i6 = exifTag.primaryFormat;
                    if (i6 != intValue && i6 != ((Integer) guessDataFormat.second).intValue()) {
                        int i7 = exifTag.secondaryFormat;
                        if (i7 != -1 && (i7 == ((Integer) guessDataFormat.first).intValue() || i7 == ((Integer) guessDataFormat.second).intValue())) {
                            i6 = i7;
                        } else if (i6 != i2 && i6 != 7 && i6 != i) {
                            if (z2) {
                                StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("Given tag (", str6, ") value didn't match with one of expected formats: ");
                                String[] strArr = IFD_FORMAT_NAMES;
                                m.append(strArr[i6]);
                                String str9 = "";
                                if (i7 == -1) {
                                    str5 = "";
                                } else {
                                    str5 = ", " + strArr[i7];
                                }
                                m.append(str5);
                                m.append(" (guess: ");
                                m.append(strArr[((Integer) guessDataFormat.first).intValue()]);
                                if (((Integer) guessDataFormat.second).intValue() != -1) {
                                    str9 = ", " + strArr[((Integer) guessDataFormat.second).intValue()];
                                }
                                ExifInterface$$ExternalSyntheticOutline0.m(m, str9, ")", str8);
                            }
                        }
                    }
                    int[] iArr = IFD_FORMAT_BYTES_PER_FORMAT;
                    switch (i6) {
                        case 1:
                            str3 = str8;
                            z = z2;
                            HashMap hashMap = hashMapArr[i3];
                            i2 = 1;
                            if (str7.length() == 1) {
                                i4 = 0;
                                if (str7.charAt(0) >= '0' && str7.charAt(0) <= '1') {
                                    exifAttribute = new ExifAttribute(1, 1, new byte[]{(byte) (str7.charAt(0) - '0')});
                                    hashMap.put(str6, exifAttribute);
                                    str8 = str3;
                                    break;
                                }
                            } else {
                                i4 = 0;
                            }
                            byte[] bytes = str7.getBytes(ASCII);
                            exifAttribute = new ExifAttribute(1, bytes.length, bytes);
                            hashMap.put(str6, exifAttribute);
                            str8 = str3;
                            break;
                        case 2:
                        case 7:
                            str4 = str8;
                            z = z2;
                            hashMapArr[i3].put(str6, ExifAttribute.createString(str7));
                            i2 = 1;
                            str8 = str4;
                            i4 = 0;
                            break;
                        case 3:
                            str4 = str8;
                            z = z2;
                            String[] split = str7.split(",", -1);
                            int[] iArr2 = new int[split.length];
                            for (int i8 = 0; i8 < split.length; i8++) {
                                iArr2[i8] = Integer.parseInt(split[i8]);
                            }
                            hashMapArr[i3].put(str6, ExifAttribute.createUShort(iArr2, this.mExifByteOrder));
                            i2 = 1;
                            str8 = str4;
                            i4 = 0;
                            break;
                        case 4:
                            str4 = str8;
                            z = z2;
                            String[] split2 = str7.split(",", -1);
                            long[] jArr = new long[split2.length];
                            for (int i9 = 0; i9 < split2.length; i9++) {
                                jArr[i9] = Long.parseLong(split2[i9]);
                            }
                            hashMapArr[i3].put(str6, ExifAttribute.createULong(jArr, this.mExifByteOrder));
                            i2 = 1;
                            str8 = str4;
                            i4 = 0;
                            break;
                        case 5:
                            str4 = str8;
                            z = z2;
                            String[] split3 = str7.split(",", -1);
                            Rational[] rationalArr = new Rational[split3.length];
                            int i10 = 0;
                            while (i10 < split3.length) {
                                String[] split4 = split3[i10].split("/", i5);
                                rationalArr[i10] = new Rational((long) Double.parseDouble(split4[0]), (long) Double.parseDouble(split4[1]));
                                i10++;
                                i5 = -1;
                            }
                            hashMapArr[i3].put(str6, ExifAttribute.createURational(rationalArr, this.mExifByteOrder));
                            i2 = 1;
                            str8 = str4;
                            i4 = 0;
                            break;
                        case 6:
                        case 8:
                        case 11:
                        default:
                            str3 = str8;
                            z = z2;
                            if (z) {
                                str8 = str3;
                                ListPopupWindow$$ExternalSyntheticOutline0.m("Data format isn't one of expected formats: ", i6, str8);
                                break;
                            }
                            str8 = str3;
                            break;
                        case 9:
                            str4 = str8;
                            z = z2;
                            String[] split5 = str7.split(",", -1);
                            int length = split5.length;
                            int[] iArr3 = new int[length];
                            for (int i11 = 0; i11 < split5.length; i11++) {
                                iArr3[i11] = Integer.parseInt(split5[i11]);
                            }
                            HashMap hashMap2 = hashMapArr[i3];
                            ByteOrder byteOrder = this.mExifByteOrder;
                            ByteBuffer wrap = ByteBuffer.wrap(new byte[iArr[9] * length]);
                            wrap.order(byteOrder);
                            for (int i12 = 0; i12 < length; i12++) {
                                wrap.putInt(iArr3[i12]);
                            }
                            hashMap2.put(str6, new ExifAttribute(9, length, wrap.array()));
                            i2 = 1;
                            str8 = str4;
                            i4 = 0;
                            break;
                        case 10:
                            String[] split6 = str7.split(",", -1);
                            int length2 = split6.length;
                            Rational[] rationalArr2 = new Rational[length2];
                            int i13 = -1;
                            int i14 = i4;
                            while (i4 < split6.length) {
                                String[] split7 = split6[i4].split("/", i13);
                                rationalArr2[i4] = new Rational((long) Double.parseDouble(split7[i14]), (long) Double.parseDouble(split7[1]));
                                i4++;
                                i14 = 0;
                                i13 = -1;
                                z2 = z2;
                                str8 = str8;
                            }
                            str4 = str8;
                            z = z2;
                            HashMap hashMap3 = hashMapArr[i3];
                            ByteOrder byteOrder2 = this.mExifByteOrder;
                            ByteBuffer wrap2 = ByteBuffer.wrap(new byte[iArr[10] * length2]);
                            wrap2.order(byteOrder2);
                            for (int i15 = 0; i15 < length2; i15++) {
                                Rational rational = rationalArr2[i15];
                                wrap2.putInt((int) rational.numerator);
                                wrap2.putInt((int) rational.denominator);
                            }
                            hashMap3.put(str6, new ExifAttribute(10, length2, wrap2.array()));
                            i2 = 1;
                            str8 = str4;
                            i4 = 0;
                            break;
                        case 12:
                            String[] split8 = str7.split(",", -1);
                            int length3 = split8.length;
                            double[] dArr = new double[length3];
                            for (int i16 = i4; i16 < split8.length; i16++) {
                                dArr[i16] = Double.parseDouble(split8[i16]);
                            }
                            HashMap hashMap4 = hashMapArr[i3];
                            ByteOrder byteOrder3 = this.mExifByteOrder;
                            ByteBuffer wrap3 = ByteBuffer.wrap(new byte[iArr[12] * length3]);
                            wrap3.order(byteOrder3);
                            for (int i17 = i4; i17 < length3; i17++) {
                                wrap3.putDouble(dArr[i17]);
                            }
                            hashMap4.put(str6, new ExifAttribute(12, length3, wrap3.array()));
                            break;
                    }
                    i3++;
                    i = 2;
                    z2 = z;
                }
            }
            z = z2;
            i3++;
            i = 2;
            z2 = z;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setThumbnailData(androidx.exifinterface.media.ExifInterface.ByteOrderedDataInputStream r20) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.setThumbnailData(androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream):void");
    }

    public final void swapBasedOnImageSize(int i, int i2) {
        HashMap[] hashMapArr = this.mAttributes;
        boolean isEmpty = hashMapArr[i].isEmpty();
        boolean z = DEBUG;
        if (!isEmpty && !hashMapArr[i2].isEmpty()) {
            ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[i].get("ImageLength");
            ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[i].get("ImageWidth");
            ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[i2].get("ImageLength");
            ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[i2].get("ImageWidth");
            if (exifAttribute != null && exifAttribute2 != null) {
                if (exifAttribute3 != null && exifAttribute4 != null) {
                    int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
                    int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
                    int intValue3 = exifAttribute3.getIntValue(this.mExifByteOrder);
                    int intValue4 = exifAttribute4.getIntValue(this.mExifByteOrder);
                    if (intValue < intValue3 && intValue2 < intValue4) {
                        HashMap hashMap = hashMapArr[i];
                        hashMapArr[i] = hashMapArr[i2];
                        hashMapArr[i2] = hashMap;
                        return;
                    }
                    return;
                }
                if (z) {
                    Log.d("ExifInterface", "Second image does not contain valid size information");
                    return;
                }
                return;
            }
            if (z) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (z) {
            Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
        }
    }

    public final void updateImageSizeValues(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) {
        ExifAttribute createUShort;
        ExifAttribute createUShort2;
        HashMap[] hashMapArr = this.mAttributes;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[i].get("DefaultCropSize");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[i].get("SensorTopBorder");
        ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[i].get("SensorLeftBorder");
        ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[i].get("SensorBottomBorder");
        ExifAttribute exifAttribute5 = (ExifAttribute) hashMapArr[i].get("SensorRightBorder");
        if (exifAttribute != null) {
            if (exifAttribute.format == 5) {
                Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
                if (rationalArr != null && rationalArr.length == 2) {
                    createUShort = ExifAttribute.createURational(new Rational[]{rationalArr[0]}, this.mExifByteOrder);
                    createUShort2 = ExifAttribute.createURational(new Rational[]{rationalArr[1]}, this.mExifByteOrder);
                } else {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(rationalArr));
                    return;
                }
            } else {
                int[] iArr = (int[]) exifAttribute.getValue(this.mExifByteOrder);
                if (iArr != null && iArr.length == 2) {
                    createUShort = ExifAttribute.createUShort(iArr[0], this.mExifByteOrder);
                    createUShort2 = ExifAttribute.createUShort(iArr[1], this.mExifByteOrder);
                } else {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
            }
            hashMapArr[i].put("ImageWidth", createUShort);
            hashMapArr[i].put("ImageLength", createUShort2);
            return;
        }
        if (exifAttribute2 != null && exifAttribute3 != null && exifAttribute4 != null && exifAttribute5 != null) {
            int intValue = exifAttribute2.getIntValue(this.mExifByteOrder);
            int intValue2 = exifAttribute4.getIntValue(this.mExifByteOrder);
            int intValue3 = exifAttribute5.getIntValue(this.mExifByteOrder);
            int intValue4 = exifAttribute3.getIntValue(this.mExifByteOrder);
            if (intValue2 > intValue && intValue3 > intValue4) {
                ExifAttribute createUShort3 = ExifAttribute.createUShort(intValue2 - intValue, this.mExifByteOrder);
                ExifAttribute createUShort4 = ExifAttribute.createUShort(intValue3 - intValue4, this.mExifByteOrder);
                hashMapArr[i].put("ImageLength", createUShort3);
                hashMapArr[i].put("ImageWidth", createUShort4);
                return;
            }
            return;
        }
        ExifAttribute exifAttribute6 = (ExifAttribute) hashMapArr[i].get("ImageLength");
        ExifAttribute exifAttribute7 = (ExifAttribute) hashMapArr[i].get("ImageWidth");
        if (exifAttribute6 == null || exifAttribute7 == null) {
            ExifAttribute exifAttribute8 = (ExifAttribute) hashMapArr[i].get("JPEGInterchangeFormat");
            ExifAttribute exifAttribute9 = (ExifAttribute) hashMapArr[i].get("JPEGInterchangeFormatLength");
            if (exifAttribute8 != null && exifAttribute9 != null) {
                int intValue5 = exifAttribute8.getIntValue(this.mExifByteOrder);
                int intValue6 = exifAttribute8.getIntValue(this.mExifByteOrder);
                seekableByteOrderedDataInputStream.seek(intValue5);
                byte[] bArr = new byte[intValue6];
                seekableByteOrderedDataInputStream.readFully(bArr);
                getJpegAttributes(new ByteOrderedDataInputStream(bArr), intValue5, i);
            }
        }
    }

    public final void validateImages() {
        swapBasedOnImageSize(0, 5);
        swapBasedOnImageSize(0, 4);
        swapBasedOnImageSize(5, 4);
        HashMap[] hashMapArr = this.mAttributes;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("PixelXDimension");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[1].get("PixelYDimension");
        if (exifAttribute != null && exifAttribute2 != null) {
            hashMapArr[0].put("ImageWidth", exifAttribute);
            hashMapArr[0].put("ImageLength", exifAttribute2);
        }
        if (hashMapArr[4].isEmpty() && isThumbnail(hashMapArr[5])) {
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap();
        }
        if (!isThumbnail(hashMapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        replaceInvalidTags(0, "ThumbnailOrientation", "Orientation");
        replaceInvalidTags(0, "ThumbnailImageLength", "ImageLength");
        replaceInvalidTags(0, "ThumbnailImageWidth", "ImageWidth");
        replaceInvalidTags(5, "ThumbnailOrientation", "Orientation");
        replaceInvalidTags(5, "ThumbnailImageLength", "ImageLength");
        replaceInvalidTags(5, "ThumbnailImageWidth", "ImageWidth");
        replaceInvalidTags(4, "Orientation", "ThumbnailOrientation");
        replaceInvalidTags(4, "ImageLength", "ThumbnailImageLength");
        replaceInvalidTags(4, "ImageWidth", "ThumbnailImageWidth");
    }

    public final void writeExifSegment(ByteOrderedDataOutputStream byteOrderedDataOutputStream) {
        HashMap[] hashMapArr;
        int[] iArr;
        short s;
        ExifTag[][] exifTagArr = EXIF_TAGS;
        int[] iArr2 = new int[exifTagArr.length];
        int[] iArr3 = new int[exifTagArr.length];
        ExifTag[] exifTagArr2 = EXIF_POINTER_TAGS;
        for (ExifTag exifTag : exifTagArr2) {
            removeAttribute(exifTag.name);
        }
        if (this.mHasThumbnail) {
            if (this.mHasThumbnailStrips) {
                removeAttribute("StripOffsets");
                removeAttribute("StripByteCounts");
            } else {
                removeAttribute("JPEGInterchangeFormat");
                removeAttribute("JPEGInterchangeFormatLength");
            }
        }
        int i = 0;
        while (true) {
            int length = exifTagArr.length;
            hashMapArr = this.mAttributes;
            if (i >= length) {
                break;
            }
            Iterator it = hashMapArr[i].entrySet().iterator();
            while (it.hasNext()) {
                if (((Map.Entry) it.next()).getValue() == null) {
                    it.remove();
                }
            }
            i++;
        }
        if (!hashMapArr[1].isEmpty()) {
            hashMapArr[0].put(exifTagArr2[1].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!hashMapArr[2].isEmpty()) {
            hashMapArr[0].put(exifTagArr2[2].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!hashMapArr[3].isEmpty()) {
            hashMapArr[1].put(exifTagArr2[3].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (this.mHasThumbnail) {
            if (this.mHasThumbnailStrips) {
                hashMapArr[4].put("StripOffsets", ExifAttribute.createUShort(0, this.mExifByteOrder));
                hashMapArr[4].put("StripByteCounts", ExifAttribute.createUShort(this.mThumbnailLength, this.mExifByteOrder));
            } else {
                hashMapArr[4].put("JPEGInterchangeFormat", ExifAttribute.createULong(0L, this.mExifByteOrder));
                hashMapArr[4].put("JPEGInterchangeFormatLength", ExifAttribute.createULong(this.mThumbnailLength, this.mExifByteOrder));
            }
        }
        int i2 = 0;
        while (true) {
            int length2 = exifTagArr.length;
            iArr = IFD_FORMAT_BYTES_PER_FORMAT;
            if (i2 >= length2) {
                break;
            }
            Iterator it2 = hashMapArr[i2].entrySet().iterator();
            int i3 = 0;
            while (it2.hasNext()) {
                ExifAttribute exifAttribute = (ExifAttribute) ((Map.Entry) it2.next()).getValue();
                exifAttribute.getClass();
                int i4 = iArr[exifAttribute.format] * exifAttribute.numberOfComponents;
                if (i4 > 4) {
                    i3 += i4;
                }
            }
            iArr3[i2] = iArr3[i2] + i3;
            i2++;
        }
        int i5 = 8;
        for (int i6 = 0; i6 < exifTagArr.length; i6++) {
            if (!hashMapArr[i6].isEmpty()) {
                iArr2[i6] = i5;
                i5 = (hashMapArr[i6].size() * 12) + 2 + 4 + iArr3[i6] + i5;
            }
        }
        if (this.mHasThumbnail) {
            if (this.mHasThumbnailStrips) {
                hashMapArr[4].put("StripOffsets", ExifAttribute.createUShort(i5, this.mExifByteOrder));
            } else {
                hashMapArr[4].put("JPEGInterchangeFormat", ExifAttribute.createULong(i5, this.mExifByteOrder));
            }
            this.mThumbnailOffset = i5;
            i5 += this.mThumbnailLength;
        }
        if (this.mMimeType == 4) {
            i5 += 8;
        }
        if (DEBUG) {
            for (int i7 = 0; i7 < exifTagArr.length; i7++) {
                Log.d("ExifInterface", String.format("index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d", Integer.valueOf(i7), Integer.valueOf(iArr2[i7]), Integer.valueOf(hashMapArr[i7].size()), Integer.valueOf(iArr3[i7]), Integer.valueOf(i5)));
            }
        }
        if (!hashMapArr[1].isEmpty()) {
            hashMapArr[0].put(exifTagArr2[1].name, ExifAttribute.createULong(iArr2[1], this.mExifByteOrder));
        }
        if (!hashMapArr[2].isEmpty()) {
            hashMapArr[0].put(exifTagArr2[2].name, ExifAttribute.createULong(iArr2[2], this.mExifByteOrder));
        }
        if (!hashMapArr[3].isEmpty()) {
            hashMapArr[1].put(exifTagArr2[3].name, ExifAttribute.createULong(iArr2[3], this.mExifByteOrder));
        }
        int i8 = this.mMimeType;
        if (i8 != 4) {
            if (i8 != 13) {
                if (i8 == 14) {
                    byteOrderedDataOutputStream.write(WEBP_CHUNK_TYPE_EXIF);
                    byteOrderedDataOutputStream.writeInt(i5);
                }
            } else {
                byteOrderedDataOutputStream.writeInt(i5);
                byteOrderedDataOutputStream.write(PNG_CHUNK_TYPE_EXIF);
            }
        } else if (i5 <= 65535) {
            byteOrderedDataOutputStream.writeUnsignedShort(i5);
            byteOrderedDataOutputStream.write(IDENTIFIER_EXIF_APP1);
        } else {
            throw new IllegalStateException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Size of exif data (", i5, " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)"));
        }
        if (this.mExifByteOrder == ByteOrder.BIG_ENDIAN) {
            s = 19789;
        } else {
            s = 18761;
        }
        byteOrderedDataOutputStream.writeShort(s);
        byteOrderedDataOutputStream.mByteOrder = this.mExifByteOrder;
        byteOrderedDataOutputStream.writeUnsignedShort(42);
        byteOrderedDataOutputStream.writeUnsignedInt(8L);
        for (int i9 = 0; i9 < exifTagArr.length; i9++) {
            if (!hashMapArr[i9].isEmpty()) {
                byteOrderedDataOutputStream.writeUnsignedShort(hashMapArr[i9].size());
                int size = (hashMapArr[i9].size() * 12) + iArr2[i9] + 2 + 4;
                for (Map.Entry entry : hashMapArr[i9].entrySet()) {
                    int i10 = ((ExifTag) sExifTagMapsForWriting[i9].get(entry.getKey())).number;
                    ExifAttribute exifAttribute2 = (ExifAttribute) entry.getValue();
                    exifAttribute2.getClass();
                    int i11 = iArr[exifAttribute2.format] * exifAttribute2.numberOfComponents;
                    byteOrderedDataOutputStream.writeUnsignedShort(i10);
                    byteOrderedDataOutputStream.writeUnsignedShort(exifAttribute2.format);
                    byteOrderedDataOutputStream.writeInt(exifAttribute2.numberOfComponents);
                    if (i11 > 4) {
                        byteOrderedDataOutputStream.writeUnsignedInt(size);
                        size += i11;
                    } else {
                        byteOrderedDataOutputStream.write(exifAttribute2.bytes);
                        if (i11 < 4) {
                            while (i11 < 4) {
                                byteOrderedDataOutputStream.writeByte(0);
                                i11++;
                            }
                        }
                    }
                }
                if (i9 == 0 && !hashMapArr[4].isEmpty()) {
                    byteOrderedDataOutputStream.writeUnsignedInt(iArr2[4]);
                } else {
                    byteOrderedDataOutputStream.writeUnsignedInt(0L);
                }
                Iterator it3 = hashMapArr[i9].entrySet().iterator();
                while (it3.hasNext()) {
                    byte[] bArr = ((ExifAttribute) ((Map.Entry) it3.next()).getValue()).bytes;
                    if (bArr.length > 4) {
                        byteOrderedDataOutputStream.write(bArr, 0, bArr.length);
                    }
                }
            }
        }
        if (this.mHasThumbnail) {
            byteOrderedDataOutputStream.write(getThumbnailBytes());
        }
        if (this.mMimeType == 14 && i5 % 2 == 1) {
            byteOrderedDataOutputStream.writeByte(0);
        }
        byteOrderedDataOutputStream.mByteOrder = ByteOrder.BIG_ENDIAN;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class ByteOrderedDataInputStream extends InputStream implements DataInput {
        public ByteOrder mByteOrder;
        public final DataInputStream mDataInputStream;
        public final int mLength;
        public int mPosition;
        public byte[] mSkipBuffer;

        public ByteOrderedDataInputStream(byte[] bArr) {
            this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
            this.mLength = bArr.length;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.mDataInputStream.available();
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        @Override // java.io.InputStream
        public final int read() {
            this.mPosition++;
            return this.mDataInputStream.read();
        }

        @Override // java.io.DataInput
        public final boolean readBoolean() {
            this.mPosition++;
            return this.mDataInputStream.readBoolean();
        }

        @Override // java.io.DataInput
        public final byte readByte() {
            this.mPosition++;
            int read = this.mDataInputStream.read();
            if (read >= 0) {
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final char readChar() {
            this.mPosition += 2;
            return this.mDataInputStream.readChar();
        }

        @Override // java.io.DataInput
        public final double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public final float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr, int i, int i2) {
            this.mPosition += i2;
            this.mDataInputStream.readFully(bArr, i, i2);
        }

        @Override // java.io.DataInput
        public final int readInt() {
            this.mPosition += 4;
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            int read3 = this.mDataInputStream.read();
            int read4 = this.mDataInputStream.read();
            if ((read | read2 | read3 | read4) >= 0) {
                ByteOrder byteOrder = this.mByteOrder;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                throw new IOException("Invalid byte order: " + this.mByteOrder);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readLine() {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public final long readLong() {
            this.mPosition += 8;
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            int read3 = this.mDataInputStream.read();
            int read4 = this.mDataInputStream.read();
            int read5 = this.mDataInputStream.read();
            int read6 = this.mDataInputStream.read();
            int read7 = this.mDataInputStream.read();
            int read8 = this.mDataInputStream.read();
            if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                ByteOrder byteOrder = this.mByteOrder;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                throw new IOException("Invalid byte order: " + this.mByteOrder);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final short readShort() {
            int i;
            this.mPosition += 2;
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.mByteOrder;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    i = (read2 << 8) + read;
                } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    i = (read << 8) + read2;
                } else {
                    throw new IOException("Invalid byte order: " + this.mByteOrder);
                }
                return (short) i;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readUTF() {
            this.mPosition += 2;
            return this.mDataInputStream.readUTF();
        }

        @Override // java.io.DataInput
        public final int readUnsignedByte() {
            this.mPosition++;
            return this.mDataInputStream.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public final int readUnsignedShort() {
            this.mPosition += 2;
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.mByteOrder;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 8) + read2;
                }
                throw new IOException("Invalid byte order: " + this.mByteOrder);
            }
            throw new EOFException();
        }

        @Override // java.io.InputStream
        public final void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        @Override // java.io.DataInput
        public final int skipBytes(int i) {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }

        public final void skipFully(int i) {
            int i2 = 0;
            while (i2 < i) {
                int i3 = i - i2;
                int skip = (int) this.mDataInputStream.skip(i3);
                if (skip <= 0) {
                    if (this.mSkipBuffer == null) {
                        this.mSkipBuffer = new byte[8192];
                    }
                    skip = this.mDataInputStream.read(this.mSkipBuffer, 0, Math.min(8192, i3));
                    if (skip == -1) {
                        throw new EOFException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Reached EOF while skipping ", i, " bytes."));
                    }
                }
                i2 += skip;
            }
            this.mPosition += i2;
        }

        public ByteOrderedDataInputStream(InputStream inputStream) {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int read = this.mDataInputStream.read(bArr, i, i2);
            this.mPosition += read;
            return read;
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr) {
            this.mPosition += bArr.length;
            this.mDataInputStream.readFully(bArr);
        }

        public ByteOrderedDataInputStream(InputStream inputStream, ByteOrder byteOrder) {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.mDataInputStream = dataInputStream;
            dataInputStream.mark(0);
            this.mPosition = 0;
            this.mByteOrder = byteOrder;
            this.mLength = inputStream instanceof ByteOrderedDataInputStream ? ((ByteOrderedDataInputStream) inputStream).mLength : -1;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SeekableByteOrderedDataInputStream extends ByteOrderedDataInputStream {
        public SeekableByteOrderedDataInputStream(byte[] bArr) {
            super(bArr);
            this.mDataInputStream.mark(Integer.MAX_VALUE);
        }

        public final void seek(long j) {
            int i = this.mPosition;
            if (i > j) {
                this.mPosition = 0;
                this.mDataInputStream.reset();
            } else {
                j -= i;
            }
            skipFully((int) j);
        }

        public SeekableByteOrderedDataInputStream(InputStream inputStream) {
            super(inputStream);
            if (inputStream.markSupported()) {
                this.mDataInputStream.mark(Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ExifTag {
        public final String name;
        public final int number;
        public final int primaryFormat;
        public final int secondaryFormat;

        public ExifTag(String str, int i, int i2) {
            this.name = str;
            this.number = i;
            this.primaryFormat = i2;
            this.secondaryFormat = -1;
        }

        public ExifTag(String str, int i, int i2, int i3) {
            this.name = str;
            this.number = i;
            this.primaryFormat = i2;
            this.secondaryFormat = i3;
        }
    }

    public ExifInterface(String str) {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (str != null) {
            initForFilename(str);
            return;
        }
        throw new NullPointerException("filename cannot be null");
    }

    public ExifInterface(FileDescriptor fileDescriptor) {
        boolean z;
        FileInputStream fileInputStream;
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (fileDescriptor != null) {
            FileInputStream fileInputStream2 = null;
            this.mAssetInputStream = null;
            this.mFilename = null;
            if (isSeekableFD(fileDescriptor)) {
                this.mSeekableFileDescriptor = fileDescriptor;
                try {
                    fileDescriptor = Os.dup(fileDescriptor);
                    z = true;
                } catch (Exception e) {
                    throw new IOException("Failed to duplicate file descriptor", e);
                }
            } else {
                this.mSeekableFileDescriptor = null;
                z = false;
            }
            try {
                fileInputStream = new FileInputStream(fileDescriptor);
            } catch (Throwable th) {
                th = th;
            }
            try {
                loadAttributes(fileInputStream);
                ExifInterfaceUtils.closeQuietly(fileInputStream);
                if (z) {
                    ExifInterfaceUtils.closeFileDescriptor(fileDescriptor);
                    return;
                }
                return;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                ExifInterfaceUtils.closeQuietly(fileInputStream2);
                if (z) {
                    ExifInterfaceUtils.closeFileDescriptor(fileDescriptor);
                }
                throw th;
            }
        }
        throw new NullPointerException("fileDescriptor cannot be null");
    }

    public ExifInterface(InputStream inputStream) {
        this(inputStream, 0);
    }

    public ExifInterface(InputStream inputStream, int i) {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (inputStream != null) {
            this.mFilename = null;
            boolean z = i == 1;
            this.mIsExifDataOnly = z;
            if (z) {
                this.mAssetInputStream = null;
                this.mSeekableFileDescriptor = null;
            } else if (inputStream instanceof AssetManager.AssetInputStream) {
                this.mAssetInputStream = (AssetManager.AssetInputStream) inputStream;
                this.mSeekableFileDescriptor = null;
            } else {
                if (inputStream instanceof FileInputStream) {
                    FileInputStream fileInputStream = (FileInputStream) inputStream;
                    if (isSeekableFD(fileInputStream.getFD())) {
                        this.mAssetInputStream = null;
                        this.mSeekableFileDescriptor = fileInputStream.getFD();
                    }
                }
                this.mAssetInputStream = null;
                this.mSeekableFileDescriptor = null;
            }
            loadAttributes(inputStream);
            return;
        }
        throw new NullPointerException("inputStream cannot be null");
    }
}
